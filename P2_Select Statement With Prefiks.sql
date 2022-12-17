-- Cara menampilkan tabel --
SELECT * FROM Anggit


-- Cara lain untuk menampilkan data dengan prefiks --
-- Prefiks jelas
SELECT * FROM Anggit AS i
-- Prefiks samar
SELECT * FROM Anggit i

-- Cara mengambil Variabel nama
-- menggunakan prefiks
SELECT i.NIM From Anggit i
-- tidak menggunakan prefiks
SELECT NIM FROM Anggit

-- cara mengambil variabel namadepan dan namabelakang
SELECT i.NamaDepan, i.NamaBelakang FROM Anggit i
SELECT NamaDepan, NamaBelakang FROM Anggit

-- Cara Menganti urutan
SELECT i.NomorHP, i.NamaDepan, i.NamaBelakang, i.NIM FROM Anggit i