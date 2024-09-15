-- 4. Liste o Num_voo, data, hora, Partida, Destino, nome do modelo do avião, Num_lugares, Autonomia,
-- Data_fabricacao e nome do Piloto dos voos realizados.

SELECT num_voo, data_voo, hora, partida, destino, modelo.nome, modelo.num_lugares, modelo.autonomia, aviao.data_fabricacao, piloto.nome FROM Voo 
    INNER JOIN Aviao ON Voo.matricula_aviao = Aviao.matricula
    INNER JOIN Modelo ON Aviao.id_modelo = Modelo.id
    INNER JOIN Piloto ON Piloto.num_licenca = Voo.num_licenca_piloto;