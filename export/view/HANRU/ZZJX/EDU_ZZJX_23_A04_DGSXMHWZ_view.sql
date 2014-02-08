
--顶岗实习门户文章
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_23_A04_DGSXMHWZ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LMID]--栏目ID
      ,a.[BT]--标题
      ,a.[FBR]--发布人
      ,a.[ZZ]--作者
      ,a.[ZZBM]--作者部门
      ,a.[FBSJ]--发布时间
      ,a.[ZY]--摘要
      ,a.[NR]--内容
      ,a.[TP]--图片
      ,a.[DJL]--点击量
      ,a.[SHZT]--审核状态
      ,a.[SHRID]--审核人ID
      ,a.[SHR]--审核人
      ,a.[SHSJ]--审核时间
      ,a.[ZDYXJ]--置顶优先级
      ,c.SCHOOLID as c_DGSXMHLM_SCHOOLID--顶岗实习门户栏目 学校
      ,c.LMMC as c_DGSXMHLM_LMMC--顶岗实习门户栏目 栏目名称
      ,c.LMLJ as c_DGSXMHLM_LMLJ--顶岗实习门户栏目 栏目链接
      ,c.CJ as c_DGSXMHLM_CJ--顶岗实习门户栏目 层级
      ,c.FLMID as c_DGSXMHLM_FLMID--顶岗实习门户栏目 父栏目ID
      ,c.SFQY as c_DGSXMHLM_SFQY--顶岗实习门户栏目 是否启用
      ,c.PLSX as c_DGSXMHLM_PLSX--顶岗实习门户栏目 排列顺序
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
      ,d.YHRY as d_USER_YHRY--应用系统用户表 用户荣誉
      ,d.YHJF as d_USER_YHJF--应用系统用户表 用户积分

FROM dbo.EDU_ZZJX_23_A04_DGSXMHWZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_23_A03_DGSXMHLM AS c ON a.LMID = c.ID /*栏目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SHRID = d.LOGINNAME /*审核人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
