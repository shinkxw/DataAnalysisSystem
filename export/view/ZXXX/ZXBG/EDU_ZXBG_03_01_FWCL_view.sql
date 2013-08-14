
--发文处理子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_03_01_FWCL_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[NGRID]--拟稿人ID
      ,a.[QFRID]--签发人ID
      ,a.[DJRID]--登记人ID
      ,a.[DZRID]--打字人ID
      ,a.[JDRID]--校对人ID
      ,a.[NGRGH]--拟稿人工号
      ,a.[NGRQ]--拟稿日期
      ,a.[QFRGH]--签发人工号
      ,a.[QFRQ]--签发日期
      ,a.[FSFW]--发送范围
      ,a.[FSFSM]--发送方式码
      ,a.[DJRGH]--登记人工号
      ,a.[DJRQ]--登记日期
      ,a.[FWJS]--发文件数
      ,a.[GWFWRQ]--公文发文日期
      ,a.[CLQK]--处理情况
      ,a.[DZRGH]--打字人工号
      ,a.[JDRGH]--校对人工号
      ,a.[FZFSM]--封装方式码
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
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--学校名
      ,e.GH as e_JZGJBSJ_GH--工号
      ,e.XM as e_JZGJBSJ_XM--姓名
      ,e.YWXM as e_JZGJBSJ_YWXM--英文姓名
      ,e.XMPY as e_JZGJBSJ_XMPY--姓名拼音
      ,e.CYM as e_JZGJBSJ_CYM--曾用名
      ,e.XBM as e_JZGJBSJ_XBM--性别码
      ,eb.MC as e_JZGJBSJ_XBM_MC--名称
      ,e.CSRQ as e_JZGJBSJ_CSRQ--出生日期
      ,e.CSDM as e_JZGJBSJ_CSDM--出生地码
      ,ec.MC as e_JZGJBSJ_CSDM_MC--名称
      ,e.JG as e_JZGJBSJ_JG--籍贯
      ,e.MZM as e_JZGJBSJ_MZM--民族码
      ,ed.MZMC as e_JZGJBSJ_MZM_MZMC--民族名称
      ,ed.ZMDM as e_JZGJBSJ_MZM_ZMDM--字母代码
      ,e.GJDQM as e_JZGJBSJ_GJDQM--国籍/地区码
      ,ee.GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,ee.EZMDM as e_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,ee.SZMDM as e_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--身份证件类型码
      ,ef.MC as e_JZGJBSJ_SFZJLXM_MC--名称
      ,e.SFZJH as e_JZGJBSJ_SFZJH--身份证件号
      ,e.HYZKM as e_JZGJBSJ_HYZKM--婚姻状况码
      ,e.GATQWM as e_JZGJBSJ_GATQWM--港澳台侨外码
      ,eg.MC as e_JZGJBSJ_GATQWM_MC--名称
      ,eg.SM as e_JZGJBSJ_GATQWM_SM--说明
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--政治面貌码
      ,eh.MC as e_JZGJBSJ_ZZMMM_MC--名称
      ,eh.JC as e_JZGJBSJ_ZZMMM_JC--简称
      ,e.JKZKM as e_JZGJBSJ_JKZKM--健康状况码
      ,ei.MC as e_JZGJBSJ_JKZKM_MC--名称
      ,ei.SM as e_JZGJBSJ_JKZKM_SM--说明
      ,e.XYZJM as e_JZGJBSJ_XYZJM--信仰宗教码
      ,ej.MC as e_JZGJBSJ_XYZJM_MC--名称
      ,e.XXM as e_JZGJBSJ_XXM--血型码
      ,ek.MC as e_JZGJBSJ_XXM_MC--名称
      ,ek.JC as e_JZGJBSJ_XXM_JC--简称
      ,e.ZP as e_JZGJBSJ_ZP--照片
      ,e.SFZJYXQ as e_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,e.JGH as e_JZGJBSJ_JGH--机构号
      ,e.JTZZ as e_JZGJBSJ_JTZZ--家庭住址
      ,e.XZZ as e_JZGJBSJ_XZZ--现住址
      ,e.HKSZD as e_JZGJBSJ_HKSZD--户口所在地
      ,e.HKXZM as e_JZGJBSJ_HKXZM--户口性质码
      ,e.XLM as e_JZGJBSJ_XLM--学历码
      ,e.GZNY as e_JZGJBSJ_GZNY--参加工作年月
      ,e.LXNY as e_JZGJBSJ_LXNY--来校年月
      ,e.CJNY as e_JZGJBSJ_CJNY--从教年月
      ,e.BZLBM as e_JZGJBSJ_BZLBM--编制类别码
      ,e.DABH as e_JZGJBSJ_DABH--档案编号
      ,e.DAWB as e_JZGJBSJ_DAWB--档案文本
      ,e.TXDZ as e_JZGJBSJ_TXDZ--通信地址
      ,e.LXDH as e_JZGJBSJ_LXDH--联系电话
      ,e.YZBM as e_JZGJBSJ_YZBM--邮政编码
      ,e.DZXX as e_JZGJBSJ_DZXX--电子信箱
      ,e.ZYDZ as e_JZGJBSJ_ZYDZ--主页地址
      ,e.TC as e_JZGJBSJ_TC--特长
      ,e.GWZYM as e_JZGJBSJ_GWZYM--岗位职业码
      ,e.ZYRKXD as e_JZGJBSJ_ZYRKXD--主要任课学段
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--学校名
      ,f.GH as f_JZGJBSJ_GH--工号
      ,f.XM as f_JZGJBSJ_XM--姓名
      ,f.YWXM as f_JZGJBSJ_YWXM--英文姓名
      ,f.XMPY as f_JZGJBSJ_XMPY--姓名拼音
      ,f.CYM as f_JZGJBSJ_CYM--曾用名
      ,f.XBM as f_JZGJBSJ_XBM--性别码
      ,fb.MC as f_JZGJBSJ_XBM_MC--名称
      ,f.CSRQ as f_JZGJBSJ_CSRQ--出生日期
      ,f.CSDM as f_JZGJBSJ_CSDM--出生地码
      ,fc.MC as f_JZGJBSJ_CSDM_MC--名称
      ,f.JG as f_JZGJBSJ_JG--籍贯
      ,f.MZM as f_JZGJBSJ_MZM--民族码
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--民族名称
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--字母代码
      ,f.GJDQM as f_JZGJBSJ_GJDQM--国籍/地区码
      ,fe.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,fe.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,fe.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--身份证件类型码
      ,ff.MC as f_JZGJBSJ_SFZJLXM_MC--名称
      ,f.SFZJH as f_JZGJBSJ_SFZJH--身份证件号
      ,f.HYZKM as f_JZGJBSJ_HYZKM--婚姻状况码
      ,f.GATQWM as f_JZGJBSJ_GATQWM--港澳台侨外码
      ,fg.MC as f_JZGJBSJ_GATQWM_MC--名称
      ,fg.SM as f_JZGJBSJ_GATQWM_SM--说明
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--政治面貌码
      ,fh.MC as f_JZGJBSJ_ZZMMM_MC--名称
      ,fh.JC as f_JZGJBSJ_ZZMMM_JC--简称
      ,f.JKZKM as f_JZGJBSJ_JKZKM--健康状况码
      ,fi.MC as f_JZGJBSJ_JKZKM_MC--名称
      ,fi.SM as f_JZGJBSJ_JKZKM_SM--说明
      ,f.XYZJM as f_JZGJBSJ_XYZJM--信仰宗教码
      ,fj.MC as f_JZGJBSJ_XYZJM_MC--名称
      ,f.XXM as f_JZGJBSJ_XXM--血型码
      ,fk.MC as f_JZGJBSJ_XXM_MC--名称
      ,fk.JC as f_JZGJBSJ_XXM_JC--简称
      ,f.ZP as f_JZGJBSJ_ZP--照片
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,f.JGH as f_JZGJBSJ_JGH--机构号
      ,f.JTZZ as f_JZGJBSJ_JTZZ--家庭住址
      ,f.XZZ as f_JZGJBSJ_XZZ--现住址
      ,f.HKSZD as f_JZGJBSJ_HKSZD--户口所在地
      ,f.HKXZM as f_JZGJBSJ_HKXZM--户口性质码
      ,f.XLM as f_JZGJBSJ_XLM--学历码
      ,f.GZNY as f_JZGJBSJ_GZNY--参加工作年月
      ,f.LXNY as f_JZGJBSJ_LXNY--来校年月
      ,f.CJNY as f_JZGJBSJ_CJNY--从教年月
      ,f.BZLBM as f_JZGJBSJ_BZLBM--编制类别码
      ,f.DABH as f_JZGJBSJ_DABH--档案编号
      ,f.DAWB as f_JZGJBSJ_DAWB--档案文本
      ,f.TXDZ as f_JZGJBSJ_TXDZ--通信地址
      ,f.LXDH as f_JZGJBSJ_LXDH--联系电话
      ,f.YZBM as f_JZGJBSJ_YZBM--邮政编码
      ,f.DZXX as f_JZGJBSJ_DZXX--电子信箱
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--主页地址
      ,f.TC as f_JZGJBSJ_TC--特长
      ,f.GWZYM as f_JZGJBSJ_GWZYM--岗位职业码
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--主要任课学段
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--学校名
      ,g.GH as g_JZGJBSJ_GH--工号
      ,g.XM as g_JZGJBSJ_XM--姓名
      ,g.YWXM as g_JZGJBSJ_YWXM--英文姓名
      ,g.XMPY as g_JZGJBSJ_XMPY--姓名拼音
      ,g.CYM as g_JZGJBSJ_CYM--曾用名
      ,g.XBM as g_JZGJBSJ_XBM--性别码
      ,gb.MC as g_JZGJBSJ_XBM_MC--名称
      ,g.CSRQ as g_JZGJBSJ_CSRQ--出生日期
      ,g.CSDM as g_JZGJBSJ_CSDM--出生地码
      ,gc.MC as g_JZGJBSJ_CSDM_MC--名称
      ,g.JG as g_JZGJBSJ_JG--籍贯
      ,g.MZM as g_JZGJBSJ_MZM--民族码
      ,gd.MZMC as g_JZGJBSJ_MZM_MZMC--民族名称
      ,gd.ZMDM as g_JZGJBSJ_MZM_ZMDM--字母代码
      ,g.GJDQM as g_JZGJBSJ_GJDQM--国籍/地区码
      ,ge.GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,ge.EZMDM as g_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,ge.SZMDM as g_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--身份证件类型码
      ,gf.MC as g_JZGJBSJ_SFZJLXM_MC--名称
      ,g.SFZJH as g_JZGJBSJ_SFZJH--身份证件号
      ,g.HYZKM as g_JZGJBSJ_HYZKM--婚姻状况码
      ,g.GATQWM as g_JZGJBSJ_GATQWM--港澳台侨外码
      ,gg.MC as g_JZGJBSJ_GATQWM_MC--名称
      ,gg.SM as g_JZGJBSJ_GATQWM_SM--说明
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--政治面貌码
      ,gh.MC as g_JZGJBSJ_ZZMMM_MC--名称
      ,gh.JC as g_JZGJBSJ_ZZMMM_JC--简称
      ,g.JKZKM as g_JZGJBSJ_JKZKM--健康状况码
      ,gi.MC as g_JZGJBSJ_JKZKM_MC--名称
      ,gi.SM as g_JZGJBSJ_JKZKM_SM--说明
      ,g.XYZJM as g_JZGJBSJ_XYZJM--信仰宗教码
      ,gj.MC as g_JZGJBSJ_XYZJM_MC--名称
      ,g.XXM as g_JZGJBSJ_XXM--血型码
      ,gk.MC as g_JZGJBSJ_XXM_MC--名称
      ,gk.JC as g_JZGJBSJ_XXM_JC--简称
      ,g.ZP as g_JZGJBSJ_ZP--照片
      ,g.SFZJYXQ as g_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,g.JGH as g_JZGJBSJ_JGH--机构号
      ,g.JTZZ as g_JZGJBSJ_JTZZ--家庭住址
      ,g.XZZ as g_JZGJBSJ_XZZ--现住址
      ,g.HKSZD as g_JZGJBSJ_HKSZD--户口所在地
      ,g.HKXZM as g_JZGJBSJ_HKXZM--户口性质码
      ,g.XLM as g_JZGJBSJ_XLM--学历码
      ,g.GZNY as g_JZGJBSJ_GZNY--参加工作年月
      ,g.LXNY as g_JZGJBSJ_LXNY--来校年月
      ,g.CJNY as g_JZGJBSJ_CJNY--从教年月
      ,g.BZLBM as g_JZGJBSJ_BZLBM--编制类别码
      ,g.DABH as g_JZGJBSJ_DABH--档案编号
      ,g.DAWB as g_JZGJBSJ_DAWB--档案文本
      ,g.TXDZ as g_JZGJBSJ_TXDZ--通信地址
      ,g.LXDH as g_JZGJBSJ_LXDH--联系电话
      ,g.YZBM as g_JZGJBSJ_YZBM--邮政编码
      ,g.DZXX as g_JZGJBSJ_DZXX--电子信箱
      ,g.ZYDZ as g_JZGJBSJ_ZYDZ--主页地址
      ,g.TC as g_JZGJBSJ_TC--特长
      ,g.GWZYM as g_JZGJBSJ_GWZYM--岗位职业码
      ,g.ZYRKXD as g_JZGJBSJ_ZYRKXD--主要任课学段
      ,h.SCHOOLID as h_JZGJBSJ_SCHOOLID--学校名
      ,h.GH as h_JZGJBSJ_GH--工号
      ,h.XM as h_JZGJBSJ_XM--姓名
      ,h.YWXM as h_JZGJBSJ_YWXM--英文姓名
      ,h.XMPY as h_JZGJBSJ_XMPY--姓名拼音
      ,h.CYM as h_JZGJBSJ_CYM--曾用名
      ,h.XBM as h_JZGJBSJ_XBM--性别码
      ,hb.MC as h_JZGJBSJ_XBM_MC--名称
      ,h.CSRQ as h_JZGJBSJ_CSRQ--出生日期
      ,h.CSDM as h_JZGJBSJ_CSDM--出生地码
      ,hc.MC as h_JZGJBSJ_CSDM_MC--名称
      ,h.JG as h_JZGJBSJ_JG--籍贯
      ,h.MZM as h_JZGJBSJ_MZM--民族码
      ,hd.MZMC as h_JZGJBSJ_MZM_MZMC--民族名称
      ,hd.ZMDM as h_JZGJBSJ_MZM_ZMDM--字母代码
      ,h.GJDQM as h_JZGJBSJ_GJDQM--国籍/地区码
      ,he.GJDQMCJC as h_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,he.EZMDM as h_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,he.SZMDM as h_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,h.SFZJLXM as h_JZGJBSJ_SFZJLXM--身份证件类型码
      ,hf.MC as h_JZGJBSJ_SFZJLXM_MC--名称
      ,h.SFZJH as h_JZGJBSJ_SFZJH--身份证件号
      ,h.HYZKM as h_JZGJBSJ_HYZKM--婚姻状况码
      ,h.GATQWM as h_JZGJBSJ_GATQWM--港澳台侨外码
      ,hg.MC as h_JZGJBSJ_GATQWM_MC--名称
      ,hg.SM as h_JZGJBSJ_GATQWM_SM--说明
      ,h.ZZMMM as h_JZGJBSJ_ZZMMM--政治面貌码
      ,hh.MC as h_JZGJBSJ_ZZMMM_MC--名称
      ,hh.JC as h_JZGJBSJ_ZZMMM_JC--简称
      ,h.JKZKM as h_JZGJBSJ_JKZKM--健康状况码
      ,hi.MC as h_JZGJBSJ_JKZKM_MC--名称
      ,hi.SM as h_JZGJBSJ_JKZKM_SM--说明
      ,h.XYZJM as h_JZGJBSJ_XYZJM--信仰宗教码
      ,hj.MC as h_JZGJBSJ_XYZJM_MC--名称
      ,h.XXM as h_JZGJBSJ_XXM--血型码
      ,hk.MC as h_JZGJBSJ_XXM_MC--名称
      ,hk.JC as h_JZGJBSJ_XXM_JC--简称
      ,h.ZP as h_JZGJBSJ_ZP--照片
      ,h.SFZJYXQ as h_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,h.JGH as h_JZGJBSJ_JGH--机构号
      ,h.JTZZ as h_JZGJBSJ_JTZZ--家庭住址
      ,h.XZZ as h_JZGJBSJ_XZZ--现住址
      ,h.HKSZD as h_JZGJBSJ_HKSZD--户口所在地
      ,h.HKXZM as h_JZGJBSJ_HKXZM--户口性质码
      ,h.XLM as h_JZGJBSJ_XLM--学历码
      ,h.GZNY as h_JZGJBSJ_GZNY--参加工作年月
      ,h.LXNY as h_JZGJBSJ_LXNY--来校年月
      ,h.CJNY as h_JZGJBSJ_CJNY--从教年月
      ,h.BZLBM as h_JZGJBSJ_BZLBM--编制类别码
      ,h.DABH as h_JZGJBSJ_DABH--档案编号
      ,h.DAWB as h_JZGJBSJ_DAWB--档案文本
      ,h.TXDZ as h_JZGJBSJ_TXDZ--通信地址
      ,h.LXDH as h_JZGJBSJ_LXDH--联系电话
      ,h.YZBM as h_JZGJBSJ_YZBM--邮政编码
      ,h.DZXX as h_JZGJBSJ_DZXX--电子信箱
      ,h.ZYDZ as h_JZGJBSJ_ZYDZ--主页地址
      ,h.TC as h_JZGJBSJ_TC--特长
      ,h.GWZYM as h_JZGJBSJ_GWZYM--岗位职业码
      ,h.ZYRKXD as h_JZGJBSJ_ZYRKXD--主要任课学段
      ,i.MC as i_FSFS_MC--名称
      ,j.MC as j_GWFZFS_MC--名称

