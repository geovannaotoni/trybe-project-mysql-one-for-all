SELECT 
    CASE
        WHEN us.user_age < 31 THEN 'Até 30 anos'
        WHEN us.user_age BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
        WHEN us.user_age > 60 THEN 'Maior de 60 anos'
    END AS faixa_etaria,
    COUNT(DISTINCT us.user_id) AS total_pessoas_usuarias,
    COUNT(fs.song_id) AS total_favoritadas
FROM
    SpotifyClone.users us
        LEFT JOIN
    SpotifyClone.favorite_songs fs ON fs.user_id = us.user_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;