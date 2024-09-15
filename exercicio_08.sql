-- 8. Quais são os Pilotos que pilotaram mais voos que a média. Para o cálculo da média, desconsidere os pilotos
-- que não pilotaram nenhum voo. Exiba o nome dos Pilotos e número de voos que eles pilotaram. A média
-- pode ser obtida, considerando como exemplo, se tivemos 400 voos ao todo, e temos 5 pilotos que já
-- pilotaram algum voo, dividimos 400 por 5 e temos uma média de 80 voos por piloto.

SELECT piloto.nome, COUNT(Voo.num_licenca_piloto) AS total_voos
    FROM Piloto
    INNER JOIN Voo ON piloto.num_licenca = Voo.num_licenca_piloto
    GROUP BY piloto.num_licenca, piloto.nome
    HAVING COUNT(Voo.num_voo) >
        (SELECT AVG(total_voo)
        FROM
        (SELECT COUNT(voo.num_voo) AS total_voo
            FROM VOO
            INNER JOIN Piloto ON Voo.num_licenca_piloto = Piloto.num_licenca
            GROUP BY Voo.num_licenca_piloto))