
--教师任课表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_A02_JSRK_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[KXH]--课序号
      ,a.[JSID]--教师表ID
      ,a.[KCH]--课程号
      ,a.[JHBH]--计划编号
      ,a.[XQID]--学期ID
      ,a.[JXDG]--教学大纲
      ,a.[KCQDID]--课程清单ID
      ,a.[SFZRLS]--是否主任老师
      ,a.[ZYXXID]--专业ID
      ,a.[NJID]--年级ID
      ,a.[BJID]--班级ID
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,c.GH as c_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,c.XM as c_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,c.YWXM as c_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,c.XMPY as c_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,c.CYM as c_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[cb].MC as c_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,c.CSRQ as c_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,c.XBM as c_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[cc].MC as c_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,c.MZM as c_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[cd].MZMC as c_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[cd].ZMDM as c_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.XXM as c_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[ce].MC as c_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[ce].JC as c_JZGJBSJ_XXM_JC--血型代码表 简称
      ,c.JKZKM as c_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[cf].MC as c_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[cf].SM as c_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,c.HYZTM as c_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[cg].MC as c_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[ch].MC as c_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[ch].JC as c_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,c.GATQWM as c_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[ci].MC as c_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[ci].SM as c_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JG as c_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,c.GJDQM as c_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[cj].GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[cj].EZMDM as c_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[cj].SZMDM as c_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[ck].MC as c_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.XYZJM as c_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[cl].MC as c_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[cm].MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[cn].MC as c_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,c.DQZZ as c_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,c.CJNY as c_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,c.LXNY as c_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,c.BZLBM as c_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[co].MC as c_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[cp].MC as c_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[cp].SM as c_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,c.GWLBM as c_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[cq].MC as c_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[cr].MC as c_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[cs].MC as c_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,c.ZP as c_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[ct].MC as c_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,c.YDDH as c_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,c.GDDH as c_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,c.TXDZYZBM as c_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,c.TXDZ as c_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,c.DZXX as c_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,c.WLDZ as c_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,c.JSTXH as c_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,c.JSKQJS as c_JZGJBSJ_JSKQJS--教职工基本数据子类表 教师考勤角色
      ,c.FullTeacherName as c_JZGJBSJ_FullTeacherName--教职工基本数据子类表 完整老师姓名
      ,c.RecordID as c_JZGJBSJ_RecordID--教职工基本数据子类表 记录ID
      ,c.TeacherGroupId as c_JZGJBSJ_TeacherGroupId--教职工基本数据子类表 表TeacherGroup的外键
      ,d.SCHOOLID as d_KC_SCHOOLID--课程数据子类表 学校ID
      ,d.KCMC as d_KC_KCMC--课程数据子类表 课程名称
      ,d.KCYWM as d_KC_KCYWM--课程数据子类表 课程英文名
      ,d.KCBM as d_KC_KCBM--课程数据子类表 课程别名
      ,d.KCJS as d_KC_KCJS--课程数据子类表 课程介绍
      ,d.XF as d_KC_XF--课程数据子类表 学分
      ,d.ZXS as d_KC_ZXS--课程数据子类表 总学时
      ,d.LLXS as d_KC_LLXS--课程数据子类表 理论学时
      ,d.SJXS as d_KC_SJXS--课程数据子类表 实践学时
      ,d.QTXS as d_KC_QTXS--课程数据子类表 其他学时
      ,d.CKSM as d_KC_CKSM--课程数据子类表 参考书目
      ,d.KKDW as d_KC_KKDW--课程数据子类表 开课单位
      ,d.KSXS as d_KC_KSXS--课程数据子类表 考试形式
      ,[db].MC as d_KC_KSXS_MC--考试形式代码表 名称
      ,d.SKFSM as d_KC_SKFSM--课程数据子类表 授课方式码
      ,[dc].MC as d_KC_SKFSM_MC--授课方式代码表 名称
      ,d.KCFY as d_KC_KCFY--课程数据子类表 课程费用
      ,e.SCHOOLID as e_XQ_SCHOOLID--学期数据表 学校名
      ,e.XNID as e_XQ_XNID--学期数据表 学年
      ,e.XQM as e_XQ_XQM--学期数据表 学期码
      ,[eb].MC as e_XQ_XQM_MC--学期代码表 名称
      ,e.XQMC as e_XQ_XQMC--学期数据表 学期名称
      ,e.XQKSRQ as e_XQ_XQKSRQ--学期数据表 学期开始日期
      ,e.XQJSRQ as e_XQ_XQJSRQ--学期数据表 学期结束日期
      ,e.BaseProjectInfoID as e_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键
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
      ,g.MC as g_SFBZ_MC--是否标志代码表 名称
      ,h.SCHOOLID as h_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,h.ZYDM as h_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,[hb].ZYMLLB as h_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,[hb].MC as h_ZYXX_ZYDM_MC--自建专业代码 名称
      ,h.ZYMC as h_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,h.ZYYWMC as h_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,h.XZ as h_ZYXX_XZ--专业基本信息数据表 学制
      ,h.ZYFXMC as h_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,h.ZYJC as h_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,h.JLNY as h_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,h.ZYJSS as h_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,h.KSJGH as h_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,h.ZXF as h_ZYXX_ZXF--专业基本信息数据表 总学分
      ,h.SSZYML as h_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,[hc].MC as h_ZYXX_SSZYML_MC--专业目录代码 名称
      ,h.ZYLB as h_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,h.XXZ as h_ZYXX_XXZ--专业基本信息数据表 新学制
      ,h.XZXF as h_ZYXX_XZXF--专业基本信息数据表 新总学分
      ,h.PYMB as h_ZYXX_PYMB--专业基本信息数据表 培养目标
      ,h.PYGG as h_ZYXX_PYGG--专业基本信息数据表 培养规格
      ,h.ZKS as h_ZYXX_ZKS--专业基本信息数据表 总课时
      ,h.SFSY as h_ZYXX_SFSY--专业基本信息数据表 是否使用
      ,i.SCHOOLID as i_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,i.NJMC as i_ZZNJ_NJMC--学校年级数据表 年级名称
      ,i.SSNF as i_ZZNJ_SSNF--学校年级数据表 所属年份
      ,i.NJZT as i_ZZNJ_NJZT--学校年级数据表 年级状态
      ,[ib].MC as i_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,i.PLSX as i_ZZNJ_PLSX--学校年级数据表 排列顺序
      ,j.SCHOOLID as j_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,j.ZYXXID as j_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,j.ZZNJID as j_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,j.XZBMC as j_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,j.JBNY as j_ZZBJ_JBNY--学校班级数据表 建班年月
      ,j.BZRGH as j_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,j.JSBH as j_ZZBJ_JSBH--学校班级数据表 教室编号
      ,j.NANSRS as j_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,j.NVSRS as j_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,j.ZRS as j_ZZBJ_ZRS--学校班级数据表 总人数
      ,j.BZXH as j_ZZBJ_BZXH--学校班级数据表 班长学号
      ,j.JXJH as j_ZZBJ_JXJH--学校班级数据表 教学计划
      ,j.JGH as j_ZZBJ_JGH--学校班级数据表 机构号
      ,j.XQDM as j_ZZBJ_XQDM--学校班级数据表 校区代码
      ,j.BZRID as j_ZZBJ_BZRID--学校班级数据表 班主任ID
      ,j.PLSX as j_ZZBJ_PLSX--学校班级数据表 排列顺序
      ,j.FullClassName as j_ZZBJ_FullClassName--学校班级数据表 完整班级名称
      ,j.RecordID as j_ZZBJ_RecordID--学校班级数据表 记录ID
      ,j.ClassGroupId as j_ZZBJ_ClassGroupId--学校班级数据表 表ClassGroup的外键

