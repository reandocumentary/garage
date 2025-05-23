USE [garagesystem]
GO
/****** Object:  User [reanit]    Script Date: 18/05/2025 1:36:52 PM ******/
CREATE USER [reanit] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'reanit'
GO
sys.sp_addrolemember @rolename = N'db_accessadmin', @membername = N'reanit'
GO
sys.sp_addrolemember @rolename = N'db_securityadmin', @membername = N'reanit'
GO
sys.sp_addrolemember @rolename = N'db_ddladmin', @membername = N'reanit'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'reanit'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'reanit'
GO
sys.sp_addrolemember @rolename = N'db_datawriter', @membername = N'reanit'
GO
sys.sp_addrolemember @rolename = N'db_denydatareader', @membername = N'reanit'
GO
sys.sp_addrolemember @rolename = N'db_denydatawriter', @membername = N'reanit'
GO
/****** Object:  Table [dbo].[garage_car_infor]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[garage_car_infor](
	[car_id] [nvarchar](25) NOT NULL,
	[branchcode] [nvarchar](25) NOT NULL,
	[cus_id] [nvarchar](25) NULL,
	[type_id] [nvarchar](25) NULL,
	[color_id] [nvarchar](25) NULL,
	[year_id] [nvarchar](25) NULL,
	[brand_id] [nvarchar](25) NULL,
	[plate_id] [nvarchar](50) NULL,
	[inactive] [bit] NULL,
	[remark] [nvarchar](550) NULL,
	[inputter] [nvarchar](250) NULL,
	[inputdate] [datetime] NULL,
 CONSTRAINT [PK_garage_car_infor] PRIMARY KEY CLUSTERED 
(
	[car_id] ASC,
	[branchcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[garage_tbl_customer]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[garage_tbl_customer](
	[cus_id] [nvarchar](50) NOT NULL,
	[branchcode] [nvarchar](50) NOT NULL,
	[cus_name] [nvarchar](250) NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[inactive] [bit] NULL,
	[remark] [nvarchar](250) NULL,
	[inputter] [nvarchar](50) NULL,
	[inputdate] [datetime] NULL,
 CONSTRAINT [PK_garage_tbl_customer] PRIMARY KEY CLUSTERED 
(
	[cus_id] ASC,
	[branchcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[garage_tbl_plate_type]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[garage_tbl_plate_type](
	[type_id] [nvarchar](50) NOT NULL,
	[titile] [nvarchar](50) NULL,
	[inactive] [bit] NULL,
	[inputter] [nvarchar](50) NULL,
	[inputdate] [datetime] NULL,
 CONSTRAINT [PK_garage_tbl_plate_type] PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[garage_tbl_plates]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[garage_tbl_plates](
	[plate_id] [nvarchar](50) NOT NULL,
	[branchcode] [nvarchar](50) NOT NULL,
	[titile] [nvarchar](250) NULL,
	[type_id] [nvarchar](50) NULL,
	[remark] [nvarchar](250) NULL,
	[inactive] [bit] NULL,
	[inputter] [nvarchar](250) NULL,
	[inputdate] [datetime] NULL,
 CONSTRAINT [PK_garage_tbl_plates] PRIMARY KEY CLUSTERED 
(
	[plate_id] ASC,
	[branchcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[garage_tbl_pro_line]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[garage_tbl_pro_line](
	[Line_id] [nvarchar](20) NOT NULL,
	[Branchcode] [nvarchar](10) NOT NULL,
	[Line_name] [nvarchar](250) NULL,
	[Inactive] [int] NULL,
	[Inputter] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_garage_tbl_pro_line] PRIMARY KEY CLUSTERED 
(
	[Line_id] ASC,
	[Branchcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[garage_tbl_products]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[garage_tbl_products](
	[Pro_id] [nvarchar](20) NOT NULL,
	[Barcode] [nvarchar](20) NOT NULL,
	[Branchcode] [nvarchar](10) NOT NULL,
	[Lin_id] [nvarchar](10) NULL,
	[Pro_name] [nvarchar](250) NULL,
	[Inactive] [bit] NULL,
	[Cost] [money] NULL,
	[Unitprice] [money] NULL,
	[Discount] [money] NULL,
	[Inputter] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_garage_tbl_products] PRIMARY KEY CLUSTERED 
(
	[Pro_id] ASC,
	[Branchcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[garage_tbl_type]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[garage_tbl_type](
	[type_id] [nvarchar](50) NOT NULL,
	[titile] [nvarchar](50) NULL,
	[inactive] [bit] NULL,
	[status] [nvarchar](50) NULL,
	[inputter] [nvarchar](50) NULL,
	[inputdate] [datetime] NULL,
 CONSTRAINT [PK_garage_tbl_type] PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_user_logins]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_user_logins](
	[user_id] [nvarchar](10) NOT NULL,
	[branchcode] [nvarchar](10) NOT NULL,
	[sub_of_branch] [nvarchar](10) NOT NULL,
	[profile_id] [nvarchar](10) NOT NULL,
	[user_login] [nvarchar](250) NULL,
	[user_pwd] [nvarchar](250) NULL,
	[disable] [bit] NULL,
	[create_at] [datetime] NULL,
	[expired_at] [date] NULL,
	[inputter] [nvarchar](150) NULL,
 CONSTRAINT [PK_sys_user_logins] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[branchcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_versions]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_versions](
	[version] [nvarchar](50) NOT NULL,
	[date_at] [date] NULL,
	[tag] [nvarchar](1) NULL,
 CONSTRAINT [PK_sys_versions] PRIMARY KEY CLUSTERED 
(
	[version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysconstants]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysconstants](
	[con_id] [nvarchar](50) NOT NULL,
	[con_display] [nvarchar](50) NOT NULL,
	[con_line] [nvarchar](50) NOT NULL,
	[disable] [bit] NULL,
 CONSTRAINT [PK_sysconstants] PRIMARY KEY CLUSTERED 
(
	[con_id] ASC,
	[con_display] ASC,
	[con_line] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user_info]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user_info](
	[user_id] [nvarchar](10) NOT NULL,
	[branchcode] [nvarchar](10) NOT NULL,
	[user_name] [nvarchar](250) NULL,
	[gender] [nvarchar](20) NULL,
	[dob] [date] NULL,
	[place_of_birth] [nvarchar](250) NULL,
	[address] [nvarchar](250) NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[idcard] [nvarchar](10) NULL,
	[position] [nvarchar](50) NULL,
	[workplace] [nvarchar](250) NULL,
	[create_at] [datetime] NULL,
	[update_at] [datetime] NULL,
 CONSTRAINT [PK_tbl_user_info] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[branchcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user_logs]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user_logs](
	[log_num] [nvarchar](10) NOT NULL,
	[branchcode] [nvarchar](10) NOT NULL,
	[log_detail] [nvarchar](550) NULL,
	[log_user] [nvarchar](150) NULL,
	[log_at] [datetime] NULL,
 CONSTRAINT [PK_tbl_user_logs] PRIMARY KEY CLUSTERED 
(
	[log_num] ASC,
	[branchcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user_profile]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user_profile](
	[pro_id] [nvarchar](10) NOT NULL,
	[pro_name] [nvarchar](50) NULL,
	[pro_name_kh] [nvarchar](50) NULL,
	[disable] [bit] NULL,
	[inputter] [nvarchar](150) NULL,
	[create_at] [datetime] NULL,
 CONSTRAINT [PK_tbl_user_profile] PRIMARY KEY CLUSTERED 
(
	[pro_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblbranch]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblbranch](
	[branchcode] [nvarchar](10) NOT NULL,
	[subofbranch] [nvarchar](10) NOT NULL,
	[is_branch] [bit] NULL,
	[Disable] [bit] NULL,
	[branchname] [nvarchar](250) NULL,
	[branchshort] [nvarchar](250) NULL,
	[inputter] [nvarchar](150) NULL,
	[create_at] [datetime] NULL,
 CONSTRAINT [PK_tblbranch] PRIMARY KEY CLUSTERED 
(
	[branchcode] ASC,
	[subofbranch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblrecordid]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblrecordid](
	[branchcode] [nvarchar](50) NOT NULL,
	[convalue] [nvarchar](50) NOT NULL,
	[recordid] [int] NULL,
	[description] [nvarchar](250) NULL,
 CONSTRAINT [PK_tblrecordid] PRIMARY KEY CLUSTERED 
(
	[branchcode] ASC,
	[convalue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[garage_register_PlateNumber]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[garage_register_PlateNumber] 
	@CMD			NVARCHAR(10),
	@vPlate_ID		NVARCHAR(10),
	@vBranchcode	NVARCHAR(10),
	@vPlateNumber	NVARCHAR(200),
	@vType_ID		NVARCHAR(250),
	@vInactive		BIT,
	@vRemark		NVARCHAR(250),
	@vInputter		NVARCHAR(150)

as
begin

	IF(@CMD='I')BEGIN
		EXEC proc_next_id @vbranchcode,'PlateNumber','3',@vPlate_ID out ;
		
		INSERT INTO [garage_tbl_plates]
           ([plate_id]
           ,[branchcode]
           ,[titile]
           ,[type_id]
           ,[remark]
           ,[inactive]
           ,[inputter]
           ,[inputdate]) values (@vPlate_ID,@vBranchcode,@vPlateNumber,@vType_ID,@vRemark,@vInactive ,@vInputter,GETDATE());

	END ELSE IF(@CMD='U')BEGIN
		select * from garage_tbl_products
	END
	SELECT @vPlate_ID AS TRANCODE
end
GO
/****** Object:  StoredProcedure [dbo].[garage_register_product]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[garage_register_product] 
	@CMD			NVARCHAR(10),
	@vPro_ID		NVARCHAR(10),
	@vBranchcode	NVARCHAR(10),
	@vBarcode		NVARCHAR(250),
	@vLin_ID		NVARCHAR(250),
	@vName			NVARCHAR(250),
	@vCost			NVARCHAR(250),
	@vUniprice		NVARCHAR(250),
	@vDiscount		NVARCHAR(250),
	@vInactive		BIT,
	@vRemark		NVARCHAR(250),
	@vInputter		NVARCHAR(150)

as
begin

	IF(@CMD='I')BEGIN
		EXEC proc_next_id @vbranchcode,'product_id','3',@vPro_ID out ;
		
		INSERT INTO [garage_tbl_products]
           ([Pro_id]
           ,[Barcode]
           ,[Branchcode]
           ,[Lin_ID]
           ,[Pro_name]
           ,[Inactive]
           ,[Cost]
           ,[Unitprice]
           ,[Discount]
           ,[Inputter]
           ,[CreateDate]) values (@vPro_ID,@vBranchcode,@vBarcode,@vLin_ID,@vName,@vInactive,@vCost,@vUniprice,@vDiscount,@vInputter,GETDATE());

	END ELSE IF(@CMD='U')BEGIN
		select * from garage_tbl_products
	END
	SELECT @vPro_ID AS TRANCODE
end
GO
/****** Object:  StoredProcedure [dbo].[proc_next_id]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[proc_next_id]
	@vbranchcode nvarchar(10),
	@vcolumns	nvarchar(50),
	@vlevels	nvarchar(50),
	@vcode		nvarchar(100) OUTPUT 
AS
BEGIN
	
	declare @vsequence	NVARCHAR(100)
	declare @vtype		NVARCHAR(100)
	declare @vsql		NVARCHAR(250)
	declare @retval		int   
	declare @ParmDefinition nvarchar(500);
	declare @vMinlength	int =4
	declare @vMaxlength	int =8


	set		@vcolumns=UPPER(ISNULL(@vcolumns,''))
	select	@vsql = N'select @retvalOUT = MAX(ISNULL(recordid,0)) from tblrecordid where  branchcode=''' + @vbranchcode+ ''' and convalue='''+ @vcolumns + '''';  
	set		@ParmDefinition = N'@retvalOUT int OUTPUT';
		
	IF NOT EXISTS ( SELECT BRANCHCODE FROM tblrecordid WHERE branchcode=@vbranchcode AND convalue=@vcolumns)BEGIN
		SELECT @vbranchcode AS BranchCode ,@vcolumns AS ConValue,'' AS recordid,@vcolumns AS [Description] INTO #tmpData  
		INSERT INTO tblrecordid (branchcode,convalue,recordid,description) SELECT * FROM #tmpData
	END

	EXEC sp_executesql @vsql, @ParmDefinition, @retvalOUT=@retval OUTPUT;
	SET   @vsequence= @retval+1;
	SET   @vsql = ' UPDATE tblrecordid SET recordid= ' + @vsequence +'  WHERE convalue='''+ @vcolumns + ''' AND branchcode= '''+@vbranchcode+'''' ;  
	Exec (@vsql)

	IF (@vlevels='branchcode')BEGIN
		SET   @vcode = REPLICATE(0,4-LEN(@vsequence)) + @vsequence;
	END ELSE IF (@vlevels='0')BEGIN
		---	0235
		SET   @vcode = REPLICATE(0,@vMinlength-LEN(@vsequence)) + @vsequence;
	END ELSE IF (@vlevels='1')BEGIN
		--- 1010-0234
		SET   @vcode = @vbranchcode+'-'+ REPLICATE(0,@vMinlength-LEN(@vsequence)) + @vsequence;
	END ELSE IF (@vlevels='2')BEGIN
		SET   @vcode = ISNULL(LEFT(@vcolumns,3),'N')+REPLICATE(0,@vMinlength-LEN(@vsequence)) + @vsequence;
	END ELSE IF (@vlevels='3')BEGIN
		SET   @vcode = ISNULL(LEFT(@vcolumns,1),'N')+REPLICATE(0,@vMinlength-LEN(@vsequence)) + @vsequence;
	END ELSE IF (@vlevels='9')BEGIN
		--- 2021115-00000232
		SET   @vcode =RIGHT(Convert(NVARCHAR(10),datepart(yyyy, getdate())),4)+RIGHT(Convert(NVARCHAR(10),datepart(MM, getdate())),2)+RIGHT(Convert(NVARCHAR(10),datepart(DD, getdate())),2)+'-'+ CONVERT(NVARCHAR(100),ISNULL(REPLICATE(0,@vMaxlength-LEN(@vsequence)),'') + @vsequence);
	END
END
GO
/****** Object:  StoredProcedure [dbo].[proc_sql_excute]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_sql_excute]
	@CMD			NVARCHAR(20),
	@vBranchcode	NVARCHAR(100),
	@vCon1			NVARCHAR(100)='',
	@vCon2			NVARCHAR(100)=''
AS
BEGIN
	
	IF (@CMD='USER_EXIT')BEGIN
		SELECT TOP 1 A.user_login FROM sys_user_logins AS A WHERE A.user_login=@vBranchcode

	END ELSE IF (@CMD='PlateType')BEGIN
		select '0000' as code , 
			    'None' as Name
		UNION  ALL
		SELECT DISTINCT 
			   A.type_id AS code,
			   A.titile AS NAME
		from garage_tbl_plate_type as A
		where a.inactive='0' order by code

	END ELSE IF (@CMD='Active')BEGIN

		SELECT DISTINCT 
			   A.con_id AS code,
			   A.con_display AS NAME
		FROM sysconstants AS A
		WHERE A.con_line='Active'
		ORDER BY code DESC 
	END ELSE IF (@CMD='PRO_LINE')BEGIN

		SELECT DISTINCT 
			   A.Line_id AS code,
			   A.Line_name AS NAME
		FROM garage_tbl_pro_line AS A
		WHERE A.Inactive='0'
	END ELSE IF (@CMD='ISSUE')BEGIN
		SELECT * FROM garage_tbl_pro_line;
	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[proc_sql_garage_search]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_sql_garage_search]
	@CMD			NVARCHAR(20),
	@vBranchcode	NVARCHAR(100),
	@vCon1			NVARCHAR(100)='',
	@vCon2			NVARCHAR(100)=''
AS
BEGIN
	
	IF (@CMD='plate_number')BEGIN
		
		select * 
		from garage_tbl_plates as a 
		where a.branchcode=@vBranchcode and a.titile like '%'+@vCon1+'%'

	 
	END ELSE IF (@CMD='PRO_LINE')BEGIN

		SELECT DISTINCT 
			   A.Line_id AS code,
			   A.Line_name AS NAME
		FROM garage_tbl_pro_line AS A
		WHERE A.Inactive='0'
	END ELSE IF (@CMD='ISSUE')BEGIN
		SELECT * FROM garage_tbl_pro_line;
	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[proc_user_logins]    Script Date: 18/05/2025 1:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_user_logins]
	@VUserlogin		NVARCHAR(100)
AS
BEGIN
	
	SELECT TOP 1 
		  A.user_id,
		  A.branchcode,
		  A.profile_id,
		  B.pro_name,
		  a.expired_at,
		  a.user_pwd,
		  a.user_login
	FROM sys_user_logins AS A 
	inner join tbl_user_profile AS B ON A.profile_id=B.pro_id
	WHERE A.user_login=@VUserlogin


END
GO
