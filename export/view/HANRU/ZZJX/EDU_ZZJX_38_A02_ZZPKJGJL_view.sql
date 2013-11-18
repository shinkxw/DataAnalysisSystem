
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
      ,a.[TEACHERID1]--主任老师ID
      ,a.[TEACHERID2]--辅助老师ID
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
      ,i.SCHOOLID as i_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,i.GH as i_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,i.XM as i_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,i.YWXM as i_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,i.XMPY as i_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,i.CYM as i_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,i.SFZJLXM as i_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[ib].MC as i_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,i.SFZJH as i_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,i.CSRQ as i_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,i.XBM as i_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[ic].MC as i_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,i.MZM as i_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[id].MZMC as i_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[id].ZMDM as i_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,i.XXM as i_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[ie].MC as i_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[ie].JC as i_JZGJBSJ_XXM_JC--血型代码表 简称
      ,i.JKZKM as i_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[if].MC as i_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[if].SM as i_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,i.HYZTM as i_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[ig].MC as i_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,i.ZZMMM as i_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[ih].MC as i_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[ih].JC as i_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,i.GATQWM as i_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[ii].MC as i_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[ii].SM as i_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,i.JG as i_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,i.GJDQM as i_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[ij].GJDQMCJC as i_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[ij].EZMDM as i_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[ij].SZMDM as i_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,i.CSDXZQHM as i_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[ik].MC as i_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,i.XYZJM as i_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[il].MC as i_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,i.JZGHKSZDXZQHM as i_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[im].MC as i_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,i.HKLBM as i_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[in].MC as i_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,i.DQZZ as i_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,i.DQZZYZBM as i_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,i.CJGZNY as i_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,i.CJNY as i_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,i.LXNY as i_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,i.BZLBM as i_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[io].MC as i_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,i.JZGLBM as i_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[ip].MC as i_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[ip].SM as i_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,i.GWLBM as i_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[iq].MC as i_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,i.SFJZJS as i_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[ir].MC as i_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,i.SFSSXJS as i_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[is].MC as i_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,i.ZP as i_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,i.DQZTM as i_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[it].MC as i_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,i.YDDH as i_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,i.GDDH as i_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,i.TXDZYZBM as i_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,i.TXDZ as i_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,i.DZXX as i_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,i.WLDZ as i_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,i.JSTXH as i_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,j.SCHOOLID as j_JXJHKCQD_SCHOOLID--教学计划课程清单数据子类表 学校ID
      ,j.JXJHID as j_JXJHKCQD_JXJHID--教学计划课程清单数据子类表 教学计划ID
      ,j.KCH as j_JXJHKCQD_KCH--教学计划课程清单数据子类表 课程号
      ,j.JHBH as j_JXJHKCQD_JHBH--教学计划课程清单数据子类表 计划编号
      ,j.XQID as j_JXJHKCQD_XQID--教学计划课程清单数据子类表 学期ID
      ,j.KCMC as j_JXJHKCQD_KCMC--教学计划课程清单数据子类表 课程名称
      ,j.YXKC as j_JXJHKCQD_YXKC--教学计划课程清单数据子类表 预修课程
      ,j.SFHXKC as j_JXJHKCQD_SFHXKC--教学计划课程清单数据子类表 是否核心（骨干）
      ,[jb].MC as j_JXJHKCQD_SFHXKC_MC--授课方式代码表 名称
      ,j.KCFLM as j_JXJHKCQD_KCFLM--教学计划课程清单数据子类表 课程分类码
      ,[jc].MC as j_JXJHKCQD_KCFLM_MC--课程分类代码 名称
      ,j.KCSXM as j_JXJHKCQD_KCSXM--教学计划课程清单数据子类表 课程属性码
      ,[jd].MC as j_JXJHKCQD_KCSXM_MC--课程属性代码表 名称
      ,[jd].SM as j_JXJHKCQD_KCSXM_SM--课程属性代码表 说明
      ,j.ZXXQ as j_JXJHKCQD_ZXXQ--教学计划课程清单数据子类表 执行学期
      ,j.ZKS as j_JXJHKCQD_ZKS--教学计划课程清单数据子类表 总课时
      ,j.LLKS as j_JXJHKCQD_LLKS--教学计划课程清单数据子类表 理论课时
      ,j.SJKS as j_JXJHKCQD_SJKS--教学计划课程清单数据子类表 实践课时
      ,j.XF as j_JXJHKCQD_XF--教学计划课程清单数据子类表 学分
      ,j.XFRDHGX as j_JXJHKCQD_XFRDHGX--教学计划课程清单数据子类表 学分认定合格线
      ,k.SCHOOLID as k_KC_SCHOOLID--课程数据子类表 学校ID
      ,k.KCMC as k_KC_KCMC--课程数据子类表 课程名称
      ,k.KCYWM as k_KC_KCYWM--课程数据子类表 课程英文名
      ,k.KCBM as k_KC_KCBM--课程数据子类表 课程别名
      ,k.KCJS as k_KC_KCJS--课程数据子类表 课程介绍
      ,k.XF as k_KC_XF--课程数据子类表 学分
      ,k.ZXS as k_KC_ZXS--课程数据子类表 总学时
      ,k.LLXS as k_KC_LLXS--课程数据子类表 理论学时
      ,k.SJXS as k_KC_SJXS--课程数据子类表 实践学时
      ,k.QTXS as k_KC_QTXS--课程数据子类表 其他学时
      ,k.CKSM as k_KC_CKSM--课程数据子类表 参考书目
      ,k.KKDW as k_KC_KKDW--课程数据子类表 开课单位
      ,k.KSXS as k_KC_KSXS--课程数据子类表 考试形式
      ,[kb].MC as k_KC_KSXS_MC--考试形式代码表 名称
      ,k.SKFSM as k_KC_SKFSM--课程数据子类表 授课方式码
      ,[kc].MC as k_KC_SKFSM_MC--授课方式代码表 名称
      ,k.KCFY as k_KC_KCFY--课程数据子类表 课程费用
      ,l.SCHOOLID as l_CLASSROOM_SCHOOLID--教室表 学校
      ,l.Name as l_CLASSROOM_Name--教室表 教室名称
      ,l.Place as l_CLASSROOM_Place--教室表 地点
      ,l.Counts as l_CLASSROOM_Counts--教室表 座位数
      ,m.SCHOOLID as m_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,m.ZYXXID as m_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,m.ZZNJID as m_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,m.XZBMC as m_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,m.JBNY as m_ZZBJ_JBNY--学校班级数据表 建班年月
      ,m.BZRGH as m_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,m.JSBH as m_ZZBJ_JSBH--学校班级数据表 教室编号
      ,m.NANSRS as m_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,m.NVSRS as m_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,m.ZRS as m_ZZBJ_ZRS--学校班级数据表 总人数
      ,m.BZXH as m_ZZBJ_BZXH--学校班级数据表 班长学号
      ,m.JXJH as m_ZZBJ_JXJH--学校班级数据表 教学计划
      ,m.JGH as m_ZZBJ_JGH--学校班级数据表 机构号
      ,m.XQDM as m_ZZBJ_XQDM--学校班级数据表 校区代码
      ,m.BZRID as m_ZZBJ_BZRID--学校班级数据表 班主任ID
      ,n.SCHOOLID as n_WEEKDAY_SCHOOLID--星期 学校名
      ,n.MC as n_WEEKDAY_MC--星期 名称
      ,o.SCHOOLID as o_SD_SCHOOLID--时段 学校名
      ,o.MC as o_SD_MC--时段 名称
      ,p.SCHOOLID as p_JC_SCHOOLID--节次 学校名
      ,p.SDID as p_JC_SDID--节次 所属时段ID
      ,p.MC as p_JC_MC--节次 名称

