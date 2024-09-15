-- 5. Liste o nome do modelo do avião que participou de mais voos.

SELECT Modelo.nome FROM Voo 
    INNER JOIN Aviao ON Voo.matricula_aviao = Aviao.matricula
    INNER JOIN Modelo ON Aviao.id_modelo = Modelo.id
	GROUP BY Modelo.nome
	ORDER BY COUNT(*) DESC
    FETCH FIRST 1 ROWS ONLY;