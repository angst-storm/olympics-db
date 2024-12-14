-- All '100 metres freestyle (men)' event requesters
SELECT * FROM requesters (1);

-- Only admitted '100 metres freestyle (men)' event requesters
SELECT * FROM admitted_requesters (1);

-- Scoreboard of '100 metres freestyle (men)' event
SELECT * FROM final_scoreboard (1);

-- All medals of 'Léon Marchand'
SELECT * FROM all_medals (10);

-- Medal table for all NOCs
SELECT *
from medal_table
ORDER BY gold DESC, silver DESC, bronze DESC;