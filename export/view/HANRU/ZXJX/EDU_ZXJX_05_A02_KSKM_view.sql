
--考试科目数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_05_A02_KSKM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[SSKSID]--所属考试ID
      ,a.[KCH]--课程号
      ,a.[NJIDLB]--年级列表
      ,a.[NJMCLB]--年级名称列表
      ,a.[BJIDLB]--班级列表
      ,a.[BJMCLB]--班级名称列表
      ,a.[CJZF]--成绩总分
      ,c.SCHOOLID as c_KS_SCHOOLID--考试数据表 学校名
      ,c.XNID as c_KS_XNID--考试数据表 学年
      ,c.XQID as c_KS_XQID--考试数据表 学期
      ,c.KSMC as c_KS_KSMC--考试数据表 考试名称
      ,c.KSKSSJ as c_KS_KSKSSJ--考试数据表 考试开始时间
      ,c.KSJSSJ as c_KS_KSJSSJ--考试数据表 考试结束时间
      ,c.DFKSSJ as c_KS_DFKSSJ--考试数据表 登分开始时间
      ,c.DFJSSJ as c_KS_DFJSSJ--考试数据表 登分结束时间
      ,d.SCHOOLID as d_KC_SCHOOLID--课程数据类 学校名
      ,d.KCMC as d_KC_KCMC--课程数据类 课程名称
      ,d.KCM as d_KC_KCM--课程数据类 课程码
      ,db.MC as d_KC_KCM_MC--中小学课程代码表 名称
      ,db.SYXX as d_KC_KCM_SYXX--中小学课程代码表 适用学校
      ,d.KCDJM as d_KC_KCDJM--课程数据类 课程等级码
      ,dc.MC as d_KC_KCDJM_MC--中小学课程等级代码表 名称
      ,d.KCBM as d_KC_KCBM--课程数据类 课程别名
      ,d.KCJJ as d_KC_KCJJ--课程数据类 课程简介
      ,d.KCYQ as d_KC_KCYQ--课程数据类 课程要求
      ,d.ZXS as d_KC_ZXS--课程数据类 总学时
      ,d.ZHXS as d_KC_ZHXS--课程数据类 周学时
      ,d.ZXXS as d_KC_ZXXS--课程数据类 自学学时
      ,d.SKFSM as d_KC_SKFSM--课程数据类 授课方式码
      ,dd.MC as d_KC_SKFSM_MC--授课方式代码表 名称
      ,d.JCBM as d_KC_JCBM--课程数据类 教材编码
      ,d.CKSM as d_KC_CKSM--课程数据类 参考书目
      ,d.CDXZ as d_KC_CDXZ--课程数据类 场地限制
      ,d.SFZK as d_KC_SFZK--课程数据类 是否主课
      ,de.MC as d_KC_SFZK_MC--是否标志代码表 名称

FROM dbo.EDU_ZXJX_05_A02_KSKM AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_05_A01_KS AS c ON a.SSKSID = c.ID /*所属考试ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS d ON a.KCH = d.KCH /*课程号*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS db ON d.KCM = db.DM /*课程码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS dc ON d.KCDJM = dc.DM /*课程等级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dd ON d.SKFSM = dd.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS de ON d.SFZK = de.DM /*是否主课*/
GO
