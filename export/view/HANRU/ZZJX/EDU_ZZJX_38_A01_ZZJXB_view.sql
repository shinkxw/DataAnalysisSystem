
--中职教学班表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_38_A01_ZZJXB_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[ZZXQID]--校区ID
      ,a.[XQID]--学期ID
      ,a.[ZYXXID]--专业ID
      ,a.[NJID]--年级ID
      ,a.[JXBMC]--教学班级名称
      ,a.[TEACHERID1]--主任老师ID
      ,a.[TEACHERID2]--辅助老师ID
      ,a.[KCQDID]--课程清单ID
      ,a.[KCH]--课程号
      ,a.[CLASSROOM]--教室ID
      ,a.[ZDBJ]--指定班级
      ,a.[ZDBJMC]--指定班级名称
      ,a.[RS]--人数
      ,a.[T1NAME]--主任老师姓名
      ,a.[T2NAME]--辅助老师姓名
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
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,g.GH as g_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,g.XM as g_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,g.YWXM as g_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,g.XMPY as g_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,g.CYM as g_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[gb].MC as g_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,g.SFZJH as g_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,g.CSRQ as g_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,g.XBM as g_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[gc].MC as g_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,g.MZM as g_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[gd].MZMC as g_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[gd].ZMDM as g_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,g.XXM as g_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[ge].MC as g_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[ge].JC as g_JZGJBSJ_XXM_JC--血型代码表 简称
      ,g.JKZKM as g_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[gf].MC as g_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[gf].SM as g_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,g.HYZTM as g_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[gg].MC as g_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[gh].MC as g_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[gh].JC as g_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,g.GATQWM as g_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[gi].MC as g_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[gi].SM as g_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,g.JG as g_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,g.GJDQM as g_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[gj].GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[gj].EZMDM as g_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[gj].SZMDM as g_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,g.CSDXZQHM as g_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[gk].MC as g_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,g.XYZJM as g_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[gl].MC as g_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,g.JZGHKSZDXZQHM as g_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[gm].MC as g_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,g.HKLBM as g_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[gn].MC as g_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,g.DQZZ as g_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,g.DQZZYZBM as g_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,g.CJGZNY as g_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,g.CJNY as g_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,g.LXNY as g_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,g.BZLBM as g_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[go].MC as g_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,g.JZGLBM as g_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[gp].MC as g_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[gp].SM as g_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,g.GWLBM as g_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[gq].MC as g_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,g.SFJZJS as g_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[gr].MC as g_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,g.SFSSXJS as g_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[gs].MC as g_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,g.ZP as g_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,g.DQZTM as g_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[gt].MC as g_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,g.YDDH as g_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,g.GDDH as g_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,g.TXDZYZBM as g_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,g.TXDZ as g_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,g.DZXX as g_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,g.WLDZ as g_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,g.JSTXH as g_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,h.SCHOOLID as h_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,h.GH as h_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,h.XM as h_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,h.YWXM as h_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,h.XMPY as h_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,h.CYM as h_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,h.SFZJLXM as h_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[hb].MC as h_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,h.SFZJH as h_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,h.CSRQ as h_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,h.XBM as h_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[hc].MC as h_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,h.MZM as h_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[hd].MZMC as h_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[hd].ZMDM as h_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,h.XXM as h_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[he].MC as h_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[he].JC as h_JZGJBSJ_XXM_JC--血型代码表 简称
      ,h.JKZKM as h_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[hf].MC as h_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[hf].SM as h_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,h.HYZTM as h_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[hg].MC as h_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,h.ZZMMM as h_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[hh].MC as h_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[hh].JC as h_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,h.GATQWM as h_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[hi].MC as h_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[hi].SM as h_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,h.JG as h_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,h.GJDQM as h_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[hj].GJDQMCJC as h_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[hj].EZMDM as h_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[hj].SZMDM as h_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,h.CSDXZQHM as h_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[hk].MC as h_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,h.XYZJM as h_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[hl].MC as h_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,h.JZGHKSZDXZQHM as h_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[hm].MC as h_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,h.HKLBM as h_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[hn].MC as h_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,h.DQZZ as h_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,h.DQZZYZBM as h_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,h.CJGZNY as h_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,h.CJNY as h_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,h.LXNY as h_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,h.BZLBM as h_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[ho].MC as h_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,h.JZGLBM as h_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[hp].MC as h_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[hp].SM as h_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,h.GWLBM as h_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[hq].MC as h_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,h.SFJZJS as h_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[hr].MC as h_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,h.SFSSXJS as h_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[hs].MC as h_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,h.ZP as h_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,h.DQZTM as h_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[ht].MC as h_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,h.YDDH as h_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,h.GDDH as h_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,h.TXDZYZBM as h_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,h.TXDZ as h_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,h.DZXX as h_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,h.WLDZ as h_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,h.JSTXH as h_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,i.SCHOOLID as i_JXJHKCQD_SCHOOLID--教学计划课程清单数据子类表 学校ID
      ,i.JXJHID as i_JXJHKCQD_JXJHID--教学计划课程清单数据子类表 教学计划ID
      ,i.KCH as i_JXJHKCQD_KCH--教学计划课程清单数据子类表 课程号
      ,i.JHBH as i_JXJHKCQD_JHBH--教学计划课程清单数据子类表 计划编号
      ,i.XQID as i_JXJHKCQD_XQID--教学计划课程清单数据子类表 学期ID
      ,i.KCMC as i_JXJHKCQD_KCMC--教学计划课程清单数据子类表 课程名称
      ,i.YXKC as i_JXJHKCQD_YXKC--教学计划课程清单数据子类表 预修课程
      ,i.SFHXKC as i_JXJHKCQD_SFHXKC--教学计划课程清单数据子类表 是否核心（骨干）
      ,[ib].MC as i_JXJHKCQD_SFHXKC_MC--是否标志代码表 名称
      ,i.KCFLM as i_JXJHKCQD_KCFLM--教学计划课程清单数据子类表 课程分类码
      ,[ic].MC as i_JXJHKCQD_KCFLM_MC--课程分类代码 名称
      ,i.KCSXM as i_JXJHKCQD_KCSXM--教学计划课程清单数据子类表 课程属性码
      ,[id].MC as i_JXJHKCQD_KCSXM_MC--课程属性代码表 名称
      ,[id].SM as i_JXJHKCQD_KCSXM_SM--课程属性代码表 说明
      ,i.ZXXQ as i_JXJHKCQD_ZXXQ--教学计划课程清单数据子类表 执行学期
      ,i.ZKS as i_JXJHKCQD_ZKS--教学计划课程清单数据子类表 总课时
      ,i.LLKS as i_JXJHKCQD_LLKS--教学计划课程清单数据子类表 理论课时
      ,i.SJKS as i_JXJHKCQD_SJKS--教学计划课程清单数据子类表 实践课时
      ,i.XF as i_JXJHKCQD_XF--教学计划课程清单数据子类表 学分
      ,i.XFRDHGX as i_JXJHKCQD_XFRDHGX--教学计划课程清单数据子类表 学分认定合格线
      ,j.SCHOOLID as j_KC_SCHOOLID--课程数据子类表 学校ID
      ,j.KCMC as j_KC_KCMC--课程数据子类表 课程名称
      ,j.KCYWM as j_KC_KCYWM--课程数据子类表 课程英文名
      ,j.KCBM as j_KC_KCBM--课程数据子类表 课程别名
      ,j.KCJS as j_KC_KCJS--课程数据子类表 课程介绍
      ,j.XF as j_KC_XF--课程数据子类表 学分
      ,j.ZXS as j_KC_ZXS--课程数据子类表 总学时
      ,j.LLXS as j_KC_LLXS--课程数据子类表 理论学时
      ,j.SJXS as j_KC_SJXS--课程数据子类表 实践学时
      ,j.QTXS as j_KC_QTXS--课程数据子类表 其他学时
      ,j.CKSM as j_KC_CKSM--课程数据子类表 参考书目
      ,j.KKDW as j_KC_KKDW--课程数据子类表 开课单位
      ,j.KSXS as j_KC_KSXS--课程数据子类表 考试形式
      ,[jb].MC as j_KC_KSXS_MC--考试形式代码表 名称
      ,j.SKFSM as j_KC_SKFSM--课程数据子类表 授课方式码
      ,[jc].MC as j_KC_SKFSM_MC--授课方式代码表 名称
      ,j.KCFY as j_KC_KCFY--课程数据子类表 课程费用
      ,k.SCHOOLID as k_CLASSROOM_SCHOOLID--教室表 学校
      ,k.Name as k_CLASSROOM_Name--教室表 教室名称
      ,k.Place as k_CLASSROOM_Place--教室表 地点
      ,k.Counts as k_CLASSROOM_Counts--教室表 座位数

