SELECT 
    ar.artist_name AS artista,
    CASE
        WHEN COUNT(al.album_name) > 4 THEN 'A'
        WHEN COUNT(al.album_name) IN (3, 4) THEN 'B'
        WHEN COUNT(al.album_name) IN (1, 2) THEN 'C'
        ELSE '-'
    END AS ranking
FROM
    SpotifyClone.favorite_songs fs
        INNER JOIN
    SpotifyClone.songs so ON so.song_id = fs.song_id
        INNER JOIN
    SpotifyClone.albums al ON al.album_id = so.album_id
        RIGHT JOIN
    SpotifyClone.artists ar ON ar.artist_id = al.artist_id
GROUP BY ar.artist_name
ORDER BY COUNT(al.album_name) DESC, artista;