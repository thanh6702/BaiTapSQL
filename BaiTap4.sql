-- 1.
SELECT * 
FROM GiangVien
WHERE DiaChi LIKE '%Hai Bà Trưng%'
ORDER BY HoTen DESC;
-- 2.
SELECT G.HoTen, G.DiaChi, G.NgaySinh
FROM GiangVien G
JOIN ThamGia TG ON G.GV = TG.GV
JOIN DeTai D ON TG.DT = D.DT
WHERE D.TenDT = 'Tính toán lưới';

-- 3. 
SELECT G.HoTen, G.DiaChi, G.NgaySinh
FROM GiangVien G
JOIN ThamGia TG ON G.GV = TG.GV
JOIN DeTai D ON TG.DT = D.DT
WHERE D.TenDT IN ('Phân loại văn bản', 'Dịch tự động Anh Việt');

-- 4.
SELECT giangvien.GV , giangvien.HoTen
FROM thamgia LEFT JOIN giangvien ON giangvien.GV = thamgia.GV
GROUP BY GV
HAVING COUNT(DT) >= 2;

-- 5.
SELECT G.HoTen
FROM GiangVien G
JOIN ThamGia TG ON G.GV = TG.GV
GROUP BY G.GV
ORDER BY COUNT(TG.DT) DESC
LIMIT 1;

-- 6.
SELECT TenDT
FROM DeTai
ORDER BY KinhPhi ASC
LIMIT 1;

-- 7 
SELECT G.HoTen, G.NgaySinh, D.TenDT
FROM GiangVien G
JOIN ThamGia TG ON G.GV = TG.GV
JOIN DeTai D ON TG.DT = D.DT
WHERE G.DiaChi LIKE '%Tây Hồ%';

-- 8 
SELECT G.HoTen
FROM GiangVien G
JOIN ThamGia TG ON G.GV = TG.GV
JOIN DeTai D ON TG.DT = D.DT
WHERE G.NgaySinh < '1980-01-01' AND D.TenDT = 'Phân loại văn bản';

-- 9.
SELECT G.GV, G.HoTen, SUM(TG.SoGio) AS TongSoGio
FROM GiangVien G
JOIN ThamGia TG ON G.GV = TG.GV
GROUP BY G.GV;

-- 10.
INSERT INTO GiangVien (GV, HoTen, DiaChi, NgaySinh) 
VALUES ('GV06', 'Ngô Tuấn Phong', 'Đống Đa, Hà Nội', '1986-09-08');

-- 11.
UPDATE GiangVien
SET DiaChi = 'Tây Hồ, Hà Nội'
WHERE GV = 'GV01';
-- 12. 
DELETE FROM ThamGia
WHERE GV = 'GV02';

DELETE FROM GiangVien
WHERE GV = 'GV02';




