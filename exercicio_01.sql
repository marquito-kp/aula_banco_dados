-- 1. Qual é o nome do dependente mais velho. Liste apenas o nome que está sendo solicitado, nada além disso.
-- Vale para todas as próximas questões, liste apenas o que se pede.

SELECT nome FROM Dependente
	ORDER BY data_nasc DESC
	FETCH FIRST 1 ROWS ONLY;

