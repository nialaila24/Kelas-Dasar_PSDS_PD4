CREATE TABLE MK_KALKULUS (
	NIM VARCHAR(10),
	NAMA VARCHAR(30),
	UTS INTEGER,
	UAS INTEGER
)

--input data
INSERT INTO MK_KALKULUS (NIM,NAMA,UTS,UAS)
VALUES ("2100015049","Wismu Catur R",70,90),
	   ("2100015041","Sindy Mei Marantika",70,70),
	   ("2100015006","Januar Nur Rasyid",60,70),
	   ("2100015011","Lisa Nessa Safitri",80,80)
	   
-- Melihat tabel 
Select *,((UTS+UAS)/2) Nilai_akhir From MK_KALKULUS

-- Rata rata nilai akhir 
Select AVG(((UTS+UAS)/2)) From MK_KALKULUS

-- Menampilkan nilai di atas nilai rata rata (rata rata = 73.75)
Select *,((UTS+UAS)/2) Nilai_akhir From MK_KALKULUS
WHERE Nilai_Akhir > 73.75

--input data
INSERT INTO MK_KALKULUS (NIM,NAMA,UTS,UAS)
VALUES ("2200015049","Hasan R",40,40),

-- Melihat tabel 
Select *,((UTS+UAS)/2) Nilai_akhir From MK_KALKULUS

-- Rata rata nilai akhir 
Select AVG(((UTS+UAS)/2)) From MK_KALKULUS

--sub Quare menampilkan data lebih dari rata rata 
Select *,((UTS+UAS)/2) Nilai_akhir From MK_KALKULUS
WHERE Nilai_Akhir > (Select AVG(((UTS+UAS)/2)) From MK_KALKULUS)