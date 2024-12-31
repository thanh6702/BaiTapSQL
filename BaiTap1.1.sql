-- 1.
select * from ncc;
-- 2.
select * from ncc where ncc.DiaChi like '%Ha Noi%';
-- 3.
select * from mathang where mathang.MauSac = 'do';
-- 4.
select MSNCC, MSMH from cungcap  where GiaTien between 50 and 150;
-- 5.
select MSMH, GiaTien from cungcap  where MSNCC = 'NCC1';
-- 6.
select MSMH, GiaTien from cungcap  where MSNCC = 'NCC1' AND GiaTien < 100;
 -- 7.
select MSMH , GiaTien from cungcap order by GiaTien desc;
-- 8.
select MSMH , GiaTien from cungcap order by  MSNCC desc,GiaTien desc;
-- 9.
Update mathang set Mausac = 'xanh' where MSMH = 'MH5';
-- 10.
select MSNCC, Count(MSMH) as SoLuongMatHang from cungcap group by MSNCC;
-- 11.
select MauSac, Count(MSMH) as SoLuongSanPham from mathang group by MauSac;
-- 12.
SET SQL_SAFE_UPDATES = 0;
Delete from cungcap where GiaTien > 200;
SET SQL_SAFE_UPDATES = 1;


