-- 1.
SELECT * FROM monhoc ;

-- 2.
SELECT MSSV,HoTen,NgaySinh FROM sinhvien WHERE QueQuan = 'Hà Nội';

-- 3.
SELECT * FROM dangky WHERE MSMH IN (1,2);

-- 4.
SELECT m.TenMH FROM monhoc m JOIN dangky d ON
m.MSMH = d.MSMH  WHERE d.MSSV = '20042325' ;

-- 5.
SELECT s.HoTen FROM sinhvien s JOIN dangky d ON s.MSSV = d.MSSV
JOIN monhoc m ON d.MSMH = m.MSMH
WHERE m.TenGV = 'Lê Quân' ; 

-- 6.
SELECT m.TenMH, d.Diem FROM monhoc m JOIN dangky d ON m.MSMH = d.MSMH
JOIN sinhvien s ON d.MSSV = s.MSSV 
WHERE s.HoTen = 'Nguyễn Văn Anh';

-- 7 
SELECT MSSV
FROM DangKy
WHERE MSMH IN (SELECT MSMH FROM MonHoc WHERE TenGV = 'Lê Quân')
GROUP BY MSSV
HAVING COUNT(DISTINCT MSMH) = (SELECT COUNT(*) FROM MonHoc WHERE TenGV = 'Lê Quân');

-- 8.
SELECT TenMH
FROM MonHoc
WHERE MSMH NOT IN (SELECT DISTINCT MSMH FROM DangKy);

-- 9.
SELECT MSSV
FROM DangKy
GROUP BY MSSV
HAVING COUNT(DISTINCT MSMH) >= 5;

-- 10. 
SELECT AVG(Diem) AS DiemTrungBinh
FROM DangKy
WHERE MSSV = 20042325;

-- 11.
SELECT MSSV
FROM DangKy
WHERE MSMH = 1 AND Diem = (SELECT MAX(Diem) FROM DangKy WHERE MSMH = 1);
