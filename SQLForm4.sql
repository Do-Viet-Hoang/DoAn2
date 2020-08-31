CREATE DATABASE BanDienThoai
CREATE TABLE NhaCungCap
(
maNhaCC CHAR(10)PRIMARY KEY,
tenNhaCC NVARCHAR(50) NOT NULL,
diaChi NVARCHAR(50) NOT NULL,
SDT CHAR(11)NOT NULL
)
CREATE TABLE KhachHang
(
tenTk CHAR(18) PRIMARY KEY,
matKhau CHAR(18) NOT NULL,
tenKh NVARCHAR(50) NOT NULL,
diaChi NVARCHAR(50) NOT NULL,
SDT CHAR(11) NOT NULL
)
CREATE TABLE DienThoai
(
maSp CHAR(10) PRIMARY KEY,
maLoaiDT CHAR(10) FOREIGN KEY (maLoaiDT) REFERENCES loaiDT(maLoaiDT)  ON DELETE CASCADE ON UPDATE CASCADE,
tenSp NVARCHAR(50) NOT NULL,
hangSp NVARCHAR(30)NOT NULL,
gia INT,
manHinh NVARCHAR(20) NOT NULL,
heDieuhanh NVARCHAR(20)NOT NULL,
CPU NVARCHAR(20) NOT NULL,
cameraTruoc NVARCHAR(20)NOT NULL,
cameraSau NVARCHAR(20)NOT NULL,
RAM CHAR(10) NOT NULL,
boNho CHAR(10)NOT NULL,
Sim CHAR(10)NOT NULL,
Pin CHAR(10)NOT NULL,
trangThai CHAR(30) NOT NULL,
hinhAnh CHAR(30)NOT NULL,
hinhAnh1 CHAR(30) NOT NULL,
hinhAnh2 CHAR(30)NOT NULL,
hinhAnh3 CHAR(30) NOT NULL,
hinhAnh4 CHAR(30) NOT NULL
)
CREATE TABLE GioHang
(
maGioHang CHAR(10) PRIMARY KEY,
soLuong INT,
maKh CHAR(18) FOREIGN KEY (maKh) REFERENCES KhachHang(maKh) ON DELETE CASCADE ON UPDATE CASCADE,
maSp CHAR(10) FOREIGN KEY (maSp) REFERENCES DienThoai(maSp) ON DELETE CASCADE ON UPDATE CASCADE
)
CREATE TABLE HoaDonBan
(
maHoaDonBan CHAR(10) PRIMARY KEY,
tenTk CHAR(18) FOREIGN KEY (tenTk) REFERENCES KhachHang(tenTk) ON DELETE CASCADE ON UPDATE CASCADE,
ngayBan DATETIME
)
CREATE TABLE HoaDonNhap
(
maHoaDonNhap CHAR(10) PRIMARY KEY,
maNhaCC CHAR(10) FOREIGN KEY (maNhaCC) REFERENCES NhaCungCap(maNhaCC) ON DELETE CASCADE ON UPDATE CASCADE,
ngayBan DATETIME
)
CREATE TABLE loaiDT
(
maLoaiDT CHAR(10) PRIMARY KEY,
maHoaDonNhap CHAR(10) FOREIGN KEY (maHoaDonNhap) REFERENCES HoaDonNhap(maHoaDonNhap) ON DELETE CASCADE ON UPDATE CASCADE,
tenLoaiDT NVARCHAR(50) NOT NULL,
soLuong int,
ngaySanXuat Datetime
)
CREATE TABLE chiTietHoaDonBan
(
maHoaDonBan CHAR(10) FOREIGN KEY (maHoaDonBan) REFERENCES HoaDonBan(maHoaDonBan) ON DELETE CASCADE ON UPDATE CASCADE,
maSp CHAR(10) FOREIGN KEY (maSp) REFERENCES DienThoai(maSp) ON DELETE CASCADE ON UPDATE CASCADE,
soLuong INT,
trangThai NVARCHAR (30) NOT NULL,
giaBan INT
)
CREATE TABLE chiTietHoaDonNh
(
maHoaDonNhap CHAR(10) FOREIGN KEY (maHoaDonNhap) REFERENCES HoaDonNhap(maHoaDonNhap) ON DELETE CASCADE ON UPDATE CASCADE,
maLoaiDT CHAR(10) FOREIGN KEY (maLoaiDT) REFERENCES loaiDT(maLoaiDT),
soLuong INT,
trangThai NVARCHAR (30) NOT NULL,
giaBan INT
)
CREATE TABLE khuyenMai
(
maKm char(10) primary key, 
maSp char(10) foreign key(maSp) REFERENCES DienThoai (maSp)ON DELETE CASCADE ON UPDATE CASCADE,
tenKm nvarchar(30) not null,
ngayBatDau Datetime,
ngayKetThuc datetime
)
CREATE TABLE ChiTietkhuyenMai
(
maKm char(10) primary key, 
maSp char(10) foreign key(maSp) REFERENCES DienThoai (maSp)ON DELETE CASCADE ON UPDATE CASCADE,
giaMoi int,
giaCu int
)


