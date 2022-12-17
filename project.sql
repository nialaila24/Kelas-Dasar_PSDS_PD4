CREATE TABLE Outlet (
	id_outlet INT,
	nama_outlet VARCHAR(30)

)

INSERT INTO Outlet
VALUES (1,'Pamela 1'),
       (2,'Pamela 2'),
       (3,'Pamela 3'),
       (4,'Pamela 4'),
       (5,'Pamela 5'),
       (6,'Pamela 6')

CREATE TABLE Barang (
	id_produk INT,
	nama_produk VARCHAR(30),
	stok_produk INT,
	harga_produk INT,
	harga_jual INT
)

INSERT INTO Barang
VALUES (1,'Oreo',267,4500,5000),
	   (2,'Indomie Rendang',521,1200,1800),
	   (3,'Indome Goreng',127,1250,1750),
	   (4,'Indome Soto',426,1223,1678),
	   (5,'Aqua 600 ml',523,2350,3000),
	   (6,'Le Mineral 600 ml',524,2456,2500),
	   (7,'Beras Sahaja 5 Kg',121,48000,54000),
	   (8,'Mama Lemon 250 ml',123,4500,5000),
	   (9,'Cimory Almond 200 ml', 21, 3000,3900),
	   (10,'Lifeboy 250 ml',52,23400,26000)
	   

SELECT * FROM Penjualan p
SELECT * FROM Barang b
SELECT * FROM Outlet o

--nomor 1
select sum(produk_terjual) as Produk_Terjual ,id_outlet as pamela from Penjualan
group by id_outlet
ORDER BY Produk_Terjual Desc; 

--nomor 2
SELECT sum(produk_terjual) AS Produk_Terjual,id_produk from Penjualan
WHERE id_outlet=1
GROUP BY id_produk
ORDER BY Produk_Terjual Asc;

--nomor 3
SELECT SUM(p.produk_terjual*(b.harga_jual-b.harga_produk)) Keuntungan FROM Penjualan p
INNER JOIN Barang b 
ON p.id_produk=b.id_produk
INNER JOIN Outlet o 
ON p.id_outlet=o.id_Outlet
WHERE p.id_outlet = 4 AND p.id_produk = 5

--nomor 4
SELECT sum(produk_terjual) AS Produk_Terjual,id_produk from Penjualan
WHERE id_outlet=6
GROUP BY id_produk
ORDER BY Produk_Terjual Asc;

--nomor 5
SELECT SUM(p.produk_terjual*(b.harga_jual-b.harga_produk)) Keuntungan FROM Penjualan p
INNER JOIN Barang b 
ON p.id_produk=b.id_produk
INNER JOIN Outlet o 
ON p.id_outlet=o.id_Outlet
WHERE p.id_outlet = 3 AND p.id_produk = 3
