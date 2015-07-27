
--招生管理新生信息表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_22_A04_ZSGLXSXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[XM]--姓名
      ,a.[XB]--性别
      ,a.[SFZX]--是否住校
      ,a.[LXDH]--联系电话
      ,a.[BYXXID]--毕业学校ID
      ,a.[YW]--语文
      ,a.[SX]--数学
      ,a.[YY]--英语
      ,a.[SZ]--社政
      ,a.[KX]--科学
      ,a.[TY]--体育
      ,a.[SYJF]--实验加分
      ,a.[ZF]--总分
      ,a.[TC]--特长
      ,a.[BZ]--备注
      ,a.[DYZYID]--第一志愿ID
      ,a.[DEZYID]--第二志愿ID
      ,a.[DSZYID]--第三志愿ID
      ,a.[LSID]--临时ID
      ,a.[LRSJ]--录入时间
      ,a.[LRR]--录入人
      ,a.[LQSJ]--录取时间
      ,a.[LQR]--录取人
      ,a.[LQZYID]--录取专业ID
      ,a.[BH]--编号
      ,a.[JFJE]--缴费金额
      ,a.[XNID]--学年ID
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.SCHOOLID as d_ZSGLCZXX_SCHOOLID--招生管理初中学校表 学校
      ,d.XXMC as d_ZSGLCZXX_XXMC--招生管理初中学校表 学校名称
      ,e.SCHOOLID as e_ZSGLZSJHXD_SCHOOLID--招生管理招生计划详单表 学校
      ,e.JHID as e_ZSGLZSJHXD_JHID--招生管理招生计划详单表 计划ID
      ,e.ZYMC as e_ZSGLZSJHXD_ZYMC--招生管理招生计划详单表 专业名称
      ,e.ZYID as e_ZSGLZSJHXD_ZYID--招生管理招生计划详单表 专业ID
      ,e.ZSRS as e_ZSGLZSJHXD_ZSRS--招生管理招生计划详单表 招生人数
      ,e.ZYJS as e_ZSGLZSJHXD_ZYJS--招生管理招生计划详单表 专业介绍
      ,f.SCHOOLID as f_ZSGLZSJHXD_SCHOOLID--招生管理招生计划详单表 学校
      ,f.JHID as f_ZSGLZSJHXD_JHID--招生管理招生计划详单表 计划ID
      ,f.ZYMC as f_ZSGLZSJHXD_ZYMC--招生管理招生计划详单表 专业名称
      ,f.ZYID as f_ZSGLZSJHXD_ZYID--招生管理招生计划详单表 专业ID
      ,f.ZSRS as f_ZSGLZSJHXD_ZSRS--招生管理招生计划详单表 招生人数
      ,f.ZYJS as f_ZSGLZSJHXD_ZYJS--招生管理招生计划详单表 专业介绍
      ,g.SCHOOLID as g_ZSGLZSJHXD_SCHOOLID--招生管理招生计划详单表 学校
      ,g.JHID as g_ZSGLZSJHXD_JHID--招生管理招生计划详单表 计划ID
      ,g.ZYMC as g_ZSGLZSJHXD_ZYMC--招生管理招生计划详单表 专业名称
      ,g.ZYID as g_ZSGLZSJHXD_ZYID--招生管理招生计划详单表 专业ID
      ,g.ZSRS as g_ZSGLZSJHXD_ZSRS--招生管理招生计划详单表 招生人数
      ,g.ZYJS as g_ZSGLZSJHXD_ZYJS--招生管理招生计划详单表 专业介绍
      ,h.SCHOOLID as h_ZSGLZSJHXD_SCHOOLID--招生管理招生计划详单表 学校
      ,h.JHID as h_ZSGLZSJHXD_JHID--招生管理招生计划详单表 计划ID
      ,h.ZYMC as h_ZSGLZSJHXD_ZYMC--招生管理招生计划详单表 专业名称
      ,h.ZYID as h_ZSGLZSJHXD_ZYID--招生管理招生计划详单表 专业ID
      ,h.ZSRS as h_ZSGLZSJHXD_ZSRS--招生管理招生计划详单表 招生人数
      ,h.ZYJS as h_ZSGLZSJHXD_ZYJS--招生管理招生计划详单表 专业介绍
      ,i.SCHOOLID as i_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,i.ZYDM as i_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,[ib].ZYMLLB as i_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,[ib].MC as i_ZYXX_ZYDM_MC--自建专业代码 名称
      ,i.ZYMC as i_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,i.ZYYWMC as i_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,i.XZ as i_ZYXX_XZ--专业基本信息数据表 学制
      ,i.ZYFXMC as i_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,i.ZYJC as i_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,i.JLNY as i_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,i.ZYJSS as i_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,i.KSJGH as i_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,i.ZXF as i_ZYXX_ZXF--专业基本信息数据表 总学分
      ,i.SSZYML as i_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,[ic].MC as i_ZYXX_SSZYML_MC--专业目录代码 名称
      ,i.ZYLB as i_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,j.SCHOOLID as j_XN_SCHOOLID--学年表 学校名
      ,j.XN as j_XN_XN--学年表 学年

FROM dbo.EDU_ZZXS_22_A04_ZSGLXSXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_22_A01_ZSGLCZXX AS d ON a.BYXXID = d.ID /*毕业学校ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_22_A03_ZSGLZSJHXD AS e ON a.DYZYID = e.ID /*第一志愿ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_22_A03_ZSGLZSJHXD AS f ON a.DEZYID = f.ID /*第二志愿ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_22_A03_ZSGLZSJHXD AS g ON a.DSZYID = g.ID /*第三志愿ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_22_A03_ZSGLZSJHXD AS h ON a.LSID = h.ID /*临时ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS i ON a.LQZYID = i.ZYBH /*录取专业ID*/ AND a.SCHOOLID = i.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS j ON a.XNID = j.ID /*学年ID*/ AND a.SCHOOLID = j.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [ib] ON i.ZYDM = [ib].DM /*专业代码*/ AND i.SSZYML = [ib].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [ic] ON i.SSZYML = [ic].DM /*所属专业目录*/
GO
