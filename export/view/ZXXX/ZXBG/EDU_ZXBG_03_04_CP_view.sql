
--呈批子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_03_04_CP_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[PFRID]--批复人ID
      ,a.[PFR]--批复人
      ,a.[PFDW]--批复单位
      ,a.[PFYJ]--批复意见
      ,a.[PFRQ]--批复日期
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件文号
      ,c.BT as c_WJJBSJ_BT--标题
      ,c.ZTC as c_WJJBSJ_ZTC--主题词
      ,c.MJM as c_WJJBSJ_MJM--密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--名称
      ,c.YS as c_WJJBSJ_YS--页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--说明
      ,c.ZW as c_WJJBSJ_ZW--正文
      ,c.FJ as c_WJJBSJ_FJ--附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--抄送单位
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--学校名
      ,d.GH as d_JZGJBSJ_GH--工号
      ,d.XM as d_JZGJBSJ_XM--姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--曾用名
      ,d.XBM as d_JZGJBSJ_XBM--性别码
      ,db.MC as d_JZGJBSJ_XBM_MC--名称
      ,d.CSRQ as d_JZGJBSJ_CSRQ--出生日期
      ,d.CSDM as d_JZGJBSJ_CSDM--出生地码
      ,dc.MC as d_JZGJBSJ_CSDM_MC--名称
      ,d.JG as d_JZGJBSJ_JG--籍贯
      ,d.MZM as d_JZGJBSJ_MZM--民族码
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--民族名称
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--字母代码
      ,d.GJDQM as d_JZGJBSJ_GJDQM--国籍/地区码
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--身份证件类型码
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--身份证件号
      ,d.HYZKM as d_JZGJBSJ_HYZKM--婚姻状况码
      ,d.GATQWM as d_JZGJBSJ_GATQWM--港澳台侨外码
      ,dg.MC as d_JZGJBSJ_GATQWM_MC--名称
      ,dg.SM as d_JZGJBSJ_GATQWM_SM--说明
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--政治面貌码
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--名称
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--健康状况码
      ,di.MC as d_JZGJBSJ_JKZKM_MC--名称
      ,di.SM as d_JZGJBSJ_JKZKM_SM--说明
      ,d.XYZJM as d_JZGJBSJ_XYZJM--信仰宗教码
      ,dj.MC as d_JZGJBSJ_XYZJM_MC--名称
      ,d.XXM as d_JZGJBSJ_XXM--血型码
      ,dk.MC as d_JZGJBSJ_XXM_MC--名称
      ,dk.JC as d_JZGJBSJ_XXM_JC--简称
      ,d.ZP as d_JZGJBSJ_ZP--照片
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,d.JGH as d_JZGJBSJ_JGH--机构号
      ,d.JTZZ as d_JZGJBSJ_JTZZ--家庭住址
      ,d.XZZ as d_JZGJBSJ_XZZ--现住址
      ,d.HKSZD as d_JZGJBSJ_HKSZD--户口所在地
      ,d.HKXZM as d_JZGJBSJ_HKXZM--户口性质码
      ,d.XLM as d_JZGJBSJ_XLM--学历码
      ,d.GZNY as d_JZGJBSJ_GZNY--参加工作年月
      ,d.LXNY as d_JZGJBSJ_LXNY--来校年月
      ,d.CJNY as d_JZGJBSJ_CJNY--从教年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--编制类别码
      ,d.DABH as d_JZGJBSJ_DABH--档案编号
      ,d.DAWB as d_JZGJBSJ_DAWB--档案文本
      ,d.TXDZ as d_JZGJBSJ_TXDZ--通信地址
      ,d.LXDH as d_JZGJBSJ_LXDH--联系电话
      ,d.YZBM as d_JZGJBSJ_YZBM--邮政编码
      ,d.DZXX as d_JZGJBSJ_DZXX--电子信箱
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--主页地址
      ,d.TC as d_JZGJBSJ_TC--特长
      ,d.GWZYM as d_JZGJBSJ_GWZYM--岗位职业码
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--主要任课学段

FROM dbo.EDU_ZXBG_03_04_CP AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.PFRID = d.ID /*批复人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dg ON d.GATQWM = dg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS di ON d.JKZKM = di.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dj ON d.XYZJM = dj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dk ON d.XXM = dk.DM /*血型码*/
GO
