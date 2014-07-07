
--平湖职业考评结果表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_22_A06_PHZYKPJG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[CPMCID]--测评名称ID
      ,a.[PJJSID]--评价教师ID
      ,a.[BPJSID]--被评教师ID
      ,a.[TMID]--题目ID
      ,a.[FZ]--分值
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.SCHOOLID as d_PHZYCPMC_SCHOOLID--平湖职业测评名称表 学校
      ,d.KPMC as d_PHZYCPMC_KPMC--平湖职业测评名称表 测评名称
      ,d.BZ as d_PHZYCPMC_BZ--平湖职业测评名称表 备注
      ,e.SCHOOLID as e_PHZYKPJS_SCHOOLID--平湖职业考评教师表 学校
      ,e.XQID as e_PHZYKPJS_XQID--平湖职业考评教师表 学期ID
      ,e.JSID as e_PHZYKPJS_JSID--平湖职业考评教师表 教师ID
      ,e.XSZW as e_PHZYKPJS_XSZW--平湖职业考评教师表 显示职务
      ,e.TJZW as e_PHZYKPJS_TJZW--平湖职业考评教师表 统计职务
      ,e.JXB as e_PHZYKPJS_JXB--平湖职业考评教师表 教学部
      ,e.JYZ as e_PHZYKPJS_JYZ--平湖职业考评教师表 教研组
      ,e.XM as e_PHZYKPJS_XM--平湖职业考评教师表 姓名
      ,e.SFKPQX as e_PHZYKPJS_SFKPQX--平湖职业考评教师表 是否可评全校
      ,e.SFBQXP as e_PHZYKPJS_SFBQXP--平湖职业考评教师表 是否被全校评
      ,e.SFJRBMHP as e_PHZYKPJS_SFJRBMHP--平湖职业考评教师表 是否计入部门互评
      ,e.SFBBQXP as e_PHZYKPJS_SFBBQXP--平湖职业考评教师表 是否不被全校评
      ,f.SCHOOLID as f_PHZYKPJS_SCHOOLID--平湖职业考评教师表 学校
      ,f.XQID as f_PHZYKPJS_XQID--平湖职业考评教师表 学期ID
      ,f.JSID as f_PHZYKPJS_JSID--平湖职业考评教师表 教师ID
      ,f.XSZW as f_PHZYKPJS_XSZW--平湖职业考评教师表 显示职务
      ,f.TJZW as f_PHZYKPJS_TJZW--平湖职业考评教师表 统计职务
      ,f.JXB as f_PHZYKPJS_JXB--平湖职业考评教师表 教学部
      ,f.JYZ as f_PHZYKPJS_JYZ--平湖职业考评教师表 教研组
      ,f.XM as f_PHZYKPJS_XM--平湖职业考评教师表 姓名
      ,f.SFKPQX as f_PHZYKPJS_SFKPQX--平湖职业考评教师表 是否可评全校
      ,f.SFBQXP as f_PHZYKPJS_SFBQXP--平湖职业考评教师表 是否被全校评
      ,f.SFJRBMHP as f_PHZYKPJS_SFJRBMHP--平湖职业考评教师表 是否计入部门互评
      ,f.SFBBQXP as f_PHZYKPJS_SFBBQXP--平湖职业考评教师表 是否不被全校评
      ,g.SCHOOLID as g_PHZYCPTM_SCHOOLID--平湖职业测评题目表 学校
      ,g.DFFSID as g_PHZYCPTM_DFFSID--平湖职业测评题目表 打分方式ID
      ,g.CPMCID as g_PHZYCPTM_CPMCID--平湖职业测评题目表 测评名称ID
      ,g.CPXM as g_PHZYCPTM_CPXM--平湖职业测评题目表 测评项目
      ,g.CPZB as g_PHZYCPTM_CPZB--平湖职业测评题目表 测评指标
      ,g.ZT as g_PHZYCPTM_ZT--平湖职业测评题目表 状态

FROM dbo.EDU_ZZJG_22_A06_PHZYKPJG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_22_A01_PHZYCPMC AS d ON a.CPMCID = d.ID /*测评名称ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_22_A05_PHZYKPJS AS e ON a.PJJSID = e.ID /*评价教师ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_22_A05_PHZYKPJS AS f ON a.BPJSID = f.ID /*被评教师ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_22_A04_PHZYCPTM AS g ON a.TMID = g.ID /*题目ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/
GO
