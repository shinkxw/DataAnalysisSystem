
--教材基本信息表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_04_01_JCJBXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[JCDM]--教材代码
      ,a.[JCMC]--教材名称
      ,a.[CBH]--出版号
      ,a.[DYZZ]--第一作者
      ,a.[QTZZ]--其他作者
      ,a.[BC]--版次
      ,a.[YC]--印次
      ,a.[JG]--价格
      ,a.[CBS]--出版社
      ,a.[CBRQ]--出版日期
      ,a.[SFYLXC]--是否有练习册
      ,a.[SFYJCJF]--是否有教参教辅
      ,a.[NRJJ]--内容简介
      ,a.[DQZT]--当前状态
      ,a.[ZDKC]--最低库存
      ,a.[DQKC]--当前库存
      ,c.MC as c_SFBZ_MC--是否标志代码表 名称
      ,d.MC as d_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZZJX_04_01_JCJBXX AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFYLXC = c.DM /*是否有练习册*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.SFYJCJF = d.DM /*是否有教参教辅*/
GO
