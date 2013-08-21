
--实习转岗表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A07_SXZG_DISP]
AS
SELECT a.[ID]--实习转岗ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XSXXID]--申请学生ID
      ,a.[ZCGW]--转出岗位ID
      ,a.[ZCGWQY]--转出岗位企业ID
      ,a.[ZRGW]--转入岗位ID
      ,a.[ZRGWQY]--转入岗位企业ID
      ,a.[BZRSH]--班主任审核
      ,a.[ZCQYSH]--转出企业审核
      ,a.[ZRQYSH]--转入企业审核
      ,a.[JYCSH]--就业处审核
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,b.XNID as b_SCHOOL_XNID--学校配置表 学年ID
      ,b.XQID as b_SCHOOL_XQID--学校配置表 学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--学校配置表 匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--学校配置表 日志级别
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--学校配置表 权限列表
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
      ,d.SCHOOLID as d_SXGW_SCHOOLID--实习岗位表 学校ID
      ,d.QYID as d_SXGW_QYID--实习岗位表 企业ID
      ,d.GWMC as d_SXGW_GWMC--实习岗位表 岗位名称
      ,d.QYMC as d_SXGW_QYMC--实习岗位表 企业名称
      ,d.ZPKSSJ as d_SXGW_ZPKSSJ--实习岗位表 招聘开始时间
      ,d.ZPJSSJ as d_SXGW_ZPJSSJ--实习岗位表 招聘结束时间
      ,d.GZXS as d_SXGW_GZXS--实习岗位表 工作形式
      ,d.XBYQ as d_SXGW_XBYQ--实习岗位表 性别要求
      ,d.GWXC as d_SXGW_GWXC--实习岗位表 岗位薪酬
      ,d.WYYQ as d_SXGW_WYYQ--实习岗位表 外语要求
      ,d.GZDD as d_SXGW_GZDD--实习岗位表 工作地点
      ,d.JSJSP as d_SXGW_JSJSP--实习岗位表 计算机水平
      ,d.ZPRS as d_SXGW_ZPRS--实习岗位表 招聘人数
      ,d.XLYQ as d_SXGW_XLYQ--实习岗位表 学历要求
      ,d.ZYYQ as d_SXGW_ZYYQ--实习岗位表 专业要求
      ,d.NLYQ as d_SXGW_NLYQ--实习岗位表 年龄要求
      ,d.GWJJ as d_SXGW_GWJJ--实习岗位表 岗位简介
      ,d.JBQK as d_SXGW_JBQK--实习岗位表 基本情况
      ,d.GZJY as d_SXGW_GZJY--实习岗位表 工作经验
      ,d.SHZT as d_SXGW_SHZT--实习岗位表 审核状态
      ,d.GWZT as d_SXGW_GWZT--实习岗位表 岗位状态
      ,e.SCHOOLID as e_XWSXJDXX_SCHOOLID--校外实习基地信息数据子类表 学校名
      ,e.QYBH as e_XWSXJDXX_QYBH--校外实习基地信息数据子类表 企业编号
      ,e.JDHZHTBH as e_XWSXJDXX_JDHZHTBH--校外实习基地信息数据子类表 基地合作合同编号
      ,e.JDHZHTMC as e_XWSXJDXX_JDHZHTMC--校外实习基地信息数据子类表 基地合作合同名称
      ,e.JDLBM as e_XWSXJDXX_JDLBM--校外实习基地信息数据子类表 基地类别码
      ,eb.MC as e_XWSXJDXX_JDLBM_MC--实习基地类别代码 名称
      ,e.DWMC as e_XWSXJDXX_DWMC--校外实习基地信息数据子类表 单位名称
      ,e.QYXZQ as e_XWSXJDXX_QYXZQ--校外实习基地信息数据子类表 企业行政区
      ,ec.MC as e_XWSXJDXX_QYXZQ_MC--中华人民共和国行政区划代码 名称
      ,e.QYDZ as e_XWSXJDXX_QYDZ--校外实习基地信息数据子类表 企业地址
      ,e.QYXZ as e_XWSXJDXX_QYXZ--校外实习基地信息数据子类表 企业性质
      ,ed.MC as e_XWSXJDXX_QYXZ_MC--经济类型分类与代码 名称
      ,e.FRDB as e_XWSXJDXX_FRDB--校外实习基地信息数据子类表 法人代表
      ,e.QYLXR as e_XWSXJDXX_QYLXR--校外实习基地信息数据子类表 企业联系人
      ,e.QYYZBM as e_XWSXJDXX_QYYZBM--校外实习基地信息数据子类表 企业邮政编码
      ,e.QYLXDH as e_XWSXJDXX_QYLXDH--校外实习基地信息数据子类表 企业联系电话
      ,e.QYYYZZ as e_XWSXJDXX_QYYYZZ--校外实习基地信息数据子类表 企业营业执照
      ,e.QYLX as e_XWSXJDXX_QYLX--校外实习基地信息数据子类表 企业类型
      ,e.QYRS as e_XWSXJDXX_QYRS--校外实习基地信息数据子类表 企业人数
      ,e.QYZCZJ as e_XWSXJDXX_QYZCZJ--校外实习基地信息数据子类表 企业注册资金
      ,e.QYCZ as e_XWSXJDXX_QYCZ--校外实习基地信息数据子类表 企业传真
      ,e.QYFZR as e_XWSXJDXX_QYFZR--校外实习基地信息数据子类表 企业负责人
      ,e.FZRZW as e_XWSXJDXX_FZRZW--校外实习基地信息数据子类表 负责人职位
      ,e.FZRLXDH as e_XWSXJDXX_FZRLXDH--校外实习基地信息数据子类表 负责人联系电话
      ,e.QYYXDZ as e_XWSXJDXX_QYYXDZ--校外实习基地信息数据子类表 企业邮箱地址
      ,e.QYQQ as e_XWSXJDXX_QYQQ--校外实习基地信息数据子类表 企业QQ
      ,e.QYMSN as e_XWSXJDXX_QYMSN--校外实习基地信息数据子类表 企业MSN
      ,e.QYWZ as e_XWSXJDXX_QYWZ--校外实习基地信息数据子类表 企业网址
      ,e.QYJJ as e_XWSXJDXX_QYJJ--校外实习基地信息数据子类表 企业简介
      ,e.SHZT as e_XWSXJDXX_SHZT--校外实习基地信息数据子类表 审核状态
      ,f.SCHOOLID as f_SXGW_SCHOOLID--实习岗位表 学校ID
      ,f.QYID as f_SXGW_QYID--实习岗位表 企业ID
      ,f.GWMC as f_SXGW_GWMC--实习岗位表 岗位名称
      ,f.QYMC as f_SXGW_QYMC--实习岗位表 企业名称
      ,f.ZPKSSJ as f_SXGW_ZPKSSJ--实习岗位表 招聘开始时间
      ,f.ZPJSSJ as f_SXGW_ZPJSSJ--实习岗位表 招聘结束时间
      ,f.GZXS as f_SXGW_GZXS--实习岗位表 工作形式
      ,f.XBYQ as f_SXGW_XBYQ--实习岗位表 性别要求
      ,f.GWXC as f_SXGW_GWXC--实习岗位表 岗位薪酬
      ,f.WYYQ as f_SXGW_WYYQ--实习岗位表 外语要求
      ,f.GZDD as f_SXGW_GZDD--实习岗位表 工作地点
      ,f.JSJSP as f_SXGW_JSJSP--实习岗位表 计算机水平
      ,f.ZPRS as f_SXGW_ZPRS--实习岗位表 招聘人数
      ,f.XLYQ as f_SXGW_XLYQ--实习岗位表 学历要求
      ,f.ZYYQ as f_SXGW_ZYYQ--实习岗位表 专业要求
      ,f.NLYQ as f_SXGW_NLYQ--实习岗位表 年龄要求
      ,f.GWJJ as f_SXGW_GWJJ--实习岗位表 岗位简介
      ,f.JBQK as f_SXGW_JBQK--实习岗位表 基本情况
      ,f.GZJY as f_SXGW_GZJY--实习岗位表 工作经验
      ,f.SHZT as f_SXGW_SHZT--实习岗位表 审核状态
      ,f.GWZT as f_SXGW_GWZT--实习岗位表 岗位状态
      ,g.SCHOOLID as g_XWSXJDXX_SCHOOLID--校外实习基地信息数据子类表 学校名
      ,g.QYBH as g_XWSXJDXX_QYBH--校外实习基地信息数据子类表 企业编号
      ,g.JDHZHTBH as g_XWSXJDXX_JDHZHTBH--校外实习基地信息数据子类表 基地合作合同编号
      ,g.JDHZHTMC as g_XWSXJDXX_JDHZHTMC--校外实习基地信息数据子类表 基地合作合同名称
      ,g.JDLBM as g_XWSXJDXX_JDLBM--校外实习基地信息数据子类表 基地类别码
      ,gb.MC as g_XWSXJDXX_JDLBM_MC--实习基地类别代码 名称
      ,g.DWMC as g_XWSXJDXX_DWMC--校外实习基地信息数据子类表 单位名称
      ,g.QYXZQ as g_XWSXJDXX_QYXZQ--校外实习基地信息数据子类表 企业行政区
      ,gc.MC as g_XWSXJDXX_QYXZQ_MC--中华人民共和国行政区划代码 名称
      ,g.QYDZ as g_XWSXJDXX_QYDZ--校外实习基地信息数据子类表 企业地址
      ,g.QYXZ as g_XWSXJDXX_QYXZ--校外实习基地信息数据子类表 企业性质
      ,gd.MC as g_XWSXJDXX_QYXZ_MC--经济类型分类与代码 名称
      ,g.FRDB as g_XWSXJDXX_FRDB--校外实习基地信息数据子类表 法人代表
      ,g.QYLXR as g_XWSXJDXX_QYLXR--校外实习基地信息数据子类表 企业联系人
      ,g.QYYZBM as g_XWSXJDXX_QYYZBM--校外实习基地信息数据子类表 企业邮政编码
      ,g.QYLXDH as g_XWSXJDXX_QYLXDH--校外实习基地信息数据子类表 企业联系电话
      ,g.QYYYZZ as g_XWSXJDXX_QYYYZZ--校外实习基地信息数据子类表 企业营业执照
      ,g.QYLX as g_XWSXJDXX_QYLX--校外实习基地信息数据子类表 企业类型
      ,g.QYRS as g_XWSXJDXX_QYRS--校外实习基地信息数据子类表 企业人数
      ,g.QYZCZJ as g_XWSXJDXX_QYZCZJ--校外实习基地信息数据子类表 企业注册资金
      ,g.QYCZ as g_XWSXJDXX_QYCZ--校外实习基地信息数据子类表 企业传真
      ,g.QYFZR as g_XWSXJDXX_QYFZR--校外实习基地信息数据子类表 企业负责人
      ,g.FZRZW as g_XWSXJDXX_FZRZW--校外实习基地信息数据子类表 负责人职位
      ,g.FZRLXDH as g_XWSXJDXX_FZRLXDH--校外实习基地信息数据子类表 负责人联系电话
      ,g.QYYXDZ as g_XWSXJDXX_QYYXDZ--校外实习基地信息数据子类表 企业邮箱地址
      ,g.QYQQ as g_XWSXJDXX_QYQQ--校外实习基地信息数据子类表 企业QQ
      ,g.QYMSN as g_XWSXJDXX_QYMSN--校外实习基地信息数据子类表 企业MSN
      ,g.QYWZ as g_XWSXJDXX_QYWZ--校外实习基地信息数据子类表 企业网址
      ,g.QYJJ as g_XWSXJDXX_QYJJ--校外实习基地信息数据子类表 企业简介
      ,g.SHZT as g_XWSXJDXX_SHZT--校外实习基地信息数据子类表 审核状态

FROM dbo.EDU_ZZJX_07_A07_SXZG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*申请学生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS d ON a.ZCGW = d.ID /*转出岗位ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS e ON a.ZCGWQY = e.ID /*转出岗位企业ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS f ON a.ZRGW = f.ID /*转入岗位ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS g ON a.ZRGWQY = g.ID /*转入岗位企业ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
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
      dbo.EDU_ZZ_SXJDLB AS eb ON e.JDLBM = eb.DM /*基地类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ec ON e.QYXZQ = ec.DM /*企业行政区*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS ed ON e.QYXZ = ed.DM /*企业性质*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS gb ON g.JDLBM = gb.DM /*基地类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gc ON g.QYXZQ = gc.DM /*企业行政区*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS gd ON g.QYXZ = gd.DM /*企业性质*/
GO
