
--考生数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZZS_01_01_ZSXX_DISP]
AS
SELECT a.[XSXXID]--学生信息数据表
      ,a.[SCHOOLID]--学校名
      ,a.[ZKZH]--准考证号
      ,a.[KSH]--考生号
      ,a.[KQXZQHM]--考区行政区划码
      ,a.[RXNY]--入学年月
      ,a.[YSWGYZM]--应试外国语种码
      ,a.[BKZYM1]--报考专业码1
      ,a.[BKZYM2]--报考专业码2
      ,a.[BKZYM3]--报考专业码3
      ,a.[BKZYM4]--报考专业码4
      ,a.[BKZYM5]--报考专业码5
      ,a.[BKZYM6]--报考专业码6
      ,a.[KSFSM]--考试方式码
      ,a.[BYZX]--毕业中学
      ,a.[BYZXYZBM]--毕业中学邮政编码
      ,a.[KSTC]--考生特长
      ,a.[JLYCC]--奖励与惩处
      ,a.[JSHJ]--竞赛获奖
      ,a.[SHGZ]--社会工作
      ,a.[TJJL]--体检结论
      ,a.[JZBS]--家族病史
      ,a.[KSJWBS]--考生既往病史
      ,a.[SG]--身高
      ,a.[KSSL]--考生视力
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生信息数据表 学校名
      ,b.XH as b_XSXX_XH--学生信息数据表 学号
      ,b.XM as b_XSXX_XM--学生信息数据表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生信息数据表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生信息数据表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生信息数据表 曾用名
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,bb.MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生信息数据表 身份证件号
      ,b.XBM as b_XSXX_XBM--学生信息数据表 性别码
      ,bc.MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.XXM as b_XSXX_XXM--学生信息数据表 血型码
      ,bd.MC as b_XSXX_XXM_MC--血型代码表 名称
      ,bd.JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.CSRQ as b_XSXX_CSRQ--学生信息数据表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生信息数据表 出生地码
      ,be.MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生信息数据表 籍贯
      ,b.MZM as b_XSXX_MZM--学生信息数据表 民族码
      ,bf.MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.HYZKM as b_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.XYZJM as b_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,bh.MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,bi.MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,bi.SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.JKZKM as b_XSXX_JKZKM--学生信息数据表 健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,bj.SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,bk.MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,bk.JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.HKLBM as b_XSXX_HKLBM--学生信息数据表 户口类别码
      ,bm.MC as b_XSXX_HKLBM_MC--户口类别代码 名称
      ,b.SFSLDRK as b_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,bn.MC as b_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,b.GJDQM as b_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.TC as b_XSXX_TC--学生信息数据表 特长
      ,b.XSLXDH as b_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,b.WLDZ as b_XSXX_WLDZ--学生信息数据表 网络地址
      ,b.JSTXH as b_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,b.DZXX as b_XSXX_DZXX--学生信息数据表 电子信箱
      ,b.ZP as b_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.MC as d_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,e.MC as e_YZMCEZM_MC--语种名称代码2字母代码 名称
      ,f.MC as f_KSFS_MC--考试方式代码表 名称
      ,f.SM as f_KSFS_SM--考试方式代码表 说明

FROM dbo.EDU_ZZZS_01_01_ZSXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生信息数据表*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.KQXZQHM = d.DM /*考区行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_YZMCEZM AS e ON a.YSWGYZM = e.DM /*应试外国语种码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSFS AS f ON a.KSFSM = f.DM /*考试方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*国籍/地区*/
GO
