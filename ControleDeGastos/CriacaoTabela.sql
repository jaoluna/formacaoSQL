USE ControleDeGastos;

CREATE TABLE compras(
id INT AUTO_INCREMENT PRIMARY KEY,
valor DECIMAL(18,2),
data DATE,
observacoes VARCHAR(255),
recebida TINYINT
);
