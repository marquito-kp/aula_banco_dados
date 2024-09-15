-- 3. Liste a data de fabricação do avião mais novo da companhia.

SELECT data_fabricacao FROM Modelo INNER JOIN Aviao ON Aviao.id_modelo = Modelo.id
	ORDER BY data_fabricacao DESC
	FETCH FIRST 1 ROWS ONLY;

