Exercice 1 :  SELECT * FROM games

Exercice 2 :  SELECT DISTINCT g_name FROM games

Exercice 3 :  SELECT g_name, g_mode, g_published_at, g_pegi FROM games ORDER BY g_name ASC

Exercice 4 :  SELECT g_name, g_mode, g_published_at, g_pegi FROM games ORDER BY g_published_at DESC LIMIT 10

Exercice 5 :  SELECT g_name, MAX(g_mode) FROM games WHERE g_mode IN ('solo', 'multijoueur', '1 à 4 joueurs') GROUP BY g_name HAVING COUNT(DISTINCT g_mode) = 1

Exercice 6 :  SELECT g_name, g_published_at FROM games WHERE year (g_published_at) BETWEEN 2015 AND 2020 ORDER BY year (g_published_at)

Exercice 7 :  SELECT g_name, g_mode FROM games WHERE g_mode LIKE '%solo%'

Exercice 8 :  SELECT * FROM games WHERE g_name LIKE '%Witcher%'

Exercice 9 :  SELECT * FROM games WHERE g_name NOT LIKE '%Halo%'

Exercice 10 :  SELECT g_name, g_published_at FROM games WHERE year(g_published_at) IN (2012, 2016, 2020)

Exercice 11 :  SELECT * FROM games NATURAL JOIN studios

Exercice 12 :  SELECT g_name, s_name, s_nationality FROM games JOIN studios ON games.s_id = studios.s_id

Exercice 13 :  SELECT g_name, g_mode, g_published_at, g_pegi FROM games ORDER BY g_pegi ASC

Exercice 14 :  SELECT * FROM games NATURAL JOIN platforms ORDER BY g_name ASC

Exercice 15 :  SELECT COUNT(*) as g_name FROM games

Exercice 16 :  SELECT COUNT(DISTINCT g_name) as g_name FROM games

Exercice 17 :  SELECT s_name, COUNT(games.s_id) AS g_name FROM studios JOIN games ON studios.s_id = games.s_id GROUP BY s_name

Exercice 18 :  SELECT studios.s_name, platforms.p_name, COUNT(*) AS 'Nombre de jeux' FROM games JOIN studios ON studios.s_id = games.s_id JOIN platforms ON platforms.p_id = games.g_id GROUP BY studios.s_name, platforms.p_name;

Exercice 19 :  SELECT g_name, COUNT(DISTINCT p_name) AS 'Nombre de plateformes' FROM games, platforms GROUP BY g_name HAVING COUNT(DISTINCT p_name) >= 4