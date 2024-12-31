-- 1.
INSERT INTO NCC (MSNCC, TenNCC, DiaChi) VALUES ('NCC2', 'Cty D', 'Nam Định');
INSERT INTO NCC (MSNCC, TenNCC, DiaChi) VALUES ('NCC3', 'Cty D', 'Nam Định');
INSERT INTO NCC (MSNCC, TenNCC, DiaChi) VALUES ('NCC4', 'Cty D', 'Nam Định');

INSERT INTO MatHang (MSMH, TenMH, MauSac) VALUES ('MH5', 'Mat hang 6', 'tim');
INSERT INTO MatHang (MSMH, TenMH, MauSac) VALUES ('MH6', 'Mat hang 6', 'tim');

INSERT INTO CungCap (MSNCC, MSMH, GiaTien) VALUES ('NCC3', 'MH7', 100);
INSERT INTO CungCap (MSNCC, MSMH, GiaTien) VALUES ('NCC3', 'MH4', 100);

-- 2.
select n.MSNCC , n.TenNCC,n.DiaChi,c.MSMH,c.GiaTien from ncc n join cungcap c on n.MSNCC = c.MSNCC;

-- 3.
select n.MSNCC , n.TenNCC,n.DiaChi,c.MSMH,c.GiaTien from ncc n join cungcap c on n.MSNCC = c.MSNCC
order by n.MSNCC ;

-- 4.
select n.MSNCC , n.TenNCC,n.DiaChi,c.MSMH,c.GiaTien from ncc n , cungcap c;

-- 5. 
select n.MSNCC, n.TenNCC, n.DiaChi, m.MSMH, m.TenMH, m.MauSac, c.GiaTien 
from ncc n join cungcap c on n.MSNCC = c.MSNCC
join mathang m on c.MSMH = m.MSMH;


-- 6.
select distinct n.MSNCC from ncc n
join cungcap c on n.MSNCC = c.MSNCC
join mathang m on c.MSMH = m.MSMH Where m.MauSac In ('do','xanh');

-- 7.
select distinct n.MSNCC
from ncc n
where exists (
    select 1
    from cungcap c 
    join mathang m on c.MSMH = m.MSMH
    where n.MSNCC = c.MSNCC and m.MauSac = 'do'
) and exists (
    select 1
    from cungcap c 
    join mathang m on c.MSMH = m.MSMH
    where n.MSNCC = c.MSNCC and m.MauSac = 'xanh'
);

-- 8.
select * from ncc n where n.MSNCC Not in (
select c.MSNCC from cungcap c
where c.MSMH = 'MH1'
);

-- 9.
select * from ncc n where n.MSNCC Not in (
select distinct MSNCC from cungcap 
);

-- 10.
select n.MSNCC, n.TenNCC, count(c.MSMH) as SoLuongMatHang,  n.DiaChi 
from ncc n left join cungcap c on n.MSNCC = c.MSNCC
group by n.MSNCC, n.TenNCC;

-- 11.
select MSMH from cungcap group by MSMH 
having count(MSMH) >= 2;

-- 12.
select c.MSMH, max(c.GiaTien) as GiaCaoNhat 
from ncc n left join cungcap c on n.MSNCC = c.MSNCC
where n.TenNCC = 'Cty A'
group by c.MSMH;

-- 13.
SELECT c1.MSNCC AS NCC1, c2.MSNCC AS NCC2, c1.MSMH, c1.GiaTien AS GiaNCC1, c2.GiaTien AS GiaNCC2
FROM CungCap c1
JOIN CungCap c2 ON c1.MSMH = c2.MSMH AND c1.MSNCC != c2.MSNCC
WHERE c1.GiaTien > c2.GiaTien;

-- 14
SELECT MSMH
FROM CungCap
GROUP BY MSMH
HAVING MAX(GiaTien) < 200;

 

