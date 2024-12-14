-- Trigger

CREATE OR REPLACE FUNCTION update_medal_table() RETURNS TRIGGER AS $$
DECLARE
	noc CHAR(3);
BEGIN
	-- Получение кода НОК
	SELECT noc_code FROM athletes WHERE id = NEW.athlete_id INTO noc;
	-- Если НОК еще нет в таблице - создать запись с дефолтными значениями (0)
	INSERT INTO medal_table (noc_code) VALUES (noc) ON CONFLICT DO NOTHING;
	UPDATE medal_table
	SET
		-- Если добавился результат с первым местом - прибавляем 1 к "gold"
		gold = CASE WHEN NEW.place = 1 THEN gold + 1 ELSE gold END,
		-- Если добавился результат с вторым местом - прибавляем 1 к "silver"
		silver = CASE WHEN NEW.place = 2 THEN silver + 1 ELSE silver END,
		-- Если добавился результат с третьим местом - прибавляем 1 к "bronze"
		bronze = CASE WHEN NEW.place = 3 THEN bronze + 1 ELSE bronze END
	WHERE noc_code = noc;
	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE
OR REPLACE TRIGGER insert_update_event_results_update_medal_table_trigger
AFTER INSERT
ON event_results FOR EACH ROW
EXECUTE FUNCTION update_medal_table ();

-- Functions

CREATE OR REPLACE FUNCTION final_scoreboard (event_id INTEGER)
RETURNS TABLE (place INTEGER, first_name VARCHAR, last_name VARCHAR) AS $$
	SELECT results.place, athletes.first_name, athletes.last_name
	FROM (
			SELECT place, athlete_id
			FROM event_results
			WHERE event_results.event_id = final_scoreboard.event_id
		) results
		JOIN athletes
		ON results.athlete_id = athletes.id
	ORDER BY place;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION all_medals (athlete_id INTEGER)
RETURNS TABLE (event_name VARCHAR, medal VARCHAR) AS $$
	SELECT events.name AS event_name, (
			CASE place
				WHEN 1 THEN 'gold'
				WHEN 2 THEN 'silver'
				WHEN 3 THEN 'bronze'
			END
		) AS medal
	FROM (
			SELECT place, event_id
			FROM event_results
			WHERE event_results.athlete_id = all_medals.athlete_id 
				AND place <= 3
		) results
		JOIN events
		ON results.event_id = events.id
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION requesters (event_id INTEGER)
RETURNS TABLE (
	athlete_id INTEGER, 
	qualified BOOLEAN, 
	doping_control BOOLEAN
) AS $$
	SELECT athlete_id, qualified, doping_control
	FROM requests_with_doping_control_result
	WHERE event_id = event_id
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION admitted_requesters (event_id INTEGER)
RETURNS TABLE (
	athlete_id INTEGER, 
	qualified BOOLEAN, 
	doping_control BOOLEAN
) AS $$
	SELECT *
	FROM requesters(event_id)
	WHERE qualified
		AND doping_control
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION create_doping_control_result (
	controller_id INTEGER, result BOOLEAN
)
RETURNS INTEGER AS $$
	INSERT INTO
		doping_controls (
			result,
			controller_id,
			taken_at
		)
	VALUES (result, controller_id, NOW())
	RETURNING id;
$$ LANGUAGE SQL;

-- Procedures

CREATE OR REPLACE PROCEDURE add_doping_control(
	controller_id INTEGER,
	event_id INTEGER,
	athlete_id INTEGER,
	result BOOLEAN
) AS $$
	UPDATE requests
	SET doping_control_id = create_doping_control_result(controller_id, result)
	WHERE requests.athlete_id = add_doping_control.athlete_id
		AND requests.event_id = add_doping_control.event_id
$$ LANGUAGE SQL;
