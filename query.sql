CREATE TABLE usuarios (

id INT AUTO_INCREMENT PRIMARY KEY,

nome VARCHAR(100),

email VARCHAR(100),

senha VARCHAR(100),

criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

atualizado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

); 

INSERT INTO usuarios (nome, email, senha) VALUES

('João', 'joao@example.com', 'senha123'),

('Maria', 'maria@example.com', 'senha456'),

('Pedro', 'pedro@example.com', 'senha789');

CREATE TABLE pedidos(
	id int auto_increment primary key,
    descricao varchar(255),
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	atualizado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
); 

INSERT INTO pedidos (descricao) VALUES

('Teste 1'),

('Teste 2'),

('Teste 3');