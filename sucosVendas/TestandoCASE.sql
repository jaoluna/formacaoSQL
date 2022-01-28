SELECT CPF, 
CASE
	WHEN YEAR(DATA_DE_NASCIMENTO) < 1990 THEN 'VELHO'
    WHEN YEAR(DATA_DE_NASCIMENTO) < 1995 AND YEAR(DATA_DE_NASCIMENTO) > 1990 THEN 'JOVENS'
	ELSE 'CRIANÇAS'
END AS CLASSIFICACAO_IDADE FROM tabela_de_clientes;