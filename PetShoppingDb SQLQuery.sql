create table tblUsers
(
Uid int identity(1,1) primary key not null,
Username nvarchar(100)Null,
Password nvarchar(100)Null,
Email nvarchar(100)Null,
Name nvarchar(100)Null,
Usertype nvarchar(50)Null,
)

select*from tblUsers

create table ForgotPass
(
ID nvarchar (500) not null ,
Uid int null,
RequestDateTime DATETIME null,
Constraint [FK_ForgotPass_tblUsers] FOREIGN KEY ([Uid]) REFERENCES [tblUsers]([Uid])
)

select * from ForgotPass

create table tblCart(
	CartID int IDENTITY(1,1) NOT NULL,
	UID int NULL,
	PID int NULL,
	PName nvarchar(max) NULL,
	PPrice money NULL,
	PSellPrice money NULL,
	SubPAmount  AS (PPrice * Qty),
	SubSAmount  AS (PSellPrice * Qty),
	Qty int NULL,
)

CREATE TABLE tblOrders(
	[OrderID] [int] IDENTITY(1,1) NOT NULL primary key,
	[UserID] [int] NULL,
	[EMail] [nvarchar](max) NULL,
	[CartAmount] [money] NULL,
	[CartDiscount] [money] NULL,
	[TotalPaid] [money] NULL,
	[PaymentType] [nvarchar](50) NULL,
	[PaymentStatus] [nvarchar](50) NULL,
	[DateOfPurchase] [datetime] NULL,
	[Name] [nvarchar](200) NULL,
	[Address] [nvarchar](max) NULL,
	[MobileNumber] [nvarchar](50) NULL,
	[OrderStatus] [nvarchar](50) NULL,
	[OrderNumber] [nvarchar](50) NULL,
	Constraint [FK_tblOrders_ToTable] FOREIGN KEY ([UserID]) REFERENCES [tblUsers] ([uid])
	)

	CREATE TABLE tblOrderProducts(
	[OrderProID] [int] IDENTITY(1,1) NOT NULL primary key,
	[OrderID] [nvarchar](50) NULL,
	[UserID] [int] NULL,
	[PID] [int] NULL,
	[Products] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[OrderDate] [datetime] NULL,
	[Status] [nvarchar](100) NULL,
Constraint [FK_tblOrderProducts_ToTable] FOREIGN KEY ([UserID]) REFERENCES [tblUsers] ([uid])
)


create table tblBrands
(
BrandID int identity(1,1) primary key,
Name nvarchar(500)
)

create table tblCategory
(
CatID int identity(1,1) primary key,
CatName nvarchar(Max)
)

create table tblSubCategory
(
SubCatID int identity(1,1) primary key,
SubCatName nvarchar(Max),
MainCatID int null,
Constraint [FK_tblSubCategory_tblCategory] FOREIGN KEY([MainCatID]) REFERENCES [tblCategory] ([CatID])
)

create table tblGender
(
GenderID int identity(1,1) primary key,
GenderName nvarchar(Max)
)

create table tblSizes
(
SizeID int identity(1,1) primary key,
SizeName binary(50),
BrandID int,
CategoryID int,
SubCategoryID int,
GenderId int,
Constraint [FK_tblSizes_ToBrand] FOREIGN KEY([BrandID]) REFERENCES [tblBrands] ([BrandID]),
Constraint [FK_tblSizes_ToCat] FOREIGN KEY([CategoryID]) REFERENCES [tblCategory] ([CatID]),
Constraint [FK_tblSizes_SubCat] FOREIGN KEY([CategoryID]) REFERENCES [tblSubCategory] ([SubCatID]),
Constraint [FK_tblSizes_Gender] FOREIGN KEY([GenderID]) REFERENCES [tblGender] ([GenderID])

)

