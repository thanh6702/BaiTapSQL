CREATE TABLE NCC (
    MSNCC NVARCHAR(50) PRIMARY KEY,
    TenNCC NVARCHAR(255),
    DiaChi NVARCHAR(255)
);

CREATE TABLE MatHang (
    MSMH NVARCHAR(50) PRIMARY KEY,
    TenMH NVARCHAR(255),
    MauSac NVARCHAR(50)
);

CREATE TABLE CungCap (
    MSNCC NVARCHAR(50),
    MSMH NVARCHAR(50),
    GiaTien DOUBLE,
    PRIMARY KEY (MSNCC, MSMH),
    FOREIGN KEY (MSNCC) REFERENCES NCC(MSNCC),
    FOREIGN KEY (MSMH) REFERENCES MatHang(MSMH)
);

INSERT INTO NCC (MSNCC, TenNCC, DiaChi)
VALUES
    ('NCC1', 'Cty A', 'Hai Ba Trung,Ha Noi'),
    ('NCC2', 'Cty B', 'Hoan Kiem,Ha Noi'),
    ('NCC3', 'Cty C', 'Huong Khe,Ha Tinh');

INSERT INTO MatHang (MSMH, TenMH, MauSac)
VALUES
    ('MH1', 'Mat hang 1', 'do'),
    ('MH2', 'Mat hang 2', 'tim'),
    ('MH3', 'Mat hang 3', 'xanh'),
    ('MH4', 'Mat hang 4', 'do'),
    ('MH5', 'Mat hang 5', 'do');

INSERT INTO CungCap (MSNCC, MSMH, GiaTien)
VALUES
    ('NCC1', 'MH1', 150),
    ('NCC1', 'MH2', 250),
    ('NCC1', 'MH3', 350),
    ('NCC1', 'MH4', 50),
    ('NCC1', 'MH5', 245),
    ('NCC2', 'MH1', 50),
    ('NCC2', 'MH2', 450),
    ('NCC2', 'MH3', 250),
    ('NCC2', 'MH4', 150);
    
    


