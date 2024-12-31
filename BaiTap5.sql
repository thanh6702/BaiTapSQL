CREATE TABLE NhanVien (
    MSNV INT PRIMARY KEY,
    HoTen NVARCHAR(100),
    Luong DECIMAL(10, 2)
);
CREATE TABLE Phong (
    MSP INT PRIMARY KEY,
    TenPhong NVARCHAR(100),
    NganQuy DECIMAL(10, 2),
    MSTruongPhong INT
);
CREATE TABLE LamViec (
    MSNV INT,
    MSP INT,
    PRIMARY KEY (MSNV, MSP),
    FOREIGN KEY (MSNV) REFERENCES NhanVien(MSNV),
    FOREIGN KEY (MSP) REFERENCES Phong(MSP)
);
INSERT INTO NhanVien (MSNV, HoTen, Luong) VALUES
(1, 'Nguyễn Văn Anh', 15000000),
(2, 'Trần Thị Bích', 20000000),
(3, 'Lê Quang Chung', 18000000),
(4, 'Phan Thị Diệp', 22000000),
(5, 'Đỗ Thanh Mai', 13000000);
INSERT INTO Phong (MSP, TenPhong, NganQuy, MSTruongPhong) VALUES
(101, 'Phòng Tổ chức', 1000000, 1),
(102, 'Phòng Kế hoạch', 1500000, 2),
(103, 'Phòng Kinh doanh', 2000000, 3),
(104, 'Phòng Marketing', 2500000, 4);
INSERT INTO LamViec (MSNV, MSP) VALUES
(1, 101),
(2, 102),
(3, 101),
(4, 103),
(5, 104),
(2, 101),
(3, 104);

