
--技能鉴定成绩
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_37_A03_JNJDCJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[JDXMID]--鉴定项目ID
      ,a.[JNJDAPID]--技能鉴定安排ID
      ,a.[XSXXID]--学生信息ID
      ,a.[CJ]--成绩
      ,a.[DJJSID]--登记教师ID
      ,a.[DJSJ]--登记时间
      ,c.SCHOOLID as c_JNJDXM_SCHOOLID--技能鉴定项目 学校
      ,c.JNMC as c_JNJDXM_JNMC--技能鉴定项目 技能名称
      ,c.JNZY as c_JNJDXM_JNZY--技能鉴定项目 技能专业
      ,c.JNGZ as c_JNJDXM_JNGZ--技能鉴定项目 技能工种
      ,c.JDJG as c_JNJDXM_JDJG--技能鉴定项目 鉴定机构
      ,c.SBZT as c_JNJDXM_SBZT--技能鉴定项目 申报状态
      ,d.SCHOOLID as d_JNJDAP_SCHOOLID--技能鉴定安排 学校
      ,d.KSMC as d_JNJDAP_KSMC--技能鉴定安排 考试名称
      ,d.JDXMID as d_JNJDAP_JDXMID--技能鉴定安排 鉴定项目ID
      ,d.KSSJ as d_JNJDAP_KSSJ--技能鉴定安排 考试时间
      ,d.KSDD as d_JNJDAP_KSDD--技能鉴定安排 考试地点
      ,d.KSXS as d_JNJDAP_KSXS--技能鉴定安排 考试学生
      ,e.SCHOOLID as e_XSXX_SCHOOLID--学生信息数据表 学校名
      ,e.XH as e_XSXX_XH--学生信息数据表 学号
      ,e.XM as e_XSXX_XM--学生信息数据表 姓名
      ,e.YWXM as e_XSXX_YWXM--学生信息数据表 英文姓名
      ,e.XMPY as e_XSXX_XMPY--学生信息数据表 姓名拼音
      ,e.CYM as e_XSXX_CYM--学生信息数据表 曾用名
      ,e.SFZJLXM as e_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,[eb].MC as e_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,e.SFZJH as e_XSXX_SFZJH--学生信息数据表 身份证件号
      ,e.XBM as e_XSXX_XBM--学生信息数据表 性别码
      ,[ec].MC as e_XSXX_XBM_MC--人的性别代码 名称
      ,e.XXM as e_XSXX_XXM--学生信息数据表 血型码
      ,[ed].MC as e_XSXX_XXM_MC--血型代码表 名称
      ,[ed].JC as e_XSXX_XXM_JC--血型代码表 简称
      ,e.CSRQ as e_XSXX_CSRQ--学生信息数据表 出生日期
      ,e.CSDM as e_XSXX_CSDM--学生信息数据表 出生地码
      ,[ee].MC as e_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,e.JG as e_XSXX_JG--学生信息数据表 籍贯
      ,e.MZM as e_XSXX_MZM--学生信息数据表 民族码
      ,[ef].MZMC as e_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[ef].ZMDM as e_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,e.HYZKM as e_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,[eg].MC as e_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,e.XYZJM as e_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,[eh].MC as e_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,e.GATQWM as e_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,[ei].MC as e_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[ei].SM as e_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,e.JKZKM as e_XSXX_JKZKM--学生信息数据表 健康状况码
      ,[ej].MC as e_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[ej].SM as e_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,e.ZZMMM as e_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,[ek].MC as e_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[ek].JC as e_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,e.HKSZDXZQHM as e_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,[el].MC as e_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,e.HKLBM as e_XSXX_HKLBM--学生信息数据表 户口类别码
      ,[em].MC as e_XSXX_HKLBM_MC--户口类别代码 名称
      ,e.SFSLDRK as e_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,[en].MC as e_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,e.GJDQM as e_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,[eo].GJDQMCJC as e_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[eo].EZMDM as e_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[eo].SZMDM as e_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,e.TC as e_XSXX_TC--学生信息数据表 特长
      ,e.XSLXDH as e_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,e.WLDZ as e_XSXX_WLDZ--学生信息数据表 网络地址
      ,e.JSTXH as e_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,e.DZXX as e_XSXX_DZXX--学生信息数据表 电子信箱
      ,e.ZP as e_XSXX_ZP--学生信息数据表 照片(路径)
      ,e.RXXQID as e_XSXX_RXXQID--学生信息数据表 入学学期ID
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,f.GH as f_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,f.XM as f_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,f.YWXM as f_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,f.XMPY as f_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,f.CYM as f_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[fb].MC as f_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,f.SFZJH as f_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,f.CSRQ as f_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,f.XBM as f_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[fc].MC as f_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,f.MZM as f_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[fd].MZMC as f_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[fd].ZMDM as f_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,f.XXM as f_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[fe].MC as f_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[fe].JC as f_JZGJBSJ_XXM_JC--血型代码表 简称
      ,f.JKZKM as f_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[ff].MC as f_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[ff].SM as f_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,f.HYZTM as f_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[fg].MC as f_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[fh].MC as f_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[fh].JC as f_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,f.GATQWM as f_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[fi].MC as f_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[fi].SM as f_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,f.JG as f_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,f.GJDQM as f_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[fj].GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[fj].EZMDM as f_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[fj].SZMDM as f_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,f.CSDXZQHM as f_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[fk].MC as f_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,f.XYZJM as f_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[fl].MC as f_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,f.JZGHKSZDXZQHM as f_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[fm].MC as f_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,f.HKLBM as f_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[fn].MC as f_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,f.DQZZ as f_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,f.DQZZYZBM as f_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,f.CJGZNY as f_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,f.CJNY as f_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,f.LXNY as f_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,f.BZLBM as f_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[fo].MC as f_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,f.JZGLBM as f_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[fp].MC as f_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[fp].SM as f_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,f.GWLBM as f_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[fq].MC as f_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,f.SFJZJS as f_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[fr].MC as f_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,f.SFSSXJS as f_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[fs].MC as f_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,f.ZP as f_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,f.DQZTM as f_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[ft].MC as f_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,f.YDDH as f_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,f.GDDH as f_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,f.TXDZYZBM as f_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,f.TXDZ as f_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,f.DZXX as f_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,f.WLDZ as f_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,f.JSTXH as f_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号

