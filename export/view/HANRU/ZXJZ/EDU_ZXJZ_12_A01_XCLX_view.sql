
--薪酬类型表
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_12_A01_XCLX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XCLXMC]--类型名称
      ,a.[JZGLXID]--教职工类型ID
      ,a.[PLSX]--排列顺序
      ,c.SCHOOLID as c_JZGLX_SCHOOLID--教职工类型表 学校
      ,c.LXMC as c_JZGLX_LXMC--教职工类型表 类型名称

FROM dbo.EDU_ZXJZ_12_A01_XCLX AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_A07_JZGLX AS c ON a.JZGLXID = c.ID /*教职工类型ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
