-- 1.
SELECT NV.HoTen
FROM NhanVien NV
JOIN LamViec LV1 ON NV.MSNV = LV1.MSNV
JOIN LamViec LV2 ON NV.MSNV = LV2.MSNV
WHERE LV1.MSP = 101 AND LV2.MSP = 102;

-- 2.
SELECT MSP, COUNT(MSNV) AS SoNhanVien
FROM LamViec
GROUP BY MSP
HAVING COUNT(MSNV) > 5;

-- 3.
SELECT NV.HoTen
FROM NhanVien NV
JOIN LamViec LV ON NV.MSNV = LV.MSNV
JOIN Phong P ON LV.MSP = P.MSP
WHERE NV.Luong > P.NganQuy;

-- 4.
SELECT MSTruongPhong
FROM Phong
GROUP BY MSTruongPhong
HAVING MIN(NganQuy) > 1000000;

-- 5.
SELECT NV.HoTen
FROM NhanVien NV
JOIN Phong P ON NV.MSNV = P.MSTruongPhong
WHERE P.NganQuy = (SELECT MAX(NganQuy) FROM Phong);

-- 6.
SELECT MSTruongPhong
FROM Phong
GROUP BY MSTruongPhong
HAVING SUM(NganQuy) > 500000;

