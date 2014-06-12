
--学生处分信息表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_18_A04_XSCFXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XSXXID]--学生ID
      ,a.[WJLXID]--违纪类型ID
      ,a.[XQID]--学期ID
      ,a.[DQZT]--当前状态
      ,a.[WJQK]--违纪情况
      ,a.[JYCFLXID]--建议处分类型ID
      ,a.[SBSJ]--上报时间
      ,a.[SBJSID]--上报教师ID
      ,a.[ZZCFLXID]--最终处分类型ID
      ,a.[SHSJ]--审核时间
      ,a.[SHJSID]--审核教师ID
      ,a.[BZ]--备注
      ,a.[FSSJ]--发生时间
      ,a.[JCSJ]--解除时间
      ,a.[JCJSID]--解除教师ID
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生信息数据表 学校名
      ,c.XH as c_XSXX_XH--学生信息数据表 学号
      ,c.XM as c_XSXX_XM--学生信息数据表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生信息数据表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生信息数据表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生信息数据表 曾用名
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,[cb].MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生信息数据表 身份证件号
      ,c.XBM as c_XSXX_XBM--学生信息数据表 性别码
      ,[cc].MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.XXM as c_XSXX_XXM--学生信息数据表 血型码
      ,[cd].MC as c_XSXX_XXM_MC--血型代码表 名称
      ,[cd].JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.CSRQ as c_XSXX_CSRQ--学生信息数据表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生信息数据表 出生地码
      ,[ce].MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生信息数据表 籍贯
      ,c.MZM as c_XSXX_MZM--学生信息数据表 民族码
      ,[cf].MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[cf].ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.HYZKM as c_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,[cg].MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.XYZJM as c_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,[ch].MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,[ci].MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[ci].SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JKZKM as c_XSXX_JKZKM--学生信息数据表 健康状况码
      ,[cj].MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[cj].SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,[ck].MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[ck].JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,[cl].MC as c_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_XSXX_HKLBM--学生信息数据表 户口类别码
      ,[cm].MC as c_XSXX_HKLBM_MC--户口类别代码 名称
      ,c.SFSLDRK as c_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,[cn].MC as c_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,c.GJDQM as c_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,[co].GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[co].EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[co].SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.TC as c_XSXX_TC--学生信息数据表 特长
      ,c.XSLXDH as c_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,c.WLDZ as c_XSXX_WLDZ--学生信息数据表 网络地址
      ,c.JSTXH as c_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,c.DZXX as c_XSXX_DZXX--学生信息数据表 电子信箱
      ,c.ZP as c_XSXX_ZP--学生信息数据表 照片(路径)
      ,c.RXXQID as c_XSXX_RXXQID--学生信息数据表 入学学期ID
      ,d.SCHOOLID as d_WJLX_SCHOOLID--违纪类型表 学校
      ,d.WJLXMC as d_WJLX_WJLXMC--违纪类型表 违纪类型名称
      ,d.WJNRFW as d_WJLX_WJNRFW--违纪类型表 违纪内容范围
      ,d.BZ as d_WJLX_BZ--违纪类型表 备注
      ,e.SCHOOLID as e_XQ_SCHOOLID--学期数据表 学校名
      ,e.XNID as e_XQ_XNID--学期数据表 学年
      ,e.XQM as e_XQ_XQM--学期数据表 学期码
      ,[eb].MC as e_XQ_XQM_MC--学期代码表 名称
      ,e.XQMC as e_XQ_XQMC--学期数据表 学期名称
      ,e.XQKSRQ as e_XQ_XQKSRQ--学期数据表 学期开始日期
      ,e.XQJSRQ as e_XQ_XQJSRQ--学期数据表 学期结束日期
      ,f.SCHOOLID as f_CFLX_SCHOOLID--处分类型表 学校
      ,f.CFLXMC as f_CFLX_CFLXMC--处分类型表 处分类型名称
      ,f.CFGLDW as f_CFLX_CFGLDW--处分类型表 处分管理单位
      ,f.SFCZCKQ as f_CFLX_SFCZCKQ--处分类型表 是否存在查看期
      ,[fb].MC as f_CFLX_SFCZCKQ_MC--是否标志代码表 名称
      ,f.CKQ as f_CFLX_CKQ--处分类型表 查看期
      ,f.SFYXJC as f_CFLX_SFYXJC--处分类型表 是否允许解除
      ,[fc].MC as f_CFLX_SFYXJC_MC--是否标志代码表 名称
      ,f.BZ as f_CFLX_BZ--处分类型表 备注
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,g.GH as g_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,g.XM as g_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,g.YWXM as g_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,g.XMPY as g_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,g.CYM as g_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[gb].MC as g_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,g.SFZJH as g_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,g.CSRQ as g_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,g.XBM as g_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[gc].MC as g_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,g.MZM as g_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[gd].MZMC as g_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[gd].ZMDM as g_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,g.XXM as g_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[ge].MC as g_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[ge].JC as g_JZGJBSJ_XXM_JC--血型代码表 简称
      ,g.JKZKM as g_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[gf].MC as g_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[gf].SM as g_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,g.HYZTM as g_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[gg].MC as g_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[gh].MC as g_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[gh].JC as g_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,g.GATQWM as g_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[gi].MC as g_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[gi].SM as g_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,g.JG as g_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,g.GJDQM as g_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[gj].GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[gj].EZMDM as g_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[gj].SZMDM as g_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,g.CSDXZQHM as g_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[gk].MC as g_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,g.XYZJM as g_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[gl].MC as g_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,g.JZGHKSZDXZQHM as g_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[gm].MC as g_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,g.HKLBM as g_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[gn].MC as g_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,g.DQZZ as g_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,g.DQZZYZBM as g_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,g.CJGZNY as g_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,g.CJNY as g_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,g.LXNY as g_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,g.BZLBM as g_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[go].MC as g_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,g.JZGLBM as g_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[gp].MC as g_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[gp].SM as g_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,g.GWLBM as g_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[gq].MC as g_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,g.SFJZJS as g_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[gr].MC as g_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,g.SFSSXJS as g_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[gs].MC as g_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,g.ZP as g_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,g.DQZTM as g_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[gt].MC as g_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,g.YDDH as g_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,g.GDDH as g_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,g.TXDZYZBM as g_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,g.TXDZ as g_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,g.DZXX as g_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,g.WLDZ as g_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,g.JSTXH as g_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,h.SCHOOLID as h_CFLX_SCHOOLID--处分类型表 学校
      ,h.CFLXMC as h_CFLX_CFLXMC--处分类型表 处分类型名称
      ,h.CFGLDW as h_CFLX_CFGLDW--处分类型表 处分管理单位
      ,h.SFCZCKQ as h_CFLX_SFCZCKQ--处分类型表 是否存在查看期
      ,[hb].MC as h_CFLX_SFCZCKQ_MC--是否标志代码表 名称
      ,h.CKQ as h_CFLX_CKQ--处分类型表 查看期
      ,h.SFYXJC as h_CFLX_SFYXJC--处分类型表 是否允许解除
      ,[hc].MC as h_CFLX_SFYXJC_MC--是否标志代码表 名称
      ,h.BZ as h_CFLX_BZ--处分类型表 备注
      ,i.SCHOOLID as i_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,i.GH as i_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,i.XM as i_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,i.YWXM as i_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,i.XMPY as i_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,i.CYM as i_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,i.SFZJLXM as i_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[ib].MC as i_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,i.SFZJH as i_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,i.CSRQ as i_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,i.XBM as i_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[ic].MC as i_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,i.MZM as i_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[id].MZMC as i_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[id].ZMDM as i_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,i.XXM as i_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[ie].MC as i_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[ie].JC as i_JZGJBSJ_XXM_JC--血型代码表 简称
      ,i.JKZKM as i_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[if].MC as i_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[if].SM as i_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,i.HYZTM as i_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[ig].MC as i_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,i.ZZMMM as i_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[ih].MC as i_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[ih].JC as i_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,i.GATQWM as i_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[ii].MC as i_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[ii].SM as i_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,i.JG as i_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,i.GJDQM as i_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[ij].GJDQMCJC as i_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[ij].EZMDM as i_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[ij].SZMDM as i_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,i.CSDXZQHM as i_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[ik].MC as i_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,i.XYZJM as i_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[il].MC as i_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,i.JZGHKSZDXZQHM as i_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[im].MC as i_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,i.HKLBM as i_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[in].MC as i_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,i.DQZZ as i_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,i.DQZZYZBM as i_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,i.CJGZNY as i_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,i.CJNY as i_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,i.LXNY as i_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,i.BZLBM as i_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[io].MC as i_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,i.JZGLBM as i_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[ip].MC as i_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[ip].SM as i_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,i.GWLBM as i_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[iq].MC as i_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,i.SFJZJS as i_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[ir].MC as i_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,i.SFSSXJS as i_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[is].MC as i_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,i.ZP as i_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,i.DQZTM as i_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[it].MC as i_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,i.YDDH as i_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,i.GDDH as i_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,i.TXDZYZBM as i_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,i.TXDZ as i_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,i.DZXX as i_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,i.WLDZ as i_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,i.JSTXH as i_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,j.SCHOOLID as j_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,j.GH as j_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,j.XM as j_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,j.YWXM as j_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,j.XMPY as j_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,j.CYM as j_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,j.SFZJLXM as j_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[jb].MC as j_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,j.SFZJH as j_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,j.CSRQ as j_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,j.XBM as j_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[jc].MC as j_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,j.MZM as j_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[jd].MZMC as j_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[jd].ZMDM as j_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,j.XXM as j_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[je].MC as j_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[je].JC as j_JZGJBSJ_XXM_JC--血型代码表 简称
      ,j.JKZKM as j_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[jf].MC as j_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[jf].SM as j_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,j.HYZTM as j_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[jg].MC as j_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,j.ZZMMM as j_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[jh].MC as j_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[jh].JC as j_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,j.GATQWM as j_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[ji].MC as j_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[ji].SM as j_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,j.JG as j_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,j.GJDQM as j_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[jj].GJDQMCJC as j_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[jj].EZMDM as j_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[jj].SZMDM as j_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,j.CSDXZQHM as j_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[jk].MC as j_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,j.XYZJM as j_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[jl].MC as j_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,j.JZGHKSZDXZQHM as j_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[jm].MC as j_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,j.HKLBM as j_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[jn].MC as j_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,j.DQZZ as j_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,j.DQZZYZBM as j_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,j.CJGZNY as j_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,j.CJNY as j_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,j.LXNY as j_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,j.BZLBM as j_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[jo].MC as j_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,j.JZGLBM as j_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[jp].MC as j_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[jp].SM as j_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,j.GWLBM as j_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[jq].MC as j_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,j.SFJZJS as j_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[jr].MC as j_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,j.SFSSXJS as j_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[js].MC as j_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,j.ZP as j_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,j.DQZTM as j_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[jt].MC as j_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,j.YDDH as j_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,j.GDDH as j_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,j.TXDZYZBM as j_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,j.TXDZ as j_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,j.DZXX as j_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,j.WLDZ as j_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,j.JSTXH as j_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号

