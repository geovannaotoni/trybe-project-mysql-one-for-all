SELECT 
    us.user_name AS pessoa_usuaria,
    IF(YEAR(MAX(rh.reprodution_date)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM
    SpotifyClone.users us
        INNER JOIN
    SpotifyClone.reprodution_history rh ON rh.user_id = us.user_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;