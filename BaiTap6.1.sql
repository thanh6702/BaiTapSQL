-- 1.
Select TenDA from duan where NganSach between 50000 and 100000;

-- 2.
select nv.HoTen from nhanvien nv join thamgia tg on nv.MaNV = tg.MaNV
join duan da on da.MaDA = tg.MaDA
where da.TenDA = 'Quản lý đào tạo';

-- 3.
select tg1.MaNV from thamgia tg1 join thamgia tg2 on tg1.MaNV = tg2.MaNV
join duan da1 on da1.MaDA = tg1.MaDA
join duan da2 on da2.MaDA = tg2.MaDA
where da1.TenDA = 'Quản lý đào tạo' and da2.TenDA = 'Đào tạo từ xa';

-- 4.
SELECT TG1.MaNV
FROM ThamGia TG1
LEFT JOIN ThamGia TG2 ON TG1.MaNV = TG2.MaNV AND TG2.MaDA = 2
JOIN DuAn DA1 ON TG1.MaDA = DA1.MaDA
WHERE DA1.TenDA = 'Quản lý đào tạo' AND TG2.MaNV IS NULL;

-- 5.
SELECT MaP
FROM Phong
WHERE MaP NOT IN (
    SELECT DISTINCT NV.MaP
    FROM NhanVien NV
    JOIN ThamGia TG ON NV.MaNV = TG.MaNV
);

-- 6.
SELECT DA.TenDA
FROM DuAn DA
JOIN ThamGia TG ON DA.MaDA = TG.MaDA
JOIN NhanVien NV ON TG.MaNV = NV.MaNV
WHERE NV.MaP = (SELECT MaP FROM Phong WHERE TenP = 'NCKH')
GROUP BY DA.TenDA
HAVING COUNT(DISTINCT NV.MaNV) = (SELECT COUNT(*) FROM NhanVien WHERE MaP = (SELECT MaP FROM Phong WHERE TenP = 'NCKH'));

-- 7. 
SELECT AVG(DA.NganSach) AS TrungBinhNganSach
FROM DuAn DA
JOIN ThamGia TG ON DA.MaDA = TG.MaDA
WHERE TG.MaNV = 1;

-- 8.
SELECT COUNT(DISTINCT TG.MaNV) AS SoNhanVien
FROM ThamGia TG
JOIN DuAn DA ON TG.MaDA = DA.MaDA
WHERE DA.TenDA = 'Quản lý đào tạo';

-- 9.
SELECT DA.TenDA
FROM DuAn DA
JOIN ThamGia TG ON DA.MaDA = TG.MaDA
GROUP BY DA.TenDA
HAVING COUNT(DISTINCT TG.MaNV) < 10;

-- 10.
SELECT DA.TenDA
FROM DuAn DA
JOIN ThamGia TG ON DA.MaDA = TG.MaDA
GROUP BY DA.TenDA
ORDER BY COUNT(DISTINCT TG.MaNV) DESC
LIMIT 1;

