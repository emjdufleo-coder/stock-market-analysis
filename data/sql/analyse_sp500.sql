-- ANALYSE SQL - ACTION A (S&P 500)

-- 1. Les 5 premiers enregistrements
SELECT * FROM sp500 LIMIT 5;

-- 2. Prix moyen de cloture
SELECT AVG(Close) AS prix_moyen FROM sp500;

-- 3. Prix maximum et minimum
SELECT MAX(High) AS prix_max, MIN(Low) AS prix_min FROM sp500;

-- 4. Les 5 jours avec le plus grand volume
SELECT Date, Volume, Close 
FROM sp500 
ORDER BY Volume DESC 
LIMIT 5;

-- 5. Prix moyen par annee
SELECT SUBSTR(Date, 7, 4) AS Annee, 
ROUND(AVG(Close), 2) AS prix_moyen
FROM sp500
GROUP BY Annee
ORDER BY Annee;

-- 6. Jours avec la plus forte variation
SELECT Date, Close, Low,
ROUND(((Close - Low) / Low) * 100, 2) AS variation_pct
FROM sp500
ORDER BY variation_pct DESC
LIMIT 5;
