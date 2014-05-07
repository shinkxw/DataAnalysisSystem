
--考试时间安排表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_52_A02_KSSJAP_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KSID]--考试ID
      ,a.[KSSJID]--考试时间ID
      ,a.[KCID]--课程ID
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
      ,d.SCHOOLID as d_KSSJ_SCHOOLID--考试时间表 学校
      ,d.KSID as d_KSSJ_KSID--考试时间表 考试ID
      ,d.KSRQ as d_KSSJ_KSRQ--考试时间表 考试日期
      ,d.KSSJ as d_KSSJ_KSSJ--考试时间表 考试时间
      ,d.BZ as d_KSSJ_BZ--考试时间表 备注
      ,d.CCMC as d_KSSJ_CCMC--考试时间表 场次名称
      ,e.SCHOOLID as e_KC_SCHOOLID--课程数据类 学校名
      ,e.KCMC as e_KC_KCMC--课程数据类 课程名称
      ,e.KCM as e_KC_KCM--课程数据类 课程码
      ,[eb].MC as e_KC_KCM_MC--中小学课程代码表 名称
      ,[eb].SYXX as e_KC_KCM_SYXX--中小学课程代码表 适用学校
      ,e.KCDJM as e_KC_KCDJM--课程数据类 课程等级码
      ,[ec].MC as e_KC_KCDJM_MC--中小学课程等级代码表 名称
      ,e.KCBM as e_KC_KCBM--课程数据类 课程别名
      ,e.KCJJ as e_KC_KCJJ--课程数据类 课程简介
      ,e.KCYQ as e_KC_KCYQ--课程数据类 课程要求
      ,e.ZXS as e_KC_ZXS--课程数据类 总学时
      ,e.ZHXS as e_KC_ZHXS--课程数据类 周学时
      ,e.ZXXS as e_KC_ZXXS--课程数据类 自学学时
      ,e.SKFSM as e_KC_SKFSM--课程数据类 授课方式码
      ,[ed].MC as e_KC_SKFSM_MC--授课方式代码表 名称
      ,e.JCBM as e_KC_JCBM--课程数据类 教材编码
      ,e.CKSM as e_KC_CKSM--课程数据类 参考书目
      ,e.CDXZ as e_KC_CDXZ--课程数据类 场地限制
      ,e.SFZK as e_KC_SFZK--课程数据类 是否主课
      ,[ee].MC as e_KC_SFZK_MC--是否标志代码表 名称
      ,e.PLSX as e_KC_PLSX--课程数据类 排列顺序

FROM dbo.EDU_ZXJX_52_A02_KSSJAP AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_05_A01_KS AS c ON a.KSID = c.ID /*考试ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_52_A01_KSSJ AS d ON a.KSSJID = d.ID /*考试时间ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS e ON a.KCID = e.KCH /*课程ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFYXCX = [cb].DM /*是否允许查询*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFXYPK = [cc].DM /*是否需要排考*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS [eb] ON e.KCM = [eb].DM /*课程码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS [ec] ON e.KCDJM = [ec].DM /*课程等级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [ed] ON e.SKFSM = [ed].DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ee] ON e.SFZK = [ee].DM /*是否主课*/
GO