create table tblPet
(
PID int identity(1,1) primary key,
PName nvarchar(Max),
PPrice money,
PSellPrice money,
PBrandID int,
PCategoryID int,
PSubCatID int,
PGender int,
PSizesID int,
PDescription nvarchar(MAX),
PProductDetails nvarchar(MAX),
PMaterialCare nvarchar(MAX),
FreeDelivery int,
[30DayRet] int,
COD int,
Constraint [FK_tblPet_ToTable] FOREIGN KEY([PBrandID]) REFERENCES [tblBrands] ([BrandID]),
Constraint [FK_tblPet_ToTable1] FOREIGN KEY([PCategoryID]) REFERENCES [tblCategory] ([CatID]),
Constraint [FK_tblPet_ToTable2] FOREIGN KEY([PSubCatID]) REFERENCES [tblSubCategory] ([SubCatID]),
Constraint [FK_tblPet_ToTable3] FOREIGN KEY([PGender]) REFERENCES [tblGender] ([GenderID]),
Constraint [FK_tblPet_ToTable4] FOREIGN KEY([PSizesID]) REFERENCES [tblSizes] ([SizeID])

)

create table tblPetImages
(
PIMGID int identity(1,1) primary key,
PID int,
Name nvarchar(Max),
Extention nvarchar(500),
Constraint [FK_tblPetImages_ToTable] FOREIGN KEY([PID]) REFERENCES [tblPet] ([PID])
)

create table tblPetSizeQuantity
(
PrdSizeQuantID int identity(1,1) primary key,
PID int,
SizeID int,
Quantity int,
Constraint [FK_tblPetSizeQuantity_ToTable] FOREIGN KEY([PID]) REFERENCES [tblPet] ([PID]),
Constraint [FK_tblPetSizeQuantity_ToTable1] FOREIGN KEY([SizeID]) REFERENCES [tblSizes] ([SizeID])
)

USE [PetShoppingDB]
GO

