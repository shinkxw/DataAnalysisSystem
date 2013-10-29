
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
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式
      ,c.URL as c_WZPZ_URL--网站配置 完整网址
      ,d.SCHOOLID as d_WZWZ_SCHOOLID--网站文章 学校名
      ,d.WEBID as d_WZWZ_WEBID--网站文章 网站ID
      ,d.TYPENAME as d_WZWZ_TYPENAME--网站文章 类型名称
      ,d.LMID as d_WZWZ_LMID--网站文章 栏目
      ,d.TITLE as d_WZWZ_TITLE--网站文章 标题
      ,d.PUBLISHERNAME as d_WZWZ_PUBLISHERNAME--网站文章 发布人
      ,d.AUTHOR as d_WZWZ_AUTHOR--网站文章 作者
      ,d.AUTHORDEPART as d_WZWZ_AUTHORDEPART--网站文章 作者部门
      ,d.PUBLISHDATE as d_WZWZ_PUBLISHDATE--网站文章 发布时间
      ,d.CONTENT as d_WZWZ_CONTENT--网站文章 内容
      ,d.URL as d_WZWZ_URL--网站文章 链接
      ,d.IMAGEURL as d_WZWZ_IMAGEURL--网站文章 图片
      ,d.ATTACHMENTNAME as d_WZWZ_ATTACHMENTNAME--网站文章 附件名
      ,d.ATTACHMENT as d_WZWZ_ATTACHMENT--网站文章 附件
      ,d.CHICKNUB as d_WZWZ_CHICKNUB--网站文章 点击量
      ,d.AUDITSTATU as d_WZWZ_AUDITSTATU--网站文章 审核状态
      ,d.AUDITOR as d_WZWZ_AUDITOR--网站文章 审核人ID
      ,d.AUDITORNAME as d_WZWZ_AUDITORNAME--网站文章 审核人
      ,d.AUDITTIME as d_WZWZ_AUDITTIME--网站文章 审核时间
      ,d.REMARK as d_WZWZ_REMARK--网站文章 备注
      ,d.SUMMARY as d_WZWZ_SUMMARY--网站文章 摘要
      ,d.DISPLAYTYPE as d_WZWZ_DISPLAYTYPE--网站文章 内外网
      ,d.OPENFLAG as d_WZWZ_OPENFLAG--网站文章 开启状态
      ,d.LLQX as d_WZWZ_LLQX--网站文章 浏览权限
      ,d.INDEXSHOW as d_WZWZ_INDEXSHOW--网站文章 能否显示在主页上
      ,d.SFZD as d_WZWZ_SFZD--网站文章 是否置顶
      ,d.ZDYXJ as d_WZWZ_ZDYXJ--网站文章 置顶优先级

FROM dbo.EDU_WZXT_MHXT_WZPJ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZWZ AS d ON a.WZID = d.ID /*网站文章ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ AND a.WEBID = d.WEBID /*网站ID*/
GO
