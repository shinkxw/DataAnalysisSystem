
--教材报废表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_04_A06_JCBF_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[JCID]--教材ID
      ,a.[BFSL]--报废数量
      ,a.[BFYY]--报废原因
      ,a.[BFSJ]--报废时间
      ,a.[JSRID]--经手人ID
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键
      ,d.SCHOOLID as d_JCJBXX_SCHOOLID--教材基本信息表 学校ID
      ,d.JCDM as d_JCJBXX_JCDM--教材基本信息表 教材代码
      ,d.JCMC as d_JCJBXX_JCMC--教材基本信息表 教材名称
      ,d.CBH as d_JCJBXX_CBH--教材基本信息表 出版号
      ,d.DYZZ as d_JCJBXX_DYZZ--教材基本信息表 第一作者
      ,d.QTZZ as d_JCJBXX_QTZZ--教材基本信息表 其他作者
      ,d.BC as d_JCJBXX_BC--教材基本信息表 版次
      ,d.YC as d_JCJBXX_YC--教材基本信息表 印次
      ,d.JG as d_JCJBXX_JG--教材基本信息表 价格
      ,d.CBS as d_JCJBXX_CBS--教材基本信息表 出版社
      ,d.CBRQ as d_JCJBXX_CBRQ--教材基本信息表 出版日期
      ,d.SFYLXC as d_JCJBXX_SFYLXC--教材基本信息表 是否有练习册
      ,[db].MC as d_JCJBXX_SFYLXC_MC--是否标志代码表 名称
      ,d.SFYJCJF as d_JCJBXX_SFYJCJF--教材基本信息表 是否有教参教辅
      ,[dc].MC as d_JCJBXX_SFYJCJF_MC--是否标志代码表 名称
      ,d.NRJJ as d_JCJBXX_NRJJ--教材基本信息表 内容简介
      ,d.DQZT as d_JCJBXX_DQZT--教材基本信息表 当前状态
      ,d.ZDKC as d_JCJBXX_ZDKC--教材基本信息表 最低库存
      ,d.DQKC as d_JCJBXX_DQKC--教材基本信息表 当前库存
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,e.GH as e_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,e.XM as e_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,e.YWXM as e_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,e.XMPY as e_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,e.CYM as e_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,e.XBM as e_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[eb].MC as e_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,e.CSRQ as e_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,e.CSDM as e_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,[ec].MC as e_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,e.JG as e_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,e.MZM as e_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[ed].MZMC as e_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[ed].ZMDM as e_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,e.GJDQM as e_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[ee].GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[ee].EZMDM as e_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[ee].SZMDM as e_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[ef].MC as e_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,e.SFZJH as e_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,e.HYZKM as e_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,[eg].MC as e_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,e.GATQWM as e_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[eh].MC as e_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[eh].SM as e_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[ei].MC as e_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[ei].JC as e_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,e.JKZKM as e_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[ej].MC as e_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[ej].SM as e_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,e.XYZJM as e_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[ek].MC as e_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,e.XXM as e_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[el].MC as e_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[el].JC as e_JZGJBSJ_XXM_JC--血型代码表 简称
      ,e.ZP as e_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,e.SFZJYXQ as e_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,e.JGH as e_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,e.JTZZ as e_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,e.XZZ as e_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,e.HKSZD as e_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,e.HKXZM as e_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,[em].MC as e_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,e.XLM as e_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,[en].MC as e_JZGJBSJ_XLM_MC--学历代码 名称
      ,e.GZNY as e_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,e.LXNY as e_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,e.CJNY as e_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,e.BZLBM as e_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[eo].MC as e_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,e.DABH as e_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,e.DAWB as e_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,e.TXDZ as e_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,e.LXDH as e_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,e.YZBM as e_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,e.DZXX as e_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,e.ZYDZ as e_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,e.TC as e_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,e.GWZYM as e_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,[ep].MC as e_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,e.ZYRKXD as e_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,[eq].MC as e_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,e.JZGLXID as e_JZGJBSJ_JZGLXID--教职工基本数据子类表 教职工类型ID
      ,e.XQ as e_JZGJBSJ_XQ--教职工基本数据子类表 校区
      ,e.ZGZC as e_JZGJBSJ_ZGZC--教职工基本数据子类表 最高职称
      ,e.PDSJ as e_JZGJBSJ_PDSJ--教职工基本数据子类表 评定时间
      ,e.XPZC as e_JZGJBSJ_XPZC--教职工基本数据子类表 现品职称
      ,e.PDESJ as e_JZGJBSJ_PDESJ--教职工基本数据子类表 聘得时间
      ,e.RBXQDW as e_JZGJBSJ_RBXQDW--教职工基本数据子类表 入本校前单位
      ,e.ZZZT as e_JZGJBSJ_ZZZT--教职工基本数据子类表 在职状态
      ,e.SZBM as e_JZGJBSJ_SZBM--教职工基本数据子类表 所在部门
      ,e.XZZW as e_JZGJBSJ_XZZW--教职工基本数据子类表 行政职务
      ,e.DH as e_JZGJBSJ_DH--教职工基本数据子类表 短号
      ,e.PTHDJ as e_JZGJBSJ_PTHDJ--教职工基本数据子类表 普通话等级
      ,e.JSZH as e_JZGJBSJ_JSZH--教职工基本数据子类表 教师证号
      ,e.JSJDJ as e_JZGJBSJ_JSJDJ--教职工基本数据子类表 计算机等级
      ,e.GGJSDJ as e_JZGJBSJ_GGJSDJ--教职工基本数据子类表 骨干教师等级
      ,e.RJXK as e_JZGJBSJ_RJXK--教职工基本数据子类表 任教学科
      ,e.SFRSDL as e_JZGJBSJ_SFRSDL--教职工基本数据子类表 是否人事代理
      ,e.NDKH as e_JZGJBSJ_NDKH--教职工基本数据子类表 年度考核
      ,e.XXJL as e_JZGJBSJ_XXJL--教职工基本数据子类表 学习经历
      ,e.GZJL as e_JZGJBSJ_GZJL--教职工基本数据子类表 工作经历
      ,e.JYQK as e_JZGJBSJ_JYQK--教职工基本数据子类表 教研情况
      ,e.GZYLJCQK as e_JZGJBSJ_GZYLJCQK--教职工基本数据子类表 工作以来奖惩情况
      ,e.JTZYCY as e_JZGJBSJ_JTZYCY--教职工基本数据子类表 家庭主要成员
      ,e.BZ as e_JZGJBSJ_BZ--教职工基本数据子类表 备注
      ,e.DYXLCD as e_JZGJBSJ_DYXLCD--教职工基本数据子类表 第一学历程度
      ,e.DYXLFS as e_JZGJBSJ_DYXLFS--教职工基本数据子类表 第一学历方式
      ,e.DYXLXZ as e_JZGJBSJ_DYXLXZ--教职工基本数据子类表 第一学历学制
      ,e.DYXLXW as e_JZGJBSJ_DYXLXW--教职工基本数据子类表 第一学历学位
      ,e.DYXLBYSJ as e_JZGJBSJ_DYXLBYSJ--教职工基本数据子类表 第一学历毕业时间
      ,e.DYXLBYXX as e_JZGJBSJ_DYXLBYXX--教职工基本数据子类表 第一学历毕业学校
      ,e.DYXLZY as e_JZGJBSJ_DYXLZY--教职工基本数据子类表 第一学历专业
      ,e.ZGXLCD as e_JZGJBSJ_ZGXLCD--教职工基本数据子类表 最高学历程度
      ,e.ZGXLFS as e_JZGJBSJ_ZGXLFS--教职工基本数据子类表 最高学历方式
      ,e.ZGXLXZ as e_JZGJBSJ_ZGXLXZ--教职工基本数据子类表 最高学历学制
      ,e.ZGXLXW as e_JZGJBSJ_ZGXLXW--教职工基本数据子类表 最高学历学位
      ,e.ZGXLBYSJ as e_JZGJBSJ_ZGXLBYSJ--教职工基本数据子类表 最高学历毕业时间
      ,e.ZGXLBYXX as e_JZGJBSJ_ZGXLBYXX--教职工基本数据子类表 最高学历毕业学校
      ,e.ZGXLZY as e_JZGJBSJ_ZGXLZY--教职工基本数据子类表 最高学历专业

FROM dbo.EDU_ZXJX_04_A06_JCBF AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_04_01_JCJBXX AS d ON a.JCID = d.ID /*教材ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS e ON a.JSRID = e.ID /*经手人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [db] ON d.SFYLXC = [db].DM /*是否有练习册*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dc] ON d.SFYJCJF = [dc].DM /*是否有教参教辅*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [eb] ON e.XBM = [eb].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ec] ON e.CSDM = [ec].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ed] ON e.MZM = [ed].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ee] ON e.GJDQM = [ee].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ef] ON e.SFZJLXM = [ef].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [eg] ON e.HYZKM = [eg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [eh] ON e.GATQWM = [eh].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ei] ON e.ZZMMM = [ei].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ej] ON e.JKZKM = [ej].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ek] ON e.XYZJM = [ek].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [el] ON e.XXM = [el].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [em] ON e.HKXZM = [em].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [en] ON e.XLM = [en].DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [eo] ON e.BZLBM = [eo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [ep] ON e.GWZYM = [ep].DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [eq] ON e.ZYRKXD = [eq].DM /*主要任课学段*/
GO
