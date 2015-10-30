
--专业课程排考结果表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_32_A02_ZYKCPKJG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ExamID]--考试ID
      ,a.[EXAMROOMID]--考场ID
      ,a.[CCID]--场次ID
      ,a.[KCQDID]--考试科目ID
      ,a.[ZYXXID]--专业ID
      ,a.[NJID]--年级ID
      ,a.[BJID]--班级ID
      ,a.[CKRS]--参考人数
      ,a.[SKRS]--实考人数
      ,a.[ZJKLSID]--主监考老师ID
      ,a.[FJKLSID]--副监考老师ID
      ,c.SCHOOLID as c_EXAM_SCHOOLID--考试表 学校
      ,c.Name as c_EXAM_Name--考试表 考试名称
      ,c.CJKSKMLM as c_EXAM_CJKSKMLM--考试表 参加考试科目列表
      ,c.StartDate as c_EXAM_StartDate--考试表 开始日期
      ,c.EndDate as c_EXAM_EndDate--考试表 截止日期
      ,c.XqID as c_EXAM_XqID--考试表 学期ID
      ,c.DffsID as c_EXAM_DffsID--考试表 登分方式
      ,d.SCHOOLID as d_EXAMROOM_SCHOOLID--考场表 学校
      ,d.Name as d_EXAMROOM_Name--考场表 考场名称
      ,d.RoomID as d_EXAMROOM_RoomID--考场表 教室ID
      ,d.ExamID as d_EXAMROOM_ExamID--考场表 考试ID
      ,d.StuCount as d_EXAMROOM_StuCount--考场表 考生容纳人数
      ,e.SCHOOLID as e_KSCC_SCHOOLID--考试场次表 学校
      ,e.ExamID as e_KSCC_ExamID--考试场次表 考试ID
      ,e.Name as e_KSCC_Name--考试场次表 场次名称
      ,e.TypeID as e_KSCC_TypeID--考试场次表 考试时段类型
      ,e.ExamDate as e_KSCC_ExamDate--考试场次表 考试日期
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
      ,g.SCHOOLID as g_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,g.ZYDM as g_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,[gb].ZYMLLB as g_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,[gb].MC as g_ZYXX_ZYDM_MC--自建专业代码 名称
      ,g.ZYMC as g_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,g.ZYYWMC as g_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,g.XZ as g_ZYXX_XZ--专业基本信息数据表 学制
      ,g.ZYFXMC as g_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,g.ZYJC as g_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,g.JLNY as g_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,g.ZYJSS as g_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,g.KSJGH as g_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,g.ZXF as g_ZYXX_ZXF--专业基本信息数据表 总学分
      ,g.SSZYML as g_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,[gc].MC as g_ZYXX_SSZYML_MC--专业目录代码 名称
      ,g.ZYLB as g_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,g.XXZ as g_ZYXX_XXZ--专业基本信息数据表 新学制
      ,g.XZXF as g_ZYXX_XZXF--专业基本信息数据表 新总学分
      ,g.PYMB as g_ZYXX_PYMB--专业基本信息数据表 培养目标
      ,g.PYGG as g_ZYXX_PYGG--专业基本信息数据表 培养规格
      ,g.ZKS as g_ZYXX_ZKS--专业基本信息数据表 总课时
      ,g.SFSY as g_ZYXX_SFSY--专业基本信息数据表 是否使用
      ,h.SCHOOLID as h_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,h.NJMC as h_ZZNJ_NJMC--学校年级数据表 年级名称
      ,h.SSNF as h_ZZNJ_SSNF--学校年级数据表 所属年份
      ,h.NJZT as h_ZZNJ_NJZT--学校年级数据表 年级状态
      ,[hb].MC as h_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,h.PLSX as h_ZZNJ_PLSX--学校年级数据表 排列顺序
      ,i.SCHOOLID as i_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,i.ZYXXID as i_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,i.ZZNJID as i_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,i.XZBMC as i_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,i.JBNY as i_ZZBJ_JBNY--学校班级数据表 建班年月
      ,i.BZRGH as i_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,i.JSBH as i_ZZBJ_JSBH--学校班级数据表 教室编号
      ,i.NANSRS as i_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,i.NVSRS as i_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,i.ZRS as i_ZZBJ_ZRS--学校班级数据表 总人数
      ,i.BZXH as i_ZZBJ_BZXH--学校班级数据表 班长学号
      ,i.JXJH as i_ZZBJ_JXJH--学校班级数据表 教学计划
      ,i.JGH as i_ZZBJ_JGH--学校班级数据表 机构号
      ,i.XQDM as i_ZZBJ_XQDM--学校班级数据表 校区代码
      ,i.BZRID as i_ZZBJ_BZRID--学校班级数据表 班主任ID
      ,i.PLSX as i_ZZBJ_PLSX--学校班级数据表 排列顺序
      ,i.ID as i_ZZBJ_ID--学校班级数据表 表Record外键
      ,j.SCHOOLID as j_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,j.GH as j_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,j.XM as j_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,j.YWXM as j_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,j.XMPY as j_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,j.CYM as j_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,j.SFZJLXM as j_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[jb].MC as j_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,j.SFZJH as j_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,j.CSRQ as j_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,j.XBM as j_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[jc].MC as j_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,j.MZM as j_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[jd].MZMC as j_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[jd].ZMDM as j_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,j.XXM as j_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[je].MC as j_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[je].JC as j_JZGJBSJ_XXM_JC--血型代码表 简称
      ,j.JKZKM as j_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[jf].MC as j_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[jf].SM as j_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,j.HYZTM as j_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[jg].MC as j_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,j.ZZMMM as j_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[jh].MC as j_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[jh].JC as j_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,j.GATQWM as j_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[ji].MC as j_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[ji].SM as j_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,j.JG as j_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,j.GJDQM as j_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[jj].GJDQMCJC as j_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[jj].EZMDM as j_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[jj].SZMDM as j_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,j.CSDXZQHM as j_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[jk].MC as j_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,j.XYZJM as j_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[jl].MC as j_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,j.JZGHKSZDXZQHM as j_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[jm].MC as j_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,j.HKLBM as j_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[jn].MC as j_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,j.DQZZ as j_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,j.DQZZYZBM as j_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,j.CJGZNY as j_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,j.CJNY as j_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,j.LXNY as j_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,j.BZLBM as j_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[jo].MC as j_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,j.JZGLBM as j_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[jp].MC as j_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[jp].SM as j_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,j.GWLBM as j_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[jq].MC as j_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,j.SFJZJS as j_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[jr].MC as j_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,j.SFSSXJS as j_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[js].MC as j_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,j.ZP as j_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,j.DQZTM as j_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[jt].MC as j_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,j.YDDH as j_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,j.GDDH as j_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,j.TXDZYZBM as j_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,j.TXDZ as j_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,j.DZXX as j_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,j.WLDZ as j_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,j.JSTXH as j_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,j.JSKQJS as j_JZGJBSJ_JSKQJS--教职工基本数据子类表 教师考勤角色
      ,j.TeacherGroupId as j_JZGJBSJ_TeacherGroupId--教职工基本数据子类表 表TeacherGroup的外键
      ,j.PersonalCard1 as j_JZGJBSJ_PersonalCard1--教职工基本数据子类表 个人卡1
      ,j.PersonalCard2 as j_JZGJBSJ_PersonalCard2--教职工基本数据子类表 个人卡2
      ,j.PersonalCard3 as j_JZGJBSJ_PersonalCard3--教职工基本数据子类表 个人卡3
      ,k.SCHOOLID as k_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,k.GH as k_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,k.XM as k_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,k.YWXM as k_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,k.XMPY as k_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,k.CYM as k_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,k.SFZJLXM as k_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[kb].MC as k_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,k.SFZJH as k_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,k.CSRQ as k_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,k.XBM as k_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[kc].MC as k_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,k.MZM as k_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[kd].MZMC as k_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[kd].ZMDM as k_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,k.XXM as k_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[ke].MC as k_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[ke].JC as k_JZGJBSJ_XXM_JC--血型代码表 简称
      ,k.JKZKM as k_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[kf].MC as k_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[kf].SM as k_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,k.HYZTM as k_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[kg].MC as k_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,k.ZZMMM as k_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[kh].MC as k_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[kh].JC as k_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,k.GATQWM as k_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[ki].MC as k_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[ki].SM as k_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,k.JG as k_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,k.GJDQM as k_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[kj].GJDQMCJC as k_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[kj].EZMDM as k_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[kj].SZMDM as k_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,k.CSDXZQHM as k_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[kk].MC as k_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,k.XYZJM as k_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[kl].MC as k_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,k.JZGHKSZDXZQHM as k_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[km].MC as k_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,k.HKLBM as k_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[kn].MC as k_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,k.DQZZ as k_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,k.DQZZYZBM as k_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,k.CJGZNY as k_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,k.CJNY as k_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,k.LXNY as k_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,k.BZLBM as k_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[ko].MC as k_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,k.JZGLBM as k_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[kp].MC as k_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[kp].SM as k_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,k.GWLBM as k_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[kq].MC as k_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,k.SFJZJS as k_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[kr].MC as k_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,k.SFSSXJS as k_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[ks].MC as k_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,k.ZP as k_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,k.DQZTM as k_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[kt].MC as k_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,k.YDDH as k_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,k.GDDH as k_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,k.TXDZYZBM as k_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,k.TXDZ as k_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,k.DZXX as k_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,k.WLDZ as k_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,k.JSTXH as k_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,k.JSKQJS as k_JZGJBSJ_JSKQJS--教职工基本数据子类表 教师考勤角色
      ,k.TeacherGroupId as k_JZGJBSJ_TeacherGroupId--教职工基本数据子类表 表TeacherGroup的外键
      ,k.PersonalCard1 as k_JZGJBSJ_PersonalCard1--教职工基本数据子类表 个人卡1
      ,k.PersonalCard2 as k_JZGJBSJ_PersonalCard2--教职工基本数据子类表 个人卡2
      ,k.PersonalCard3 as k_JZGJBSJ_PersonalCard3--教职工基本数据子类表 个人卡3

