
--教师过程性评价记录表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_10_A01_JSGCXPJJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期
      ,a.[XLZID]--考评周
      ,a.[JSID]--教师
      ,a.[PJXMID]--考评项目
      ,a.[KHF]--考核分
      ,a.[FLM]--成绩
      ,a.[LRSJ]--录入时间
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键
      ,d.SCHOOLID as d_XLZ_SCHOOLID--校历周表 学校ID
      ,d.XLID as d_XLZ_XLID--校历周表 校历ID
      ,d.NAME as d_XLZ_NAME--校历周表 校历周名称
      ,d.STARTDAY as d_XLZ_STARTDAY--校历周表 开始日期
      ,d.ENDDAY as d_XLZ_ENDDAY--校历周表 结束日期
      ,d.ZJH as d_XLZ_ZJH--校历周表 周计划
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
      ,f.SCHOOLID as f_JSGCXPJXM_SCHOOLID--教师过程性评价考核项目表 学校ID
      ,f.XMMC as f_JSGCXPJXM_XMMC--教师过程性评价考核项目表 项目名称
      ,f.DWMC as f_JSGCXPJXM_DWMC--教师过程性评价考核项目表 单位
      ,f.ZGF as f_JSGCXPJXM_ZGF--教师过程性评价考核项目表 考核最高分
      ,f.QZ as f_JSGCXPJXM_QZ--教师过程性评价考核项目表 权重
      ,f.SFTJ as f_JSGCXPJXM_SFTJ--教师过程性评价考核项目表 是否统计
      ,f.SJLY as f_JSGCXPJXM_SJLY--教师过程性评价考核项目表 数据来源

FROM dbo.EDU_ZXJX_10_A01_JSGCXPJJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS d ON a.XLZID = d.ID /*考评周*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS e ON a.JSID = e.ID /*教师*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_10_A02_JSGCXPJXM AS f ON a.PJXMID = f.ID /*考评项目*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/ LEFT OUTER JOIN
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
