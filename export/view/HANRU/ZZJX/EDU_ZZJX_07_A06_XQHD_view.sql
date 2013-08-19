
--校企互动表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A06_XQHD_DISP]
AS
SELECT a.[ID]--校企互动信息ID
      ,a.[SCHOOLID]--学校ID
      ,a.[QYID]--企业ID
      ,a.[XXJY]--企业对学校工作建议
      ,a.[XSJY]--企业对学生职业技能建议
      ,a.[GLJY]--实习生管理工作的建议
      ,a.[QTJY]--其他建议
      ,a.[FKNR]--反馈内容
      ,a.[FKSJ]--反馈时间
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_XWSXJDXX_SCHOOLID--学校名
      ,c.QYBH as c_XWSXJDXX_QYBH--企业编号
      ,c.JDHZHTBH as c_XWSXJDXX_JDHZHTBH--基地合作合同编号
      ,c.JDHZHTMC as c_XWSXJDXX_JDHZHTMC--基地合作合同名称
      ,c.JDLBM as c_XWSXJDXX_JDLBM--基地类别码
      ,cb.MC as c_XWSXJDXX_JDLBM_MC--名称
      ,c.DWMC as c_XWSXJDXX_DWMC--单位名称
      ,c.QYXZQ as c_XWSXJDXX_QYXZQ--企业行政区
      ,cc.MC as c_XWSXJDXX_QYXZQ_MC--名称
      ,c.QYDZ as c_XWSXJDXX_QYDZ--企业地址
      ,c.QYXZ as c_XWSXJDXX_QYXZ--企业性质
      ,cd.MC as c_XWSXJDXX_QYXZ_MC--名称
      ,c.FRDB as c_XWSXJDXX_FRDB--法人代表
      ,c.QYLXR as c_XWSXJDXX_QYLXR--企业联系人
      ,c.QYYZBM as c_XWSXJDXX_QYYZBM--企业邮政编码
      ,c.QYLXDH as c_XWSXJDXX_QYLXDH--企业联系电话
      ,c.QYYYZZ as c_XWSXJDXX_QYYYZZ--企业营业执照
      ,c.QYLX as c_XWSXJDXX_QYLX--企业类型
      ,c.QYRS as c_XWSXJDXX_QYRS--企业人数
      ,c.QYZCZJ as c_XWSXJDXX_QYZCZJ--企业注册资金
      ,c.QYCZ as c_XWSXJDXX_QYCZ--企业传真
      ,c.QYFZR as c_XWSXJDXX_QYFZR--企业负责人
      ,c.FZRZW as c_XWSXJDXX_FZRZW--负责人职位
      ,c.FZRLXDH as c_XWSXJDXX_FZRLXDH--负责人联系电话
      ,c.QYYXDZ as c_XWSXJDXX_QYYXDZ--企业邮箱地址
      ,c.QYQQ as c_XWSXJDXX_QYQQ--企业QQ
      ,c.QYMSN as c_XWSXJDXX_QYMSN--企业MSN
      ,c.QYWZ as c_XWSXJDXX_QYWZ--企业网址
      ,c.QYJJ as c_XWSXJDXX_QYJJ--企业简介
      ,c.SHZT as c_XWSXJDXX_SHZT--审核状态

FROM dbo.EDU_ZZJX_07_A06_XQHD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS c ON a.QYID = c.ID /*企业ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS cb ON c.JDLBM = cb.DM /*基地类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.QYXZQ = cc.DM /*企业行政区*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS cd ON c.QYXZ = cd.DM /*企业性质*/
GO
