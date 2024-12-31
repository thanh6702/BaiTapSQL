CREATE TABLE SinhVien (
    MSSV INT PRIMARY KEY,
    HoTen NVARCHAR(100),
    NgaySinh DATE,
    QueQuan NVARCHAR(100)
);
CREATE TABLE MonHoc (
    MSMH INT PRIMARY KEY,
    TenMH NVARCHAR(100),
    TenGV NVARCHAR(100)
);
CREATE TABLE DangKy (
    MSMH INT,
    MSSV INT,
    Diem DECIMAL(5, 2),
    PRIMARY KEY (MSMH, MSSV),
    FOREIGN KEY (MSMH) REFERENCES MonHoc(MSMH),
    FOREIGN KEY (MSSV) REFERENCES SinhVien(MSSV),
    CHECK (Diem >= 0 AND Diem <= 10)
);
INSERT INTO SinhVien (MSSV, HoTen, NgaySinh, QueQuan) VALUES
(20042325, 'Nguyễn Văn Anh', '1999-01-01', 'Hà Nội'),
(20042326, 'Trần Thị Bướng', '1998-05-12', 'Hà Nội'),
(20042327, 'Lê Quang Cải', '1997-07-30', 'TPHCM');
INSERT INTO MonHoc (MSMH, TenMH, TenGV) VALUES
(1, 'CSDL', 'Lê Quân'),
(2, 'Mạng máy tính', 'Nguyễn Hoàng');
INSERT INTO DangKy (MSMH, MSSV, Diem) VALUES
(1, 20042325, 9.0),
(1, 20042326, 8.5),
(2, 20042327, 7.0);