FROM dbo.EDU_ZZJX_32_A02_ZYKCPKJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A01_EXAM AS c ON a.ExamID = c.ID /*考试ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_30_A02_EXAMROOM AS d ON a.EXAMROOMID = d.ID /*考场ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_31_A02_KSCC AS e ON a.CCID = e.ID /*场次ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS f ON a.KCQDID = f.ID /*考试科目ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS g ON a.ZYXXID = g.ZYBH /*专业ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS h ON a.NJID = h.NJDM /*年级ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS i ON a.BJID = i.XZBDM /*班级ID*/ AND a.SCHOOLID = i.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS j ON a.ZJKLSID = j.ID /*主监考老师ID*/ AND a.SCHOOLID = j.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS k ON a.FJKLSID = k.ID /*副监考老师ID*/ AND a.SCHOOLID = k.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.SFHXKC = [fb].DM /*是否核心（骨干）*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [fc] ON f.KCFLM = [fc].DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [fd] ON f.KCSXM = [fd].DM /*课程属性码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [gb] ON g.ZYDM = [gb].DM /*专业代码*/ AND g.SSZYML = [gb].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [gc] ON g.SSZYML = [gc].DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hb] ON h.NJZT = [hb].DM /*年级状态*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [jb] ON j.SFZJLXM = [jb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [jc] ON j.XBM = [jc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [jd] ON j.MZM = [jd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [je] ON j.XXM = [je].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [jf] ON j.JKZKM = [jf].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [jg] ON j.HYZTM = [jg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [jh] ON j.ZZMMM = [jh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ji] ON j.GATQWM = [ji].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [jj] ON j.GJDQM = [jj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [jk] ON j.CSDXZQHM = [jk].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [jl] ON j.XYZJM = [jl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [jm] ON j.JZGHKSZDXZQHM = [jm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [jn] ON j.HKLBM = [jn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [jo] ON j.BZLBM = [jo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [jp] ON j.JZGLBM = [jp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [jq] ON j.GWLBM = [jq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [jr] ON j.SFJZJS = [jr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [js] ON j.SFSSXJS = [js].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [jt] ON j.DQZTM = [jt].DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [kb] ON k.SFZJLXM = [kb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [kc] ON k.XBM = [kc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [kd] ON k.MZM = [kd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ke] ON k.XXM = [ke].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [kf] ON k.JKZKM = [kf].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [kg] ON k.HYZTM = [kg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [kh] ON k.ZZMMM = [kh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ki] ON k.GATQWM = [ki].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [kj] ON k.GJDQM = [kj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [kk] ON k.CSDXZQHM = [kk].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [kl] ON k.XYZJM = [kl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [km] ON k.JZGHKSZDXZQHM = [km].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [kn] ON k.HKLBM = [kn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [ko] ON k.BZLBM = [ko].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [kp] ON k.JZGLBM = [kp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [kq] ON k.GWLBM = [kq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [kr] ON k.SFJZJS = [kr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ks] ON k.SFSSXJS = [ks].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [kt] ON k.DQZTM = [kt].DM /*当前状态码*/
GO
