
--快递公司表
CREATE VIEW [dbo].[VIEW_EDU_ZWXT_02_A01_KDGS_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[KDGSMC]--快递公司名称
      ,a.[LXRXM]--联系人姓名
      ,a.[LXDH]--联系电话
      ,a.[LXDZ]--联系地址
      ,a.[SFSY]--是否使用
      ,a.[PLSX]--排列顺序
      ,c.MC as c_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZWXT_02_A01_KDGS AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFSY = c.DM /*是否使用*/
GO