FROM dbo.EDU_ZZJX_01_A02_JSRK AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*教师表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCH = d.KCH /*课程号*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*学期ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS f ON a.KCQDID = f.ID /*课程清单ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS g ON a.SFZRLS = g.DM /*是否主任老师*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS h ON a.ZYXXID = h.ZYBH /*专业ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS i ON a.NJID = i.NJDM /*年级ID*/ AND a.SCHOOLID = i.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS j ON a.BJID = j.XZBDM /*班级ID*/ AND a.SCHOOLID = j.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cb] ON c.SFZJLXM = [cb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cc] ON c.XBM = [cc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cd] ON c.MZM = [cd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ce] ON c.XXM = [ce].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cf] ON c.JKZKM = [cf].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZTM = [cg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ch] ON c.ZZMMM = [ch].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ci] ON c.GATQWM = [ci].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [cj] ON c.GJDQM = [cj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ck] ON c.CSDXZQHM = [ck].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [cl] ON c.XYZJM = [cl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cm] ON c.JZGHKSZDXZQHM = [cm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [cn] ON c.HKLBM = [cn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [co] ON c.BZLBM = [co].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [cp] ON c.JZGLBM = [cp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [cq] ON c.GWLBM = [cq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cr] ON c.SFJZJS = [cr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cs] ON c.SFSSXJS = [cs].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [ct] ON c.DQZTM = [ct].DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [db] ON d.KSXS = [db].DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [dc] ON d.SKFSM = [dc].DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [eb] ON e.XQM = [eb].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.SFHXKC = [fb].DM /*是否核心（骨干）*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [fc] ON f.KCFLM = [fc].DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [fd] ON f.KCSXM = [fd].DM /*课程属性码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [hb] ON h.ZYDM = [hb].DM /*专业代码*/ AND h.SSZYML = [hb].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [hc] ON h.SSZYML = [hc].DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ib] ON i.NJZT = [ib].DM /*年级状态*/
GO
