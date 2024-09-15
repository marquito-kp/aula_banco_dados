-- 6. Exiba o nome dos dois modelos de avião mais utilizados nos voos. Exiba também o número de voos que
-- ocorreram com esses modelos.

-- Utilizar o COUNT(*) ao fazer o select, imprime uma coluna com a quantidade de vezes que aquela informação aparece na tabela.
-- AS é utilizado para mudar o label da coluna.

SELECT Modelo.nome, COUNT(*) AS Num_voos_realizados FROM Voo 
    INNER JOIN Aviao ON Voo.matricula_aviao = Aviao.matricula
    INNER JOIN Modelo ON Aviao.id_modelo = Modelo.id
	GROUP BY Modelo.nome
	ORDER BY COUNT(*) DESC
    FETCH FIRST 2 ROWS ONLY;