FROM dbo.EDU_ZXBG_03_01_FWCL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.NGRID = d.ID /*拟稿人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS e ON a.QFRID = e.ID /*签发人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.DJRID = f.ID /*登记人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS g ON a.DZRID = g.ID /*打字人ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS h ON a.JDRID = h.ID /*校对人ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_FSFS AS i ON a.FSFSM = i.DM /*发送方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWFZFS AS j ON a.FZFSM = j.DM /*封装方式码*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_XX AS dk ON d.XXM = dk.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS eb ON e.XBM = eb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ec ON e.CSDM = ec.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ed ON e.MZM = ed.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ee ON e.GJDQM = ee.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ef ON e.SFZJLXM = ef.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS eg ON e.GATQWM = eg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS eh ON e.ZZMMM = eh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ei ON e.JKZKM = ei.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ej ON e.XYZJM = ej.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ek ON e.XXM = ek.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fb ON f.XBM = fb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fc ON f.CSDM = fc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fe ON f.GJDQM = fe.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ff ON f.SFZJLXM = ff.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fg ON f.GATQWM = fg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fh ON f.ZZMMM = fh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS fi ON f.JKZKM = fi.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fj ON f.XYZJM = fj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fk ON f.XXM = fk.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS gb ON g.XBM = gb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gc ON g.CSDM = gc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS gd ON g.MZM = gd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ge ON g.GJDQM = ge.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS gf ON g.SFZJLXM = gf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS gg ON g.GATQWM = gg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS gh ON g.ZZMMM = gh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS gi ON g.JKZKM = gi.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS gj ON g.XYZJM = gj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS gk ON g.XXM = gk.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS hb ON h.XBM = hb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS hc ON h.CSDM = hc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS hd ON h.MZM = hd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS he ON h.GJDQM = he.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS hf ON h.SFZJLXM = hf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS hg ON h.GATQWM = hg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS hh ON h.ZZMMM = hh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS hi ON h.JKZKM = hi.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS hj ON h.XYZJM = hj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS hk ON h.XXM = hk.DM /*血型码*/
GO
