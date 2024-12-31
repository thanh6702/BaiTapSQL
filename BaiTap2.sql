CREATE TABLE GiangVien (
    GV NVARCHAR(10) PRIMARY KEY,
    HoTen NVARCHAR(100),
    DiaChi NVARCHAR(255),
    NgaySinh DATE
);
CREATE TABLE DeTai (
    DT NVARCHAR(10) PRIMARY KEY,
    TenDT NVARCHAR(255),
    Cap NVARCHAR(50),
    KinhPhi DOUBLE
);
CREATE TABLE ThamGia (
    GV NVARCHAR(10),
    DT NVARCHAR(10),
    SoGio INT,
    PRIMARY KEY (GV, DT),
    FOREIGN KEY (GV) REFERENCES GiangVien(GV),
    FOREIGN KEY (DT) REFERENCES DeTai(DT)
);

INSERT INTO GiangVien (GV, HoTen, DiaChi, NgaySinh) VALUES
('GV01', 'Vũ Tuyết Trinh', 'Hoàng Mai, Hà Nội', '1975-10-10'),
('GV02', 'Nguyễn Nhật Quang', 'Hai Bà Trưng, Hà Nội', '1976-11-03'),
('GV03', 'Trần Đức Khánh', 'Đống Đa, Hà Nội', '1977-06-04'),
('GV04', 'Nguyễn Hồng Phương', 'Tây Hồ, Hà Nội', '1983-12-10'),
('GV05', 'Lê Thanh Hương', 'Hai Bà Trưng, Hà Nội', '1976-10-10');

INSERT INTO DeTai (DT, TenDT, Cap, KinhPhi) VALUES
('DT01', 'Tính toán lưới', 'Nhà nước', 700),
('DT02', 'Phát hiện tri thức', 'Bộ', 300),
('DT03', 'Phân loại văn bản', 'Bộ', 270),
('DT04', 'Dịch tự động Anh Việt', 'Trường', 30);

INSERT INTO ThamGia (GV, DT, SoGio) VALUES
('GV01', 'DT01', 100),
('GV01', 'DT02', 80),
('GV01', 'DT03', 80),
('GV02', 'DT01', 120),
('GV02', 'DT03', 140),
('GV03', 'DT03', 150),
('GV04', 'DT04', 180);

