
--中职排课结果记录表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_38_A02_ZZPKJGJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[ZZXQID]--校区ID
      ,a.[XQID]--学期ID
      ,a.[ZYXXID]--专业ID
      ,a.[NJID]--年级ID
      ,a.[JXBID]--教学班级ID
      ,a.[KCQDID]--课程清单ID
      ,a.[KCH]--课程号
      ,a.[CLASSROOM]--教室ID
      ,a.[ZZBJID]--行政班级ID
      ,a.[WEEKDAY]--工作日ID
      ,a.[PERIOD]--时段ID
      ,a.[SESSION]--节次ID
      ,c.SCHOOLID as c_ZZXQSJ_SCHOOLID--校区数据表 学校名
      ,c.XQDM as c_ZZXQSJ_XQDM--校区数据表 校区代码
      ,c.XQMC as c_ZZXQSJ_XQMC--校区数据表 校区名称
      ,c.XQDZ as c_ZZXQSJ_XQDZ--校区数据表 校区地址
      ,c.XQLXDH as c_ZZXQSJ_XQLXDH--校区数据表 校区联系电话
      ,c.XQFZRH as c_ZZXQSJ_XQFZRH--校区数据表 校区负责人号
      ,c.DZYJ as c_ZZXQSJ_DZYJ--校区数据表 电子邮件
      ,c.XQYZBM as c_ZZXQSJ_XQYZBM--校区数据表 校区邮政编码
      ,c.XQSZDXZQHM as c_ZZXQSJ_XQSZDXZQHM--校区数据表 校区所在地行政区划码
      ,[cb].MC as c_ZZXQSJ_XQSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.XQMJ as c_ZZXQSJ_XQMJ--校区数据表 校区面积
      ,c.XQJZMJ as c_ZZXQSJ_XQJZMJ--校区数据表 校区建筑面积
      ,c.XQJXKYSBZZ as c_ZZXQSJ_XQJXKYSBZZ--校区数据表 校区教学科研仪器设备总值
      ,c.XQGDZCZZ as c_ZZXQSJ_XQGDZCZZ--校区数据表 校区固定资产总值
      ,d.SCHOOLID as d_XQ_SCHOOLID--学期数据表 学校名
      ,d.XNID as d_XQ_XNID--学期数据表 学年
      ,d.XQM as d_XQ_XQM--学期数据表 学期码
      ,[db].MC as d_XQ_XQM_MC--学期代码表 名称
      ,d.XQMC as d_XQ_XQMC--学期数据表 学期名称
      ,d.XQKSRQ as d_XQ_XQKSRQ--学期数据表 学期开始日期
      ,d.XQJSRQ as d_XQ_XQJSRQ--学期数据表 学期结束日期
      ,e.SCHOOLID as e_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,e.ZYDM as e_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,[eb].ZYMLLB as e_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,[eb].MC as e_ZYXX_ZYDM_MC--自建专业代码 名称
      ,e.ZYMC as e_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,e.ZYYWMC as e_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,e.XZ as e_ZYXX_XZ--专业基本信息数据表 学制
      ,e.ZYFXMC as e_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,e.ZYJC as e_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,e.JLNY as e_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,e.ZYJSS as e_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,e.KSJGH as e_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,e.ZXF as e_ZYXX_ZXF--专业基本信息数据表 总学分
      ,e.SSZYML as e_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,[ec].MC as e_ZYXX_SSZYML_MC--专业目录代码 名称
      ,e.ZYLB as e_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,f.SCHOOLID as f_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,f.NJMC as f_ZZNJ_NJMC--学校年级数据表 年级名称
      ,f.SSNF as f_ZZNJ_SSNF--学校年级数据表 所属年份
      ,f.NJZT as f_ZZNJ_NJZT--学校年级数据表 年级状态
      ,[fb].MC as f_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,g.SCHOOLID as g_ZZJXB_SCHOOLID--中职教学班表 学校名
      ,g.ZZXQID as g_ZZJXB_ZZXQID--中职教学班表 校区ID
      ,g.XQID as g_ZZJXB_XQID--中职教学班表 学期ID
      ,g.ZYXXID as g_ZZJXB_ZYXXID--中职教学班表 专业ID
      ,g.NJID as g_ZZJXB_NJID--中职教学班表 年级ID
      ,g.JXBMC as g_ZZJXB_JXBMC--中职教学班表 教学班级名称
      ,g.TEACHERID1 as g_ZZJXB_TEACHERID1--中职教学班表 主任老师ID
      ,g.TEACHERID2 as g_ZZJXB_TEACHERID2--中职教学班表 辅助老师ID
      ,g.KCQDID as g_ZZJXB_KCQDID--中职教学班表 课程清单ID
      ,g.KCH as g_ZZJXB_KCH--中职教学班表 课程号
      ,g.CLASSROOM as g_ZZJXB_CLASSROOM--中职教学班表 教室ID
      ,g.ZDBJ as g_ZZJXB_ZDBJ--中职教学班表 指定班级
      ,g.ZDBJMC as g_ZZJXB_ZDBJMC--中职教学班表 指定班级名称
      ,g.RS as g_ZZJXB_RS--中职教学班表 人数
      ,g.T1NAME as g_ZZJXB_T1NAME--中职教学班表 主任老师姓名
      ,g.T2NAME as g_ZZJXB_T2NAME--中职教学班表 辅助老师姓名
      ,g.SKFS as g_ZZJXB_SKFS--中职教学班表 授课方式
      ,h.SCHOOLID as h_JXJHKCQD_SCHOOLID--教学计划课程清单数据子类表 学校ID
      ,h.JXJHID as h_JXJHKCQD_JXJHID--教学计划课程清单数据子类表 教学计划ID
      ,h.KCH as h_JXJHKCQD_KCH--教学计划课程清单数据子类表 课程号
      ,h.JHBH as h_JXJHKCQD_JHBH--教学计划课程清单数据子类表 计划编号
      ,h.XQID as h_JXJHKCQD_XQID--教学计划课程清单数据子类表 学期ID
      ,h.KCMC as h_JXJHKCQD_KCMC--教学计划课程清单数据子类表 课程名称
      ,h.YXKC as h_JXJHKCQD_YXKC--教学计划课程清单数据子类表 预修课程
      ,h.SFHXKC as h_JXJHKCQD_SFHXKC--教学计划课程清单数据子类表 是否核心（骨干）
      ,[hb].MC as h_JXJHKCQD_SFHXKC_MC--是否标志代码表 名称
      ,h.KCFLM as h_JXJHKCQD_KCFLM--教学计划课程清单数据子类表 课程分类码
      ,[hc].MC as h_JXJHKCQD_KCFLM_MC--课程分类代码 名称
      ,h.KCSXM as h_JXJHKCQD_KCSXM--教学计划课程清单数据子类表 课程属性码
      ,[hd].MC as h_JXJHKCQD_KCSXM_MC--课程属性代码表 名称
      ,[hd].SM as h_JXJHKCQD_KCSXM_SM--课程属性代码表 说明
      ,h.ZXXQ as h_JXJHKCQD_ZXXQ--教学计划课程清单数据子类表 执行学期
      ,h.ZKS as h_JXJHKCQD_ZKS--教学计划课程清单数据子类表 总课时
      ,h.LLKS as h_JXJHKCQD_LLKS--教学计划课程清单数据子类表 理论课时
      ,h.SJKS as h_JXJHKCQD_SJKS--教学计划课程清单数据子类表 实践课时
      ,h.XF as h_JXJHKCQD_XF--教学计划课程清单数据子类表 学分
      ,h.XFRDHGX as h_JXJHKCQD_XFRDHGX--教学计划课程清单数据子类表 学分认定合格线
      ,h.JXDG as h_JXJHKCQD_JXDG--教学计划课程清单数据子类表 教学大纲
      ,i.SCHOOLID as i_KC_SCHOOLID--课程数据子类表 学校ID
      ,i.KCMC as i_KC_KCMC--课程数据子类表 课程名称
      ,i.KCYWM as i_KC_KCYWM--课程数据子类表 课程英文名
      ,i.KCBM as i_KC_KCBM--课程数据子类表 课程别名
      ,i.KCJS as i_KC_KCJS--课程数据子类表 课程介绍
      ,i.XF as i_KC_XF--课程数据子类表 学分
      ,i.ZXS as i_KC_ZXS--课程数据子类表 总学时
      ,i.LLXS as i_KC_LLXS--课程数据子类表 理论学时
      ,i.SJXS as i_KC_SJXS--课程数据子类表 实践学时
      ,i.QTXS as i_KC_QTXS--课程数据子类表 其他学时
      ,i.CKSM as i_KC_CKSM--课程数据子类表 参考书目
      ,i.KKDW as i_KC_KKDW--课程数据子类表 开课单位
      ,i.KSXS as i_KC_KSXS--课程数据子类表 考试形式
      ,[ib].MC as i_KC_KSXS_MC--考试形式代码表 名称
      ,i.SKFSM as i_KC_SKFSM--课程数据子类表 授课方式码
      ,[ic].MC as i_KC_SKFSM_MC--授课方式代码表 名称
      ,i.KCFY as i_KC_KCFY--课程数据子类表 课程费用
      ,j.SCHOOLID as j_CLASSROOM_SCHOOLID--教室表 学校
      ,j.Name as j_CLASSROOM_Name--教室表 教室名称
      ,j.Place as j_CLASSROOM_Place--教室表 地点
      ,j.Counts as j_CLASSROOM_Counts--教室表 座位数
      ,k.SCHOOLID as k_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,k.ZYXXID as k_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,k.ZZNJID as k_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,k.XZBMC as k_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,k.JBNY as k_ZZBJ_JBNY--学校班级数据表 建班年月
      ,k.BZRGH as k_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,k.JSBH as k_ZZBJ_JSBH--学校班级数据表 教室编号
      ,k.NANSRS as k_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,k.NVSRS as k_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,k.ZRS as k_ZZBJ_ZRS--学校班级数据表 总人数
      ,k.BZXH as k_ZZBJ_BZXH--学校班级数据表 班长学号
      ,k.JXJH as k_ZZBJ_JXJH--学校班级数据表 教学计划
      ,k.JGH as k_ZZBJ_JGH--学校班级数据表 机构号
      ,k.XQDM as k_ZZBJ_XQDM--学校班级数据表 校区代码
      ,k.BZRID as k_ZZBJ_BZRID--学校班级数据表 班主任ID
      ,l.SCHOOLID as l_WEEKDAY_SCHOOLID--星期 学校名
      ,l.MC as l_WEEKDAY_MC--星期 名称
      ,m.SCHOOLID as m_SD_SCHOOLID--时段 学校名
      ,m.MC as m_SD_MC--时段 名称
      ,n.SCHOOLID as n_JC_SCHOOLID--节次 学校名
      ,n.SDID as n_JC_SDID--节次 所属时段ID
      ,n.MC as n_JC_MC--节次 名称

