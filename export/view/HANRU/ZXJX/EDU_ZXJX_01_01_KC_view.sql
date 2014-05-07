
--课程数据类
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_01_01_KC_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[KCH]--课程号
      ,a.[KCMC]--课程名称
      ,a.[KCM]--课程码
      ,a.[KCDJM]--课程等级码
      ,a.[KCBM]--课程别名
      ,a.[KCJJ]--课程简介
      ,a.[KCYQ]--课程要求
      ,a.[ZXS]--总学时
      ,a.[ZHXS]--周学时
      ,a.[ZXXS]--自学学时
      ,a.[SKFSM]--授课方式码
      ,a.[JCBM]--教材编码
      ,a.[CKSM]--参考书目
      ,a.[CDXZ]--场地限制
      ,a.[SFZK]--是否主课
      ,a.[PLSX]--排列顺序
      ,c.MC as c_ZXXKC_MC--中小学课程代码表 名称
      ,c.SYXX as c_ZXXKC_SYXX--中小学课程代码表 适用学校
      ,d.MC as d_ZXXKCDJ_MC--中小学课程等级代码表 名称
      ,e.MC as e_SKFS_MC--授课方式代码表 名称
      ,f.MC as f_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZXJX_01_01_KC AS a LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS c ON a.KCM = c.DM /*课程码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS d ON a.KCDJM = d.DM /*课程等级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS e ON a.SKFSM = e.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFZK = f.DM /*是否主课*/
GO
