
--平湖职业测评提交记录表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_22_A07_PHZYCPTJJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
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
      ,d.SCHOOLID as d_PHZYKPJS_SCHOOLID--平湖职业考评教师表 学校
      ,d.XQID as d_PHZYKPJS_XQID--平湖职业考评教师表 学期ID
      ,d.JSID as d_PHZYKPJS_JSID--平湖职业考评教师表 教师ID
      ,d.XSZW as d_PHZYKPJS_XSZW--平湖职业考评教师表 显示职务
      ,d.TJZW as d_PHZYKPJS_TJZW--平湖职业考评教师表 统计职务
      ,d.JXB as d_PHZYKPJS_JXB--平湖职业考评教师表 教学部
      ,d.JYZ as d_PHZYKPJS_JYZ--平湖职业考评教师表 教研组
      ,d.XM as d_PHZYKPJS_XM--平湖职业考评教师表 姓名
      ,d.SFKPQX as d_PHZYKPJS_SFKPQX--平湖职业考评教师表 是否可评全校
      ,d.SFBQXP as d_PHZYKPJS_SFBQXP--平湖职业考评教师表 是否被全校评
      ,d.SFJRBMHP as d_PHZYKPJS_SFJRBMHP--平湖职业考评教师表 是否计入部门互评
      ,d.SFBBQXP as d_PHZYKPJS_SFBBQXP--平湖职业考评教师表 是否不被全校评

FROM dbo.EDU_ZZJG_22_A07_PHZYCPTJJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_22_A05_PHZYKPJS AS d ON a.PJJSID = d.ID /*评价教师ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/
GO