FROM dbo.EDU_ZZJX_38_A02_ZZPKJGJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_02_01_ZZXQSJ AS c ON a.ZZXQID = c.ID /*校区ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*学期ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS e ON a.ZYXXID = e.ZYBH /*专业ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS f ON a.NJID = f.NJDM /*年级ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_38_A01_ZZJXB AS g ON a.JXBID = g.ID /*教学班级ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS h ON a.TEACHERID1 = h.ID /*主任老师ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS i ON a.TEACHERID2 = i.ID /*辅助老师ID*/ AND a.SCHOOLID = i.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS j ON a.KCQDID = j.ID /*课程清单ID*/ AND a.SCHOOLID = j.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS k ON a.KCH = k.KCH /*课程号*/ AND a.SCHOOLID = k.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_30_A01_CLASSROOM AS l ON a.CLASSROOM = l.ID /*教室ID*/ AND a.SCHOOLID = l.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS m ON a.ZZBJID = m.XZBDM /*行政班级ID*/ AND a.SCHOOLID = m.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_WEEKDAY AS n ON a.WEEKDAY = n.ID /*工作日ID*/ AND a.SCHOOLID = n.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_SD AS o ON a.PERIOD = o.ID /*时段ID*/ AND a.SCHOOLID = o.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_JC AS p ON a.SESSION = p.ID /*节次ID*/ AND a.SCHOOLID = p.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cb] ON c.XQSZDXZQHM = [cb].DM /*校区所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [eb] ON e.ZYDM = [eb].DM /*专业代码*/ AND e.SSZYML = [eb].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [ec] ON e.SSZYML = [ec].DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.NJZT = [fb].DM /*年级状态*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SFZJLX AS [ib] ON i.SFZJLXM = [ib].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ic] ON i.XBM = [ic].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [id] ON i.MZM = [id].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ie] ON i.XXM = [ie].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [if] ON i.JKZKM = [if].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [ig] ON i.HYZTM = [ig].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ih] ON i.ZZMMM = [ih].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ii] ON i.GATQWM = [ii].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ij] ON i.GJDQM = [ij].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ik] ON i.CSDXZQHM = [ik].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [il] ON i.XYZJM = [il].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [im] ON i.JZGHKSZDXZQHM = [im].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [in] ON i.HKLBM = [in].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [io] ON i.BZLBM = [io].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [ip] ON i.JZGLBM = [ip].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [iq] ON i.GWLBM = [iq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ir] ON i.SFJZJS = [ir].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [is] ON i.SFSSXJS = [is].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [it] ON i.DQZTM = [it].DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [jb] ON j.SFHXKC = [jb].DM /*是否核心（骨干）*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [jc] ON j.KCFLM = [jc].DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [jd] ON j.KCSXM = [jd].DM /*课程属性码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [kb] ON k.KSXS = [kb].DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [kc] ON k.SKFSM = [kc].DM /*授课方式码*/
GO
