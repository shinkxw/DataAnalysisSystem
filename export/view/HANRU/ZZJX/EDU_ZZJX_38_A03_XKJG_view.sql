
--选课结果表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_38_A03_XKJG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XQID]--学期ID
      ,a.[XSXXID]--学生ID
      ,a.[JXBID]--教学班级ID
      ,a.[KCQDID]--课程清单ID
      ,a.[ZT]--状态
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键
      ,d.SCHOOLID as d_XSXX_SCHOOLID--学生信息数据表 学校名
      ,d.XH as d_XSXX_XH--学生信息数据表 学号
      ,d.XM as d_XSXX_XM--学生信息数据表 姓名
      ,d.YWXM as d_XSXX_YWXM--学生信息数据表 英文姓名
      ,d.XMPY as d_XSXX_XMPY--学生信息数据表 姓名拼音
      ,d.CYM as d_XSXX_CYM--学生信息数据表 曾用名
      ,d.SFZJLXM as d_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,[db].MC as d_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,d.SFZJH as d_XSXX_SFZJH--学生信息数据表 身份证件号
      ,d.XBM as d_XSXX_XBM--学生信息数据表 性别码
      ,[dc].MC as d_XSXX_XBM_MC--人的性别代码 名称
      ,d.XXM as d_XSXX_XXM--学生信息数据表 血型码
      ,[dd].MC as d_XSXX_XXM_MC--血型代码表 名称
      ,[dd].JC as d_XSXX_XXM_JC--血型代码表 简称
      ,d.CSRQ as d_XSXX_CSRQ--学生信息数据表 出生日期
      ,d.CSDM as d_XSXX_CSDM--学生信息数据表 出生地码
      ,[de].MC as d_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,d.JG as d_XSXX_JG--学生信息数据表 籍贯
      ,d.MZM as d_XSXX_MZM--学生信息数据表 民族码
      ,[df].MZMC as d_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[df].ZMDM as d_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,d.HYZKM as d_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,[dg].MC as d_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,d.XYZJM as d_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,[dh].MC as d_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,d.GATQWM as d_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,[di].MC as d_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[di].SM as d_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,d.JKZKM as d_XSXX_JKZKM--学生信息数据表 健康状况码
      ,[dj].MC as d_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[dj].SM as d_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,d.ZZMMM as d_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,[dk].MC as d_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[dk].JC as d_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,d.HKSZDXZQHM as d_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,[dl].MC as d_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,d.HKLBM as d_XSXX_HKLBM--学生信息数据表 户口类别码
      ,[dm].MC as d_XSXX_HKLBM_MC--户口类别代码 名称
      ,d.SFSLDRK as d_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,[dn].MC as d_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,d.GJDQM as d_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,[do].GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[do].EZMDM as d_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[do].SZMDM as d_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,d.TC as d_XSXX_TC--学生信息数据表 特长
      ,d.XSLXDH as d_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,d.WLDZ as d_XSXX_WLDZ--学生信息数据表 网络地址
      ,d.JSTXH as d_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,d.DZXX as d_XSXX_DZXX--学生信息数据表 电子信箱
      ,d.ZP as d_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.RXXQID as d_XSXX_RXXQID--学生信息数据表 入学学期ID
      ,d.NFCKH as d_XSXX_NFCKH--学生信息数据表 NFC卡号
      ,e.SCHOOLID as e_ZZJXB_SCHOOLID--中职教学班表 学校名
      ,e.ZZXQID as e_ZZJXB_ZZXQID--中职教学班表 校区ID
      ,e.XQID as e_ZZJXB_XQID--中职教学班表 学期ID
      ,e.ZYXXID as e_ZZJXB_ZYXXID--中职教学班表 专业ID
      ,e.NJID as e_ZZJXB_NJID--中职教学班表 年级ID
      ,e.JXBMC as e_ZZJXB_JXBMC--中职教学班表 教学班级名称
      ,e.TEACHERID1 as e_ZZJXB_TEACHERID1--中职教学班表 主任老师ID
      ,e.TEACHERID2 as e_ZZJXB_TEACHERID2--中职教学班表 辅助老师ID
      ,e.KCQDID as e_ZZJXB_KCQDID--中职教学班表 课程清单ID
      ,e.KCH as e_ZZJXB_KCH--中职教学班表 课程号
      ,e.CLASSROOM as e_ZZJXB_CLASSROOM--中职教学班表 教室ID
      ,e.ZDBJ as e_ZZJXB_ZDBJ--中职教学班表 指定班级
      ,e.ZDBJMC as e_ZZJXB_ZDBJMC--中职教学班表 指定班级名称
      ,e.RS as e_ZZJXB_RS--中职教学班表 人数
      ,e.T1NAME as e_ZZJXB_T1NAME--中职教学班表 主任老师姓名
      ,e.T2NAME as e_ZZJXB_T2NAME--中职教学班表 辅助老师姓名
      ,e.SKFS as e_ZZJXB_SKFS--中职教学班表 授课方式
      ,f.SCHOOLID as f_JXJHKCQD_SCHOOLID--教学计划课程清单数据子类表 学校ID
      ,f.JXJHID as f_JXJHKCQD_JXJHID--教学计划课程清单数据子类表 教学计划ID
      ,f.KCH as f_JXJHKCQD_KCH--教学计划课程清单数据子类表 课程号
      ,f.JHBH as f_JXJHKCQD_JHBH--教学计划课程清单数据子类表 计划编号
      ,f.XQID as f_JXJHKCQD_XQID--教学计划课程清单数据子类表 学期ID
      ,f.KCMC as f_JXJHKCQD_KCMC--教学计划课程清单数据子类表 课程名称
      ,f.YXKC as f_JXJHKCQD_YXKC--教学计划课程清单数据子类表 预修课程
      ,f.SFHXKC as f_JXJHKCQD_SFHXKC--教学计划课程清单数据子类表 是否核心（骨干）
      ,[fb].MC as f_JXJHKCQD_SFHXKC_MC--是否标志代码表 名称
      ,f.KCFLM as f_JXJHKCQD_KCFLM--教学计划课程清单数据子类表 课程分类码
      ,[fc].MC as f_JXJHKCQD_KCFLM_MC--课程分类代码 名称
      ,f.KCSXM as f_JXJHKCQD_KCSXM--教学计划课程清单数据子类表 课程属性码
      ,[fd].MC as f_JXJHKCQD_KCSXM_MC--课程属性代码表 名称
      ,[fd].SM as f_JXJHKCQD_KCSXM_SM--课程属性代码表 说明
      ,f.ZXXQ as f_JXJHKCQD_ZXXQ--教学计划课程清单数据子类表 执行学期
      ,f.ZKS as f_JXJHKCQD_ZKS--教学计划课程清单数据子类表 总课时
      ,f.LLKS as f_JXJHKCQD_LLKS--教学计划课程清单数据子类表 理论课时
      ,f.SJKS as f_JXJHKCQD_SJKS--教学计划课程清单数据子类表 实践课时
      ,f.XF as f_JXJHKCQD_XF--教学计划课程清单数据子类表 学分
      ,f.XFRDHGX as f_JXJHKCQD_XFRDHGX--教学计划课程清单数据子类表 学分认定合格线
      ,f.JXDG as f_JXJHKCQD_JXDG--教学计划课程清单数据子类表 教学大纲

FROM dbo.EDU_ZZJX_38_A03_XKJG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS d ON a.XSXXID = d.ID /*学生ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_38_A01_ZZJXB AS e ON a.JXBID = e.ID /*教学班级ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS f ON a.KCQDID = f.ID /*课程清单ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [db] ON d.SFZJLXM = [db].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [dc] ON d.XBM = [dc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [dd] ON d.XXM = [dd].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [de] ON d.CSDM = [de].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [df] ON d.MZM = [df].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [dg] ON d.HYZKM = [dg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [dh] ON d.XYZJM = [dh].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [di] ON d.GATQWM = [di].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [dj] ON d.JKZKM = [dj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [dk] ON d.ZZMMM = [dk].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dl] ON d.HKSZDXZQHM = [dl].DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [dm] ON d.HKLBM = [dm].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dn] ON d.SFSLDRK = [dn].DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [do] ON d.GJDQM = [do].DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.SFHXKC = [fb].DM /*是否核心（骨干）*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [fc] ON f.KCFLM = [fc].DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [fd] ON f.KCSXM = [fd].DM /*课程属性码*/
GO
