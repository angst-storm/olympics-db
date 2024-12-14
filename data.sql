-- Sports

INSERT INTO sports (name) VALUES ('Aquatics');

INSERT INTO
    disciplines (
        code,
        sport_id,
        name,
        governing_body
    )
VALUES (
        'SWM',
        1,
        'Swimming',
        'World Aquatics'
    ),
    (
        'SWA',
        1,
        'Artistic Swimming',
        'World Aquatics'
    ),
    (
        'ATH',
        NULL,
        'Athletics',
        'World Athletics'
    );

INSERT INTO
    events (
        discipline_code,
        name,
        description
    )
VALUES (
        'SWM',
        '100 metres freestyle (men)',
        'A short, intense sprint race where swimmers compete to complete one lap of a 50-meter pool in the fastest time.'
    ),
    (
        'SWM',
        '200 metres butterfly (men)',
        '200 meters of swimming with a butterfly stroke, requiring speed, endurance, and underwater undulation.'
    ),
    (
        'SWM',
        '200 metres breaststroke (men)',
        '200 meters of swimming with a breaststroke, requiring strong arm and leg propulsion and a specific body position.'
    ),
    (
        'SWM',
        '100 metres freestyle (women)',
        'A short, intense sprint race where swimmers compete to complete one lap of a 50-meter pool in the fastest time.'
    ),
    (
        'SWM',
        '200 metres butterfly (women)',
        '200 meters of swimming with a butterfly stroke, requiring speed, endurance, and underwater undulation.'
    ),
    (
        'SWM',
        '200 metres breaststroke (women)',
        '200 meters of swimming with a breaststroke, requiring strong arm and leg propulsion and a specific body position.'
    );

-- NOCs

INSERT INTO
    nocs (
        code,
        name,
        headqurter_country,
        headqurter_city
    )
VALUES (
        'FRA',
        'French National Olympic and Sports Committee',
        'France',
        'Paris'
    ),
    (
        'CHN',
        'Chinese Olympic Committee',
        'Dongcheng, Beijing',
        'China'
    ),
    (
        'AOC',
        'Australian Olympic Committee',
        'Sydney',
        'Australia'
    ),
    (
        'ROU',
        'Romanian Olympic and Sports Committee',
        'Bucharest',
        'Romania'
    ),
    (
        'HUN',
        'Hungarian Olympic Committee',
        'Budapest',
        'Hungary'
    ),
    (
        'CAN',
        'Canadian Olympic Committee',
        'Toronto, Ontario',
        'Canada'
    ),
    (
        'NED',
        'Dutch Olympic Committee*Dutch Sports Federation',
        'National Sports Centre Papendal, near Arnhem',
        'Netherlands'
    ),
    (
        'SWE',
        'Swedish Olympic Committee',
        'Stockholm',
        'Sweden'
    ),
    (
        'USA',
        'United States Olympic & Paralympic Committee',
        'Colorado Springs, Colorado',
        'United States Of America'
    ),
    (
        'HKG',
        'Sports Federation and Olympic Committee of Hong Kong, China',
        'So Kon Po',
        'Hong Kong'
    ),
    (
        'RSA',
        'South African Sports Confederation and Olympic Committee',
        'Johannesburg',
        'South Africa'
    ),
    (
        'AIN',
        'Individual Neutral Athletes',
        'Paris',
        'France'
    );

-- Athletes

INSERT INTO
    athletes (
        noc_code,
        first_name,
        middle_name,
        last_name,
        birth_date,
        birth_country,
        passport_number
    )
VALUES (
        'AIN',
        'Sergei',
        'Andreevich',
        'Kiprin',
        'May 9, 2002',
        'Russian Federation',
        '0000000001'
    ),
    (
        'AOC',
        'Izaac',
        'Keith',
        'Stubblety-Cook',
        'January 4, 1999',
        'Australia',
        '0000000008'
    ),
    (
        'SWE',
        'Sarah',
        'Fredrika',
        'Sjöström',
        'August 17, 1993',
        'Sweden',
        '0000000010'
    ),
    (
        'HKG',
        'Siobhán',
        'Bernadette',
        'Haughey',
        'October 31, 1997',
        'Hong Kong, China',
        '0000000012'
    ),
    (
        'CAN',
        'Summer',
        'Ann',
        'McIntosh',
        'August 18, 2006',
        'Canada',
        '0000000013'
    ),
    (
        'USA',
        'Katherine',
        'Cadwallader',
        'Douglass',
        'November 17, 2001',
        'United States',
        '0000000016'
    );

