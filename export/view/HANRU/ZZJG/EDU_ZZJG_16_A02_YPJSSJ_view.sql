
--应聘教师数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_16_A02_YPJSSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[YPGWID]--应聘岗位ID
      ,a.[XM]--姓名
      ,a.[YWXM]--英文姓名
      ,a.[XMPY]--姓名拼音
      ,a.[CYM]--曾用名
      ,a.[SFZJLXM]--身份证件类型码
      ,a.[SFZJH]--身份证件号
      ,a.[CSRQ]--出生日期
      ,a.[XBM]--性别码
      ,a.[MZM]--民族码
      ,a.[XXM]--血型码
      ,a.[JKZKM]--健康状况码
      ,a.[HYZTM]--婚姻状态码
      ,a.[ZZMMM]--政治面貌码
      ,a.[GATQWM]--港澳台侨外码
      ,a.[JG]--籍贯
      ,a.[GJDQM]--国籍/地区码
      ,a.[CSDXZQHM]--出生地行政区划码
      ,a.[XYZJM]--信仰宗教码
      ,a.[JZGHKSZDXZQHM]--教职工户口所在地行政区划码
      ,a.[HKLBM]--户口类别码
      ,a.[DQZZ]--当前住址
      ,a.[DQZZYZBM]--当前住址邮政编码
      ,a.[CJGZNY]--参加工作年月
      ,a.[CJNY]--从教年月
      ,a.[BZLBM]--编制类别码
      ,a.[JZGLBM]--教职工类别码
      ,a.[GWLBM]--岗位类别码
      ,a.[SFJZJS]--是否兼职教师
      ,a.[SFSSXJS]--是否双师型教师
      ,a.[ZP]--照片(路径)
      ,a.[YDDH]--移动电话
      ,a.[GDDH]--固定电话
      ,a.[TXDZYZBM]--通信地址邮政编码
      ,a.[TXDZ]--通信地址
      ,a.[DZXX]--电子信箱
      ,a.[WLDZ]--网络地址
      ,a.[JSTXH]--即时通讯号
      ,a.[BZ]--备注
      ,a.[TJSJ]--添加时间
      ,a.[TJJSID]--添加教师ID
      ,a.[SHJG]--审核结果
      ,a.[SHSJ]--审核时间
      ,a.[SHJSID]--审核教师ID
      ,c.SCHOOLID as c_ZPGWSJ_SCHOOLID--招聘岗位数据表 学校名
      ,c.ZPGWMC as c_ZPGWSJ_ZPGWMC--招聘岗位数据表 招聘岗位名称
      ,c.ZWMC as c_ZPGWSJ_ZWMC--招聘岗位数据表 职务名称
      ,c.ZPRS as c_ZPGWSJ_ZPRS--招聘岗位数据表 招聘人数
      ,c.GWQSNY as c_ZPGWSJ_GWQSNY--招聘岗位数据表 岗位起始年月
      ,c.GWJSNY as c_ZPGWSJ_GWJSNY--招聘岗位数据表 岗位结束年月
      ,c.SFKQ as c_ZPGWSJ_SFKQ--招聘岗位数据表 是否开启
      ,[cb].MC as c_ZPGWSJ_SFKQ_MC--是否标志代码表 名称
      ,d.MC as d_SFZJLX_MC--身份证件类型代码表 名称
      ,e.MC as e_RDXB_MC--人的性别代码 名称
      ,f.MZMC as f_ZGGMZMCDLMZMPXF_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,f.ZMDM as f_ZGGMZMCDLMZMPXF_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,g.MC as g_XX_MC--血型代码表 名称
      ,g.JC as g_XX_JC--血型代码表 简称
      ,h.MC as h_JKZKYWSZ_MC--健康状况1位数字代码 名称
      ,h.SM as h_JKZKYWSZ_SM--健康状况1位数字代码 说明
      ,i.MC as i_HYZZ_MC--婚姻状况代码 名称
      ,j.MC as j_ZZMM_MC--政治面貌代码 名称
      ,j.JC as j_ZZMM_JC--政治面貌代码 简称
      ,k.MC as k_GATQW_MC--港澳台侨外代码表 名称
      ,k.SM as k_GATQW_SM--港澳台侨外代码表 说明
      ,l.GJDQMCJC as l_SJGGHDQMC_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,l.EZMDM as l_SJGGHDQMC_EZMDM--世界各国和地区名称代码 二字母代码
      ,l.SZMDM as l_SJGGHDQMC_SZMDM--世界各国和地区名称代码 三字母代码
      ,m.MC as m_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,n.MC as n_ZJXY_MC--宗教信仰代码 名称
      ,o.MC as o_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,p.MC as p_HKLB_MC--户口类别代码 名称
      ,q.MC as q_BZLB_MC--编制类别代码表 名称
      ,r.MC as r_JZGLB_MC--教职工类别代码表 名称
      ,r.SM as r_JZGLB_SM--教职工类别代码表 说明
      ,s.MC as s_GWLB_MC--岗位类别代码表 名称
      ,t.MC as t_SFBZ_MC--是否标志代码表 名称
      ,u.MC as u_SFBZ_MC--是否标志代码表 名称
      ,v.SCHOOLID as v_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,v.GH as v_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,v.XM as v_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,v.YWXM as v_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,v.XMPY as v_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,v.CYM as v_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,v.SFZJLXM as v_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[vb].MC as v_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,v.SFZJH as v_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,v.CSRQ as v_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,v.XBM as v_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[vc].MC as v_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,v.MZM as v_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[vd].MZMC as v_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[vd].ZMDM as v_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,v.XXM as v_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[ve].MC as v_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[ve].JC as v_JZGJBSJ_XXM_JC--血型代码表 简称
      ,v.JKZKM as v_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[vf].MC as v_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[vf].SM as v_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,v.HYZTM as v_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[vg].MC as v_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,v.ZZMMM as v_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[vh].MC as v_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[vh].JC as v_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,v.GATQWM as v_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[vi].MC as v_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[vi].SM as v_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,v.JG as v_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,v.GJDQM as v_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[vj].GJDQMCJC as v_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[vj].EZMDM as v_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[vj].SZMDM as v_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,v.CSDXZQHM as v_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[vk].MC as v_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,v.XYZJM as v_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[vl].MC as v_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,v.JZGHKSZDXZQHM as v_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[vm].MC as v_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,v.HKLBM as v_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[vn].MC as v_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,v.DQZZ as v_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,v.DQZZYZBM as v_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,v.CJGZNY as v_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,v.CJNY as v_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,v.LXNY as v_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,v.BZLBM as v_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[vo].MC as v_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,v.JZGLBM as v_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[vp].MC as v_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[vp].SM as v_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,v.GWLBM as v_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[vq].MC as v_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,v.SFJZJS as v_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[vr].MC as v_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,v.SFSSXJS as v_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[vs].MC as v_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,v.ZP as v_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,v.DQZTM as v_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[vt].MC as v_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,v.YDDH as v_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,v.GDDH as v_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,v.TXDZYZBM as v_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,v.TXDZ as v_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,v.DZXX as v_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,v.WLDZ as v_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,v.JSTXH as v_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,v.JSKQJS as v_JZGJBSJ_JSKQJS--教职工基本数据子类表 教师考勤角色
      ,v.FullTeacherName as v_JZGJBSJ_FullTeacherName--教职工基本数据子类表 完整老师姓名
      ,v.RecordID as v_JZGJBSJ_RecordID--教职工基本数据子类表 记录ID
      ,v.TeacherGroupId as v_JZGJBSJ_TeacherGroupId--教职工基本数据子类表 表TeacherGroup的外键
      ,w.SCHOOLID as w_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,w.GH as w_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,w.XM as w_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,w.YWXM as w_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,w.XMPY as w_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,w.CYM as w_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,w.SFZJLXM as w_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[wb].MC as w_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,w.SFZJH as w_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,w.CSRQ as w_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,w.XBM as w_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[wc].MC as w_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,w.MZM as w_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[wd].MZMC as w_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[wd].ZMDM as w_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,w.XXM as w_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[we].MC as w_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[we].JC as w_JZGJBSJ_XXM_JC--血型代码表 简称
      ,w.JKZKM as w_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[wf].MC as w_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[wf].SM as w_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,w.HYZTM as w_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[wg].MC as w_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,w.ZZMMM as w_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[wh].MC as w_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[wh].JC as w_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,w.GATQWM as w_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[wi].MC as w_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[wi].SM as w_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,w.JG as w_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,w.GJDQM as w_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[wj].GJDQMCJC as w_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[wj].EZMDM as w_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[wj].SZMDM as w_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,w.CSDXZQHM as w_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[wk].MC as w_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,w.XYZJM as w_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[wl].MC as w_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,w.JZGHKSZDXZQHM as w_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[wm].MC as w_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,w.HKLBM as w_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[wn].MC as w_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,w.DQZZ as w_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,w.DQZZYZBM as w_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,w.CJGZNY as w_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,w.CJNY as w_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,w.LXNY as w_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,w.BZLBM as w_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[wo].MC as w_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,w.JZGLBM as w_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[wp].MC as w_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[wp].SM as w_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,w.GWLBM as w_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[wq].MC as w_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,w.SFJZJS as w_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[wr].MC as w_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,w.SFSSXJS as w_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[ws].MC as w_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,w.ZP as w_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,w.DQZTM as w_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[wt].MC as w_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,w.YDDH as w_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,w.GDDH as w_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,w.TXDZYZBM as w_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,w.TXDZ as w_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,w.DZXX as w_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,w.WLDZ as w_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,w.JSTXH as w_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,w.JSKQJS as w_JZGJBSJ_JSKQJS--教职工基本数据子类表 教师考勤角色
      ,w.FullTeacherName as w_JZGJBSJ_FullTeacherName--教职工基本数据子类表 完整老师姓名
      ,w.RecordID as w_JZGJBSJ_RecordID--教职工基本数据子类表 记录ID
      ,w.TeacherGroupId as w_JZGJBSJ_TeacherGroupId--教职工基本数据子类表 表TeacherGroup的外键

