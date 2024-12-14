-- Все заявители на событие '100 metres freestyle (men)'
SELECT * FROM requesters (1);

-- Все допущенные заявители на событие '100 metres freestyle (men)'
SELECT * FROM admitted_requesters (1);

-- Итоговое табло для события '100 metres freestyle (men)'
SELECT * FROM final_scoreboard (1);

-- Все медали атлета 'Léon Marchand'
SELECT * FROM all_medals (10);

-- Общий медальный зачет
SELECT *
FROM medal_table
ORDER BY gold DESC, silver DESC, bronze DESC;