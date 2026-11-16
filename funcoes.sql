SELECT NOW();
-- Retorna Data e Hora atual--

SELECT CURDATE();
-- Retorna apenas a Data atual--

SELECT CURTIME();
-- Retorna apenas a Hora atual--

SELECT YEAR (NOW());
-- Extrai o Ano--

SELECT MONTH (NOW());
-- Mostra somente o mês--alter

SELECT DAY (NOW());
-- Seleciona apenas o dia--

SELECT DATE_ADD(NOW(), INTERVAL 7 DAY);
-- Soma dias, meses e anos--

SELECT DATEDIFF('2026-11-16','2010-03-17');
-- Mostra a diferença das datas em numeros--

SELECT ABS(-50);

SELECT ROUND(19,567,2);

SELECT CEIL(9,1);

SELECT FLOOR(9,9);

SELECT POW(2,3);

SELECT RAND();

SELECT UPPER('nome');

SELECT LOWER('NOME');

SELECT LENGTH('SQL');

SELECT CONCAT('nome','-','email');

SELECT SUBSTRING('nome',1,3);

SELECT REPLACE('noma da Silva','Silva','S');

SELECT TRIM('João');

SELECT COUNT(*)FROM clientes;

select sum(preco) from produtos;


select avg(preco) from produtos;


select min(preco) from produtos;


select max(preco) from produtos;

select categoria, AVG(preco) AS media_preco
FROM produtos 
GROUP BY categoria;

select categoria,
MIN(preco) AS menor_preco,
MAX(preco) AS maior_preco
from produtos
GROUP BY categoria;

select categora, COUNT (*) AS total
FROM produtos
GROUP BY categoria
HAVING COUNT(*) > 2;