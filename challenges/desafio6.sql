SELECT 
    MIN(pl.plan_price) AS faturamento_minimo,
    MAX(pl.plan_price) AS faturamento_maximo,
    ROUND(AVG(pl.plan_price), 2) AS faturamento_medio,
    SUM(pl.plan_price) AS faturamento_total
FROM
    SpotifyClone.plans pl
        INNER JOIN
    SpotifyClone.users us ON us.plan_id = pl.plan_id;