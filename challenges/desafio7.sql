SELECT 
    ar.artist_name AS artista,
    al.album_name AS album,
    COUNT(fa.user_id) AS pessoas_seguidoras
FROM
    SpotifyClone.artists ar
        INNER JOIN
    SpotifyClone.albums al ON al.artist_id = ar.artist_id
        INNER JOIN
    SpotifyClone.following_artists fa ON fa.artist_id = ar.artist_id
GROUP BY artista , album
ORDER BY pessoas_seguidoras DESC, artista, album;