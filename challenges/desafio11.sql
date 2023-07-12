SELECT 
    al.album_name AS album, COUNT(al.album_name) AS favoritadas
FROM
    SpotifyClone.favorite_songs fs
        INNER JOIN
    SpotifyClone.songs so ON so.song_id = fs.song_id
        INNER JOIN
    SpotifyClone.albums al ON al.album_id = so.album_id
GROUP BY al.album_name
ORDER BY favoritadas DESC , album
LIMIT 3;