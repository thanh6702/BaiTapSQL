CREATE TABLE NhanVien (
    MaNV INT PRIMARY KEY,
    HoTen NVARCHAR(100),
    NgaySinh DATE,
    MaP INT
);
CREATE TABLE Phong (
    MaP INT PRIMARY KEY,
    TenP NVARCHAR(100)
);
CREATE TABLE DuAn (
    MaDA INT PRIMARY KEY,
    TenDA NVARCHAR(100),
    NganSach DECIMAL(15, 2)
);
CREATE TABLE ThamGia (
    MaNV INT,
    MaDA INT,
    SoGioThamGia INT,
    PRIMARY KEY (MaNV, MaDA),
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
    FOREIGN KEY (MaDA) REFERENCES DuAn(MaDA)
);

INSERT INTO NhanVien (MaNV, HoTen, NgaySinh, MaP) VALUES
(1, 'Nguyễn Văn Anh Pham', '1990-01-01', 101),
(2, 'Trần Thị Bích', '1992-02-02', 102),
(3, 'Lê Quang Chung', '1989-03-03', 103),
(4, 'Phan Thị Diệp', '1991-04-04', 101),
(5, 'Đỗ Thanh Linh', '1993-05-05', 102);
INSERT INTO Phong (MaP, TenP) VALUES
(101, 'NCKH'),
(102, 'Quản lý đào tạo'),
(103, 'Kế toán');
INSERT INTO DuAn (MaDA, TenDA, NganSach) VALUES
(1, 'Quản lý đào tạo', 50000),
(2, 'Đào tạo từ xa', 70000),
(3, 'Quản lý nhân sự', 100000);
INSERT INTO ThamGia (MaNV, MaDA, SoGioThamGia) VALUES
(1, 1, 100),
(2, 1, 120),
(3, 2, 150),
(4, 1, 130),
(5, 3, 110),
(1, 2, 110);

