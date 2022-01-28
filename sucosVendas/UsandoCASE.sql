SELECT * FROM tabela_de_produtos;

SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA,
CASE 
	WHEN PRECO_DE_LISTA >= 12 THEN 'Produto caro'
	WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'Produto em conta'
	ELSE 'Produto barato'
END AS STATUS_PRECO FROM tabela_de_produtos;


SELECT EMBALAGEM,
CASE 
	WHEN PRECO_DE_LISTA >= 12 THEN 'Produto caro'
	WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'Produto em conta'
	ELSE 'Produto barato'
END AS STATUS_PRECO, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO FROM tabela_de_produtos GROUP BY EMBALAGEM, CASE 
	WHEN PRECO_DE_LISTA >= 12 THEN 'Produto caro'
	WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'Produto em conta'
	ELSE 'Produto barato'
END ORDER BY EMBALAGEM;