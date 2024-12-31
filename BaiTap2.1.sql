-- 1.
SELECT * FROM GiangVien WHERE DiaChi LIKE '%Hai Bà Trưng%' 
ORDER BY HoTen DESC;
-- 2.
INSERT INTO GiangVien (GV, HoTen, DiaChi, NgaySinh)
VALUES ('GV06', 'Ngô Tuấn Phong', 'Đống Đa, Hà Nội', '1986-09-08');
-- 3.
UPDATE GiangVien SET DiaChi = 'Tây Hồ, Hà Nội' WHERE HoTen = 'Vũ Tuyết Trinh';
-- 4.
DELETE FROM thamgia where GV = 'GV02';
DELETE FROM giangvien where GV = 'GV02';

-- 5.
SELECT Cap , sum(KinhPhi) AS TongKinhPhi FROM detai
group by Cap;

-- 6. 
SELECT GV , sum(SoGio) AS TongSoGio FROM thamgia
group by GV;

-- 7.
SELECT * FROM giangvien WHERE YEAR(NgaySinh) >= 1980;