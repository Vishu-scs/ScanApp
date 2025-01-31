USE [ScanApp]
GO
/****** Object:  Table [dbo].[BoxCondition_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoxCondition_master](
	[ID] [smallint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand_master](
	[brandid] [smallint] NOT NULL,
	[brand] [varchar](50) NOT NULL,
	[IndustryID] [smallint] NULL,
	[IntransitData] [bit] NULL,
	[shiplistdata] [bit] NULL,
	[mrplabel] [bit] NULL,
	[cartoonlabel] [bit] NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[brandid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City_master](
	[Cityid] [int] NOT NULL,
	[City] [varchar](50) NOT NULL,
	[stateid] [tinyint] NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cityid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dealer_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dealer_master](
	[brandid] [smallint] NULL,
	[Dealerid] [int] NOT NULL,
	[Dealer] [varchar](50) NOT NULL,
	[DealerCode] [varchar](20) NULL,
	[DealerTypeID] [smallint] NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Dealerid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DealerType_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealerType_master](
	[DealerTypeID] [smallint] NOT NULL,
	[DealerTypeName] [varchar](50) NOT NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[DealerTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department_master](
	[DeptID] [smallint] NOT NULL,
	[DeptName] [varchar](50) NOT NULL,
	[Industryid] [smallint] NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designation_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation_master](
	[DesignationID] [smallint] NOT NULL,
	[DesignationName] [varchar](50) NOT NULL,
	[Industryid] [smallint] NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[DesignationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Industry_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Industry_master](
	[IndustryID] [smallint] NOT NULL,
	[IndustryName] [varchar](50) NOT NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IndustryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location_master](
	[Dealerid] [int] NULL,
	[Locationid] [int] NOT NULL,
	[Location] [varchar](50) NOT NULL,
	[LocationTypeID] [smallint] NULL,
	[cityid] [int] NULL,
	[stateid] [tinyint] NULL,
	[pincode] [int] NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Locationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocationType_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationType_master](
	[LocationTypeID] [smallint] NOT NULL,
	[LocationType] [varchar](50) NOT NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[LocationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartDiscrpenancy_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartDiscrpenancy_master](
	[ID] [smallint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pincode_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pincode_master](
	[pincode] [int] NOT NULL,
	[Cityid] [int] NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[pincode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType_master](
	[ProductTypeID] [smallint] NOT NULL,
	[ProductTypeName] [varchar](50) NOT NULL,
	[Industryid] [smallint] NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State_master](
	[stateid] [tinyint] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[stateid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_master](
	[Supplierid] [int] NOT NULL,
	[Supplier] [varchar](50) NOT NULL,
	[SupplierCategoryID] [smallint] NULL,
	[cityid] [int] NULL,
	[stateid] [tinyint] NULL,
	[pincode] [int] NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Supplierid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierCategory_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierCategory_master](
	[SupplierCategoryID] [smallint] NOT NULL,
	[SupplierCategory] [varchar](50) NOT NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierMapping_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierMapping_master](
	[Mappingid] [int] IDENTITY(0,1) NOT NULL,
	[Supplierid] [int] NULL,
	[Locationid] [int] NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Mappingid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transport_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transport_master](
	[TransportID] [smallint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TransportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTable](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[firstName] [nvarchar](20) NOT NULL,
	[middleName] [nvarchar](20) NULL,
	[lastName] [nvarchar](20) NOT NULL,
	[DOB] [datetime] NOT NULL,
	[contact] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[password] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[contact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[warehouse_master]    Script Date: 31-12-2024 15:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[warehouse_master](
	[Brandid] [smallint] NULL,
	[Warehouseid] [int] NOT NULL,
	[Warehouse] [varchar](50) NOT NULL,
	[LocationID] [int] NULL,
	[cityid] [int] NULL,
	[stateid] [tinyint] NULL,
	[pincode] [int] NULL,
	[addedby] [int] NULL,
	[addedon] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Warehouseid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Brand_master]  WITH CHECK ADD  CONSTRAINT [FK_BrandIndustryid] FOREIGN KEY([IndustryID])
REFERENCES [dbo].[Industry_master] ([IndustryID])
GO
ALTER TABLE [dbo].[Brand_master] CHECK CONSTRAINT [FK_BrandIndustryid]
GO
ALTER TABLE [dbo].[City_master]  WITH CHECK ADD  CONSTRAINT [FK_Stateid] FOREIGN KEY([stateid])
REFERENCES [dbo].[State_master] ([stateid])
GO
ALTER TABLE [dbo].[City_master] CHECK CONSTRAINT [FK_Stateid]
GO
ALTER TABLE [dbo].[Dealer_master]  WITH CHECK ADD  CONSTRAINT [FK_Brandid] FOREIGN KEY([brandid])
REFERENCES [dbo].[Brand_master] ([brandid])
GO
ALTER TABLE [dbo].[Dealer_master] CHECK CONSTRAINT [FK_Brandid]
GO
ALTER TABLE [dbo].[Dealer_master]  WITH CHECK ADD  CONSTRAINT [FK_Dealertypeid] FOREIGN KEY([DealerTypeID])
REFERENCES [dbo].[DealerType_master] ([DealerTypeID])
GO
ALTER TABLE [dbo].[Dealer_master] CHECK CONSTRAINT [FK_Dealertypeid]
GO
ALTER TABLE [dbo].[Department_master]  WITH CHECK ADD  CONSTRAINT [FK_Industry] FOREIGN KEY([Industryid])
REFERENCES [dbo].[Industry_master] ([IndustryID])
GO
ALTER TABLE [dbo].[Department_master] CHECK CONSTRAINT [FK_Industry]
GO
ALTER TABLE [dbo].[Designation_master]  WITH CHECK ADD  CONSTRAINT [FK_Industryid] FOREIGN KEY([Industryid])
REFERENCES [dbo].[Industry_master] ([IndustryID])
GO
ALTER TABLE [dbo].[Designation_master] CHECK CONSTRAINT [FK_Industryid]
GO
ALTER TABLE [dbo].[Location_master]  WITH CHECK ADD  CONSTRAINT [FK_Locationcityid] FOREIGN KEY([cityid])
REFERENCES [dbo].[City_master] ([Cityid])
GO
ALTER TABLE [dbo].[Location_master] CHECK CONSTRAINT [FK_Locationcityid]
GO
ALTER TABLE [dbo].[Location_master]  WITH CHECK ADD  CONSTRAINT [FK_Locationdealerid] FOREIGN KEY([Dealerid])
REFERENCES [dbo].[Dealer_master] ([Dealerid])
GO
ALTER TABLE [dbo].[Location_master] CHECK CONSTRAINT [FK_Locationdealerid]
GO
ALTER TABLE [dbo].[Location_master]  WITH CHECK ADD  CONSTRAINT [FK_Locationpincode] FOREIGN KEY([pincode])
REFERENCES [dbo].[Pincode_master] ([pincode])
GO
ALTER TABLE [dbo].[Location_master] CHECK CONSTRAINT [FK_Locationpincode]
GO
ALTER TABLE [dbo].[Location_master]  WITH CHECK ADD  CONSTRAINT [FK_Locationstateid] FOREIGN KEY([stateid])
REFERENCES [dbo].[State_master] ([stateid])
GO
ALTER TABLE [dbo].[Location_master] CHECK CONSTRAINT [FK_Locationstateid]
GO
ALTER TABLE [dbo].[Location_master]  WITH CHECK ADD  CONSTRAINT [FK_Locationtypeid] FOREIGN KEY([LocationTypeID])
REFERENCES [dbo].[LocationType_master] ([LocationTypeID])
GO
ALTER TABLE [dbo].[Location_master] CHECK CONSTRAINT [FK_Locationtypeid]
GO
ALTER TABLE [dbo].[Pincode_master]  WITH CHECK ADD  CONSTRAINT [FK_Pincodecityid] FOREIGN KEY([Cityid])
REFERENCES [dbo].[City_master] ([Cityid])
GO
ALTER TABLE [dbo].[Pincode_master] CHECK CONSTRAINT [FK_Pincodecityid]
GO
ALTER TABLE [dbo].[ProductType_master]  WITH CHECK ADD  CONSTRAINT [FK_ProductTypeIndustryid] FOREIGN KEY([Industryid])
REFERENCES [dbo].[Industry_master] ([IndustryID])
GO
ALTER TABLE [dbo].[ProductType_master] CHECK CONSTRAINT [FK_ProductTypeIndustryid]
GO
ALTER TABLE [dbo].[Supplier_master]  WITH CHECK ADD  CONSTRAINT [FK_SupplierCategoryid] FOREIGN KEY([SupplierCategoryID])
REFERENCES [dbo].[SupplierCategory_master] ([SupplierCategoryID])
GO
ALTER TABLE [dbo].[Supplier_master] CHECK CONSTRAINT [FK_SupplierCategoryid]
GO
ALTER TABLE [dbo].[Supplier_master]  WITH CHECK ADD  CONSTRAINT [FK_Suppliercityid] FOREIGN KEY([cityid])
REFERENCES [dbo].[City_master] ([Cityid])
GO
ALTER TABLE [dbo].[Supplier_master] CHECK CONSTRAINT [FK_Suppliercityid]
GO
ALTER TABLE [dbo].[Supplier_master]  WITH CHECK ADD  CONSTRAINT [FK_Supplierpincode] FOREIGN KEY([pincode])
REFERENCES [dbo].[Pincode_master] ([pincode])
GO
ALTER TABLE [dbo].[Supplier_master] CHECK CONSTRAINT [FK_Supplierpincode]
GO
ALTER TABLE [dbo].[Supplier_master]  WITH CHECK ADD  CONSTRAINT [FK_Supplierstateid] FOREIGN KEY([stateid])
REFERENCES [dbo].[State_master] ([stateid])
GO
ALTER TABLE [dbo].[Supplier_master] CHECK CONSTRAINT [FK_Supplierstateid]
GO
ALTER TABLE [dbo].[SupplierMapping_master]  WITH CHECK ADD  CONSTRAINT [FK_Supplierid] FOREIGN KEY([Supplierid])
REFERENCES [dbo].[Supplier_master] ([Supplierid])
GO
ALTER TABLE [dbo].[SupplierMapping_master] CHECK CONSTRAINT [FK_Supplierid]
GO
ALTER TABLE [dbo].[SupplierMapping_master]  WITH CHECK ADD  CONSTRAINT [FK_SupplierLocationid] FOREIGN KEY([Locationid])
REFERENCES [dbo].[Location_master] ([Locationid])
GO
ALTER TABLE [dbo].[SupplierMapping_master] CHECK CONSTRAINT [FK_SupplierLocationid]
GO
ALTER TABLE [dbo].[warehouse_master]  WITH CHECK ADD  CONSTRAINT [FK_Warehousebrandid] FOREIGN KEY([Brandid])
REFERENCES [dbo].[Brand_master] ([brandid])
GO
ALTER TABLE [dbo].[warehouse_master] CHECK CONSTRAINT [FK_Warehousebrandid]
GO
ALTER TABLE [dbo].[warehouse_master]  WITH CHECK ADD  CONSTRAINT [FK_Warehousecityid] FOREIGN KEY([cityid])
REFERENCES [dbo].[City_master] ([Cityid])
GO
ALTER TABLE [dbo].[warehouse_master] CHECK CONSTRAINT [FK_Warehousecityid]
GO
ALTER TABLE [dbo].[warehouse_master]  WITH CHECK ADD  CONSTRAINT [FK_WarehouseLocationid] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location_master] ([Locationid])
GO
ALTER TABLE [dbo].[warehouse_master] CHECK CONSTRAINT [FK_WarehouseLocationid]
GO
ALTER TABLE [dbo].[warehouse_master]  WITH CHECK ADD  CONSTRAINT [FK_Warehousepincode] FOREIGN KEY([pincode])
REFERENCES [dbo].[Pincode_master] ([pincode])
GO
ALTER TABLE [dbo].[warehouse_master] CHECK CONSTRAINT [FK_Warehousepincode]
GO
ALTER TABLE [dbo].[warehouse_master]  WITH CHECK ADD  CONSTRAINT [FK_Warehousestateid] FOREIGN KEY([stateid])
REFERENCES [dbo].[State_master] ([stateid])
GO
ALTER TABLE [dbo].[warehouse_master] CHECK CONSTRAINT [FK_Warehousestateid]
GO
