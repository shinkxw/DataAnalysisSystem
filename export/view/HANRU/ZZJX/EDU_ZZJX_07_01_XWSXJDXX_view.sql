
--校外实习基地信息数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_01_XWSXJDXX_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[ID]--企业表ID
      ,a.[QYBH]--企业编号
      ,a.[JDHZHTBH]--基地合作合同编号
      ,a.[JDHZHTMC]--基地合作合同名称
      ,a.[JDLBM]--基地类别码
      ,a.[DWMC]--单位名称
      ,a.[QYXZQ]--企业行政区
      ,a.[QYDZ]--企业地址
      ,a.[QYXZ]--企业性质
      ,a.[FRDB]--法人代表
      ,a.[QYLXR]--企业联系人
      ,a.[QYYZBM]--企业邮政编码
      ,a.[QYLXDH]--企业联系电话
      ,a.[QYYYZZ]--企业营业执照
      ,a.[QYLX]--企业类型
      ,a.[QYRS]--企业人数
      ,a.[QYZCZJ]--企业注册资金
      ,a.[QYCZ]--企业传真
      ,a.[QYFZR]--企业负责人
      ,a.[FZRZW]--负责人职位
      ,a.[FZRLXDH]--负责人联系电话
      ,a.[QYYXDZ]--企业邮箱地址
      ,a.[QYQQ]--企业QQ
      ,a.[QYMSN]--企业MSN
      ,a.[QYWZ]--企业网址
      ,a.[QYJJ]--企业简介
      ,a.[SHZT]--审核状态
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,b.XNID as b_SCHOOL_XNID--学校配置表 学年ID
      ,b.XQID as b_SCHOOL_XQID--学校配置表 学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--学校配置表 匹配url
      ,b.MenhuURL as b_SCHOOL_MenhuURL--学校配置表 门户url
      ,b.MenhuWebid as b_SCHOOL_MenhuWebid--学校配置表 门户webid
      ,b.LogLevel as b_SCHOOL_LogLevel--学校配置表 日志级别
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--学校配置表 权限列表
      ,c.MC as c_SXJDLB_MC--实习基地类别代码 名称
      ,d.MC as d_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,e.MC as e_JJLXFL_MC--经济类型分类与代码 名称

FROM dbo.EDU_ZZJX_07_01_XWSXJDXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS c ON a.JDLBM = c.DM /*基地类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.QYXZQ = d.DM /*企业行政区*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS e ON a.QYXZ = e.DM /*企业性质*/
GO
