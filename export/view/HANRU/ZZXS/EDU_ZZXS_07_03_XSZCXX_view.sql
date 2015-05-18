
--学生注册信息数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_07_03_XSZCXX_DISP]
AS
SELECT a.[XSXXID]--学生ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCZKM]--注册状况码
      ,a.[ZCRQ]--注册日期
      ,a.[BDRQ]--报到日期
      ,a.[WZCYY]--未注册原因
      ,a.[WZCWBDQX]--未注册/未报到去向
      ,a.[SFQJ]--是否请假
      ,a.[WASZCXQM]--未按时注册学期码
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生信息数据表 学校名
      ,b.XH as b_XSXX_XH--学生信息数据表 学号
      ,b.XM as b_XSXX_XM--学生信息数据表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生信息数据表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生信息数据表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生信息数据表 曾用名
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,[bb].MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生信息数据表 身份证件号
      ,b.XBM as b_XSXX_XBM--学生信息数据表 性别码
      ,[bc].MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.XXM as b_XSXX_XXM--学生信息数据表 血型码
      ,[bd].MC as b_XSXX_XXM_MC--血型代码表 名称
      ,[bd].JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.CSRQ as b_XSXX_CSRQ--学生信息数据表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生信息数据表 出生地码
      ,[be].MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生信息数据表 籍贯
      ,b.MZM as b_XSXX_MZM--学生信息数据表 民族码
      ,[bf].MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[bf].ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.HYZKM as b_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,[bg].MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.XYZJM as b_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,[bh].MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,[bi].MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[bi].SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.JKZKM as b_XSXX_JKZKM--学生信息数据表 健康状况码
      ,[bj].MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[bj].SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,[bk].MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[bk].JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,[bl].MC as b_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.HKLBM as b_XSXX_HKLBM--学生信息数据表 户口类别码
      ,[bm].MC as b_XSXX_HKLBM_MC--户口类别代码 名称
      ,b.SFSLDRK as b_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,[bn].MC as b_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,b.GJDQM as b_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,[bo].GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[bo].EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[bo].SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.TC as b_XSXX_TC--学生信息数据表 特长
      ,b.XSLXDH as b_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,b.WLDZ as b_XSXX_WLDZ--学生信息数据表 网络地址
      ,b.JSTXH as b_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,b.DZXX as b_XSXX_DZXX--学生信息数据表 电子信箱
      ,b.ZP as b_XSXX_ZP--学生信息数据表 照片(路径)
      ,b.RXXQID as b_XSXX_RXXQID--学生信息数据表 入学学期ID
      ,b.NFCKH as b_XSXX_NFCKH--学生信息数据表 NFC卡号
      ,d.SCHOOLID as d_XQ_SCHOOLID--学期数据表 学校名
      ,d.XNID as d_XQ_XNID--学期数据表 学年
      ,d.XQM as d_XQ_XQM--学期数据表 学期码
      ,[db].MC as d_XQ_XQM_MC--学期代码表 名称
      ,d.XQMC as d_XQ_XQMC--学期数据表 学期名称
      ,d.XQKSRQ as d_XQ_XQKSRQ--学期数据表 学期开始日期
      ,d.XQJSRQ as d_XQ_XQJSRQ--学期数据表 学期结束日期
      ,e.MC as e_ZCZK_MC--注册状况代码表 名称
      ,f.MC as f_SFBZ_MC--是否标志代码表 名称
      ,g.MC as g_XQ_MC--学期代码表 名称

FROM dbo.EDU_ZZXS_07_03_XSZCXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*学期ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZCZK AS e ON a.ZCZKM = e.DM /*注册状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFQJ = f.DM /*是否请假*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS g ON a.WASZCXQM = g.DM /*未按时注册学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [bb] ON b.SFZJLXM = [bb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [bc] ON b.XBM = [bc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [bd] ON b.XXM = [bd].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [be] ON b.CSDM = [be].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [bf] ON b.MZM = [bf].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [bg] ON b.HYZKM = [bg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [bh] ON b.XYZJM = [bh].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [bi] ON b.GATQWM = [bi].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [bj] ON b.JKZKM = [bj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [bk] ON b.ZZMMM = [bk].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [bl] ON b.HKSZDXZQHM = [bl].DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [bm] ON b.HKLBM = [bm].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [bn] ON b.SFSLDRK = [bn].DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [bo] ON b.GJDQM = [bo].DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*学期码*/
GO
