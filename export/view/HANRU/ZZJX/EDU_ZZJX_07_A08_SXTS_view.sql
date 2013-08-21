
--实习投诉表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A08_SXTS_DISP]
AS
SELECT a.[ID]--实习投诉ID
      ,a.[SCHOOLID]--学校ID
      ,a.[QYID]--企业ID
      ,a.[SXJHID]--实习计划ID
      ,a.[XSXXID]--投诉学生ID
      ,a.[TSSJ]--投诉时间
      ,a.[TSYY]--投诉原因
      ,a.[TSJG]--投诉结果
      ,a.[QYJY]--企业建议
      ,c.SCHOOLID as c_XWSXJDXX_SCHOOLID--校外实习基地信息数据子类表 学校名
      ,c.QYBH as c_XWSXJDXX_QYBH--校外实习基地信息数据子类表 企业编号
      ,c.JDHZHTBH as c_XWSXJDXX_JDHZHTBH--校外实习基地信息数据子类表 基地合作合同编号
      ,c.JDHZHTMC as c_XWSXJDXX_JDHZHTMC--校外实习基地信息数据子类表 基地合作合同名称
      ,c.JDLBM as c_XWSXJDXX_JDLBM--校外实习基地信息数据子类表 基地类别码
      ,cb.MC as c_XWSXJDXX_JDLBM_MC--实习基地类别代码 名称
      ,c.DWMC as c_XWSXJDXX_DWMC--校外实习基地信息数据子类表 单位名称
      ,c.QYXZQ as c_XWSXJDXX_QYXZQ--校外实习基地信息数据子类表 企业行政区
      ,cc.MC as c_XWSXJDXX_QYXZQ_MC--中华人民共和国行政区划代码 名称
      ,c.QYDZ as c_XWSXJDXX_QYDZ--校外实习基地信息数据子类表 企业地址
      ,c.QYXZ as c_XWSXJDXX_QYXZ--校外实习基地信息数据子类表 企业性质
      ,cd.MC as c_XWSXJDXX_QYXZ_MC--经济类型分类与代码 名称
      ,c.FRDB as c_XWSXJDXX_FRDB--校外实习基地信息数据子类表 法人代表
      ,c.QYLXR as c_XWSXJDXX_QYLXR--校外实习基地信息数据子类表 企业联系人
      ,c.QYYZBM as c_XWSXJDXX_QYYZBM--校外实习基地信息数据子类表 企业邮政编码
      ,c.QYLXDH as c_XWSXJDXX_QYLXDH--校外实习基地信息数据子类表 企业联系电话
      ,c.QYYYZZ as c_XWSXJDXX_QYYYZZ--校外实习基地信息数据子类表 企业营业执照
      ,c.QYLX as c_XWSXJDXX_QYLX--校外实习基地信息数据子类表 企业类型
      ,c.QYRS as c_XWSXJDXX_QYRS--校外实习基地信息数据子类表 企业人数
      ,c.QYZCZJ as c_XWSXJDXX_QYZCZJ--校外实习基地信息数据子类表 企业注册资金
      ,c.QYCZ as c_XWSXJDXX_QYCZ--校外实习基地信息数据子类表 企业传真
      ,c.QYFZR as c_XWSXJDXX_QYFZR--校外实习基地信息数据子类表 企业负责人
      ,c.FZRZW as c_XWSXJDXX_FZRZW--校外实习基地信息数据子类表 负责人职位
      ,c.FZRLXDH as c_XWSXJDXX_FZRLXDH--校外实习基地信息数据子类表 负责人联系电话
      ,c.QYYXDZ as c_XWSXJDXX_QYYXDZ--校外实习基地信息数据子类表 企业邮箱地址
      ,c.QYQQ as c_XWSXJDXX_QYQQ--校外实习基地信息数据子类表 企业QQ
      ,c.QYMSN as c_XWSXJDXX_QYMSN--校外实习基地信息数据子类表 企业MSN
      ,c.QYWZ as c_XWSXJDXX_QYWZ--校外实习基地信息数据子类表 企业网址
      ,c.QYJJ as c_XWSXJDXX_QYJJ--校外实习基地信息数据子类表 企业简介
      ,c.SHZT as c_XWSXJDXX_SHZT--校外实习基地信息数据子类表 审核状态
      ,d.SCHOOLID as d_XXSXJH_SCHOOLID--学校实习计划表 学校ID
      ,d.JHBT as d_XXSXJH_JHBT--学校实习计划表 计划标题
      ,d.NJ as d_XXSXJH_NJ--学校实习计划表 年级
      ,d.BGXS as d_XXSXJH_BGXS--学校实习计划表 报告形式
      ,d.SFSX as d_XXSXJH_SFSX--学校实习计划表 计划是否生效
      ,db.MC as d_XXSXJH_SFSX_MC--授课方式代码表 名称
      ,e.SCHOOLID as e_XSXX_SCHOOLID--学生信息数据表 学校名
      ,e.XH as e_XSXX_XH--学生信息数据表 学号
      ,e.XM as e_XSXX_XM--学生信息数据表 姓名
      ,e.YWXM as e_XSXX_YWXM--学生信息数据表 英文姓名
      ,e.XMPY as e_XSXX_XMPY--学生信息数据表 姓名拼音
      ,e.CYM as e_XSXX_CYM--学生信息数据表 曾用名
      ,e.SFZJLXM as e_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,eb.MC as e_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,e.SFZJH as e_XSXX_SFZJH--学生信息数据表 身份证件号
      ,e.XBM as e_XSXX_XBM--学生信息数据表 性别码
      ,ec.MC as e_XSXX_XBM_MC--人的性别代码 名称
      ,e.XXM as e_XSXX_XXM--学生信息数据表 血型码
      ,ed.MC as e_XSXX_XXM_MC--血型代码表 名称
      ,ed.JC as e_XSXX_XXM_JC--血型代码表 简称
      ,e.CSRQ as e_XSXX_CSRQ--学生信息数据表 出生日期
      ,e.CSDM as e_XSXX_CSDM--学生信息数据表 出生地码
      ,ee.MC as e_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,e.JG as e_XSXX_JG--学生信息数据表 籍贯
      ,e.MZM as e_XSXX_MZM--学生信息数据表 民族码
      ,ef.MZMC as e_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,ef.ZMDM as e_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,e.HYZKM as e_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,eg.MC as e_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,e.XYZJM as e_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,eh.MC as e_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,e.GATQWM as e_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,ei.MC as e_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,ei.SM as e_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,e.JKZKM as e_XSXX_JKZKM--学生信息数据表 健康状况码
      ,ej.MC as e_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,ej.SM as e_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,e.ZZMMM as e_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,ek.MC as e_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ek.JC as e_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,e.HKSZDXZQHM as e_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,el.MC as e_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,e.HKLBM as e_XSXX_HKLBM--学生信息数据表 户口类别码
      ,em.MC as e_XSXX_HKLBM_MC--户口类别代码 名称
      ,e.SFSLDRK as e_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,en.MC as e_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,e.GJDQM as e_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,eo.GJDQMCJC as e_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,eo.EZMDM as e_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,eo.SZMDM as e_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,e.TC as e_XSXX_TC--学生信息数据表 特长
      ,e.XSLXDH as e_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,e.WLDZ as e_XSXX_WLDZ--学生信息数据表 网络地址
      ,e.JSTXH as e_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,e.DZXX as e_XSXX_DZXX--学生信息数据表 电子信箱
      ,e.ZP as e_XSXX_ZP--学生信息数据表 照片(路径)

FROM dbo.EDU_ZZJX_07_A08_SXTS AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS c ON a.QYID = c.ID /*企业ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS d ON a.SXJHID = d.ID /*实习计划ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS e ON a.XSXXID = e.ID /*投诉学生ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS cb ON c.JDLBM = cb.DM /*基地类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.QYXZQ = cc.DM /*企业行政区*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS cd ON c.QYXZ = cd.DM /*企业性质*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFSX = db.DM /*计划是否生效*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS eb ON e.SFZJLXM = eb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS ec ON e.XBM = ec.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ed ON e.XXM = ed.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ee ON e.CSDM = ee.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ef ON e.MZM = ef.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS eg ON e.HYZKM = eg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS eh ON e.XYZJM = eh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ei ON e.GATQWM = ei.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ej ON e.JKZKM = ej.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ek ON e.ZZMMM = ek.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS el ON e.HKSZDXZQHM = el.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS em ON e.HKLBM = em.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS en ON e.SFSLDRK = en.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS eo ON e.GJDQM = eo.DM /*国籍/地区*/
GO
