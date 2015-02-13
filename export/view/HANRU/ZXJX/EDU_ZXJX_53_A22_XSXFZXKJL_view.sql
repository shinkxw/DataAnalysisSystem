
--学生学分制选课记录表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A22_XSXFZXKJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XSID]--学生ID
      ,a.[BXKJXBID]--必修课教学班ID
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生基本数据子类表 学校名
      ,c.XH as c_XSXX_XH--学生基本数据子类表 学号
      ,c.XM as c_XSXX_XM--学生基本数据子类表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生基本数据子类表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生基本数据子类表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生基本数据子类表 曾用名
      ,c.XBM as c_XSXX_XBM--学生基本数据子类表 性别码
      ,[cb].MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.CSRQ as c_XSXX_CSRQ--学生基本数据子类表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生基本数据子类表 出生地码
      ,[cc].MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生基本数据子类表 籍贯
      ,c.MZM as c_XSXX_MZM--学生基本数据子类表 民族码
      ,[cd].MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[cd].ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.GJDQM as c_XSXX_GJDQM--学生基本数据子类表 国籍/地区码
      ,[ce].GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[ce].EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[ce].SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生基本数据子类表 身份证件类型码
      ,[cf].MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生基本数据子类表 身份证件号
      ,c.HYZKM as c_XSXX_HYZKM--学生基本数据子类表 婚姻状况码
      ,[cg].MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生基本数据子类表 港澳台侨外码
      ,[ch].MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[ch].SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生基本数据子类表 政治面貌码
      ,[ci].MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[ci].JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.JKZKM as c_XSXX_JKZKM--学生基本数据子类表 健康状况码
      ,[cj].MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[cj].SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.XYZJM as c_XSXX_XYZJM--学生基本数据子类表 信仰宗教码
      ,[ck].MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.XXM as c_XSXX_XXM--学生基本数据子类表 血型码
      ,[cl].MC as c_XSXX_XXM_MC--血型代码表 名称
      ,[cl].JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.ZP as c_XSXX_ZP--学生基本数据子类表 照片
      ,c.SFZJYXQ as c_XSXX_SFZJYXQ--学生基本数据子类表 身份证件有效期
      ,c.DSZYBZ as c_XSXX_DSZYBZ--学生基本数据子类表 独生子女标志
      ,[cm].MC as c_XSXX_DSZYBZ_MC--是否标志代码表 名称
      ,c.RXNY as c_XSXX_RXNY--学生基本数据子类表 入学年月
      ,c.NJ as c_XSXX_NJ--学生基本数据子类表 年级
      ,c.BH as c_XSXX_BH--学生基本数据子类表 班号
      ,c.XSLBM as c_XSXX_XSLBM--学生基本数据子类表 学生类别码
      ,[cn].MC as c_XSXX_XSLBM_MC--学生类别代码表 名称
      ,[cn].SM as c_XSXX_XSLBM_SM--学生类别代码表 说明
      ,c.XZZ as c_XSXX_XZZ--学生基本数据子类表 现住址
      ,c.HKSZD as c_XSXX_HKSZD--学生基本数据子类表 户口所在地
      ,c.HKXZM as c_XSXX_HKXZM--学生基本数据子类表 户口性质码
      ,[co].MC as c_XSXX_HKXZM_MC--户口类别代码 名称
      ,c.SFLDRK as c_XSXX_SFLDRK--学生基本数据子类表 是否流动人口
      ,[cp].MC as c_XSXX_SFLDRK_MC--是否标志代码表 名称
      ,c.TC as c_XSXX_TC--学生基本数据子类表 特长
      ,c.LXDH as c_XSXX_LXDH--学生基本数据子类表 联系电话
      ,c.TXDZ as c_XSXX_TXDZ--学生基本数据子类表 通信地址
      ,c.YZBM as c_XSXX_YZBM--学生基本数据子类表 邮政编码
      ,c.DZXX as c_XSXX_DZXX--学生基本数据子类表 电子信箱
      ,c.ZYDZ as c_XSXX_ZYDZ--学生基本数据子类表 主页地址
      ,c.XJH as c_XSXX_XJH--学生基本数据子类表 学籍号
      ,c.XSDQZTM as c_XSXX_XSDQZTM--学生基本数据子类表 学生当前状态码
      ,[cq].MC as c_XSXX_XSDQZTM_MC--学生当前状态代码表 名称
      ,[cq].SM as c_XSXX_XSDQZTM_SM--学生当前状态代码表 说明
      ,d.SCHOOLID as d_XFZJXBSJ_SCHOOLID--学分制教学班数据表 学校
      ,d.XQID as d_XFZJXBSJ_XQID--学分制教学班数据表 学期ID
      ,d.ZRKJSID as d_XFZJXBSJ_ZRKJSID--学分制教学班数据表 主任课教师ID
      ,d.FRKJSID as d_XFZJXBSJ_FRKJSID--学分制教学班数据表 辅任课教师ID
      ,d.KCID as d_XFZJXBSJ_KCID--学分制教学班数据表 课程ID
      ,d.KKSJID as d_XFZJXBSJ_KKSJID--学分制教学班数据表 开课时间ID
      ,d.SKDD as d_XFZJXBSJ_SKDD--学分制教学班数据表 上课地点
      ,d.ZKS as d_XFZJXBSJ_ZKS--学分制教学班数据表 总课时
      ,d.BJKRNRS as d_XFZJXBSJ_BJKRNRS--学分制教学班数据表 班级可容纳人数
      ,d.ZDKBRS as d_XFZJXBSJ_ZDKBRS--学分制教学班数据表 最低开班人数
      ,d.ZT as d_XFZJXBSJ_ZT--学分制教学班数据表 状态
      ,d.BZ as d_XFZJXBSJ_BZ--学分制教学班数据表 备注
      ,d.KCMC as d_XFZJXBSJ_KCMC--学分制教学班数据表 课程名称
      ,d.SKBJIDLB as d_XFZJXBSJ_SKBJIDLB--学分制教学班数据表 授课班级ID列表
      ,d.SKBJMCLB as d_XFZJXBSJ_SKBJMCLB--学分制教学班数据表 授课班级名称列表
      ,d.JXBLX as d_XFZJXBSJ_JXBLX--学分制教学班数据表 教学班类型

FROM dbo.EDU_ZXJX_53_A22_XSXFZXKJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS c ON a.XSID = c.ID /*学生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A21_XFZJXBSJ AS d ON a.BXKJXBID = d.ID /*必修课教学班ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cb] ON c.XBM = [cb].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cc] ON c.CSDM = [cc].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cd] ON c.MZM = [cd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ce] ON c.GJDQM = [ce].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cf] ON c.SFZJLXM = [cf].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZKM = [cg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ch] ON c.GATQWM = [ch].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ci] ON c.ZZMMM = [ci].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cj] ON c.JKZKM = [cj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ck] ON c.XYZJM = [ck].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [cl] ON c.XXM = [cl].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cm] ON c.DSZYBZ = [cm].DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS [cn] ON c.XSLBM = [cn].DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [co] ON c.HKXZM = [co].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cp] ON c.SFLDRK = [cp].DM /*是否流动人口*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS [cq] ON c.XSDQZTM = [cq].DM /*学生当前状态码*/
GO
