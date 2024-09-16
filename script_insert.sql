-- Nesse script são adicionados as informações nas tabelas criadas no Banco de Dados

-- Inserir informações de Modelo

INSERT INTO Modelo VALUES (1,'Boeign 747',400,8000)
INSERT INTO Modelo VALUES (2,'Airbus A320',150,3500);
INSERT INTO Modelo VALUES (3,'Embraer E195',120,2500);
INSERT INTO Modelo VALUES (4,'Bombardier CRJ900',90,2000);
INSERT INTO Modelo VALUES (5,'Boeing 787 Dreamliner',300, 8250);

-- Inserir informações de Aviao

INSERT INTO Aviao VALUES ('ABCD123', 1, TO_DATE('01-01-22', 'DD-MM-YYYY'));
INSERT INTO Aviao VALUES ('EFGH456', 2, TO_DATE('23-08-18', 'DD-MM-YYYY'));
INSERT INTO Aviao VALUES ('QWERT123', 3, TO_DATE('05-10-24', 'DD-MM-YYYY'));
INSERT INTO Aviao VALUES ('EDCF157', 4, TO_DATE('12-09-21', 'DD-MM-YYYY'));
INSERT INTO Aviao VALUES ('QUDH872', 5, TO_DATE('30-12-19', 'DD-MM-YYYY'));

-- Inserir informações de Piloto

INSERT INTO Piloto VALUES (123456, 'João Silva');
INSERT INTO Piloto VALUES (654321, 'Maria Santos');
INSERT INTO Piloto VALUES (987654, 'Pedro Costa');
INSERT INTO Piloto VALUES (456789,'Ana Souza');
INSERT INTO Piloto VALUES (789456,'Carlos pereira');
INSERT INTO Piloto VALUES (121314,'Josue Oliveira');

-- Inserir informações de Apto a pilotar
INSERT INTO AptoPilotar VALUES (1, 123456);
INSERT INTO AptoPilotar VALUES (1, 654321);
INSERT INTO AptoPilotar VALUES (2, 123456);
INSERT INTO AptoPilotar VALUES (2, 654321);
INSERT INTO AptoPilotar VALUES (2, 693258);
INSERT INTO AptoPilotar VALUES (3, 123456);

-- Inserir informações de Dependente

INSERT INTO Dependente VALUES (1, ' Maria Silva ', TO_DATE('15-01-05', ' DD-MM-YYYY '), 123456);
INSERT INTO Dependente VALUES (2, ' Pedro Santos ', TO_DATE('22-06-08', ' DD-MM-YYYY '), 654321);
INSERT INTO Dependente VALUES (3, ' Ana Oliveira ', TO_DATE('10-03-10', ' DD-MM-YYYY '), 987654);
INSERT INTO Dependente VALUES (4, ' João Oliveira ', TO_DATE('05-12-03', ' DD-MM-YYYY '), 123456);
INSERT INTO Dependente VALUES (5, ' Eduardo Silva ', TO_DATE('22-02-15', ' DD-MM-YYYY '), 123456);

-- Inserir informações de Voo

INSERT INTO Voo (num_voo, data_voo, hora, partida, destino, matricula_aviao, num_licenca_piloto) VALUES ('V123', TO_DATE('14-07-23', 'DD-MM-YYYY'), TO_TIMESTAMP('14:30' , 'HH24:MI'), 'Porto Alegre', 'São Paulo', 'ABCD123', 123456);
INSERT INTO Voo (num_voo, data_voo, hora, partida, destino, matricula_aviao, num_licenca_piloto) VALUES (' V001', TO_DATE('14-07-23', ' DD-MM-YYYY '), TO_TIMESTAMP('09:00' , ' HH24:MI') , ' Porto Alegre ', ' São Paulo ', ' EFGH456', 123456);
INSERT INTO Voo (num_voo, data_voo, hora, partida, destino, matricula_aviao, num_licenca_piloto) VALUES ('V002', TO_DATE('15-07-23', 'DD-MM-YYYY'), TO_TIMESTAMP('12:30' , 'HH24:MI') ,'São Paulo', 'Rio de Janeiro', 'QWERT123', 456789);
INSERT INTO Voo (num_voo, data_voo, hora, partida, destino, matricula_aviao, num_licenca_piloto) VALUES ('V003', TO_DATE('16-07-23', 'DD-MM-YYYY'), TO_TIMESTAMP('15:45' , 'HH24:MI') ,'Rio de Janeiro', 'Brasília', 'EDCF157', 789456);
INSERT INTO Voo (num_voo, data_voo, hora, partida, destino, matricula_aviao, num_licenca_piloto) VALUES ('V004', TO_DATE('17-07-23', 'DD-MM-YYYY'), TO_TIMESTAMP('08:30' , 'HH24:MI') ,'Brasília', 'Salvador', 'QUDH872', 789456);

INSERT INTO Voo (num_voo, data_voo, hora, partida, destino, matricula_aviao, num_licenca_piloto) 
	VALUES ('V005', TO_DATE('16-09-23', 'DD-MM-YYYY'), TO_TIMESTAMP('15:45' , 'HH24:MI') ,'Boa Vista', 'Caxia do Sul', 'QUDH872', 789456);
INSERT INTO Voo (num_voo, data_voo, hora, partida, destino, matricula_aviao, num_licenca_piloto) 
	VALUES ('V006', TO_DATE('17-12-23', 'DD-MM-YYYY'), TO_TIMESTAMP('08:30' , 'HH24:MI') ,'Caxias do Sul', 'São Paulo', 'QUDH872', 789456);

INSERT INTO Voo (num_voo, data_voo, hora, partida, destino, matricula_aviao, num_licenca_piloto) 
	VALUES ('V007', TO_DATE('14-07-23', ' DD-MM-YYYY '), TO_TIMESTAMP('09:00' , ' HH24:MI') , ' Porto Alegre ', 'Florianopolis ', 'EFGH456', 123456);
INSERT INTO Voo (num_voo, data_voo, hora, partida, destino, matricula_aviao, num_licenca_piloto) 
	VALUES ('V008', TO_DATE('15-07-23', 'DD-MM-YYYY'), TO_TIMESTAMP('12:30' , 'HH24:MI') ,'São Paulo', 'Belo Horizonte', 'QWERT123', 456789);