FROM dbo.EDU_ZZJX_38_A01_ZZJXB AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_02_01_ZZXQSJ AS c ON a.ZZXQID = c.ID /*校区ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*学期ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS e ON a.ZYXXID = e.ZYBH /*专业ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS f ON a.NJID = f.NJDM /*年级ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS g ON a.TEACHERID1 = g.ID /*主任老师ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS h ON a.TEACHERID2 = h.ID /*辅助老师ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS i ON a.KCQDID = i.ID /*课程清单ID*/ AND a.SCHOOLID = i.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS j ON a.KCH = j.KCH /*课程号*/ AND a.SCHOOLID = j.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_30_A01_CLASSROOM AS k ON a.CLASSROOM = k.ID /*教室ID*/ AND a.SCHOOLID = k.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cb] ON c.XQSZDXZQHM = [cb].DM /*校区所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [eb] ON e.ZYDM = [eb].DM /*专业代码*/ AND e.SSZYML = [eb].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [ec] ON e.SSZYML = [ec].DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.NJZT = [fb].DM /*年级状态*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [gb] ON g.SFZJLXM = [gb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [gc] ON g.XBM = [gc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [gd] ON g.MZM = [gd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ge] ON g.XXM = [ge].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [gf] ON g.JKZKM = [gf].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [gg] ON g.HYZTM = [gg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [gh] ON g.ZZMMM = [gh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [gi] ON g.GATQWM = [gi].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [gj] ON g.GJDQM = [gj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [gk] ON g.CSDXZQHM = [gk].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [gl] ON g.XYZJM = [gl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [gm] ON g.JZGHKSZDXZQHM = [gm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [gn] ON g.HKLBM = [gn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [go] ON g.BZLBM = [go].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [gp] ON g.JZGLBM = [gp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [gq] ON g.GWLBM = [gq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gr] ON g.SFJZJS = [gr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gs] ON g.SFSSXJS = [gs].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [gt] ON g.DQZTM = [gt].DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [hb] ON h.SFZJLXM = [hb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [hc] ON h.XBM = [hc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [hd] ON h.MZM = [hd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [he] ON h.XXM = [he].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [hf] ON h.JKZKM = [hf].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [hg] ON h.HYZTM = [hg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [hh] ON h.ZZMMM = [hh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [hi] ON h.GATQWM = [hi].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [hj] ON h.GJDQM = [hj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [hk] ON h.CSDXZQHM = [hk].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [hl] ON h.XYZJM = [hl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [hm] ON h.JZGHKSZDXZQHM = [hm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [hn] ON h.HKLBM = [hn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [ho] ON h.BZLBM = [ho].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [hp] ON h.JZGLBM = [hp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [hq] ON h.GWLBM = [hq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hr] ON h.SFJZJS = [hr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hs] ON h.SFSSXJS = [hs].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [ht] ON h.DQZTM = [ht].DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ib] ON i.SFHXKC = [ib].DM /*是否核心（骨干）*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [ic] ON i.KCFLM = [ic].DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [id] ON i.KCSXM = [id].DM /*课程属性码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [jb] ON j.KSXS = [jb].DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [jc] ON j.SKFSM = [jc].DM /*授课方式码*/
GO
