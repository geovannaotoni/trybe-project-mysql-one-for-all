SELECT 
    COUNT(DISTINCT s.song_id) AS cancoes,
    COUNT(DISTINCT ar.artist_id) AS artistas,
    COUNT(DISTINCT al.album_id) AS albuns
FROM
    SpotifyClone.songs s
        INNER JOIN
    SpotifyClone.artists ar
        INNER JOIN
    SpotifyClone.albums al;