FROM dbo.EDU_ZZJX_37_A03_JNJDCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_37_A01_JNJDXM AS c ON a.JDXMID = c.ID /*鉴定项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_37_A02_JNJDAP AS d ON a.JNJDAPID = d.ID /*技能鉴定安排ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS e ON a.XSXXID = e.ID /*学生信息ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS f ON a.DJJSID = f.ID /*登记教师ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [eb] ON e.SFZJLXM = [eb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ec] ON e.XBM = [ec].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ed] ON e.XXM = [ed].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ee] ON e.CSDM = [ee].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ef] ON e.MZM = [ef].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [eg] ON e.HYZKM = [eg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [eh] ON e.XYZJM = [eh].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ei] ON e.GATQWM = [ei].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ej] ON e.JKZKM = [ej].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ek] ON e.ZZMMM = [ek].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [el] ON e.HKSZDXZQHM = [el].DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [em] ON e.HKLBM = [em].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [en] ON e.SFSLDRK = [en].DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [eo] ON e.GJDQM = [eo].DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [fb] ON f.SFZJLXM = [fb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [fc] ON f.XBM = [fc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [fd] ON f.MZM = [fd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [fe] ON f.XXM = [fe].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ff] ON f.JKZKM = [ff].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [fg] ON f.HYZTM = [fg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [fh] ON f.ZZMMM = [fh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [fi] ON f.GATQWM = [fi].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [fj] ON f.GJDQM = [fj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fk] ON f.CSDXZQHM = [fk].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [fl] ON f.XYZJM = [fl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fm] ON f.JZGHKSZDXZQHM = [fm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [fn] ON f.HKLBM = [fn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [fo] ON f.BZLBM = [fo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [fp] ON f.JZGLBM = [fp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [fq] ON f.GWLBM = [fq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fr] ON f.SFJZJS = [fr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fs] ON f.SFSSXJS = [fs].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [ft] ON f.DQZTM = [ft].DM /*当前状态码*/
GO
