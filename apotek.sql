USE [apotek]
GO
/****** Object:  Table [dbo].[t_satuan]    Script Date: 11/30/2016 10:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_satuan](
	[id_satuan] [varchar](10) NOT NULL,
	[satuan] [varchar](100) NULL,
	[aktif] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_satuan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[satuan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_kategori]    Script Date: 11/30/2016 10:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_kategori](
	[id_kategori] [varchar](10) NOT NULL,
	[kategori] [varchar](100) NULL,
	[aktif] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_kategori] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[kategori] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_pegawai]    Script Date: 11/30/2016 10:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_pegawai](
	[id_pegawai] [varchar](10) NOT NULL,
	[nama_pegawai] [varchar](100) NULL,
	[jenis_kelamin] [bit] NULL,
	[alamat] [varchar](100) NULL,
	[telepon] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[aktif] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pegawai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_pasien]    Script Date: 11/30/2016 10:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_pasien](
	[id_pasien] [varchar](11) NOT NULL,
	[nama_pasien] [varchar](100) NULL,
	[jenis_kelamin] [bit] NULL,
	[alamat] [varchar](100) NULL,
	[telepon] [varchar](50) NULL,
	[aktif] [bit] NULL,
 CONSTRAINT [PK_t_pasien] PRIMARY KEY CLUSTERED 
(
	[id_pasien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_obat]    Script Date: 11/30/2016 10:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_obat](
	[id_obat] [varchar](10) NOT NULL,
	[nama_obat] [varchar](100) NULL,
	[id_kategori] [varchar](10) NULL,
	[id_satuan] [varchar](10) NULL,
	[harga_beli] [money] NULL,
	[harga_jual] [money] NULL,
	[stock] [numeric](18, 0) NULL,
	[aktif] [bit] NULL,
	[id_pegawai] [varchar](10) NULL,
	[id_pasien] [varchar](11) NULL,
 CONSTRAINT [PK__t_obat__3DE3354C1B0907CE] PRIMARY KEY CLUSTERED 
(
	[id_obat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__t_obat__50B5E4B71DE57479] UNIQUE NONCLUSTERED 
(
	[nama_obat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_dokter]    Script Date: 11/30/2016 10:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_dokter](
	[id_dokter] [varchar](10) NOT NULL,
	[nama_dokter] [varchar](50) NOT NULL,
	[umur] [varchar](5) NOT NULL,
	[jenis_kelamin] [varchar](50) NOT NULL,
	[alamat] [varchar](50) NOT NULL,
	[telepon] [varchar](50) NOT NULL,
	[id_pegawai] [varchar](10) NOT NULL,
 CONSTRAINT [PK_t_dokter] PRIMARY KEY CLUSTERED 
(
	[id_dokter] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[update_kategori]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_kategori]
@id_kategori varchar(10),
@kategori varchar(100),
@aktif bit
as
begin
	update t_kategori set kategori = @kategori,
						  aktif = @aktif
			        where id_kategori = @id_kategori
end
GO
/****** Object:  Table [dbo].[t_supplier]    Script Date: 11/30/2016 10:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_supplier](
	[id_supplier] [varchar](10) NOT NULL,
	[supplier] [varchar](100) NULL,
	[alamat] [varchar](100) NULL,
	[kota] [varchar](50) NULL,
	[telepon] [varchar](50) NULL,
	[aktif] [bit] NULL,
	[id_pegawai] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_supplier] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[supplier] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[insert_satuan]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_satuan]
@id_satuan varchar(10),
@satuan varchar(100),
@aktif bit
as
begin
	insert into t_satuan (id_satuan,satuan,aktif)
	values (@id_satuan,@satuan,@aktif)
end
GO
/****** Object:  StoredProcedure [dbo].[id_kategori]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[id_kategori]
as
begin
	select max(substring(id_kategori, 2, 4)) as tahun, max(id_kategori) as maksimum from t_kategori
end
GO
/****** Object:  StoredProcedure [dbo].[id_satuan]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[id_satuan]
as
begin
	select max(substring(id_satuan, 2, 4)) as tahun, max(id_satuan) as maksimum from t_satuan
end
GO
/****** Object:  StoredProcedure [dbo].[id_pegawai]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[id_pegawai]
as
begin
	select max(substring(id_pegawai, 2, 4)) as tahun, max(id_pegawai) as maksimum from t_pegawai
end
GO
/****** Object:  StoredProcedure [dbo].[insert_kategori]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_kategori]
@id_kategori varchar(10),
@kategori varchar(100),
@aktif bit
as
begin
	insert into t_kategori (id_kategori,kategori,aktif)
	values (@id_kategori,@kategori,@aktif)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_pegawai]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_pegawai]
@id_pegawai varchar(10),
@nama_pegawai varchar(100),
@jenis_kelamin bit,
@alamat varchar(100),
@telepon varchar(50),
@username varchar(50),
@password varchar(50),
@aktif bit
as
begin
	insert into t_pegawai (id_pegawai,nama_pegawai,jenis_kelamin,alamat,telepon,username,password,aktif)
	values (@id_pegawai,@nama_pegawai,@jenis_kelamin,@alamat,@telepon,@username,@password,@aktif)
end
GO
/****** Object:  Table [dbo].[t_penjualan]    Script Date: 11/30/2016 10:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_penjualan](
	[faktur_penjualan] [varchar](20) NOT NULL,
	[tgl_penjualan] [datetime] NULL,
	[disc] [float] NULL,
	[total] [money] NULL,
	[grand_total] [money] NULL,
	[id_pegawai] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[faktur_penjualan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[update_satuan]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_satuan]
@id_satuan varchar(10),
@satuan varchar(100),
@aktif bit
as
begin
	update t_satuan set satuan = @satuan,
						aktif = @aktif
			      where id_satuan = @id_satuan
end
GO
/****** Object:  StoredProcedure [dbo].[update_pegawai]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_pegawai]
@id_pegawai varchar(10),
@nama_pegawai varchar(100),
@jenis_kelamin bit,
@alamat varchar(100),
@telepon varchar(50),
@username varchar(50),
@password varchar(50),
@aktif bit
as
begin
	update t_pegawai set nama_pegawai = @nama_pegawai,
						 jenis_kelamin = @jenis_kelamin,
					     alamat = @alamat,
						 telepon = @telepon,
						 username = @username,
						 password = @password,
						 aktif = @aktif
			       where id_pegawai = @id_pegawai
end
GO
/****** Object:  View [dbo].[view_obat]    Script Date: 11/30/2016 10:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[view_obat]
as
select t_obat.id_obat,t_obat.nama_obat,t_kategori.id_kategori,t_kategori.kategori,t_satuan.id_satuan,t_satuan.satuan, t_obat.harga_beli,t_obat.harga_jual,t_obat.stock,t_obat.aktif,t_pegawai.id_pegawai,t_pegawai.nama_pegawai
from t_kategori INNER JOIN t_obat
ON t_kategori.id_kategori = t_obat.id_kategori INNER JOIN t_pegawai
ON t_obat.id_pegawai = t_pegawai.id_pegawai INNER JOIN t_satuan
ON t_obat.id_satuan = t_satuan.id_satuan
GO
/****** Object:  StoredProcedure [dbo].[update_supplier]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_supplier]
@id_supplier varchar(10),
@supplier varchar(100),
@alamat varchar(100),
@kota varchar(50),
@telepon varchar(50),
@aktif bit,
@id_pegawai varchar(10)
as
begin
	update t_supplier set supplier = @supplier,
						  alamat = @alamat,
						  kota = @kota,
						  telepon = @telepon,
						  aktif = @aktif,
						  id_pegawai = @id_pegawai
			        where id_supplier = @id_supplier
end
GO
/****** Object:  StoredProcedure [dbo].[update_obat]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_obat]
@id_obat varchar(10),
@nama_obat varchar(100),
@id_kategori varchar(10),
@id_satuan varchar(10),
@harga_jual money,
@aktif bit,
@id_pegawai varchar(10)
as
begin
	update t_obat set nama_obat = @nama_obat,
				      id_kategori = @id_kategori,
					  id_satuan = @id_satuan,
					  harga_jual = @harga_jual,
					  aktif = @aktif,
					  id_pegawai = @id_pegawai
			    where id_obat = @id_obat
end
GO
/****** Object:  Table [dbo].[t_pembelian]    Script Date: 11/30/2016 10:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_pembelian](
	[faktur_pembelian] [varchar](20) NOT NULL,
	[tgl_pembelian] [datetime] NULL,
	[id_supplier] [varchar](10) NULL,
	[disc] [float] NULL,
	[total] [money] NULL,
	[grand_total] [money] NULL,
	[id_pegawai] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[faktur_pembelian] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[insert_obat]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_obat]
@id_obat varchar(10),
@nama_obat varchar(100),
@id_kategori varchar(10),
@id_satuan varchar(10),
@harga_jual money,
@aktif bit,
@id_pegawai varchar(10)
as
begin
	declare @harga_beli money
	declare @stock numeric
	set @harga_beli = 0
	set @stock = 0
	insert into t_obat (id_obat,nama_obat,id_kategori,id_satuan,harga_beli,harga_jual,stock,aktif,id_pegawai)
	values (@id_obat,@nama_obat,@id_kategori,@id_satuan,@harga_beli,@harga_jual,@stock,@aktif,@id_pegawai)
end
GO
/****** Object:  StoredProcedure [dbo].[id_obat]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[id_obat]
as
begin
	select max(substring(id_obat, 2, 4)) as tahun, max(id_obat) as maksimum from t_obat
end
GO
/****** Object:  StoredProcedure [dbo].[faktur_penjualan]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[faktur_penjualan]
as
begin
	select max(substring(faktur_penjualan, 3, 4)) as tahun, max(faktur_penjualan) as maksimum from t_penjualan
end
GO
/****** Object:  Table [dbo].[t_resep]    Script Date: 11/30/2016 10:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_resep](
	[id_resep] [varchar](10) NOT NULL,
	[tgl_resep] [date] NOT NULL,
	[id_dokter] [varchar](10) NOT NULL,
	[id_obat] [varchar](10) NOT NULL,
	[id_pasien] [varchar](11) NOT NULL,
	[id_pegawai] [varchar](10) NOT NULL,
 CONSTRAINT [PK_t_resep] PRIMARY KEY CLUSTERED 
(
	[id_resep] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[insert_supplier]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_supplier]
@id_supplier varchar(10),
@supplier varchar(100),
@alamat varchar(100),
@kota varchar(50),
@telepon varchar(50),
@aktif bit,
@id_pegawai varchar(10)
as
begin
	insert into t_supplier (id_supplier,supplier,alamat,kota,telepon,aktif,id_pegawai)
	values (@id_supplier,@supplier,@alamat,@kota,@telepon,@aktif,@id_pegawai)
end
GO
/****** Object:  StoredProcedure [dbo].[id_supplier]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[id_supplier]
as
begin
	select max(substring(id_supplier, 2, 4)) as tahun, max(id_supplier) as maksimum from t_supplier
end
GO
/****** Object:  StoredProcedure [dbo].[insert_penjualan]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_penjualan]
@faktur_penjualan varchar(20),
@tgl_penjualan datetime,
@disc float,
@total money,
@grand_total money,
@id_pegawai varchar(10)
as
begin
	insert into t_penjualan (faktur_penjualan,tgl_penjualan,disc,total,grand_total,id_pegawai)
	values (@faktur_penjualan,@tgl_penjualan,@disc,@total,@grand_total,@id_pegawai)
end
GO
/****** Object:  Table [dbo].[t_detail_penjualan]    Script Date: 11/30/2016 10:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_detail_penjualan](
	[faktur_penjualan] [varchar](20) NULL,
	[nomor] [int] NULL,
	[id_obat] [varchar](10) NULL,
	[harga_jual] [money] NULL,
	[jumlah] [numeric](18, 0) NULL,
	[sub_total] [money] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_detail_pembelian]    Script Date: 11/30/2016 10:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_detail_pembelian](
	[faktur_pembelian] [varchar](20) NULL,
	[nomor] [int] NULL,
	[id_obat] [varchar](10) NULL,
	[tgl_expired] [datetime] NULL,
	[harga_beli] [money] NULL,
	[jumlah] [numeric](18, 0) NULL,
	[sub_total] [money] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[insert_pembelian]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_pembelian]
@faktur_pembelian varchar(20),
@tgl_pembelian datetime,
@id_supplier varchar(10),
@disc float,
@total money,
@grand_total money,
@id_pegawai varchar(10)
as
begin
	insert into t_pembelian (faktur_pembelian,tgl_pembelian,id_supplier,disc,total,grand_total,id_pegawai)
	values (@faktur_pembelian,@tgl_pembelian,@id_supplier,@disc,@total,@grand_total,@id_pegawai)
end
GO
/****** Object:  StoredProcedure [dbo].[faktur_pembelian]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[faktur_pembelian]
as
begin
	select max(substring(faktur_pembelian, 3, 4)) as tahun, max(faktur_pembelian) as maksimum from t_pembelian
end
GO
/****** Object:  StoredProcedure [dbo].[insert_detail_penjualan]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_detail_penjualan]
@faktur_penjualan varchar(20),
@nomor int,
@id_obat varchar(10),
@harga_jual money,
@jumlah numeric,
@sub_total money
as
begin
	insert into t_detail_penjualan (faktur_penjualan,nomor,id_obat,harga_jual,jumlah,sub_total)
	values (@faktur_penjualan,@nomor,@id_obat,@harga_jual,@jumlah,@sub_total)
end
GO
/****** Object:  View [dbo].[view_penjualan]    Script Date: 11/30/2016 10:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_penjualan]
AS
SELECT     dbo.t_penjualan.faktur_penjualan, dbo.t_penjualan.tgl_penjualan, dbo.t_pasien.id_pasien, dbo.t_pasien.nama_pasien, dbo.t_pasien.jenis_kelamin, 
                      dbo.t_pasien.alamat, dbo.t_kategori.id_kategori, dbo.t_kategori.kategori, dbo.t_obat.id_obat, dbo.t_obat.nama_obat, dbo.t_obat.harga_jual, dbo.t_satuan.id_satuan, 
                      dbo.t_satuan.satuan, dbo.t_detail_penjualan.harga_jual AS Expr1, dbo.t_detail_penjualan.jumlah, 
                      dbo.t_detail_penjualan.jumlah * dbo.t_detail_penjualan.harga_jual AS sub_total, 
                      dbo.t_detail_penjualan.jumlah * dbo.t_detail_penjualan.harga_jual AS Grand_Total
FROM         dbo.t_detail_penjualan INNER JOIN
                      dbo.t_obat ON dbo.t_detail_penjualan.id_obat = dbo.t_obat.id_obat INNER JOIN
                      dbo.t_kategori ON dbo.t_obat.id_kategori = dbo.t_kategori.id_kategori INNER JOIN
                      dbo.t_pegawai ON dbo.t_obat.id_pegawai = dbo.t_pegawai.id_pegawai INNER JOIN
                      dbo.t_penjualan ON dbo.t_detail_penjualan.faktur_penjualan = dbo.t_penjualan.faktur_penjualan AND 
                      dbo.t_pegawai.id_pegawai = dbo.t_penjualan.id_pegawai INNER JOIN
                      dbo.t_satuan ON dbo.t_obat.id_satuan = dbo.t_satuan.id_satuan INNER JOIN
                      dbo.t_pasien ON dbo.t_obat.id_pasien = dbo.t_pasien.id_pasien
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "t_detail_penjualan"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 228
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t_kategori"
            Begin Extent = 
               Top = 6
               Left = 247
               Bottom = 259
               Right = 407
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t_obat"
            Begin Extent = 
               Top = 6
               Left = 445
               Bottom = 277
               Right = 605
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t_pegawai"
            Begin Extent = 
               Top = 6
               Left = 643
               Bottom = 282
               Right = 804
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t_penjualan"
            Begin Extent = 
               Top = 6
               Left = 842
               Bottom = 235
               Right = 1013
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t_satuan"
            Begin Extent = 
               Top = 6
               Left = 1051
               Bottom = 262
               Right = 1211
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t_pasien"
            Begin Extent = 
               Top = 120
               Left = 1320
               Bottom = 340
               Right = 1480
            End
           ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_penjualan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 18
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_penjualan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_penjualan'
GO
/****** Object:  View [dbo].[view_pembelian]    Script Date: 11/30/2016 10:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_pembelian]
AS
SELECT     dbo.t_pembelian.faktur_pembelian, dbo.t_pembelian.tgl_pembelian, dbo.t_supplier.id_supplier, dbo.t_supplier.supplier, dbo.t_supplier.alamat, dbo.t_supplier.kota, 
                      dbo.t_supplier.telepon, dbo.t_detail_pembelian.nomor, dbo.t_obat.id_obat, dbo.t_obat.nama_obat, dbo.t_kategori.id_kategori, dbo.t_kategori.kategori, 
                      dbo.t_satuan.id_satuan, dbo.t_satuan.satuan, dbo.t_detail_pembelian.tgl_expired, dbo.t_obat.harga_beli, dbo.t_obat.stock, dbo.t_detail_pembelian.jumlah, 
                      dbo.t_detail_pembelian.sub_total, dbo.t_pembelian.disc, dbo.t_pembelian.total, dbo.t_pembelian.grand_total, dbo.t_pegawai.id_pegawai, 
                      dbo.t_pegawai.nama_pegawai
FROM         dbo.t_detail_pembelian INNER JOIN
                      dbo.t_obat ON dbo.t_detail_pembelian.id_obat = dbo.t_obat.id_obat INNER JOIN
                      dbo.t_kategori ON dbo.t_obat.id_kategori = dbo.t_kategori.id_kategori INNER JOIN
                      dbo.t_pegawai ON dbo.t_obat.id_pegawai = dbo.t_pegawai.id_pegawai INNER JOIN
                      dbo.t_pembelian ON dbo.t_detail_pembelian.faktur_pembelian = dbo.t_pembelian.faktur_pembelian AND 
                      dbo.t_pegawai.id_pegawai = dbo.t_pembelian.id_pegawai INNER JOIN
                      dbo.t_satuan ON dbo.t_obat.id_satuan = dbo.t_satuan.id_satuan INNER JOIN
                      dbo.t_supplier ON dbo.t_pegawai.id_pegawai = dbo.t_supplier.id_pegawai AND dbo.t_pembelian.id_supplier = dbo.t_supplier.id_supplier
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[63] 4[14] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "t_detail_pembelian"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 112
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t_obat"
            Begin Extent = 
               Top = 6
               Left = 248
               Bottom = 243
               Right = 408
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t_kategori"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 230
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t_pegawai"
            Begin Extent = 
               Top = 126
               Left = 236
               Bottom = 245
               Right = 397
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t_pembelian"
            Begin Extent = 
               Top = 234
               Left = 38
               Bottom = 353
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t_satuan"
            Begin Extent = 
               Top = 246
               Left = 248
               Bottom = 350
               Right = 408
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t_supplier"
            Begin Extent = 
               Top = 354
               Left = 38
               Bottom = 473
               Right = 198
            End
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_pembelian'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_pembelian'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_pembelian'
GO
/****** Object:  StoredProcedure [dbo].[insert_detail_pembelian]    Script Date: 11/30/2016 10:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_detail_pembelian]
@faktur_pembelian varchar(20),
@nomor int,
@id_obat varchar(10),
@tgl_expired datetime,
@harga_beli money,
@jumlah numeric,
@sub_total money
as
begin
	insert into t_detail_pembelian (faktur_pembelian,nomor,id_obat,tgl_expired,harga_beli,jumlah,sub_total)
	values (@faktur_pembelian,@nomor,@id_obat,@tgl_expired,@harga_beli,@jumlah,@sub_total)
end
GO
/****** Object:  ForeignKey [FK__t_detail___faktu__29572725]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_detail_pembelian]  WITH CHECK ADD FOREIGN KEY([faktur_pembelian])
REFERENCES [dbo].[t_pembelian] ([faktur_pembelian])
GO
/****** Object:  ForeignKey [FK__t_detail___id_ob__2A4B4B5E]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_detail_pembelian]  WITH CHECK ADD  CONSTRAINT [FK__t_detail___id_ob__2A4B4B5E] FOREIGN KEY([id_obat])
REFERENCES [dbo].[t_obat] ([id_obat])
GO
ALTER TABLE [dbo].[t_detail_pembelian] CHECK CONSTRAINT [FK__t_detail___id_ob__2A4B4B5E]
GO
/****** Object:  ForeignKey [FK__t_detail___faktu__30F848ED]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_detail_penjualan]  WITH CHECK ADD FOREIGN KEY([faktur_penjualan])
REFERENCES [dbo].[t_penjualan] ([faktur_penjualan])
GO
/****** Object:  ForeignKey [FK__t_detail___id_ob__31EC6D26]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_detail_penjualan]  WITH CHECK ADD  CONSTRAINT [FK__t_detail___id_ob__31EC6D26] FOREIGN KEY([id_obat])
REFERENCES [dbo].[t_obat] ([id_obat])
GO
ALTER TABLE [dbo].[t_detail_penjualan] CHECK CONSTRAINT [FK__t_detail___id_ob__31EC6D26]
GO
/****** Object:  ForeignKey [FK_t_dokter_t_pegawai]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_dokter]  WITH CHECK ADD  CONSTRAINT [FK_t_dokter_t_pegawai] FOREIGN KEY([id_pegawai])
REFERENCES [dbo].[t_pegawai] ([id_pegawai])
GO
ALTER TABLE [dbo].[t_dokter] CHECK CONSTRAINT [FK_t_dokter_t_pegawai]
GO
/****** Object:  ForeignKey [FK__t_obat__id_kateg__1FCDBCEB]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_obat]  WITH CHECK ADD  CONSTRAINT [FK__t_obat__id_kateg__1FCDBCEB] FOREIGN KEY([id_kategori])
REFERENCES [dbo].[t_kategori] ([id_kategori])
GO
ALTER TABLE [dbo].[t_obat] CHECK CONSTRAINT [FK__t_obat__id_kateg__1FCDBCEB]
GO
/****** Object:  ForeignKey [FK__t_obat__id_pegaw__21B6055D]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_obat]  WITH CHECK ADD  CONSTRAINT [FK__t_obat__id_pegaw__21B6055D] FOREIGN KEY([id_pegawai])
REFERENCES [dbo].[t_pegawai] ([id_pegawai])
GO
ALTER TABLE [dbo].[t_obat] CHECK CONSTRAINT [FK__t_obat__id_pegaw__21B6055D]
GO
/****** Object:  ForeignKey [FK__t_obat__id_satua__20C1E124]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_obat]  WITH CHECK ADD  CONSTRAINT [FK__t_obat__id_satua__20C1E124] FOREIGN KEY([id_satuan])
REFERENCES [dbo].[t_satuan] ([id_satuan])
GO
ALTER TABLE [dbo].[t_obat] CHECK CONSTRAINT [FK__t_obat__id_satua__20C1E124]
GO
/****** Object:  ForeignKey [FK_t_obat_t_pasien]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_obat]  WITH CHECK ADD  CONSTRAINT [FK_t_obat_t_pasien] FOREIGN KEY([id_pasien])
REFERENCES [dbo].[t_pasien] ([id_pasien])
GO
ALTER TABLE [dbo].[t_obat] CHECK CONSTRAINT [FK_t_obat_t_pasien]
GO
/****** Object:  ForeignKey [FK__t_pembeli__id_pe__276EDEB3]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_pembelian]  WITH CHECK ADD FOREIGN KEY([id_pegawai])
REFERENCES [dbo].[t_pegawai] ([id_pegawai])
GO
/****** Object:  ForeignKey [FK__t_pembeli__id_su__267ABA7A]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_pembelian]  WITH CHECK ADD FOREIGN KEY([id_supplier])
REFERENCES [dbo].[t_supplier] ([id_supplier])
GO
/****** Object:  ForeignKey [FK__t_penjual__id_pe__2F10007B]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_penjualan]  WITH CHECK ADD FOREIGN KEY([id_pegawai])
REFERENCES [dbo].[t_pegawai] ([id_pegawai])
GO
/****** Object:  ForeignKey [FK_t_resep_t_dokter]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_resep]  WITH CHECK ADD  CONSTRAINT [FK_t_resep_t_dokter] FOREIGN KEY([id_dokter])
REFERENCES [dbo].[t_dokter] ([id_dokter])
GO
ALTER TABLE [dbo].[t_resep] CHECK CONSTRAINT [FK_t_resep_t_dokter]
GO
/****** Object:  ForeignKey [FK_t_resep_t_obat1]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_resep]  WITH CHECK ADD  CONSTRAINT [FK_t_resep_t_obat1] FOREIGN KEY([id_obat])
REFERENCES [dbo].[t_obat] ([id_obat])
GO
ALTER TABLE [dbo].[t_resep] CHECK CONSTRAINT [FK_t_resep_t_obat1]
GO
/****** Object:  ForeignKey [FK_t_resep_t_pasien]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_resep]  WITH CHECK ADD  CONSTRAINT [FK_t_resep_t_pasien] FOREIGN KEY([id_pasien])
REFERENCES [dbo].[t_pasien] ([id_pasien])
GO
ALTER TABLE [dbo].[t_resep] CHECK CONSTRAINT [FK_t_resep_t_pasien]
GO
/****** Object:  ForeignKey [FK_t_resep_t_pegawai]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_resep]  WITH CHECK ADD  CONSTRAINT [FK_t_resep_t_pegawai] FOREIGN KEY([id_pegawai])
REFERENCES [dbo].[t_pegawai] ([id_pegawai])
GO
ALTER TABLE [dbo].[t_resep] CHECK CONSTRAINT [FK_t_resep_t_pegawai]
GO
/****** Object:  ForeignKey [FK__t_supplie__id_pe__182C9B23]    Script Date: 11/30/2016 10:56:49 ******/
ALTER TABLE [dbo].[t_supplier]  WITH CHECK ADD FOREIGN KEY([id_pegawai])
REFERENCES [dbo].[t_pegawai] ([id_pegawai])
GO
