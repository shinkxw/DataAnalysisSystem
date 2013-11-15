
--档案登记数据表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_08_01_DADJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[QZH]--全宗号
      ,a.[ND]--年度
      ,a.[MLH]--目录号
      ,a.[AJH]--案卷号
      ,a.[TM]--题名
      ,a.[ZTC]--主题词
      ,a.[QSRQ]--起始日期
      ,a.[JZRQ]--截止日期
      ,a.[BGQXM]--保管期限码
      ,a.[MJM]--密级码
      ,a.[YS]--页数
      ,a.[FS]--份数
      ,a.[BZDW]--编制单位
      ,a.[CFWZ]--存放位置
      ,a.[DAFLM]--档案分类码
      ,c.MC as c_YWDABGQX_MC--一位档案保管期限代码表 名称
      ,c.ZMDM as c_YWDABGQX_ZMDM--一位档案保管期限代码表 字母代码
      ,c.SM as c_YWDABGQX_SM--一位档案保管期限代码表 说明
      ,d.HYPYDM as d_WXBMZJ_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,d.HZDM as d_WXBMZJ_HZDM--文献保密等级代码与标识 汉字代码
      ,d.MC as d_WXBMZJ_MC--文献保密等级代码与标识 名称
      ,e.MC as e_LWGDXXDASTFL_MC--两位高等学校档案实体分类码 名称

FROM dbo.EDU_OAXT_08_01_DADJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_YWDABGQX AS c ON a.BGQXM = c.DM /*保管期限码*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS d ON a.MJM = d.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_GB_LWGDXXDASTFL AS e ON a.DAFLM = e.DM /*档案分类码*/
GO
