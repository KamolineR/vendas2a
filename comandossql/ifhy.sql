use VENDAS2A
INSERT INTO clientes(nome, createdAt, updatedAt) VALUES ("Maria Aparecida", now(), now());
select * from clientes;

INSERT INTO vendedors(nome, createdAt, updatedAt) VALUES ("Paulo Castro", now(), now());
select * from vendedors;

INSERT INTO produtos(nome, unidade, createdAt, updatedAt) VALUES ("Sabão em pó", "grama", now(), now());
select * from produtos;

INSERT INTO vendas(data, ClienteId, VendedorId, createdAt, updatedAt) VALUES ("2024-09-29", 1, 1, now(), now());
select * from vendas;

select vd.id, vd.data, c.nome, v.nome from vendas as vd, clientes as c, vendedors as v where vd.ClienteId = c.id and vd.VendedorId = v.id;

INSERT INTO items(VendaId, ProdutoId, valor, quantidade, createdAt, updatedAt) VALUES (1, 1, 30.5, 2, now(), now());
select * from items;

select i.VendaId, pr.nome, pr.unidade, i.valor, i.quantidade, i.valor * i.quantidade as subtotal from items as i, vendas as vd, produtos as pr where i.VendaId = vd.id and i.ProdutoId = pr.id;

