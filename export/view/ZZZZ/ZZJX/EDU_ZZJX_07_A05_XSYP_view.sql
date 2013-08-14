
--学生应聘表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A05_XSYP_DISP]
AS
SELECT a.[ID]--学生应聘信息ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XSXXID]--学生信息ID
      ,a.[QYID]--企业ID
      ,a.[GWID]--实习岗位ID
      ,a.[XXSH]--学校审核
      ,a.[QYSH]--企业审核
      ,b.XXDM as b_ZZXX_XXDM--学校代码
      ,b.XXMC as b_ZZXX_XXMC--学校名称
      ,b.XXYWMC as b_ZZXX_XXYWMC--学校英文名称
      ,b.XXJBZM as b_ZZXX_XXJBZM--学校举办者码
      ,bb.MC as b_ZZXX_XXJBZM_MC--名称
      ,bb.SM as b_ZZXX_XXJBZM_SM--说明
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--学校主管部门码
      ,bc.MC as b_ZZXX_XXZGBMM_MC--名称
      ,bc.SM as b_ZZXX_XXZGBMM_SM--说明
      ,b.XXDZ as b_ZZXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZZXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZZXX_XZQHM--行政区划码
      ,bd.MC as b_ZZXX_XZQHM_MC--名称
      ,b.JXNY as b_ZZXX_JXNY--建校年月
      ,b.XQR as b_ZZXX_XQR--校庆日
      ,b.CLBJ as b_ZZXX_CLBJ--成立背景
      ,b.LSYG as b_ZZXX_LSYG--历史沿革
      ,b.XXXQS as b_ZZXX_XXXQS--学校校区数
      ,b.XXPGLX as b_ZZXX_XXPGLX--学校评估类型
      ,be.MC as b_ZZXX_XXPGLX_MC--名称
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--学校评估情况说明
      ,b.ZYDZ as b_ZZXX_ZYDZ--主页地址
      ,b.FDDBRH as b_ZZXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZZXX_FRZSH--法人证书号
      ,b.LXDH as b_ZZXX_LXDH--联系电话
      ,b.CZDH as b_ZZXX_CZDH--传真电话
      ,b.DZXX as b_ZZXX_DZXX--电子信箱
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学校名
      ,c.XH as c_XSXX_XH--学号
      ,c.XM as c_XSXX_XM--姓名
      ,c.YWXM as c_XSXX_YWXM--英文姓名
      ,c.XMPY as c_XSXX_XMPY--姓名拼音
      ,c.CYM as c_XSXX_CYM--曾用名
      ,c.SFZJLXM as c_XSXX_SFZJLXM--身份证件类型码
      ,cb.MC as c_XSXX_SFZJLXM_MC--名称
      ,c.SFZJH as c_XSXX_SFZJH--身份证件号
      ,c.XBM as c_XSXX_XBM--性别码
      ,cc.MC as c_XSXX_XBM_MC--名称
      ,c.XXM as c_XSXX_XXM--血型码
      ,cd.MC as c_XSXX_XXM_MC--名称
      ,cd.JC as c_XSXX_XXM_JC--简称
      ,c.CSRQ as c_XSXX_CSRQ--出生日期
      ,c.CSDM as c_XSXX_CSDM--出生地码
      ,ce.MC as c_XSXX_CSDM_MC--名称
      ,c.JG as c_XSXX_JG--籍贯
      ,c.MZM as c_XSXX_MZM--民族码
      ,cf.MZMC as c_XSXX_MZM_MZMC--民族名称
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--字母代码
      ,c.HYZKM as c_XSXX_HYZKM--婚姻状况码
      ,cg.MC as c_XSXX_HYZKM_MC--名称
      ,c.XYZJM as c_XSXX_XYZJM--信仰宗教码
      ,ch.MC as c_XSXX_XYZJM_MC--名称
      ,c.GATQWM as c_XSXX_GATQWM--港澳台侨外码
      ,ci.MC as c_XSXX_GATQWM_MC--名称
      ,ci.SM as c_XSXX_GATQWM_SM--说明
      ,c.JKZKM as c_XSXX_JKZKM--健康状况码
      ,cj.MC as c_XSXX_JKZKM_MC--名称
      ,cj.SM as c_XSXX_JKZKM_SM--说明
      ,c.ZZMMM as c_XSXX_ZZMMM--政治面貌码
      ,ck.MC as c_XSXX_ZZMMM_MC--名称
      ,ck.JC as c_XSXX_ZZMMM_JC--简称
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--户口所在地行政区划码
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--名称
      ,c.HKLBM as c_XSXX_HKLBM--户口类别码
      ,cm.MC as c_XSXX_HKLBM_MC--名称
      ,c.SFSLDRK as c_XSXX_SFSLDRK--是否是流动人口
      ,cn.MC as c_XSXX_SFSLDRK_MC--名称
      ,c.GJDQM as c_XSXX_GJDQM--国籍/地区
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--国家/地区名称简称
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--二字母代码
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--三字母代码
      ,c.TC as c_XSXX_TC--特长
      ,c.XSLXDH as c_XSXX_XSLXDH--学生联系电话
      ,c.WLDZ as c_XSXX_WLDZ--网络地址
      ,c.JSTXH as c_XSXX_JSTXH--即时通讯号
      ,c.DZXX as c_XSXX_DZXX--电子信箱
      ,c.ZP as c_XSXX_ZP--照片(路径)
      ,d.SCHOOLID as d_XWSXJDXX_SCHOOLID--学校名
      ,d.QYBH as d_XWSXJDXX_QYBH--企业编号
      ,d.JDHZHTBH as d_XWSXJDXX_JDHZHTBH--基地合作合同编号
      ,d.JDHZHTMC as d_XWSXJDXX_JDHZHTMC--基地合作合同名称
      ,d.JDLBM as d_XWSXJDXX_JDLBM--基地类别码
      ,db.MC as d_XWSXJDXX_JDLBM_MC--名称
      ,d.DWMC as d_XWSXJDXX_DWMC--单位名称
      ,d.QYXZQ as d_XWSXJDXX_QYXZQ--企业行政区
      ,dc.MC as d_XWSXJDXX_QYXZQ_MC--名称
      ,d.QYDZ as d_XWSXJDXX_QYDZ--企业地址
      ,d.QYXZ as d_XWSXJDXX_QYXZ--企业性质
      ,dd.MC as d_XWSXJDXX_QYXZ_MC--名称
      ,d.FRDB as d_XWSXJDXX_FRDB--法人代表
      ,d.QYLXR as d_XWSXJDXX_QYLXR--企业联系人
      ,d.QYYZBM as d_XWSXJDXX_QYYZBM--企业邮政编码
      ,d.QYLXDH as d_XWSXJDXX_QYLXDH--企业联系电话
      ,d.QYYYZZ as d_XWSXJDXX_QYYYZZ--企业营业执照
      ,d.QYLX as d_XWSXJDXX_QYLX--企业类型
      ,d.QYRS as d_XWSXJDXX_QYRS--企业人数
      ,d.QYZCZJ as d_XWSXJDXX_QYZCZJ--企业注册资金
      ,d.QYCZ as d_XWSXJDXX_QYCZ--企业传真
      ,d.QYFZR as d_XWSXJDXX_QYFZR--企业负责人
      ,d.FZRZW as d_XWSXJDXX_FZRZW--负责人职位
      ,d.FZRLXDH as d_XWSXJDXX_FZRLXDH--负责人联系电话
      ,d.QYYXDZ as d_XWSXJDXX_QYYXDZ--企业邮箱地址
      ,d.QYQQ as d_XWSXJDXX_QYQQ--企业QQ
      ,d.QYMSN as d_XWSXJDXX_QYMSN--企业MSN
      ,d.QYWZ as d_XWSXJDXX_QYWZ--企业网址
      ,d.QYJJ as d_XWSXJDXX_QYJJ--企业简介
      ,d.SHZT as d_XWSXJDXX_SHZT--审核状态
      ,e.SCHOOLID as e_SXGW_SCHOOLID--学校ID
      ,e.QYID as e_SXGW_QYID--企业ID
      ,e.GWMC as e_SXGW_GWMC--岗位名称
      ,e.QYMC as e_SXGW_QYMC--企业名称
      ,e.ZPKSSJ as e_SXGW_ZPKSSJ--招聘开始时间
      ,e.ZPJSSJ as e_SXGW_ZPJSSJ--招聘结束时间
      ,e.GZXS as e_SXGW_GZXS--工作形式
      ,e.XBYQ as e_SXGW_XBYQ--性别要求
      ,e.GWXC as e_SXGW_GWXC--岗位薪酬
      ,e.WYYQ as e_SXGW_WYYQ--外语要求
      ,e.GZDD as e_SXGW_GZDD--工作地点
      ,e.JSJSP as e_SXGW_JSJSP--计算机水平
      ,e.ZPRS as e_SXGW_ZPRS--招聘人数
      ,e.XLYQ as e_SXGW_XLYQ--学历要求
      ,e.ZYYQ as e_SXGW_ZYYQ--专业要求
      ,e.NLYQ as e_SXGW_NLYQ--年龄要求
      ,e.GWJJ as e_SXGW_GWJJ--岗位简介
      ,e.JBQK as e_SXGW_JBQK--基本情况
      ,e.GZJY as e_SXGW_GZJY--工作经验
      ,e.SHZT as e_SXGW_SHZT--审核状态
      ,e.GWZT as e_SXGW_GWZT--岗位状态

FROM dbo.EDU_ZZJX_07_A05_XSYP AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*学生信息ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS d ON a.QYID = d.ID /*企业ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS e ON a.GWID = e.ID /*实习岗位ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*学校评估类型*/ LEFT OUTER JOIN
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