INSERT INTO
    athletes (
        noc_code,
        first_name,
        last_name,
        birth_date,
        birth_country,
        passport_number
    )
VALUES (
        'CHN',
        'Pan',
        'Zhanle',
        'August 4, 2004',
        'China',
        '000000002'
    ),
    (
        'AOC',
        'Kyle',
        'Chalmers',
        'June 25, 1998',
        'Australia',
        '000000003'
    ),
    (
        'ROU',
        'David',
        'Popovici',
        'September 15, 2004',
        'Romania',
        '000000004'
    ),
    (
        'FRA',
        'Léon',
        'Marchand',
        'May 17, 2002',
        'France',
        '000000005'
    ),
    (
        'HUN',
        'Kristóf',
        'Milák',
        'February 20, 2000',
        'Hungary',
        '000000006'
    ),
    (
        'CAN',
        'Ilya',
        'Kharun',
        'February 7, 2005',
        'Canada',
        '000000007'
    ),
    (
        'NED',
        'Caspar',
        'Corbeau',
        'April 3, 2001',
        'United States',
        '000000009'
    ),
    (
        'USA',
        'Victoria',
        'Huske',
        'December 7, 2002',
        'United States',
        '000000011'
    ),
    (
        'USA',
        'Regan',
        'Smith',
        'February 9, 2002',
        'United States',
        '000000014'
    ),
    (
        'CHN',
        'Zhang',
        'Yufei',
        'April 19, 1998',
        'China',
        '000000015'
    ),
    (
        'RSA',
        'Tatjana',
        'Smith',
        'July 9, 1997',
        'South Africa',
        '000000017'
    ),
    (
        'NED',
        'Tes',
        'Schouten',
        'December 31, 2000',
        'Netherlands',
        '000000018'
    );

-- Requests

INSERT INTO
    requests (event_id, athlete_id)
VALUES (1, 1),
    (1, 7),
    (1, 8),
    (1, 9),
    (2, 10),
    (2, 11),
    (2, 12),
    (3, 10),
    (3, 2),
    (3, 13),
    (4, 3),
    (4, 14),
    (4, 4),
    (5, 5),
    (5, 15),
    (5, 16),
    (6, 6),
    (6, 17),
    (6, 18);

UPDATE requests SET qualified = FALSE WHERE athlete_id = 1;

UPDATE requests SET qualified = TRUE WHERE athlete_id > 1;

-- Doping Controls

CALL add_doping_control (12345, 1, 1, FALSE);

CALL add_doping_control (12345, 1, 7, TRUE);

CALL add_doping_control (12345, 1, 8, TRUE);

CALL add_doping_control (12345, 1, 9, TRUE);

CALL add_doping_control (12345, 2, 10, TRUE);

CALL add_doping_control (12345, 2, 11, TRUE);

CALL add_doping_control (12345, 2, 12, TRUE);

CALL add_doping_control (12345, 3, 10, TRUE);

CALL add_doping_control (12345, 3, 2, TRUE);

CALL add_doping_control (12345, 3, 13, TRUE);

CALL add_doping_control (12345, 4, 3, TRUE);

CALL add_doping_control (12345, 4, 14, TRUE);

CALL add_doping_control (12345, 4, 4, TRUE);

CALL add_doping_control (12345, 5, 5, TRUE);

CALL add_doping_control (12345, 5, 15, TRUE);

CALL add_doping_control (12345, 5, 16, TRUE);

CALL add_doping_control (12345, 6, 6, TRUE);

CALL add_doping_control (12345, 6, 17, TRUE);

CALL add_doping_control (12345, 6, 18, TRUE);

-- Event Results

INSERT INTO
    event_results (
        referee_id,
        event_id,
        athlete_id,
        place
    )
VALUES (54321, 1, 7, 1),
    (54321, 1, 8, 2),
    (54321, 1, 9, 3),
    (54321, 2, 10, 1),
    (54321, 2, 11, 2),
    (54321, 2, 12, 3),
    (54321, 3, 10, 1),
    (54321, 3, 2, 2),
    (54321, 3, 13, 3),
    (54321, 4, 3, 1),
    (54321, 4, 14, 2),
    (54321, 4, 4, 3),
    (54321, 5, 5, 1),
    (54321, 5, 15, 2),
    (54321, 5, 16, 3),
    (54321, 6, 6, 1),
    (54321, 6, 17, 2),
    (54321, 6, 18, 3);