SELECT 
    us.user_name AS pessoa_usuaria,
    COUNT(rh.song_id) AS musicas_ouvidas,
    SUM(ROUND(so.song_duration_seconds/60, 2)) AS total_minutos
FROM
    SpotifyClone.users us
        INNER JOIN
    SpotifyClone.reprodution_history rh ON rh.user_id = us.user_id
        INNER JOIN
    SpotifyClone.songs so ON so.song_id = rh.song_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;