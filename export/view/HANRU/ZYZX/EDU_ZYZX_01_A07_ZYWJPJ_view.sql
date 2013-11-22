
--资源文件评价
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A07_ZYWJPJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ZYWJID]--资源文件ID
      ,a.[PF]--评分
      ,a.[PL]--评论
      ,a.[PJRID]--评价人ID
      ,a.[PJSJ]--评价时间
      ,c.SCHOOLID as c_ZYWJ_SCHOOLID--资源文件 学校
      ,c.ZYFLID as c_ZYWJ_ZYFLID--资源文件 资源类型
      ,c.ZYMLID as c_ZYWJ_ZYMLID--资源文件 资源目录
      ,c.ZYBT as c_ZYWJ_ZYBT--资源文件 资源标题
      ,c.BZ as c_ZYWJ_BZ--资源文件 备注
      ,c.GJZ as c_ZYWJ_GJZ--资源文件 关键字
      ,c.YYZID as c_ZYWJ_YYZID--资源文件 拥有者ID
      ,c.ZYLLLX as c_ZYWJ_ZYLLLX--资源文件 资源浏览类型
      ,c.WJLXID as c_ZYWJ_WJLXID--资源文件 文件类型
      ,c.ZYNR as c_ZYWJ_ZYNR--资源文件 资源内容
      ,c.FJMC as c_ZYWJ_FJMC--资源文件 附件名称
      ,c.FJDX as c_ZYWJ_FJDX--资源文件 附件大小
      ,c.FJLJ as c_ZYWJ_FJLJ--资源文件 附件路径
      ,c.ZYZT as c_ZYWJ_ZYZT--资源文件 资源状态
      ,c.ZYPJ as c_ZYWJ_ZYPJ--资源文件 资源评级
      ,c.SCSJ as c_ZYWJ_SCSJ--资源文件 上传时间
      ,c.SYNJ as c_ZYWJ_SYNJ--资源文件 适用年级
      ,c.SYXK as c_ZYWJ_SYXK--资源文件 适用学科
      ,c.LLRC as c_ZYWJ_LLRC--资源文件 浏览人次
      ,c.SHZT as c_ZYWJ_SHZT--资源文件 审核状态
      ,c.SHRID as c_ZYWJ_SHRID--资源文件 审核人ID
      ,c.SHSJ as c_ZYWJ_SHSJ--资源文件 审核时间
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_ZYZX_01_A07_ZYWJPJ AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A06_ZYWJ AS c ON a.ZYWJID = c.ID /*资源文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.PJRID = d.LOGINNAME /*评价人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
