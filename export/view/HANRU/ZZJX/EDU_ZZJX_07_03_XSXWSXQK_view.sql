
--学生校外实习情况数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_03_XSXWSXQK_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[ID]--实习情况表ID
      ,a.[XSXXID]--学生信息ID
      ,a.[QYID]--企业表ID
      ,a.[GWID]--岗位表ID
      ,a.[SXQSRQ]--受训起始日期
      ,a.[SXJSRQ]--受训结束日期
      ,a.[QYBH]--企业编号
      ,a.[SXGWMC]--受训岗位名称
      ,a.[SXDS]--实训导师
      ,a.[SFGMSXZRBX]--是否购买实习责任保险
      ,a.[BXFZFZ]--保险费支付者
      ,a.[SXXC]--实习薪酬
      ,a.[SFSDGSX]--是否是顶岗实习
      ,a.[XSHJXZM]--学生户籍性质码
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生信息数据表 学校名
      ,c.XH as c_XSXX_XH--学生信息数据表 学号
      ,c.XM as c_XSXX_XM--学生信息数据表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生信息数据表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生信息数据表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生信息数据表 曾用名
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,cb.MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生信息数据表 身份证件号
      ,c.XBM as c_XSXX_XBM--学生信息数据表 性别码
      ,cc.MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.XXM as c_XSXX_XXM--学生信息数据表 血型码
      ,cd.MC as c_XSXX_XXM_MC--血型代码表 名称
      ,cd.JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.CSRQ as c_XSXX_CSRQ--学生信息数据表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生信息数据表 出生地码
      ,ce.MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生信息数据表 籍贯
      ,c.MZM as c_XSXX_MZM--学生信息数据表 民族码
      ,cf.MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.HYZKM as c_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,cg.MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.XYZJM as c_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,ch.MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,ci.MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,ci.SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JKZKM as c_XSXX_JKZKM--学生信息数据表 健康状况码
      ,cj.MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,cj.SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,ck.MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ck.JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_XSXX_HKLBM--学生信息数据表 户口类别码
      ,cm.MC as c_XSXX_HKLBM_MC--户口类别代码 名称
      ,c.SFSLDRK as c_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,cn.MC as c_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,c.GJDQM as c_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.TC as c_XSXX_TC--学生信息数据表 特长
      ,c.XSLXDH as c_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,c.WLDZ as c_XSXX_WLDZ--学生信息数据表 网络地址
      ,c.JSTXH as c_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,c.DZXX as c_XSXX_DZXX--学生信息数据表 电子信箱
      ,c.ZP as c_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.SCHOOLID as d_XWSXJDXX_SCHOOLID--校外实习基地信息数据子类表 学校名
      ,d.QYBH as d_XWSXJDXX_QYBH--校外实习基地信息数据子类表 企业编号
      ,d.JDHZHTBH as d_XWSXJDXX_JDHZHTBH--校外实习基地信息数据子类表 基地合作合同编号
      ,d.JDHZHTMC as d_XWSXJDXX_JDHZHTMC--校外实习基地信息数据子类表 基地合作合同名称
      ,d.JDLBM as d_XWSXJDXX_JDLBM--校外实习基地信息数据子类表 基地类别码
      ,db.MC as d_XWSXJDXX_JDLBM_MC--实习基地类别代码 名称
      ,d.DWMC as d_XWSXJDXX_DWMC--校外实习基地信息数据子类表 单位名称
      ,d.QYXZQ as d_XWSXJDXX_QYXZQ--校外实习基地信息数据子类表 企业行政区
      ,dc.MC as d_XWSXJDXX_QYXZQ_MC--中华人民共和国行政区划代码 名称
      ,d.QYDZ as d_XWSXJDXX_QYDZ--校外实习基地信息数据子类表 企业地址
      ,d.QYXZ as d_XWSXJDXX_QYXZ--校外实习基地信息数据子类表 企业性质
      ,dd.MC as d_XWSXJDXX_QYXZ_MC--经济类型分类与代码 名称
      ,d.FRDB as d_XWSXJDXX_FRDB--校外实习基地信息数据子类表 法人代表
      ,d.QYLXR as d_XWSXJDXX_QYLXR--校外实习基地信息数据子类表 企业联系人
      ,d.QYYZBM as d_XWSXJDXX_QYYZBM--校外实习基地信息数据子类表 企业邮政编码
      ,d.QYLXDH as d_XWSXJDXX_QYLXDH--校外实习基地信息数据子类表 企业联系电话
      ,d.QYYYZZ as d_XWSXJDXX_QYYYZZ--校外实习基地信息数据子类表 企业营业执照
      ,d.QYLX as d_XWSXJDXX_QYLX--校外实习基地信息数据子类表 企业类型
      ,d.QYRS as d_XWSXJDXX_QYRS--校外实习基地信息数据子类表 企业人数
      ,d.QYZCZJ as d_XWSXJDXX_QYZCZJ--校外实习基地信息数据子类表 企业注册资金
      ,d.QYCZ as d_XWSXJDXX_QYCZ--校外实习基地信息数据子类表 企业传真
      ,d.QYFZR as d_XWSXJDXX_QYFZR--校外实习基地信息数据子类表 企业负责人
      ,d.FZRZW as d_XWSXJDXX_FZRZW--校外实习基地信息数据子类表 负责人职位
      ,d.FZRLXDH as d_XWSXJDXX_FZRLXDH--校外实习基地信息数据子类表 负责人联系电话
      ,d.QYYXDZ as d_XWSXJDXX_QYYXDZ--校外实习基地信息数据子类表 企业邮箱地址
      ,d.QYQQ as d_XWSXJDXX_QYQQ--校外实习基地信息数据子类表 企业QQ
      ,d.QYMSN as d_XWSXJDXX_QYMSN--校外实习基地信息数据子类表 企业MSN
      ,d.QYWZ as d_XWSXJDXX_QYWZ--校外实习基地信息数据子类表 企业网址
      ,d.QYJJ as d_XWSXJDXX_QYJJ--校外实习基地信息数据子类表 企业简介
      ,d.SHZT as d_XWSXJDXX_SHZT--校外实习基地信息数据子类表 审核状态
      ,e.SCHOOLID as e_SXGW_SCHOOLID--实习岗位表 学校ID
      ,e.QYID as e_SXGW_QYID--实习岗位表 企业ID
      ,e.GWMC as e_SXGW_GWMC--实习岗位表 岗位名称
      ,e.QYMC as e_SXGW_QYMC--实习岗位表 企业名称
      ,e.ZPKSSJ as e_SXGW_ZPKSSJ--实习岗位表 招聘开始时间
      ,e.ZPJSSJ as e_SXGW_ZPJSSJ--实习岗位表 招聘结束时间
      ,e.GZXS as e_SXGW_GZXS--实习岗位表 工作形式
      ,e.XBYQ as e_SXGW_XBYQ--实习岗位表 性别要求
      ,e.GWXC as e_SXGW_GWXC--实习岗位表 岗位薪酬
      ,e.WYYQ as e_SXGW_WYYQ--实习岗位表 外语要求
      ,e.GZDD as e_SXGW_GZDD--实习岗位表 工作地点
      ,e.JSJSP as e_SXGW_JSJSP--实习岗位表 计算机水平
      ,e.ZPRS as e_SXGW_ZPRS--实习岗位表 招聘人数
      ,e.XLYQ as e_SXGW_XLYQ--实习岗位表 学历要求
      ,e.ZYYQ as e_SXGW_ZYYQ--实习岗位表 专业要求
      ,e.NLYQ as e_SXGW_NLYQ--实习岗位表 年龄要求
      ,e.GWJJ as e_SXGW_GWJJ--实习岗位表 岗位简介
      ,e.JBQK as e_SXGW_JBQK--实习岗位表 基本情况
      ,e.GZJY as e_SXGW_GZJY--实习岗位表 工作经验
      ,e.SHZT as e_SXGW_SHZT--实习岗位表 审核状态
      ,e.GWZT as e_SXGW_GWZT--实习岗位表 岗位状态
      ,f.MC as f_SFBZ_MC--是否标志代码表 名称
      ,g.MC as g_SFBZ_MC--是否标志代码表 名称
      ,h.MC as h_HJXZ_MC--户籍性质代码 名称

FROM dbo.EDU_ZZJX_07_03_XSXWSXQK AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*学生信息ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS d ON a.QYID = d.ID /*企业表ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS e ON a.GWID = e.ID /*岗位表ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFGMSXZRBX = f.DM /*是否购买实习责任保险*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS g ON a.SFSDGSX = g.DM /*是否是顶岗实习*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_HJXZ AS h ON a.XSHJXZM = h.DM /*学生户籍性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS db ON d.JDLBM = db.DM /*基地类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.QYXZQ = dc.DM /*企业行政区*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS dd ON d.QYXZ = dd.DM /*企业性质*/
GO
