
--网站会员
CREATE VIEW [dbo].[VIEW_EDU_WZXT_VIP_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[LOGINNAME]--用户名
      ,a.[LOGINPWD]--密码
      ,a.[REALNAME]--姓名
      ,a.[EMAIL]--电子邮箱
      ,a.[MOBILE]--联系电话
      ,a.[QQ]--QQ号码
      ,a.[AUDITSTATU]--审核状态
      ,a.[AUDITOR]--审核人ID
      ,a.[AUDITORNAME]--审核人
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式
      ,c.URL as c_WZPZ_URL--网站配置 完整网址

FROM dbo.EDU_WZXT_VIP AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO
