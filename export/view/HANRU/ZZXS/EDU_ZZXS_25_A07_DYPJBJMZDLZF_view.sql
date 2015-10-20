
--德育评价班级每周大类总分表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_25_A07_DYPJBJMZDLZF_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[MZHZID]--每周汇总ID
      ,a.[DLID]--大类ID
      ,a.[ZF]--总分
      ,c.SCHOOLID as c_DYPJBJMZHZ_SCHOOLID--德育评价班级每周汇总表 学校
      ,c.XQID as c_DYPJBJMZHZ_XQID--德育评价班级每周汇总表 学期ID
      ,c.ZCID as c_DYPJBJMZHZ_ZCID--德育评价班级每周汇总表 周次ID
      ,c.BJID as c_DYPJBJMZHZ_BJID--德育评价班级每周汇总表 班级ID
      ,c.ZZF as c_DYPJBJMZHZ_ZZF--德育评价班级每周汇总表 周总分
      ,c.ZF as c_DYPJBJMZHZ_ZF--德育评价班级每周汇总表 总分
      ,c.DDID as c_DYPJBJMZHZ_DDID--德育评价班级每周汇总表 等第ID
      ,c.DDPJJSID as c_DYPJBJMZHZ_DDPJJSID--德育评价班级每周汇总表 等第评定教师ID
      ,c.TJJSID as c_DYPJBJMZHZ_TJJSID--德育评价班级每周汇总表 添加教师ID
      ,c.TJSJ as c_DYPJBJMZHZ_TJSJ--德育评价班级每周汇总表 添加时间
      ,d.SCHOOLID as d_DYPJDL_SCHOOLID--德育评价大类表 学校
      ,d.PFDXLX as d_DYPJDL_PFDXLX--德育评价大类表 评分对象类型
      ,d.MC as d_DYPJDL_MC--德育评价大类表 名称
      ,d.PLSX as d_DYPJDL_PLSX--德育评价大类表 排列顺序

FROM dbo.EDU_ZZXS_25_A07_DYPJBJMZDLZF AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A06_DYPJBJMZHZ AS c ON a.MZHZID = c.ID /*每周汇总ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A01_DYPJDL AS d ON a.DLID = d.ID /*大类ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