FROM dbo.EDU_ZZJG_16_A02_YPJSSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_16_A01_ZPGWSJ AS c ON a.YPGWID = c.ID /*应聘岗位ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS d ON a.SFZJLXM = d.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS e ON a.XBM = e.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS f ON a.MZM = f.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS g ON a.XXM = g.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS h ON a.JKZKM = h.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS i ON a.HYZTM = i.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS j ON a.ZZMMM = j.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS k ON a.GATQWM = k.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS l ON a.GJDQM = l.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS m ON a.CSDXZQHM = m.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS n ON a.XYZJM = n.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS o ON a.JZGHKSZDXZQHM = o.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS p ON a.HKLBM = p.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS q ON a.BZLBM = q.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS r ON a.JZGLBM = r.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS s ON a.GWLBM = s.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS t ON a.SFJZJS = t.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS u ON a.SFSSXJS = u.DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS v ON a.TJJSID = v.ID /*添加教师ID*/ AND a.SCHOOLID = v.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS w ON a.SHJSID = w.ID /*审核教师ID*/ AND a.SCHOOLID = w.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFKQ = [cb].DM /*是否开启*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [vb] ON v.SFZJLXM = [vb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [vc] ON v.XBM = [vc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [vd] ON v.MZM = [vd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ve] ON v.XXM = [ve].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [vf] ON v.JKZKM = [vf].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [vg] ON v.HYZTM = [vg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [vh] ON v.ZZMMM = [vh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [vi] ON v.GATQWM = [vi].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [vj] ON v.GJDQM = [vj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [vk] ON v.CSDXZQHM = [vk].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [vl] ON v.XYZJM = [vl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [vm] ON v.JZGHKSZDXZQHM = [vm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [vn] ON v.HKLBM = [vn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [vo] ON v.BZLBM = [vo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [vp] ON v.JZGLBM = [vp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [vq] ON v.GWLBM = [vq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [vr] ON v.SFJZJS = [vr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [vs] ON v.SFSSXJS = [vs].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [vt] ON v.DQZTM = [vt].DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [wb] ON w.SFZJLXM = [wb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [wc] ON w.XBM = [wc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [wd] ON w.MZM = [wd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [we] ON w.XXM = [we].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [wf] ON w.JKZKM = [wf].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [wg] ON w.HYZTM = [wg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [wh] ON w.ZZMMM = [wh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [wi] ON w.GATQWM = [wi].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [wj] ON w.GJDQM = [wj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [wk] ON w.CSDXZQHM = [wk].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [wl] ON w.XYZJM = [wl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [wm] ON w.JZGHKSZDXZQHM = [wm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [wn] ON w.HKLBM = [wn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [wo] ON w.BZLBM = [wo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [wp] ON w.JZGLBM = [wp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [wq] ON w.GWLBM = [wq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [wr] ON w.SFJZJS = [wr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ws] ON w.SFSSXJS = [ws].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [wt] ON w.DQZTM = [wt].DM /*当前状态码*/
GO
