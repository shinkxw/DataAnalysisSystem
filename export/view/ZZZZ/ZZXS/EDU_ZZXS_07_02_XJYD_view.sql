
--学籍异动数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_07_02_XJYD_DISP]
AS
SELECT a.[ID]--学籍异动表编号
      ,a.[XSXXID]--学生ID
      ,a.[SCHOOLID]--学校ID
      ,a.[YDLBM]--异动类别码
      ,a.[YDRQ]--异动日期
      ,a.[YDYYM]--异动原因码
      ,a.[SPRQ]--审批日期
      ,a.[SPWH]--审批文号
      ,a.[JBRID]--经办人ID
      ,a.[JBRGH]--经办人工号
      ,a.[YDLYXXM]--异动来源学校码
      ,a.[YDQXXXM]--异动去向学校码
      ,a.[YDSM]--异动说明
      ,a.[YZYM]--原专业码
      ,a.[YZYID]--原专业ID
      ,a.[YBH]--原班号
      ,a.[YNJ]--原年级
      ,a.[XZYM]--现专业码
      ,a.[XZYID]--现专业ID
      ,a.[XBH]--现班号
      ,a.[XNJ]--现年级
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学校名
      ,b.XH as b_XSXX_XH--学号
      ,b.XM as b_XSXX_XM--姓名
      ,b.YWXM as b_XSXX_YWXM--英文姓名
      ,b.XMPY as b_XSXX_XMPY--姓名拼音
      ,b.CYM as b_XSXX_CYM--曾用名
      ,b.SFZJLXM as b_XSXX_SFZJLXM--身份证件类型码
      ,bb.MC as b_XSXX_SFZJLXM_MC--名称
      ,b.SFZJH as b_XSXX_SFZJH--身份证件号
      ,b.XBM as b_XSXX_XBM--性别码
      ,bc.MC as b_XSXX_XBM_MC--名称
      ,b.XXM as b_XSXX_XXM--血型码
      ,bd.MC as b_XSXX_XXM_MC--名称
      ,bd.JC as b_XSXX_XXM_JC--简称
      ,b.CSRQ as b_XSXX_CSRQ--出生日期
      ,b.CSDM as b_XSXX_CSDM--出生地码
      ,be.MC as b_XSXX_CSDM_MC--名称
      ,b.JG as b_XSXX_JG--籍贯
      ,b.MZM as b_XSXX_MZM--民族码
      ,bf.MZMC as b_XSXX_MZM_MZMC--民族名称
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--字母代码
      ,b.HYZKM as b_XSXX_HYZKM--婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--名称
      ,b.XYZJM as b_XSXX_XYZJM--信仰宗教码
      ,bh.MC as b_XSXX_XYZJM_MC--名称
      ,b.GATQWM as b_XSXX_GATQWM--港澳台侨外码
      ,bi.MC as b_XSXX_GATQWM_MC--名称
      ,bi.SM as b_XSXX_GATQWM_SM--说明
      ,b.JKZKM as b_XSXX_JKZKM--健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--名称
      ,bj.SM as b_XSXX_JKZKM_SM--说明
      ,b.ZZMMM as b_XSXX_ZZMMM--政治面貌码
      ,bk.MC as b_XSXX_ZZMMM_MC--名称
      ,bk.JC as b_XSXX_ZZMMM_JC--简称
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--户口所在地行政区划码
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--名称
      ,b.HKLBM as b_XSXX_HKLBM--户口类别码
      ,bm.MC as b_XSXX_HKLBM_MC--名称
      ,b.SFSLDRK as b_XSXX_SFSLDRK--是否是流动人口
      ,bn.MC as b_XSXX_SFSLDRK_MC--名称
      ,b.GJDQM as b_XSXX_GJDQM--国籍/地区
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--国家/地区名称简称
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--二字母代码
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--三字母代码
      ,b.TC as b_XSXX_TC--特长
      ,b.XSLXDH as b_XSXX_XSLXDH--学生联系电话
      ,b.WLDZ as b_XSXX_WLDZ--网络地址
      ,b.JSTXH as b_XSXX_JSTXH--即时通讯号
      ,b.DZXX as b_XSXX_DZXX--电子信箱
      ,b.ZP as b_XSXX_ZP--照片(路径)
      ,c.XXDM as c_ZZXX_XXDM--学校代码
      ,c.XXMC as c_ZZXX_XXMC--学校名称
      ,c.XXYWMC as c_ZZXX_XXYWMC--学校英文名称
      ,c.XXJBZM as c_ZZXX_XXJBZM--学校举办者码
      ,cb.MC as c_ZZXX_XXJBZM_MC--名称
      ,cb.SM as c_ZZXX_XXJBZM_SM--说明
      ,c.XXZGBMM as c_ZZXX_XXZGBMM--学校主管部门码
      ,cc.MC as c_ZZXX_XXZGBMM_MC--名称
      ,cc.SM as c_ZZXX_XXZGBMM_SM--说明
      ,c.XXDZ as c_ZZXX_XXDZ--学校地址
      ,c.XXYZBM as c_ZZXX_XXYZBM--学校邮政编码
      ,c.XZQHM as c_ZZXX_XZQHM--行政区划码
      ,cd.MC as c_ZZXX_XZQHM_MC--名称
      ,c.JXNY as c_ZZXX_JXNY--建校年月
      ,c.XQR as c_ZZXX_XQR--校庆日
      ,c.CLBJ as c_ZZXX_CLBJ--成立背景
      ,c.LSYG as c_ZZXX_LSYG--历史沿革
      ,c.XXXQS as c_ZZXX_XXXQS--学校校区数
      ,c.XXPGLX as c_ZZXX_XXPGLX--学校评估类型
      ,ce.MC as c_ZZXX_XXPGLX_MC--名称
      ,c.XXPGQKSM as c_ZZXX_XXPGQKSM--学校评估情况说明
      ,c.ZYDZ as c_ZZXX_ZYDZ--主页地址
      ,c.FDDBRH as c_ZZXX_FDDBRH--法定代表人号
      ,c.FRZSH as c_ZZXX_FRZSH--法人证书号
      ,c.LXDH as c_ZZXX_LXDH--联系电话
      ,c.CZDH as c_ZZXX_CZDH--传真电话
      ,c.DZXX as c_ZZXX_DZXX--电子信箱
      ,d.MC as d_XJYDLB_MC--名称
      ,e.MC as e_XJYDYY_MC--名称
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--学校名
      ,f.GH as f_JZGJBSJ_GH--工号
      ,f.XM as f_JZGJBSJ_XM--姓名
      ,f.YWXM as f_JZGJBSJ_YWXM--英文姓名
      ,f.XMPY as f_JZGJBSJ_XMPY--姓名拼音
      ,f.CYM as f_JZGJBSJ_CYM--曾用名
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--身份证件类型码
      ,fb.MC as f_JZGJBSJ_SFZJLXM_MC--名称
      ,f.SFZJH as f_JZGJBSJ_SFZJH--身份证件号
      ,f.CSRQ as f_JZGJBSJ_CSRQ--出生日期
      ,f.XBM as f_JZGJBSJ_XBM--性别码
      ,fc.MC as f_JZGJBSJ_XBM_MC--名称
      ,f.MZM as f_JZGJBSJ_MZM--民族码
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--民族名称
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--字母代码
      ,f.XXM as f_JZGJBSJ_XXM--血型码
      ,fe.MC as f_JZGJBSJ_XXM_MC--名称
      ,fe.JC as f_JZGJBSJ_XXM_JC--简称
      ,f.JKZKM as f_JZGJBSJ_JKZKM--健康状况码
      ,ff.MC as f_JZGJBSJ_JKZKM_MC--名称
      ,ff.SM as f_JZGJBSJ_JKZKM_SM--说明
      ,f.HYZTM as f_JZGJBSJ_HYZTM--婚姻状态码
      ,fg.MC as f_JZGJBSJ_HYZTM_MC--名称
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--政治面貌码
      ,fh.MC as f_JZGJBSJ_ZZMMM_MC--名称
      ,fh.JC as f_JZGJBSJ_ZZMMM_JC--简称
      ,f.GATQWM as f_JZGJBSJ_GATQWM--港澳台侨外码
      ,fi.MC as f_JZGJBSJ_GATQWM_MC--名称
      ,fi.SM as f_JZGJBSJ_GATQWM_SM--说明
      ,f.JG as f_JZGJBSJ_JG--籍贯
      ,f.GJDQM as f_JZGJBSJ_GJDQM--国籍/地区码
      ,fj.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,fj.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,fj.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,f.CSDXZQHM as f_JZGJBSJ_CSDXZQHM--出生地行政区划码
      ,fk.MC as f_JZGJBSJ_CSDXZQHM_MC--名称
      ,f.XYZJM as f_JZGJBSJ_XYZJM--信仰宗教码
      ,fl.MC as f_JZGJBSJ_XYZJM_MC--名称
      ,f.JZGHKSZDXZQHM as f_JZGJBSJ_JZGHKSZDXZQHM--教职工户口所在地行政区划码
      ,fm.MC as f_JZGJBSJ_JZGHKSZDXZQHM_MC--名称
      ,f.HKLBM as f_JZGJBSJ_HKLBM--户口类别码
      ,fn.MC as f_JZGJBSJ_HKLBM_MC--名称
      ,f.DQZZ as f_JZGJBSJ_DQZZ--当前住址
      ,f.DQZZYZBM as f_JZGJBSJ_DQZZYZBM--当前住址邮政编码
      ,f.CJGZNY as f_JZGJBSJ_CJGZNY--参加工作年月
      ,f.CJNY as f_JZGJBSJ_CJNY--从教年月
      ,f.LXNY as f_JZGJBSJ_LXNY--来校年月
      ,f.BZLBM as f_JZGJBSJ_BZLBM--编制类别码
      ,fo.MC as f_JZGJBSJ_BZLBM_MC--名称
      ,f.JZGLBM as f_JZGJBSJ_JZGLBM--教职工类别码
      ,fp.MC as f_JZGJBSJ_JZGLBM_MC--名称
      ,fp.SM as f_JZGJBSJ_JZGLBM_SM--说明
      ,f.GWLBM as f_JZGJBSJ_GWLBM--岗位类别码
      ,fq.MC as f_JZGJBSJ_GWLBM_MC--名称
      ,f.SFJZJS as f_JZGJBSJ_SFJZJS--是否兼职教师
      ,fr.MC as f_JZGJBSJ_SFJZJS_MC--名称
      ,f.SFSSXJS as f_JZGJBSJ_SFSSXJS--是否双师型教
      ,fs.MC as f_JZGJBSJ_SFSSXJS_MC--名称
      ,f.ZP as f_JZGJBSJ_ZP--照片(路径)
      ,f.DQZTM as f_JZGJBSJ_DQZTM--当前状态码
      ,ft.MC as f_JZGJBSJ_DQZTM_MC--名称
      ,g.SCHOOLID as g_ZYXX_SCHOOLID--学校名
      ,g.ZYDM as g_ZYXX_ZYDM--专业代码
      ,gb.ZYMLLB as g_ZYXX_ZYDM_ZYMLLB--专业目录类别
      ,gb.MC as g_ZYXX_ZYDM_MC--名称
      ,g.ZYMC as g_ZYXX_ZYMC--专业名称
      ,g.ZYYWMC as g_ZYXX_ZYYWMC--专业英文名称
      ,g.XZ as g_ZYXX_XZ--学制
      ,g.ZYFXMC as g_ZYXX_ZYFXMC--专业方向名称
      ,g.ZYJC as g_ZYXX_ZYJC--专业简称
      ,g.JLNY as g_ZYXX_JLNY--建立年月
      ,g.ZYJSS as g_ZYXX_ZYJSS--专业教师数
      ,g.KSJGH as g_ZYXX_KSJGH--开设机构号
      ,g.ZXF as g_ZYXX_ZXF--总学分
      ,g.SSZYML as g_ZYXX_SSZYML--所属专业目录
      ,gc.MC as g_ZYXX_SSZYML_MC--名称
      ,g.ZYLB as g_ZYXX_ZYLB--专业类别名称
      ,h.SCHOOLID as h_ZZBJ_SCHOOLID--学校名
      ,h.ZYXXID as h_ZZBJ_ZYXXID--专业基本信息
      ,h.ZZNJID as h_ZZBJ_ZZNJID--学校年级数据表
      ,h.XZBMC as h_ZZBJ_XZBMC--行政班名称
      ,h.JBNY as h_ZZBJ_JBNY--建班年月
      ,h.BZRGH as h_ZZBJ_BZRGH--班主任工号
      ,h.JSBH as h_ZZBJ_JSBH--教室编号
      ,h.NANSRS as h_ZZBJ_NANSRS--男生人数
      ,h.NVSRS as h_ZZBJ_NVSRS--女生人数
      ,h.ZRS as h_ZZBJ_ZRS--总人数
      ,h.BZXH as h_ZZBJ_BZXH--班长学号
      ,h.JXJH as h_ZZBJ_JXJH--教学计划
      ,h.JGH as h_ZZBJ_JGH--机构号
      ,h.XQDM as h_ZZBJ_XQDM--校区代码
      ,i.SCHOOLID as i_ZZNJ_SCHOOLID--学校名
      ,i.NJMC as i_ZZNJ_NJMC--年级名称
      ,i.SSNF as i_ZZNJ_SSNF--所属年份
      ,i.NJZT as i_ZZNJ_NJZT--年级状态
      ,ib.MC as i_ZZNJ_NJZT_MC--名称
      ,j.SCHOOLID as j_ZYXX_SCHOOLID--学校名
      ,j.ZYDM as j_ZYXX_ZYDM--专业代码
      ,jb.ZYMLLB as j_ZYXX_ZYDM_ZYMLLB--专业目录类别
      ,jb.MC as j_ZYXX_ZYDM_MC--名称
      ,j.ZYMC as j_ZYXX_ZYMC--专业名称
      ,j.ZYYWMC as j_ZYXX_ZYYWMC--专业英文名称
      ,j.XZ as j_ZYXX_XZ--学制
      ,j.ZYFXMC as j_ZYXX_ZYFXMC--专业方向名称
      ,j.ZYJC as j_ZYXX_ZYJC--专业简称
      ,j.JLNY as j_ZYXX_JLNY--建立年月
      ,j.ZYJSS as j_ZYXX_ZYJSS--专业教师数
      ,j.KSJGH as j_ZYXX_KSJGH--开设机构号
      ,j.ZXF as j_ZYXX_ZXF--总学分
      ,j.SSZYML as j_ZYXX_SSZYML--所属专业目录
      ,jc.MC as j_ZYXX_SSZYML_MC--名称
      ,j.ZYLB as j_ZYXX_ZYLB--专业类别名称
      ,k.SCHOOLID as k_ZZBJ_SCHOOLID--学校名
      ,k.ZYXXID as k_ZZBJ_ZYXXID--专业基本信息
      ,k.ZZNJID as k_ZZBJ_ZZNJID--学校年级数据表
      ,k.XZBMC as k_ZZBJ_XZBMC--行政班名称
      ,k.JBNY as k_ZZBJ_JBNY--建班年月
      ,k.BZRGH as k_ZZBJ_BZRGH--班主任工号
      ,k.JSBH as k_ZZBJ_JSBH--教室编号
      ,k.NANSRS as k_ZZBJ_NANSRS--男生人数
      ,k.NVSRS as k_ZZBJ_NVSRS--女生人数
      ,k.ZRS as k_ZZBJ_ZRS--总人数
      ,k.BZXH as k_ZZBJ_BZXH--班长学号
      ,k.JXJH as k_ZZBJ_JXJH--教学计划
      ,k.JGH as k_ZZBJ_JGH--机构号
      ,k.XQDM as k_ZZBJ_XQDM--校区代码
      ,l.SCHOOLID as l_ZZNJ_SCHOOLID--学校名
      ,l.NJMC as l_ZZNJ_NJMC--年级名称
      ,l.SSNF as l_ZZNJ_SSNF--所属年份
      ,l.NJZT as l_ZZNJ_NJZT--年级状态
      ,lb.MC as l_ZZNJ_NJZT_MC--名称

