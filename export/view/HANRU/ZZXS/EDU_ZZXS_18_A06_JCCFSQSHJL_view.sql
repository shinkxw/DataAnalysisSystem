
--解除处分申请审核记录表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_18_A06_JCCFSQSHJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XSCFXXID]--学生处分信息ID
      ,a.[JCCFSQID]--解除处分申请ID
      ,a.[BZID]--步骤ID
      ,a.[SHJG]--审核结果
      ,a.[SHSJ]--审核时间
      ,a.[SHJSID]--审核教师ID
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_XSCFXX_SCHOOLID--学生处分信息表 学校
      ,c.XSXXID as c_XSCFXX_XSXXID--学生处分信息表 学生ID
      ,c.WJLXID as c_XSCFXX_WJLXID--学生处分信息表 违纪类型ID
      ,c.XQID as c_XSCFXX_XQID--学生处分信息表 学期ID
      ,c.DQZT as c_XSCFXX_DQZT--学生处分信息表 当前状态
      ,c.WJQK as c_XSCFXX_WJQK--学生处分信息表 违纪情况
      ,c.JYCFLXID as c_XSCFXX_JYCFLXID--学生处分信息表 建议处分类型ID
      ,c.SBSJ as c_XSCFXX_SBSJ--学生处分信息表 上报时间
      ,c.SBJSID as c_XSCFXX_SBJSID--学生处分信息表 上报教师ID
      ,c.ZZCFLXID as c_XSCFXX_ZZCFLXID--学生处分信息表 最终处分类型ID
      ,c.SHSJ as c_XSCFXX_SHSJ--学生处分信息表 审核时间
      ,c.SHJSID as c_XSCFXX_SHJSID--学生处分信息表 审核教师ID
      ,c.BZ as c_XSCFXX_BZ--学生处分信息表 备注
      ,c.FSSJ as c_XSCFXX_FSSJ--学生处分信息表 发生时间
      ,c.JCSJ as c_XSCFXX_JCSJ--学生处分信息表 解除时间
      ,c.JCJSID as c_XSCFXX_JCJSID--学生处分信息表 解除教师ID
      ,d.SCHOOLID as d_JCCFSQ_SCHOOLID--解除处分申请表 学校
      ,d.XSCFXXID as d_JCCFSQ_XSCFXXID--解除处分申请表 学生处分信息ID
      ,d.JCYY as d_JCCFSQ_JCYY--解除处分申请表 解除原因
      ,d.YJTL as d_JCCFSQ_YJTL--解除处分申请表 依据条例
      ,d.DQZT as d_JCCFSQ_DQZT--解除处分申请表 当前状态
      ,d.DQBZID as d_JCCFSQ_DQBZID--解除处分申请表 当前步骤ID
      ,d.SQSJ as d_JCCFSQ_SQSJ--解除处分申请表 申请时间
      ,d.SQXSID as d_JCCFSQ_SQXSID--解除处分申请表 申请学生ID
      ,d.SQTHYY as d_JCCFSQ_SQTHYY--解除处分申请表 申请退回原因
      ,d.ZHSHSJ as d_JCCFSQ_ZHSHSJ--解除处分申请表 最后审核时间
      ,d.ZHSHJSID as d_JCCFSQ_ZHSHJSID--解除处分申请表 最后审核教师ID
      ,d.BZ as d_JCCFSQ_BZ--解除处分申请表 备注
      ,e.SCHOOLID as e_JCCFBZ_SCHOOLID--解除处分步骤表 学校
      ,e.CFLXID as e_JCCFBZ_CFLXID--解除处分步骤表 处分类型ID
      ,e.BZMC as e_JCCFBZ_BZMC--解除处分步骤表 步骤名称
      ,e.SHRIDLB as e_JCCFBZ_SHRIDLB--解除处分步骤表 审核人ID列表
      ,e.SHRMCLB as e_JCCFBZ_SHRMCLB--解除处分步骤表 审核人名称列表
      ,e.SYBZID as e_JCCFBZ_SYBZID--解除处分步骤表 上一步骤ID
      ,e.XYBZID as e_JCCFBZ_XYBZID--解除处分步骤表 下一步骤ID
      ,e.BZ as e_JCCFBZ_BZ--解除处分步骤表 备注
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,f.GH as f_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,f.XM as f_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,f.YWXM as f_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,f.XMPY as f_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,f.CYM as f_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[fb].MC as f_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,f.SFZJH as f_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,f.CSRQ as f_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,f.XBM as f_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[fc].MC as f_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,f.MZM as f_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[fd].MZMC as f_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[fd].ZMDM as f_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,f.XXM as f_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[fe].MC as f_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[fe].JC as f_JZGJBSJ_XXM_JC--血型代码表 简称
      ,f.JKZKM as f_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[ff].MC as f_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[ff].SM as f_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,f.HYZTM as f_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[fg].MC as f_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[fh].MC as f_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[fh].JC as f_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,f.GATQWM as f_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[fi].MC as f_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[fi].SM as f_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,f.JG as f_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,f.GJDQM as f_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[fj].GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[fj].EZMDM as f_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[fj].SZMDM as f_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,f.CSDXZQHM as f_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[fk].MC as f_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,f.XYZJM as f_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[fl].MC as f_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,f.JZGHKSZDXZQHM as f_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[fm].MC as f_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,f.HKLBM as f_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[fn].MC as f_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,f.DQZZ as f_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,f.DQZZYZBM as f_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,f.CJGZNY as f_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,f.CJNY as f_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,f.LXNY as f_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,f.BZLBM as f_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[fo].MC as f_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,f.JZGLBM as f_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[fp].MC as f_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[fp].SM as f_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,f.GWLBM as f_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[fq].MC as f_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,f.SFJZJS as f_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[fr].MC as f_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,f.SFSSXJS as f_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[fs].MC as f_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,f.ZP as f_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,f.DQZTM as f_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[ft].MC as f_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,f.YDDH as f_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,f.GDDH as f_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,f.TXDZYZBM as f_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,f.TXDZ as f_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,f.DZXX as f_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,f.WLDZ as f_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,f.JSTXH as f_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,f.JSKQJS as f_JZGJBSJ_JSKQJS--教职工基本数据子类表 教师考勤角色
      ,f.FullTeacherName as f_JZGJBSJ_FullTeacherName--教职工基本数据子类表 完整老师姓名
      ,f.RecordID as f_JZGJBSJ_RecordID--教职工基本数据子类表 记录ID
      ,f.TeacherGroupId as f_JZGJBSJ_TeacherGroupId--教职工基本数据子类表 表TeacherGroup的外键

