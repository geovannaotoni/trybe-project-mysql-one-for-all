SELECT 
    so.song_name AS cancao,
    COUNT(rh.reprodution_date) AS reproducoes
FROM
    SpotifyClone.reprodution_history rh
        INNER JOIN
    SpotifyClone.songs so ON so.song_id = rh.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;