FROM dbo.EDU_ZZJX_38_A02_ZZPKJGJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_02_01_ZZXQSJ AS c ON a.ZZXQID = c.ID /*校区ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*学期ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS e ON a.ZYXXID = e.ZYBH /*专业ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS f ON a.NJID = f.NJDM /*年级ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_38_A01_ZZJXB AS g ON a.JXBID = g.ID /*教学班级ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS h ON a.KCQDID = h.ID /*课程清单ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS i ON a.KCH = i.KCH /*课程号*/ AND a.SCHOOLID = i.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_30_A01_CLASSROOM AS j ON a.CLASSROOM = j.ID /*教室ID*/ AND a.SCHOOLID = j.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS k ON a.ZZBJID = k.XZBDM /*行政班级ID*/ AND a.SCHOOLID = k.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_WEEKDAY AS l ON a.WEEKDAY = l.ID /*工作日ID*/ AND a.SCHOOLID = l.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_SD AS m ON a.PERIOD = m.ID /*时段ID*/ AND a.SCHOOLID = m.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_JC AS n ON a.SESSION = n.ID /*节次ID*/ AND a.SCHOOLID = n.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cb] ON c.XQSZDXZQHM = [cb].DM /*校区所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [eb] ON e.ZYDM = [eb].DM /*专业代码*/ AND e.SSZYML = [eb].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [ec] ON e.SSZYML = [ec].DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.NJZT = [fb].DM /*年级状态*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hb] ON h.SFHXKC = [hb].DM /*是否核心（骨干）*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [hc] ON h.KCFLM = [hc].DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [hd] ON h.KCSXM = [hd].DM /*课程属性码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [ib] ON i.KSXS = [ib].DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [ic] ON i.SKFSM = [ic].DM /*授课方式码*/
GO
