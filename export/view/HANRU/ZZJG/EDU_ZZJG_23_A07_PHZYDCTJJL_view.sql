
--平湖职业调查提交记录表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_23_A07_PHZYDCTJJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[DCMCID]--调查名称ID
      ,a.[PJJSID]--评价教师ID
      ,a.[TJSJ]--提交时间
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键
      ,d.SCHOOLID as d_PHZYDCMC_SCHOOLID--平湖职业调查名称表 学校
      ,d.DCMC as d_PHZYDCMC_DCMC--平湖职业调查名称表 调查名称
      ,d.BZ as d_PHZYDCMC_BZ--平湖职业调查名称表 备注
      ,d.ZT as d_PHZYDCMC_ZT--平湖职业调查名称表 状态
      ,e.SCHOOLID as e_PHZYDCJS_SCHOOLID--平湖职业调查教师表 学校
      ,e.XQID as e_PHZYDCJS_XQID--平湖职业调查教师表 学期ID
      ,e.JSID as e_PHZYDCJS_JSID--平湖职业调查教师表 教师ID
      ,e.DCMCID as e_PHZYDCJS_DCMCID--平湖职业调查教师表 调查名称ID
      ,e.JXB as e_PHZYDCJS_JXB--平湖职业调查教师表 教学部
      ,e.XM as e_PHZYDCJS_XM--平湖职业调查教师表 姓名
      ,e.SFJRBMHP as e_PHZYDCJS_SFJRBMHP--平湖职业调查教师表 是否被教学部评
      ,e.SFKPQX as e_PHZYDCJS_SFKPQX--平湖职业调查教师表 是否可评全校
      ,e.SFBQXP as e_PHZYDCJS_SFBQXP--平湖职业调查教师表 是否被全校评
      ,e.JXBID as e_PHZYDCJS_JXBID--平湖职业调查教师表 教学部ID
      ,e.TMIDLB as e_PHZYDCJS_TMIDLB--平湖职业调查教师表 题目ID列表
      ,e.TMMCLB as e_PHZYDCJS_TMMCLB--平湖职业调查教师表 题目名称列表

FROM dbo.EDU_ZZJG_23_A07_PHZYDCTJJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A01_PHZYDCMC AS d ON a.DCMCID = d.ID /*调查名称ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A05_PHZYDCJS AS e ON a.PJJSID = e.ID /*评价教师ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/
GO
