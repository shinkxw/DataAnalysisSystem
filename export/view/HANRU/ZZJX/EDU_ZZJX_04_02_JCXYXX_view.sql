
--教材选用信息表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_04_02_JCXYXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZYXXID]--专业ID
      ,a.[NJID]--年级ID
      ,a.[KCID]--课程ID
      ,a.[JCID]--教材ID
      ,a.[XYSL]--选用数量
      ,a.[SQRID]--申请人ID
      ,a.[SQSJ]--申请时间
      ,a.[SHZT]--审核状态
      ,a.[SHRID]--审核人ID
      ,a.[SHSJ]--审核时间
      ,a.[SFRK]--是否入库
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,d.ZYDM as d_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,[db].ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,[db].MC as d_ZYXX_ZYDM_MC--自建专业代码 名称
      ,d.ZYMC as d_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,d.XZ as d_ZYXX_XZ--专业基本信息数据表 学制
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,d.ZYJC as d_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,d.JLNY as d_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,d.ZYJSS as d_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,d.KSJGH as d_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,d.ZXF as d_ZYXX_ZXF--专业基本信息数据表 总学分
      ,d.SSZYML as d_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,[dc].MC as d_ZYXX_SSZYML_MC--专业目录代码 名称
      ,d.ZYLB as d_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,d.XXZ as d_ZYXX_XXZ--专业基本信息数据表 新学制
      ,d.XZXF as d_ZYXX_XZXF--专业基本信息数据表 新总学分
      ,d.PYMB as d_ZYXX_PYMB--专业基本信息数据表 培养目标
      ,d.PYGG as d_ZYXX_PYGG--专业基本信息数据表 培养规格
      ,d.ZKS as d_ZYXX_ZKS--专业基本信息数据表 总课时
      ,d.SFSY as d_ZYXX_SFSY--专业基本信息数据表 是否使用
      ,e.SCHOOLID as e_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,e.NJMC as e_ZZNJ_NJMC--学校年级数据表 年级名称
      ,e.SSNF as e_ZZNJ_SSNF--学校年级数据表 所属年份
      ,e.NJZT as e_ZZNJ_NJZT--学校年级数据表 年级状态
      ,[eb].MC as e_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,e.PLSX as e_ZZNJ_PLSX--学校年级数据表 排列顺序
      ,f.SCHOOLID as f_KC_SCHOOLID--课程数据子类表 学校ID
      ,f.KCMC as f_KC_KCMC--课程数据子类表 课程名称
      ,f.KCYWM as f_KC_KCYWM--课程数据子类表 课程英文名
      ,f.KCBM as f_KC_KCBM--课程数据子类表 课程别名
      ,f.KCJS as f_KC_KCJS--课程数据子类表 课程介绍
      ,f.XF as f_KC_XF--课程数据子类表 学分
      ,f.ZXS as f_KC_ZXS--课程数据子类表 总学时
      ,f.LLXS as f_KC_LLXS--课程数据子类表 理论学时
      ,f.SJXS as f_KC_SJXS--课程数据子类表 实践学时
      ,f.QTXS as f_KC_QTXS--课程数据子类表 其他学时
      ,f.CKSM as f_KC_CKSM--课程数据子类表 参考书目
      ,f.KKDW as f_KC_KKDW--课程数据子类表 开课单位
      ,f.KSXS as f_KC_KSXS--课程数据子类表 考试形式
      ,[fb].MC as f_KC_KSXS_MC--考试形式代码表 名称
      ,f.SKFSM as f_KC_SKFSM--课程数据子类表 授课方式码
      ,[fc].MC as f_KC_SKFSM_MC--授课方式代码表 名称
      ,f.KCFY as f_KC_KCFY--课程数据子类表 课程费用
      ,g.SCHOOLID as g_JCJBXX_SCHOOLID--教材基本信息表 学校ID
      ,g.JCDM as g_JCJBXX_JCDM--教材基本信息表 教材代码
      ,g.JCMC as g_JCJBXX_JCMC--教材基本信息表 教材名称
      ,g.CBH as g_JCJBXX_CBH--教材基本信息表 出版号
      ,g.DYZZ as g_JCJBXX_DYZZ--教材基本信息表 第一作者
      ,g.QTZZ as g_JCJBXX_QTZZ--教材基本信息表 其他作者
      ,g.BC as g_JCJBXX_BC--教材基本信息表 版次
      ,g.YC as g_JCJBXX_YC--教材基本信息表 印次
      ,g.JG as g_JCJBXX_JG--教材基本信息表 价格
      ,g.CBS as g_JCJBXX_CBS--教材基本信息表 出版社
      ,g.CBRQ as g_JCJBXX_CBRQ--教材基本信息表 出版日期
      ,g.SFYLXC as g_JCJBXX_SFYLXC--教材基本信息表 是否有练习册
      ,[gb].MC as g_JCJBXX_SFYLXC_MC--是否标志代码表 名称
      ,g.SFYJCJF as g_JCJBXX_SFYJCJF--教材基本信息表 是否有教参教辅
      ,[gc].MC as g_JCJBXX_SFYJCJF_MC--是否标志代码表 名称
      ,g.NRJJ as g_JCJBXX_NRJJ--教材基本信息表 内容简介
      ,g.DQZT as g_JCJBXX_DQZT--教材基本信息表 当前状态
      ,g.ZDKC as g_JCJBXX_ZDKC--教材基本信息表 最低库存
      ,g.DQKC as g_JCJBXX_DQKC--教材基本信息表 当前库存
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
      ,h.JSKQJS as h_JZGJBSJ_JSKQJS--教职工基本数据子类表 教师考勤角色
      ,h.FullTeacherName as h_JZGJBSJ_FullTeacherName--教职工基本数据子类表 完整老师姓名
      ,h.RecordID as h_JZGJBSJ_RecordID--教职工基本数据子类表 记录ID
      ,h.TeacherGroupId as h_JZGJBSJ_TeacherGroupId--教职工基本数据子类表 表TeacherGroup的外键
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
      ,i.JSKQJS as i_JZGJBSJ_JSKQJS--教职工基本数据子类表 教师考勤角色
      ,i.FullTeacherName as i_JZGJBSJ_FullTeacherName--教职工基本数据子类表 完整老师姓名
      ,i.RecordID as i_JZGJBSJ_RecordID--教职工基本数据子类表 记录ID
      ,i.TeacherGroupId as i_JZGJBSJ_TeacherGroupId--教职工基本数据子类表 表TeacherGroup的外键
      ,j.MC as j_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZZJX_04_02_JCXYXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*专业ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS e ON a.NJID = e.NJDM /*年级ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS f ON a.KCID = f.KCH /*课程ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_04_01_JCJBXX AS g ON a.JCID = g.ID /*教材ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS h ON a.SQRID = h.ID /*申请人ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS i ON a.SHRID = i.ID /*审核人ID*/ AND a.SCHOOLID = i.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS j ON a.SFRK = j.DM /*是否入库*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [db] ON d.ZYDM = [db].DM /*专业代码*/ AND d.SSZYML = [db].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [dc] ON d.SSZYML = [dc].DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [eb] ON e.NJZT = [eb].DM /*年级状态*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [fb] ON f.KSXS = [fb].DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [fc] ON f.SKFSM = [fc].DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gb] ON g.SFYLXC = [gb].DM /*是否有练习册*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gc] ON g.SFYJCJF = [gc].DM /*是否有教参教辅*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_JZGDQZT AS [it] ON i.DQZTM = [it].DM /*当前状态码*/
GO
