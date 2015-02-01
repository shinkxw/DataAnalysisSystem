
--平湖职业调查教学部题目上限表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_23_A09_PHZYDCJXBTMSX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[DCMCID]--调查名称ID
      ,a.[JXBID]--教学部ID
      ,a.[TMID]--题目ID
      ,a.[MESX]--名额上限
      ,c.SCHOOLID as c_PHZYDCMC_SCHOOLID--平湖职业调查名称表 学校
      ,c.DCMC as c_PHZYDCMC_DCMC--平湖职业调查名称表 调查名称
      ,c.BZ as c_PHZYDCMC_BZ--平湖职业调查名称表 备注
      ,c.ZT as c_PHZYDCMC_ZT--平湖职业调查名称表 状态
      ,d.SCHOOLID as d_PHZYDCJXB_SCHOOLID--平湖职业调查教学部表 学校
      ,d.DCMCID as d_PHZYDCJXB_DCMCID--平湖职业调查教学部表 调查名称ID
      ,d.JXBMC as d_PHZYDCJXB_JXBMC--平湖职业调查教学部表 教学部名称
      ,d.MESX as d_PHZYDCJXB_MESX--平湖职业调查教学部表 名额上限
      ,e.SCHOOLID as e_PHZYDCTM_SCHOOLID--平湖职业调查题目表 学校
      ,e.DFFSID as e_PHZYDCTM_DFFSID--平湖职业调查题目表 打分方式ID
      ,e.DCMCID as e_PHZYDCTM_DCMCID--平湖职业调查题目表 调查名称ID
      ,e.DCXM as e_PHZYDCTM_DCXM--平湖职业调查题目表 调查项目
      ,e.DCZB as e_PHZYDCTM_DCZB--平湖职业调查题目表 调查指标
      ,e.ZT as e_PHZYDCTM_ZT--平湖职业调查题目表 状态

FROM dbo.EDU_ZZJG_23_A09_PHZYDCJXBTMSX AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A01_PHZYDCMC AS c ON a.DCMCID = c.ID /*调查名称ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A08_PHZYDCJXB AS d ON a.JXBID = d.ID /*教学部ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A04_PHZYDCTM AS e ON a.TMID = e.ID /*题目ID*/
GO