FROM dbo.EDU_ZZXS_18_A04_XSCFXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*学生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A01_WJLX AS d ON a.WJLXID = d.ID /*违纪类型ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*学期ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A02_CFLX AS f ON a.JYCFLXID = f.ID /*建议处分类型ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS g ON a.SBJSID = g.ID /*上报教师ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A02_CFLX AS h ON a.ZZCFLXID = h.ID /*最终处分类型ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS i ON a.SHJSID = i.ID /*审核教师ID*/ AND a.SCHOOLID = i.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS j ON a.JCJSID = j.ID /*解除教师ID*/ AND a.SCHOOLID = j.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cb] ON c.SFZJLXM = [cb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cc] ON c.XBM = [cc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [cd] ON c.XXM = [cd].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ce] ON c.CSDM = [ce].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cf] ON c.MZM = [cf].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZKM = [cg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ch] ON c.XYZJM = [ch].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ci] ON c.GATQWM = [ci].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cj] ON c.JKZKM = [cj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ck] ON c.ZZMMM = [ck].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cl] ON c.HKSZDXZQHM = [cl].DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [cm] ON c.HKLBM = [cm].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cn] ON c.SFSLDRK = [cn].DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [co] ON c.GJDQM = [co].DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [eb] ON e.XQM = [eb].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.SFCZCKQ = [fb].DM /*是否存在查看期*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fc] ON f.SFYXJC = [fc].DM /*是否允许解除*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [gb] ON g.SFZJLXM = [gb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [gc] ON g.XBM = [gc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [gd] ON g.MZM = [gd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ge] ON g.XXM = [ge].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [gf] ON g.JKZKM = [gf].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [gg] ON g.HYZTM = [gg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [gh] ON g.ZZMMM = [gh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [gi] ON g.GATQWM = [gi].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [gj] ON g.GJDQM = [gj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [gk] ON g.CSDXZQHM = [gk].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [gl] ON g.XYZJM = [gl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [gm] ON g.JZGHKSZDXZQHM = [gm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [gn] ON g.HKLBM = [gn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [go] ON g.BZLBM = [go].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [gp] ON g.JZGLBM = [gp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [gq] ON g.GWLBM = [gq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gr] ON g.SFJZJS = [gr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gs] ON g.SFSSXJS = [gs].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [gt] ON g.DQZTM = [gt].DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hb] ON h.SFCZCKQ = [hb].DM /*是否存在查看期*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hc] ON h.SFYXJC = [hc].DM /*是否允许解除*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ib] ON i.SFZJLXM = [ib].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ic] ON i.XBM = [ic].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [id] ON i.MZM = [id].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ie] ON i.XXM = [ie].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [if] ON i.JKZKM = [if].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [ig] ON i.HYZTM = [ig].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ih] ON i.ZZMMM = [ih].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ii] ON i.GATQWM = [ii].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ij] ON i.GJDQM = [ij].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ik] ON i.CSDXZQHM = [ik].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [il] ON i.XYZJM = [il].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [im] ON i.JZGHKSZDXZQHM = [im].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [in] ON i.HKLBM = [in].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [io] ON i.BZLBM = [io].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [ip] ON i.JZGLBM = [ip].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [iq] ON i.GWLBM = [iq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ir] ON i.SFJZJS = [ir].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [is] ON i.SFSSXJS = [is].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [it] ON i.DQZTM = [it].DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [jb] ON j.SFZJLXM = [jb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [jc] ON j.XBM = [jc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [jd] ON j.MZM = [jd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [je] ON j.XXM = [je].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [jf] ON j.JKZKM = [jf].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [jg] ON j.HYZTM = [jg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [jh] ON j.ZZMMM = [jh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ji] ON j.GATQWM = [ji].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [jj] ON j.GJDQM = [jj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [jk] ON j.CSDXZQHM = [jk].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [jl] ON j.XYZJM = [jl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [jm] ON j.JZGHKSZDXZQHM = [jm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [jn] ON j.HKLBM = [jn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [jo] ON j.BZLBM = [jo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [jp] ON j.JZGLBM = [jp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [jq] ON j.GWLBM = [jq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [jr] ON j.SFJZJS = [jr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [js] ON j.SFSSXJS = [js].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [jt] ON j.DQZTM = [jt].DM /*当前状态码*/
GO
