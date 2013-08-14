
--学生扩展数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_01_A01_XSXX_DISP]
AS
SELECT a.[XSXXID]--学生信息数据表
      ,a.[SCHOOLID]--学校名
      ,a.[ZYXXID]--专业基本信息
      ,a.[XNID]--学年
      ,a.[ZZXQID]--学期表
      ,a.[JTDZQH]--家庭地址区划码
      ,a.[JTXXDZ]--家庭详细地址
      ,a.[HJXXDZ]--户籍详细地址
      ,a.[HJXZ]--户籍性质代码
      ,a.[BYJX]--不宜军训
      ,a.[CSBZR]--初三班主任
      ,a.[DRZW]--曾担任何种职务
      ,a.[YYDR]--愿意担任班干部，何职
      ,a.[BZ]--备注
      ,a.[BYLX]--毕业生类型
      ,a.[XSLX]--学生类型
      ,a.[SFZS]--是否住宿
      ,a.[XSBMSJ]--学生报名时间
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
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--学校名
      ,d.ZYDM as d_ZYXX_ZYDM--专业代码
      ,db.ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--专业目录类别
      ,db.MC as d_ZYXX_ZYDM_MC--名称
      ,d.ZYMC as d_ZYXX_ZYMC--专业名称
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--专业英文名称
      ,d.XZ as d_ZYXX_XZ--学制
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--专业方向名称
      ,d.ZYJC as d_ZYXX_ZYJC--专业简称
      ,d.JLNY as d_ZYXX_JLNY--建立年月
      ,d.ZYJSS as d_ZYXX_ZYJSS--专业教师数
      ,d.KSJGH as d_ZYXX_KSJGH--开设机构号
      ,d.ZXF as d_ZYXX_ZXF--总学分
      ,d.SSZYML as d_ZYXX_SSZYML--所属专业目录
      ,dc.MC as d_ZYXX_SSZYML_MC--名称
      ,d.ZYLB as d_ZYXX_ZYLB--专业类别名称
      ,e.SCHOOLID as e_XN_SCHOOLID--学校名
      ,e.XN as e_XN_XN--学年
      ,f.SchoolID as f_ZZXQ_SchoolID--学校名
      ,f.XNID as f_ZZXQ_XNID--学年
      ,f.XQM as f_ZZXQ_XQM--学期码
      ,fb.MC as f_ZZXQ_XQM_MC--名称
      ,f.XQMC as f_ZZXQ_XQMC--学期名称
      ,f.XQKSRQ as f_ZZXQ_XQKSRQ--学期开始日期
      ,f.XQJSRQ as f_ZZXQ_XQJSRQ--学期结束日期
      ,g.MC as g_ZHRMGHGXZQH_MC--名称
      ,h.MC as h_HJXZ_MC--名称
      ,i.MC as i_SFBZ_MC--名称
      ,j.MC as j_BYSLX_MC--名称
      ,k.MC as k_XSLB_MC--名称
      ,k.SM as k_XSLB_SM--说明
      ,l.MC as l_SFBZ_MC--名称

FROM dbo.EDU_ZZXS_01_A01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生信息数据表*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*专业基本信息*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS e ON a.XNID = e.ID /*学年*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_03_ZZXQ AS f ON a.ZZXQID = f.ID /*学期表*/ AND a.SCHOOLID = f.SchoolID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS g ON a.JTDZQH = g.DM /*家庭地址区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_HJXZ AS h ON a.HJXZ = h.DM /*户籍性质代码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS i ON a.BYJX = i.DM /*不宜军训*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_BYSLX AS j ON a.BYLX = j.DM /*毕业生类型*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS k ON a.XSLX = k.DM /*学生类型*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS l ON a.SFZS = l.DM /*是否住宿*/ LEFT OUTER JOIN
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
      dbo.EDU_ZJ_ZJZY AS db ON d.ZYDM = db.DM /*专业代码*/ AND d.SSZYML = db.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS dc ON d.SSZYML = dc.DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS fb ON f.XQM = fb.DM /*学期码*/
GO
