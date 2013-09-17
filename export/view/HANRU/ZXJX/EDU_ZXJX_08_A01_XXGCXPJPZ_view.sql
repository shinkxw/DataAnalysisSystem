
--学生学习过程性评价配置表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_08_A01_XXGCXPJPZ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[SSKCH]--所属课程号
      ,a.[PZMC]--配置名称
      ,a.[PZLX]--配置类型
      ,a.[FLM]--父类名
      ,c.SCHOOLID as c_KC_SCHOOLID--课程数据类 学校名
      ,c.KCMC as c_KC_KCMC--课程数据类 课程名称
      ,c.KCM as c_KC_KCM--课程数据类 课程码
      ,cb.MC as c_KC_KCM_MC--中小学课程代码表 名称
      ,cb.SYXX as c_KC_KCM_SYXX--中小学课程代码表 适用学校
      ,c.KCDJM as c_KC_KCDJM--课程数据类 课程等级码
      ,cc.MC as c_KC_KCDJM_MC--中小学课程等级代码表 名称
      ,c.KCBM as c_KC_KCBM--课程数据类 课程别名
      ,c.KCJJ as c_KC_KCJJ--课程数据类 课程简介
      ,c.KCYQ as c_KC_KCYQ--课程数据类 课程要求
      ,c.ZXS as c_KC_ZXS--课程数据类 总学时
      ,c.ZHXS as c_KC_ZHXS--课程数据类 周学时
      ,c.ZXXS as c_KC_ZXXS--课程数据类 自学学时
      ,c.SKFSM as c_KC_SKFSM--课程数据类 授课方式码
      ,cd.MC as c_KC_SKFSM_MC--授课方式代码表 名称
      ,c.JCBM as c_KC_JCBM--课程数据类 教材编码
      ,c.CKSM as c_KC_CKSM--课程数据类 参考书目
      ,c.CDXZ as c_KC_CDXZ--课程数据类 场地限制
      ,c.SFZK as c_KC_SFZK--课程数据类 是否主课
      ,ce.MC as c_KC_SFZK_MC--是否标志代码表 名称

FROM dbo.EDU_ZXJX_08_A01_XXGCXPJPZ AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS c ON a.SSKCH = c.KCH /*所属课程号*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS cb ON c.KCM = cb.DM /*课程码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS cc ON c.KCDJM = cc.DM /*课程等级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cd ON c.SKFSM = cd.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ce ON c.SFZK = ce.DM /*是否主课*/
GO
