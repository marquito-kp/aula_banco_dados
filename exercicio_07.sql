-- 7.Qual é o nome dos dependentes do Piloto que possui mais dependentes

SELECT Dependente.nome FROM Dependente
WHERE dependente.num_licenca_piloto = (SELECT Piloto.num_licenca FROM Dependente 
    INNER JOIN Piloto ON Piloto.num_licenca = Dependente.num_licenca_piloto
	GROUP BY Piloto.num_licenca
	ORDER BY COUNT(*) DESC
    FETCH FIRST 1 ROWS ONLY);