INSERT INTO DienThoai VALUES('DT01', N'LDT01', 'IPhone 11 Pro', N'Apple', '34990000', 'OLED, 5.8 inch', 'IOS 13', 'Apple 13', '12 MP', '3 camera 12 MP', '4 GB', '256 GB', 'Nano SIM', '3046 mAh', 'ip11promax.jpg' )


INSERT INTO DienThoai VALUES('DT02', N'LDT02', 'IPhone 11 Pro Max', N'Apple', '37990000', 'OLED, 6.5 inch', 'IOS 13', 'Apple 13', '12 MP', '3 camera 12 MP', '4 GB', '256 GB', 'Nano SIM', '3046 mAh', 'ip11promax.jpg' )

INSERT INTO DienThoai VALUES('DT03', N'LDT01', 'IPhone Xs Max', N'Apple', '27990000', 'OLED, 6.5 inch', 'IOS 12', 'Apple A12', '12 MP', '2 camera 12 MP', '4 GB', '64 GB', 'Nano SIM', '3174 mAh', 'ipxsmax1.jpg' )

INSERT INTO DienThoai VALUES('DT04', N'LDT01', 'IPhone Xs', N'Apple', '24990000', 'OLED 5.8 inch', 'IOS 12', 'Apple A12', '12 MP', '2 camera 12 MP', '4 GB', '64 GB', 'Nano SIM', '2658 mAh', 'ipxs.png' )

INSERT INTO DienThoai VALUES('DT02', N'LDT02', 'IPhone 11 Pro Max', N'Apple', '37990000', 'OLED, 6.5 inch', 'IOS 13', 'Apple 13', '12 MP', '3 camera 12 MP', '4 GB', '256 GB', 'Nano SIM', '3046 mAh', 'ip11promax.jpg' )
INSERT INTO DienThoai VALUES('DT01', N'LDT01', 'IPhone 11 XS', N'Apple', '24990000', 'OLED, 6.5 inch', 'IOS 13', 'Apple 13', '12 MP', '3 camera 12 MP', '4 GB', '256 GB', 'Nano SIM', '3046 mAh', 'ip11promax.jpg' )


UPDATE DienThoai SET tenSp = N'" + x.tenSp + "', hangSp = '" + x.hangSp + "', gia = N'" + x.gia + "', manHinh = '" + x.manHinh + "', heDieuhanh = '" + x.heDieuhanh + "', CPU = '" + x.CPU + "', cameraTruoc = '" + x.cameraTruoc + "' , cameraSau = '" + x.cameraSau + "' , RAM = '" + x.RAM + "', boNho = '" + x.boNho + "', Sim = '" + x.Sim + "', Pin = '" + x.Pin + "', hinhAnh = '" + x.hinhAnh + "' WHERE maSp = 'DT001'


SELECT * FROM DienThoai WHERE trangThai LIKE 'hot'