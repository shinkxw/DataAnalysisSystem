
--考试时间表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_52_A01_KSSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KSID]--考试ID
      ,a.[KSRQ]--考试日期
      ,a.[KSSJ]--考试时间
      ,a.[BZ]--备注
      ,a.[CCMC]--场次名称
      ,c.SCHOOLID as c_KS_SCHOOLID--考试数据表 学校名
      ,c.XNID as c_KS_XNID--考试数据表 学年
      ,c.XQID as c_KS_XQID--考试数据表 学期
      ,c.KSMC as c_KS_KSMC--考试数据表 考试名称
      ,c.KSKSSJ as c_KS_KSKSSJ--考试数据表 考试开始时间
      ,c.KSJSSJ as c_KS_KSJSSJ--考试数据表 考试结束时间
      ,c.DFKSSJ as c_KS_DFKSSJ--考试数据表 登分开始时间
      ,c.DFJSSJ as c_KS_DFJSSJ--考试数据表 登分结束时间
      ,c.DFKS as c_KS_DFKS--考试数据表 登分方式
      ,c.SFYXCX as c_KS_SFYXCX--考试数据表 是否允许查询
      ,[cb].MC as c_KS_SFYXCX_MC--是否标志代码表 名称
      ,c.SFXYPK as c_KS_SFXYPK--考试数据表 是否需要排考
      ,[cc].MC as c_KS_SFXYPK_MC--是否标志代码表 名称

FROM dbo.EDU_ZXJX_52_A01_KSSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_05_A01_KS AS c ON a.KSID = c.ID /*考试ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFYXCX = [cb].DM /*是否允许查询*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFXYPK = [cc].DM /*是否需要排考*/
GO
