SELECT 
    ar.artist_name AS artista, al.album_name AS album
FROM
    SpotifyClone.albums al
        INNER JOIN
    SpotifyClone.artists ar ON ar.artist_id = al.artist_id
HAVING artist_name = 'Elis Regina';