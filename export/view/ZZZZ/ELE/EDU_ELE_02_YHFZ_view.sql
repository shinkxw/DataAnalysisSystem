
--用户分组表
CREATE VIEW [dbo].[VIEW_EDU_ELE_02_YHFZ_DISP]
AS
SELECT a.[ID]--分组ID
      ,a.[SCHOOLID]--学校ID
      ,a.[APPID]--应用ID
      ,a.[YHID]--用户ID
      ,a.[SJFZID]--上级分组ID
      ,a.[FZMC]--分组名称
      ,a.[FZYHID]--分组用户ID列表
      ,b.XXDM as b_ZZXX_XXDM--学校代码
      ,b.XXMC as b_ZZXX_XXMC--学校名称
      ,b.XXYWMC as b_ZZXX_XXYWMC--学校英文名称
      ,b.XXJBZM as b_ZZXX_XXJBZM--学校举办者码
      ,bb.MC as b_ZZXX_XXJBZM_MC--名称
      ,bb.SM as b_ZZXX_XXJBZM_SM--说明
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--学校主管部门码
      ,bc.MC as b_ZZXX_XXZGBMM_MC--名称
      ,bc.SM as b_ZZXX_XXZGBMM_SM--说明
      ,b.XXDZ as b_ZZXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZZXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZZXX_XZQHM--行政区划码
      ,bd.MC as b_ZZXX_XZQHM_MC--名称
      ,b.JXNY as b_ZZXX_JXNY--建校年月
      ,b.XQR as b_ZZXX_XQR--校庆日
      ,b.CLBJ as b_ZZXX_CLBJ--成立背景
      ,b.LSYG as b_ZZXX_LSYG--历史沿革
      ,b.XXXQS as b_ZZXX_XXXQS--学校校区数
      ,b.XXPGLX as b_ZZXX_XXPGLX--学校评估类型
      ,be.MC as b_ZZXX_XXPGLX_MC--名称
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--学校评估情况说明
      ,b.ZYDZ as b_ZZXX_ZYDZ--主页地址
      ,b.FDDBRH as b_ZZXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZZXX_FRZSH--法人证书号
      ,b.LXDH as b_ZZXX_LXDH--联系电话
      ,b.CZDH as b_ZZXX_CZDH--传真电话
      ,b.DZXX as b_ZZXX_DZXX--电子信箱
      ,c.SCHOOLID as c_APP_SCHOOLID--学校ID
      ,c.NAME as c_APP_NAME--应用名称
      ,c.URL as c_APP_URL--网址
      ,c.AUTHIP as c_APP_AUTHIP--限用IP
      ,c.SM as c_APP_SM--说明
      ,c.DLFS as c_APP_DLFS--登录方式
      ,c.STATUS as c_APP_STATUS--应用状态
      ,d.SCHOOLID as d_USER_SCHOOLID--学校ID
      ,d.APPID as d_USER_APPID--应用ID
      ,d.PWD as d_USER_PWD--密码
      ,d.STATUS as d_USER_STATUS--用户状态
      ,d.USERTYPE as d_USER_USERTYPE--用户类别
      ,d.USERID as d_USER_USERID--用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--用户角色
      ,d.XM as d_USER_XM--姓名
      ,d.XB as d_USER_XB--性别
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--电子邮件
      ,d.LXDH as d_USER_LXDH--联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--用户创建时间
      ,e.SCHOOLID as e_YHFZ_SCHOOLID--学校ID
      ,e.APPID as e_YHFZ_APPID--应用ID
      ,e.YHID as e_YHFZ_YHID--用户ID
      ,e.SJFZID as e_YHFZ_SJFZID--上级分组ID
      ,e.FZMC as e_YHFZ_FZMC--分组名称
      ,e.FZYHID as e_YHFZ_FZYHID--分组用户ID列表

FROM dbo.EDU_ELE_02_YHFZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*应用ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YHID = d.LOGINNAME /*用户ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_02_YHFZ AS e ON a.SJFZID = e.ID /*上级分组ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ AND a.APPID = e.APPID /*应用ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*学校评估类型*/
GO