FROM dbo.EDU_ZZXS_07_02_XJYD AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDLB AS d ON a.YDLBM = d.DM /*异动类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDYY AS e ON a.YDYYM = e.DM /*异动原因码*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS f ON a.JBRID = f.ID /*经办人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS g ON a.YZYID = g.ZYBH /*原专业ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS h ON a.YBH = h.XZBDM /*原班号*/ AND a.SCHOOLID = h.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS i ON a.YNJ = i.NJDM /*原年级*/ AND a.SCHOOLID = i.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS j ON a.XZYID = j.ZYBH /*现专业ID*/ AND a.SCHOOLID = j.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS k ON a.XBH = k.XZBDM /*现班号*/ AND a.SCHOOLID = k.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS l ON a.XNJ = l.NJDM /*现年级*/ AND a.SCHOOLID = l.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
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
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*学校评估类型*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS fb ON f.SFZJLXM = fb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fc ON f.XBM = fc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fe ON f.XXM = fe.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ff ON f.JKZKM = ff.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS fg ON f.HYZTM = fg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fh ON f.ZZMMM = fh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fi ON f.GATQWM = fi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fj ON f.GJDQM = fj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fk ON f.CSDXZQHM = fk.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fl ON f.XYZJM = fl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fm ON f.JZGHKSZDXZQHM = fm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS fn ON f.HKLBM = fn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS fo ON f.BZLBM = fo.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS fp ON f.JZGLBM = fp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS fq ON f.GWLBM = fq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fr ON f.SFJZJS = fr.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fs ON f.SFSSXJS = fs.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ft ON f.DQZTM = ft.DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS gb ON g.ZYDM = gb.DM /*专业代码*/ AND g.SSZYML = gb.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS gc ON g.SSZYML = gc.DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ib ON i.NJZT = ib.DM /*年级状态*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS jb ON j.ZYDM = jb.DM /*专业代码*/ AND j.SSZYML = jb.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS jc ON j.SSZYML = jc.DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS lb ON l.NJZT = lb.DM /*年级状态*/
GO
