--空间名：EDU_SYS  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_CONFIG')
            and   type = 'U')
   drop table EDU_SYS_01_CONFIG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_XN')
            and   type = 'U')
   drop table EDU_SYS_01_XN
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_MODULE')
            and   type = 'U')
   drop table EDU_SYS_01_MODULE
go
--全局配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_CONFIG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_CONFIG](
	[ID]  int  NOT NULL,--配置ID
	[VALUE]  nvarchar(200)  NOT NULL,--配置值
CONSTRAINT [PK_EDU_SYS_01_CONFIG] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO


--学年表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_XN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_XN](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XN]  nvarchar(9)  NOT NULL,--学年
CONSTRAINT [PK_EDU_SYS_01_XN] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2012', '0', '2012学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2013', '0', '2013学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2014', '0', '2014学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2015', '0', '2015学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2016', '0', '2016学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2017', '0', '2017学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2018', '0', '2018学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2019', '0', '2019学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2020', '0', '2020学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2021', '0', '2021学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2022', '0', '2022学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2023', '0', '2023学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2024', '0', '2024学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2025', '0', '2025学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2026', '0', '2026学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2027', '0', '2027学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2028', '0', '2028学年')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2029', '0', '2029学年')

--
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_MODULE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_MODULE](
	[ID]  int  NOT NULL,--
	[APPID]  int  NOT NULL,--
	[NAME]  nvarchar(20)  NOT NULL,--
	[Depth]  int  NOT NULL,--
	[PID]  int  NOT NULL,--
	[MenuDisp]  int  NOT NULL,--
	[MenuUserType]  int  NOT NULL,--
	[Link]  nvarchar(100)  NOT NULL,--
CONSTRAINT [PK_EDU_SYS_01_MODULE] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150000', '1', '招生管理', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150000', '2', '内部邮件', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150000', '3', '教工管理', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150000', '4', '招生迎新', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150000', '5', '门户网站', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150001', '5', '栏目管理', '2', '150000', '1', '0', '/admin/wzlm/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150002', '5', '文章管理', '2', '150000', '1', '0', '/admin/wzwz/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150003', '5', '链接管理', '2', '150000', '1', '0', '/admin/yqlj/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150004', '5', '链接类型', '2', '150000', '1', '0', '/admin/yqljlx/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150005', '5', '会员管理', '2', '150000', '1', '0', '/admin/vip/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150006', '5', '发布权限', '2', '150000', '1', '0', '/admin/fbqx/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150007', '5', '访问履历', '2', '150000', '1', '0', '/admin/fwll/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150008', '5', '广告管理', '2', '150000', '1', '0', '/admin/wzgg/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150009', '5', '投票设置', '2', '150000', '1', '0', '/tpgl/tpsz/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150010', '5', '文章审核', '2', '150000', '1', '0', '/admin/wzwz/auditindex?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150200', '5', '专题网站', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150201', '5', '栏目管理', '2', '150200', '1', '0', '/admin/wzlm/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150202', '5', '文章管理', '2', '150200', '1', '0', '/admin/wzwz/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150203', '5', '链接管理', '2', '150200', '1', '0', '/admin/yqlj/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150204', '5', '链接类型', '2', '150200', '1', '0', '/admin/yqljlx/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150205', '5', '会员管理', '2', '150200', '1', '0', '/admin/vip/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150206', '5', '发布权限', '2', '150200', '1', '0', '/admin/fbqx/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150207', '5', '访问履历', '2', '150200', '1', '0', '/admin/fwll/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150208', '5', '广告管理', '2', '150200', '1', '0', '/admin/wzgg/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150209', '5', '投票设置', '2', '150200', '1', '0', '/tpgl/tpsz/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150210', '5', '文章审核', '2', '150200', '1', '0', '/admin/wzwz/auditindex?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150600', '1', '新生登记', '2', '150000', '1', '0', '/zsgl/xsdj/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150601', '1', '新生添加', '2', '150000', '0', '0', '/zsgl/xsdj/create')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150601', '3', '教工列表', '2', '150000', '1', '0', '/rsgl/jggl/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150601', '4', '招生计划', '2', '150000', '1', '0', '/zsgl/zsjh/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150602', '1', '新生编辑', '2', '150000', '0', '0', '/zsgl/xsdj/edit')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150602', '4', '新生登记', '2', '150000', '1', '0', '/zsgl/xsdj/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150603', '1', '新生删除', '2', '150000', '0', '0', '/zsgl/xsdj/delete')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150603', '4', '新生添加', '2', '150000', '0', '0', '/zsgl/xsdj/create')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150604', '1', '新生导入', '2', '150000', '0', '0', '/zsgl/xsdj/importdata')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150604', '4', '新生编辑', '2', '150000', '0', '0', '/zsgl/xsdj/edit')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150605', '4', '新生删除', '2', '150000', '0', '0', '/zsgl/xsdj/delete')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150606', '4', '新生导入', '2', '150000', '0', '0', '/zsgl/xsdj/importdata')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150607', '4', '迎新设置', '2', '150000', '1', '0', '/xtgl/xtsz/yxsz')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150608', '4', '自动分班', '2', '150000', '1', '0', '/zsgl/zdfb/AytomaticClass')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150609', '4', '新生报到', '2', '150000', '1', '0', '/zsgl/xsdj/IndexReport')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150610', '4', '自动分学号', '2', '150000', '1', '0', '/zsgl/zdfb/AutomaticNumber')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('200000', '2', '通知公告', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('200000', '4', '学籍管理', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('200601', '4', '学生注册', '2', '200000', '1', '0', '/xjgl/xszcxx/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('200602', '4', '学籍管理', '2', '200000', '1', '0', '/xtgl/xjgl/Index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('200603', '4', '学籍异动', '2', '200000', '1', '0', '/xjgl/xjyd/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('200604', '4', '学籍统计', '2', '200000', '1', '0', '/xjgl/xjtj/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('250000', '2', '办公流程', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('250000', '4', '教学计划', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('250600', '4', '教学大纲', '2', '250000', '1', '0', '/jxjh/jsrk/jxdgindex')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('250601', '4', '教学计划', '2', '250000', '1', '0', '/jxjh/ztjxjh/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('250603', '4', '课程库', '2', '250000', '1', '0', '/jxjh/kc/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('250604', '4', '学期学分', '2', '250000', '1', '0', '/jxjh/xqxfgl/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('250606', '4', '教师任课', '2', '250000', '1', '0', '/jxjh/jsrk/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950000', '1', '系统管理', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950000', '2', '系统管理', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950000', '3', '系统管理', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950000', '4', '系统管理', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950000', '5', '系统管理', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950601', '1', '迎新设置', '2', '950000', '1', '0', '/xtgl/xtsz/yxsz')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950602', '1', '修改密码', '2', '950000', '1', '0', '/xtgl/user/changepwd')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950602', '2', '修改密码', '2', '950000', '1', '0', '/xtgl/user/changepwd')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950602', '3', '修改密码', '2', '950000', '1', '0', '/xtgl/user/changepwd')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950602', '4', '修改密码', '2', '950000', '1', '0', '/xtgl/user/changepwd')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950602', '5', '修改密码', '2', '950000', '1', '0', '/xtgl/user/changepwd')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950603', '1', '机构设置', '2', '950000', '1', '0', '/xtgl/yxsz/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950603', '4', '机构设置', '2', '950000', '1', '0', '/xtgl/yxsz/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950604', '1', '专业设置', '2', '950000', '1', '0', '/xtgl/zysz/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950604', '4', '专业设置', '2', '950000', '1', '0', '/xtgl/zysz/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950605', '1', '招生计划', '2', '950000', '1', '0', '/zsgl/zsjh/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950606', '1', '自动分班', '2', '950000', '1', '0', '/xtgl/zdfb/Create')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950607', '1', '学籍管理', '2', '950000', '1', '0', '/xtgl/xjgl/Index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950608', '1', '角色管理', '2', '950000', '1', '0', '/xtgl/role/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950608', '2', '角色管理', '2', '950000', '1', '0', '/xtgl/role/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950608', '3', '角色管理', '2', '950000', '1', '0', '/xtgl/role/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950608', '4', '角色管理', '2', '950000', '1', '0', '/xtgl/role/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950608', '5', '角色管理', '2', '950000', '1', '0', '/xtgl/role/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950609', '1', '权限分配', '2', '950000', '1', '0', '/xtgl/role/RoleManage')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950609', '2', '权限分配', '2', '950000', '1', '0', '/xtgl/role/RoleManage')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950609', '3', '权限分配', '2', '950000', '1', '0', '/xtgl/role/RoleManage')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950609', '4', '权限分配', '2', '950000', '1', '0', '/xtgl/role/RoleManage')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950609', '5', '权限分配', '2', '950000', '1', '0', '/xtgl/role/RoleManage')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950610', '1', '用户管理', '2', '950000', '1', '0', '/xtgl/user/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950610', '2', '用户管理', '2', '950000', '1', '0', '/xtgl/user/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950610', '3', '用户管理', '2', '950000', '1', '0', '/xtgl/user/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950610', '4', '用户管理', '2', '950000', '1', '0', '/xtgl/user/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950610', '5', '用户管理', '2', '950000', '1', '0', '/xtgl/user/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950611', '1', '当前学期学年设置', '2', '950000', '1', '0', '/xtgl/xtsz/xnsz')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950611', '2', '当前学期学年设置', '2', '950000', '1', '0', '/xtgl/xtsz/xnsz')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950611', '3', '当前学期学年设置', '2', '950000', '1', '0', '/xtgl/xtsz/xnsz')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950611', '4', '当前学期学年设置', '2', '950000', '1', '0', '/xtgl/xtsz/xnsz')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950611', '5', '当前学期学年设置', '2', '950000', '1', '0', '/xtgl/xtsz/xnsz')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950612', '5', '网站配置', '2', '950000', '1', '0', '/admin/wzpz/index')

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全局配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_CONFIG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_CONFIG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_CONFIG', @level2type=N'COLUMN',@level2name=N'VALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN', @level2type=N'COLUMN',@level2name=N'XN'
GO
