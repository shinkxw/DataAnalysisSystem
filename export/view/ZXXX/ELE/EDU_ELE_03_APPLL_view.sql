
--应用履历表
CREATE VIEW [dbo].[VIEW_EDU_ELE_03_APPLL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[APPID]--应用ID
      ,a.[YHID]--操作用户
      ,a.[CZSJ]--操作时间
      ,a.[CZYY]--操作应用
      ,a.[CZBM]--操作表名
      ,a.[CZXX]--操作信息
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_USER_SCHOOLID--学校ID
      ,c.APPID as c_USER_APPID--应用ID
      ,c.PWD as c_USER_PWD--密码
      ,c.STATUS as c_USER_STATUS--用户状态
      ,c.USERTYPE as c_USER_USERTYPE--用户类别
      ,c.USERID as c_USER_USERID--用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--用户角色
      ,c.XM as c_USER_XM--姓名
      ,c.XB as c_USER_XB--性别
      ,c.QQ as c_USER_QQ--QQ
      ,c.DZYJ as c_USER_DZYJ--电子邮件
      ,c.LXDH as c_USER_LXDH--联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--用户创建时间

FROM dbo.EDU_ELE_03_APPLL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*操作用户*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO
