
--通知阅读记录
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_10_A02_TZYDJL_DISP]
AS
SELECT a.[ID]--通知阅读记录ID
      ,a.[SCHOOLID]--学校ID
      ,a.[TZID]--通知ID
      ,a.[BTZRID]--被通知人ID
      ,a.[YDRQ]--阅读日期
      ,a.[SFYD]--是否已阅读
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
      ,c.SCHOOLID as c_TZ_SCHOOLID--学校ID
      ,c.FSRID as c_TZ_FSRID--发送人ID
      ,c.FSRLB as c_TZ_FSRLB--发送人类别
      ,c.BT as c_TZ_BT--标题
      ,c.NR as c_TZ_NR--内容
      ,c.FJ as c_TZ_FJ--附件
      ,c.TJRQ as c_TZ_TJRQ--添加日期
      ,c.JSRS as c_TZ_JSRS--接收人数
      ,c.JSRIDLB as c_TZ_JSRIDLB--接收人ID列表
      ,c.JSRMZLB as c_TZ_JSRMZLB--接收人名字列表
      ,c.YYDRIDLB as c_TZ_YYDRIDLB--已阅读人ID列表
      ,c.YYDRMZLB as c_TZ_YYDRMZLB--已阅读人名字列表
      ,c.FSZT as c_TZ_FSZT--发送状态
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
      ,e.MC as e_SFBZ_MC--名称

FROM dbo.EDU_ZXBG_10_A02_TZYDJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXBG_10_A01_TZ AS c ON a.TZID = c.ID /*通知ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.BTZRID = d.LOGINNAME /*被通知人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFYD = e.DM /*是否已阅读*/
GO
