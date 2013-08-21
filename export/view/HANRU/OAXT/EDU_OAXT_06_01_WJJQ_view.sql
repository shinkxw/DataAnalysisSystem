
--文件借阅数据类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_06_01_WJJQ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[JYSPRID]--借阅审批人ID
      ,a.[JYJBRID]--借阅经办人ID
      ,a.[JYR]--借阅人
      ,a.[JYRQ]--借阅日期
      ,a.[JYSPRGH]--借阅审批人工号
      ,a.[JYJBRGH]--借阅经办人工号
      ,a.[JYYY]--借阅原因
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
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
      ,e.SCHOOLID as e_USER_SCHOOLID--应用系统用户表 学校ID
      ,e.APPID as e_USER_APPID--应用系统用户表 应用ID
      ,e.PWD as e_USER_PWD--应用系统用户表 密码
      ,e.STATUS as e_USER_STATUS--应用系统用户表 用户状态
      ,e.USERTYPE as e_USER_USERTYPE--应用系统用户表 用户类别
      ,e.USERID as e_USER_USERID--应用系统用户表 用户ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--应用系统用户表 用户角色
      ,e.XM as e_USER_XM--应用系统用户表 姓名
      ,e.XB as e_USER_XB--应用系统用户表 性别
      ,e.QQ as e_USER_QQ--应用系统用户表 QQ
      ,e.DZYJ as e_USER_DZYJ--应用系统用户表 电子邮件
      ,e.LXDH as e_USER_LXDH--应用系统用户表 联系电话
      ,e.ZJDLSJ as e_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,e.DLCGCS as e_USER_DLCGCS--应用系统用户表 登录成功次数
      ,e.YHCJSJ as e_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_OAXT_06_01_WJJQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JYSPRID = d.LOGINNAME /*借阅审批人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JYJBRID = e.LOGINNAME /*借阅经办人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/
GO
