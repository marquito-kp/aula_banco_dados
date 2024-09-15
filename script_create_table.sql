-- Exericio da aula vivencial realizado em conjunto com Gabriela Bado e Lara Albuquerque.

-- Script para criar tabelas do exercicio da aula vivencial 03 no dia 14/09/2024

CREATE TABLE Modelo (id INT PRIMARY KEY, 
					nome VARCHAR(50), 
					num_lugares INT, 
					autonomia INT);

CREATE TABLE Aviao (matricula VARCHAR(50) PRIMARY KEY, 
					id_modelo INT, 
					FOREIGN KEY (id_modelo) REFERENCES Modelo(id), 
					data_fabricacao DATE);

CREATE TABLE Piloto (num_licenca INT PRIMARY KEY, 
    					nome VARCHAR(50));

CREATE TABLE Voo (num_voo VARCHAR(50) PRIMARY KEY,
        			data_voo DATE,				
    				hora TIMESTAMP,
    				partida VARCHAR(50),
    				destino VARCHAR(50), 
    				matricula_aviao VARCHAR(50),
    				num_licenca_piloto INT,
    				FOREIGN KEY (matricula_aviao) REFERENCES Aviao(matricula),
    				FOREIGN KEY (num_licenca_piloto) REFERENCES Piloto(num_licenca));

CREATE TABLE AptoPilotar (id_modelo INT,
    						num_licenca_piloto INT,
    						FOREIGN KEY (id_modelo) REFERENCES Modelo(id),
    						FOREIGN KEY (num_licenca_piloto) REFERENCES Piloto(num_licenca),
    						PRIMARY KEY (id_modelo, num_licenca_piloto));
							
CREATE TABLE Dependente (id_dependente INT PRIMARY KEY,
    						nome VARCHAR(50),
    						data_nasc DATE,
    						num_licenca_piloto INT,
    						FOREIGN KEY (num_licenca_piloto) REFERENCES Piloto(num_licenca));