FROM dbo.EDU_ZZXS_18_A06_JCCFSQSHJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A04_XSCFXX AS c ON a.XSCFXXID = c.ID /*学生处分信息ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A05_JCCFSQ AS d ON a.JCCFSQID = d.ID /*解除处分申请ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A03_JCCFBZ AS e ON a.BZID = e.ID /*步骤ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS f ON a.SHJSID = f.ID /*审核教师ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [fb] ON f.SFZJLXM = [fb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [fc] ON f.XBM = [fc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [fd] ON f.MZM = [fd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [fe] ON f.XXM = [fe].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ff] ON f.JKZKM = [ff].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [fg] ON f.HYZTM = [fg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [fh] ON f.ZZMMM = [fh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [fi] ON f.GATQWM = [fi].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [fj] ON f.GJDQM = [fj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fk] ON f.CSDXZQHM = [fk].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [fl] ON f.XYZJM = [fl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fm] ON f.JZGHKSZDXZQHM = [fm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [fn] ON f.HKLBM = [fn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [fo] ON f.BZLBM = [fo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [fp] ON f.JZGLBM = [fp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [fq] ON f.GWLBM = [fq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fr] ON f.SFJZJS = [fr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fs] ON f.SFSSXJS = [fs].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [ft] ON f.DQZTM = [ft].DM /*当前状态码*/
GO
