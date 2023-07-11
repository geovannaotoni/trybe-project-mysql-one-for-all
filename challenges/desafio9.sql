SELECT 
    COUNT(fa.artist_id) AS musicas_no_historico
FROM
    SpotifyClone.following_artists fa
        INNER JOIN
    SpotifyClone.users us ON us.user_id = fa.user_id
GROUP BY us.user_name
HAVING us.user_name = 'Barbara Liskov';