/****** Object:  Table [dbo].[ForgotPass]    Script Date: 09-01-2022 20:34:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ForgotPass](
	[ID] [nvarchar](500) NOT NULL,
	[Uid] [int] NULL,
	[RequestDateTime] [datetime] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ForgotPass]  WITH CHECK ADD  CONSTRAINT [FK_ForgotPass_tblUsers] FOREIGN KEY([Uid])
REFERENCES [dbo].[tblUsers] ([Uid])
GO

ALTER TABLE [dbo].[ForgotPass] CHECK CONSTRAINT [FK_ForgotPass_tblUsers]
GO

Alter procedure proBindAllPet
AS
select A.*,B.*,C.Name,A.PPrice-A.PSellPrice as DiscAmount, B.Name as ImageName,C.Name as BrandName from tblPet A
inner join tblBrands C on C.BrandID=A.PBrandID
cross apply(
select top 1 * from tblPetImages B where B.PID= A.PID order by B.PID desc
)B
order by A.PID desc

Return 0

select * from tblPet
select * from tblPetImages
select * from tblPetSizeQuantity

Delete from tblPet
Delete from tblPetImages
Delete from tblPetSizeQuantity

select A.*,B.* from tblSubCategory A inner join tblCategory B on B.CatID=A.MainCatID

select A.*,B.*,C.*,D.*,E.* from tblSizes A inner join tblCategory B on B.CatID=A.CategoryID inner join tblBrands C on C.BrandID=A.BrandID inner join tblSubCategory D on D.SubCatID=A.SubCategoryID inner join tblGender E on E.GenderID=A.GenderId

Create procedure sp_InsertPet
(
@PName nvarchar(MAX),
@PPrice money,
@PSellPrice money,
@PBrandID int,
@PCategoryID int,
@PSubCatID int,
@PGender int,
@PDescription nvarchar(MAX),
@PProductDetails nvarchar(MAX), 
@PMaterialCare nvarchar(MAX),
@FreeDelivery int,
@30DayRet int, 
@COD int
)
AS

insert into tblPet values(@PName,@PPrice,@PSellPrice,@PBrandID,@PCategoryID,@PSubCatID,
@PGender,@PDescription,@PProductDetails,@PMaterialCare,@FreeDelivery,@30DayRet,@COD)
select SCOPE_IDENTITY()
Return 0

select * from tblPet

select * from tblSizes

select * from tblPetSizeQuantity

select * from tblPetImages

create function getSizeName
(
@SizeID int
)
RETURNS Nvarchar(10)
as
Begin
Declare @SizeName nvarchar(10)
select @SizeName=SizeName from tblSizes where SizeID=@SizeID
RETURN @SizeName

END

create table tblPurchase
(
PurchaseID int identity(1,1) primary key,
UserID int,
PIDSizeID nvarchar(MAX),
CartAmount money,
CartDiscount money,
TotalPayed money,
PaymentType nvarchar(50),
PaymentStatus nvarchar(50),
DateOfPurchase datetime,
Name nvarchar(200),
Address nvarchar(MAX),
PinCode nvarchar(10),
MobileNumber nvarchar(50),
CONSTRAINT [FK_tblPurchase_ToUser] FOREIGN KEY ([UserID]) REFERENCES [tblUsers]([UID])

)

CREATE PROCEDURE SP_BindPetDetails
(
@PID int
)
AS
SELECT * FROM tblCart where PID = @PID

CREATE PROCEDURE SP_BindPetDetails1
(
@PID int
)
AS
SELECT * FROM tblPet where PID = @PID


create PROCEDURE SP_BindCartNumberz
(
@UserID int
)
AS
SELECT * FROM tblCart D CROSS APPLY ( SELECT TOP 1 E.Name,Extention FROM tblPetImages E WHERE E.PID = D.PID) Name where D.UID = @UserID

CREATE PROCEDURE SP_IsProductExistInCart
(
@PID int,
@UserID int
)
AS
SELECT * FROM tblCart where PID = @PID and UID = @UserID

CREATE PROCEDURE SP_UpdateCart
(
@UserID int,
@CartPID int,
@Quantity int
)
AS
BEGIN
SET NOCOUNT ON;
UPDATE tblCart SET Qty = @Quantity WHERE PID = @CartPID AND UID = @UserID
END

go

CREATE PROCEDURE SP_InsertCart
(
@UID int,
@PID int,
@PName nvarchar(MAX),
@PPrice money,
@PSelPrice money,
@Qty int
)
AS
INSERT INTO tblCart VALUES(@UID,@PID,@PName,@PPrice,@PSelPrice,@Qty)
SELECT SCOPE_IDENTITY()

CREATE PROCEDURE SP_BindProductImages
(
@PID int
)
AS
SELECT * FROM tblPetImages where PID = @PID

create procedure procBindAllProducts
AS
select A.*,B.*,C.Name ,A.PPrice-A.PSellPrice as DiscAmount,B.Name as ImageName, C.Name as BrandName from tblPet A
inner join tblBrands C on C.BrandID =A.PBrandID
cross apply(
select top 1 * from tblPetImages B where B.PID= A.PID order by B.PID desc
)B
order by A.PID desc

Return 0

create procedure [dbo].[procBindAllProducts2]
AS
select A.*,B.*,C.Name ,A.PPrice-A.PSellPrice as DiscAmount,B.Name as ImageName, C.Name as BrandName 
from tblPet A
inner join tblBrands C on C.BrandID =A.PBrandID
inner join tblCategory as t2 on t2.CatID=A.PCategoryID
cross apply(
select top 1 * from tblPetImages B where B.PID= A.PID order by B.PID desc
)B where t2.CatName='AA' 
order by A.PID desc

Return 0

create procedure [dbo].[procBindAllProducts3]
AS
select A.*,B.*,C.Name ,A.PPrice-A.PSellPrice as DiscAmount,B.Name as ImageName, C.Name as BrandName 
from tblPet A
inner join tblBrands C on C.BrandID =A.PBrandID
inner join tblCategory as t3 on t3.CatID=A.PCategoryID
cross apply(
select top 1 * from tblPetImages B where B.PID= A.PID order by B.PID desc
)B where t3.CatName='AAA' 
order by A.PID desc

Return 0

create procedure [dbo].[procBindAllProducts4]
AS
select A.*,B.*,C.Name ,A.PPrice-A.PSellPrice as DiscAmount,B.Name as ImageName, C.Name as BrandName 
from tblPet A
inner join tblBrands C on C.BrandID =A.PBrandID
inner join tblCategory as t4 on t4.CatID=A.PCategoryID
cross apply(
select top 1 * from tblPetImages B where B.PID= A.PID order by B.PID desc
)B where t4.CatName='Army Retire Pets' 
order by A.PID desc

Return 0

create PROCEDURE SP_BindUserCart
(
@UserID int
)
AS
SELECT * FROM tblCart D CROSS APPLY ( SELECT TOP 1 E.Name,Extention FROM tblPetImages E WHERE E.PID = D.PID) Name WHERE D.UID = @UserID


create procedure procBindAllProducts0
AS
select A.*,B.*,C.Name ,A.PPrice-A.PSellPrice as DiscAmount,B.Name as ImageName, C.Name as BrandName from tblPet A
inner join tblBrands C on C.BrandID =A.PBrandID
cross apply(
select top 1 * from tblPetImages B where B.PID= A.PID order by B.PID desc
)B
order by A.PID desc

Return 0

CREATE PROCEDURE SP_getUserCartItem
(
@PID int,
@UserID int
)
AS
SELECT * FROM tblCart WHERE PID = @PID AND UID = @UserID

CREATE PROCEDURE SP_DeleteThisCartItem
@CartID int
AS
BEGIN
DELETE FROM tblCart WHERE CartID = @CartID
END

CREATE PROCEDURE SP_BindPriceData
(
@UserID int
)
AS
SELECT * FROM tblCart D CROSS APPLY ( SELECT TOP 1 E.Name,Extention FROM tblPetImages E WHERE E.PID = D.PID) Name where D.UID = @UserID

CREATE PROCEDURE SP_FindOrderNumber @FindOrderNumber nvarchar(100)
AS
SELECT * FROM tblOrders WHERE OrderNumber = @FindOrderNumber

CREATE PROCEDURE SP_EmptyCart
@UserID int
AS
BEGIN
DELETE FROM tblCart WHERE UID = @UserID
END

create PROCEDURE SP_BindCartProducts
(
@UID int
)
AS
SELECT PID FROM tblCart WHERE UID = @UID

CREATE PROCEDURE SP_InsertOrder
(
@UserID int,
@Email nvarchar(MAX),
@CartAmount money,
@CartDiscount money,
@TotalPaid money,
@PaymentType nvarchar(50),
@PaymentStatus nvarchar(50),
@DateOfPurchase datetime,
@Name nvarchar(200),
@Address nvarchar(MAX),
@MobileNumber nvarchar(50),
@OrderStatus nvarchar(50),
@OrderNumber nvarchar(50)
)
AS
INSERT INTO tblOrders VALUES(@UserID,@Email,@CartAmount,@CartDiscount,@TotalPaid,@PaymentType,@PaymentStatus,@DateOfPurchase,@Name,@Address,@MobileNumber,@OrderStatus,@OrderNumber)
SELECT SCOPE_IDENTITY()

CREATE PROCEDURE SP_InsertOrderProducts
(
@OrderID nvarchar(50),
@UserID int,
@PID int,
@Products nvarchar(MAX),
@Quantity int,
@OrderDate datetime,
@Status nvarchar(100)
)
AS
INSERT INTO tblOrderProducts VALUES (@OrderID,@UserID,@PID,@Products,@Quantity,@OrderDate,@Status)
SELECT SCOPE_IDENTITY()



