-- 2. Qual é a média de autonomia entre os aviões que a companhia possui.

SELECT AVG(autonomia) FROM Aviao INNER JOIN Modelo ON Aviao.id_modelo = Modelo.id;