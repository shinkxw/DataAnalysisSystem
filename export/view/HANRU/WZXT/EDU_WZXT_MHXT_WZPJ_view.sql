
--文章评价表
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZPJ_DISP]
AS
SELECT a.[ID]--评价ID
      ,a.[SCHOOLID]--学校ID
      ,a.[WEBID]--网站ID
      ,a.[WZID]--网站文章ID
      ,a.[PJR]--评价人
      ,a.[YJDZ]--邮件地址
      ,a.[PJSJ]--评价时间
      ,a.[PJNR]--评价内容
      ,a.[PJZT]--评价状态
      ,a.[SHR]--审核人
      ,a.[HF]--回复
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式
      ,d.SCHOOLID as d_WZWZ_SCHOOLID--学校名
      ,d.WEBID as d_WZWZ_WEBID--网站ID
      ,d.TYPENAME as d_WZWZ_TYPENAME--类型名称
      ,d.LMID as d_WZWZ_LMID--栏目
      ,d.TITLE as d_WZWZ_TITLE--标题
      ,d.PUBLISHERNAME as d_WZWZ_PUBLISHERNAME--发布人
      ,d.AUTHOR as d_WZWZ_AUTHOR--作者
      ,d.AUTHORDEPART as d_WZWZ_AUTHORDEPART--作者部门
      ,d.PUBLISHDATE as d_WZWZ_PUBLISHDATE--发布时间
      ,d.CONTENT as d_WZWZ_CONTENT--内容
      ,d.URL as d_WZWZ_URL--链接
      ,d.IMAGEURL as d_WZWZ_IMAGEURL--图片
      ,d.ATTACHMENTNAME as d_WZWZ_ATTACHMENTNAME--附件名
      ,d.ATTACHMENT as d_WZWZ_ATTACHMENT--附件
      ,d.CHICKNUB as d_WZWZ_CHICKNUB--点击量
      ,d.AUDITSTATU as d_WZWZ_AUDITSTATU--审核状态
      ,d.AUDITOR as d_WZWZ_AUDITOR--审核人ID
      ,d.AUDITORNAME as d_WZWZ_AUDITORNAME--审核人
      ,d.AUDITTIME as d_WZWZ_AUDITTIME--审核时间
      ,d.REMARK as d_WZWZ_REMARK--备注
      ,d.SUMMARY as d_WZWZ_SUMMARY--摘要
      ,d.DISPLAYTYPE as d_WZWZ_DISPLAYTYPE--是否显示
      ,d.OPENFLAG as d_WZWZ_OPENFLAG--内外网
      ,d.LLQX as d_WZWZ_LLQX--浏览权限

FROM dbo.EDU_WZXT_MHXT_WZPJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZWZ AS d ON a.WZID = d.ID /*网站文章ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ AND a.WEBID = d.WEBID /*网站ID*/
GO
