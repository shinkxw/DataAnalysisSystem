
--教材选用信息表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_04_02_JCXYXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
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
      ,d.SCHOOLID as d_NJ_SCHOOLID--年级数据类表 学校名
      ,d.NJMC as d_NJ_NJMC--年级数据类表 年级名称
      ,e.SCHOOLID as e_KC_SCHOOLID--课程数据类 学校名
      ,e.KCMC as e_KC_KCMC--课程数据类 课程名称
      ,e.KCM as e_KC_KCM--课程数据类 课程码
      ,[eb].MC as e_KC_KCM_MC--中小学课程代码表 名称
      ,[eb].SYXX as e_KC_KCM_SYXX--中小学课程代码表 适用学校
      ,e.KCDJM as e_KC_KCDJM--课程数据类 课程等级码
      ,[ec].MC as e_KC_KCDJM_MC--中小学课程等级代码表 名称
      ,e.KCBM as e_KC_KCBM--课程数据类 课程别名
      ,e.KCJJ as e_KC_KCJJ--课程数据类 课程简介
      ,e.KCYQ as e_KC_KCYQ--课程数据类 课程要求
      ,e.ZXS as e_KC_ZXS--课程数据类 总学时
      ,e.ZHXS as e_KC_ZHXS--课程数据类 周学时
      ,e.ZXXS as e_KC_ZXXS--课程数据类 自学学时
      ,e.SKFSM as e_KC_SKFSM--课程数据类 授课方式码
      ,[ed].MC as e_KC_SKFSM_MC--授课方式代码表 名称
      ,e.JCBM as e_KC_JCBM--课程数据类 教材编码
      ,e.CKSM as e_KC_CKSM--课程数据类 参考书目
      ,e.CDXZ as e_KC_CDXZ--课程数据类 场地限制
      ,e.SFZK as e_KC_SFZK--课程数据类 是否主课
      ,[ee].MC as e_KC_SFZK_MC--是否标志代码表 名称
      ,e.PLSX as e_KC_PLSX--课程数据类 排列顺序
      ,f.SCHOOLID as f_JCJBXX_SCHOOLID--教材基本信息表 学校ID
      ,f.JCDM as f_JCJBXX_JCDM--教材基本信息表 教材代码
      ,f.JCMC as f_JCJBXX_JCMC--教材基本信息表 教材名称
      ,f.CBH as f_JCJBXX_CBH--教材基本信息表 出版号
      ,f.DYZZ as f_JCJBXX_DYZZ--教材基本信息表 第一作者
      ,f.QTZZ as f_JCJBXX_QTZZ--教材基本信息表 其他作者
      ,f.BC as f_JCJBXX_BC--教材基本信息表 版次
      ,f.YC as f_JCJBXX_YC--教材基本信息表 印次
      ,f.JG as f_JCJBXX_JG--教材基本信息表 价格
      ,f.CBS as f_JCJBXX_CBS--教材基本信息表 出版社
      ,f.CBRQ as f_JCJBXX_CBRQ--教材基本信息表 出版日期
      ,f.SFYLXC as f_JCJBXX_SFYLXC--教材基本信息表 是否有练习册
      ,[fb].MC as f_JCJBXX_SFYLXC_MC--是否标志代码表 名称
      ,f.SFYJCJF as f_JCJBXX_SFYJCJF--教材基本信息表 是否有教参教辅
      ,[fc].MC as f_JCJBXX_SFYJCJF_MC--是否标志代码表 名称
      ,f.NRJJ as f_JCJBXX_NRJJ--教材基本信息表 内容简介
      ,f.DQZT as f_JCJBXX_DQZT--教材基本信息表 当前状态
      ,f.ZDKC as f_JCJBXX_ZDKC--教材基本信息表 最低库存
      ,f.DQKC as f_JCJBXX_DQKC--教材基本信息表 当前库存
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,g.GH as g_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,g.XM as g_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,g.YWXM as g_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,g.XMPY as g_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,g.CYM as g_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,g.XBM as g_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[gb].MC as g_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,g.CSRQ as g_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,g.CSDM as g_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,[gc].MC as g_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,g.JG as g_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,g.MZM as g_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[gd].MZMC as g_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[gd].ZMDM as g_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,g.GJDQM as g_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[ge].GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[ge].EZMDM as g_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[ge].SZMDM as g_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[gf].MC as g_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,g.SFZJH as g_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,g.HYZKM as g_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,[gg].MC as g_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,g.GATQWM as g_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[gh].MC as g_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[gh].SM as g_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[gi].MC as g_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[gi].JC as g_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,g.JKZKM as g_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[gj].MC as g_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[gj].SM as g_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,g.XYZJM as g_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[gk].MC as g_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,g.XXM as g_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[gl].MC as g_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[gl].JC as g_JZGJBSJ_XXM_JC--血型代码表 简称
      ,g.ZP as g_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,g.SFZJYXQ as g_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,g.JGH as g_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,g.JTZZ as g_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,g.XZZ as g_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,g.HKSZD as g_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,g.HKXZM as g_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,[gm].MC as g_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,g.XLM as g_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,[gn].MC as g_JZGJBSJ_XLM_MC--学历代码 名称
      ,g.GZNY as g_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,g.LXNY as g_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,g.CJNY as g_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,g.BZLBM as g_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[go].MC as g_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,g.DABH as g_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,g.DAWB as g_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,g.TXDZ as g_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,g.LXDH as g_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,g.YZBM as g_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,g.DZXX as g_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,g.ZYDZ as g_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,g.TC as g_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,g.GWZYM as g_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,[gp].MC as g_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,g.ZYRKXD as g_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,[gq].MC as g_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,h.SCHOOLID as h_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,h.GH as h_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,h.XM as h_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,h.YWXM as h_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,h.XMPY as h_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,h.CYM as h_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,h.XBM as h_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[hb].MC as h_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,h.CSRQ as h_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,h.CSDM as h_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,[hc].MC as h_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,h.JG as h_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,h.MZM as h_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[hd].MZMC as h_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[hd].ZMDM as h_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,h.GJDQM as h_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[he].GJDQMCJC as h_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[he].EZMDM as h_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[he].SZMDM as h_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,h.SFZJLXM as h_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[hf].MC as h_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,h.SFZJH as h_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,h.HYZKM as h_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,[hg].MC as h_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,h.GATQWM as h_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[hh].MC as h_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[hh].SM as h_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,h.ZZMMM as h_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[hi].MC as h_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[hi].JC as h_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,h.JKZKM as h_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[hj].MC as h_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[hj].SM as h_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,h.XYZJM as h_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[hk].MC as h_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,h.XXM as h_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[hl].MC as h_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[hl].JC as h_JZGJBSJ_XXM_JC--血型代码表 简称
      ,h.ZP as h_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,h.SFZJYXQ as h_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,h.JGH as h_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,h.JTZZ as h_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,h.XZZ as h_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,h.HKSZD as h_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,h.HKXZM as h_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,[hm].MC as h_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,h.XLM as h_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,[hn].MC as h_JZGJBSJ_XLM_MC--学历代码 名称
      ,h.GZNY as h_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,h.LXNY as h_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,h.CJNY as h_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,h.BZLBM as h_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[ho].MC as h_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,h.DABH as h_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,h.DAWB as h_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,h.TXDZ as h_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,h.LXDH as h_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,h.YZBM as h_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,h.DZXX as h_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,h.ZYDZ as h_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,h.TC as h_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,h.GWZYM as h_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,[hp].MC as h_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,h.ZYRKXD as h_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,[hq].MC as h_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,i.MC as i_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZXJX_04_02_JCXYXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS d ON a.NJID = d.NJ /*年级ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS e ON a.KCID = e.KCH /*课程ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_04_01_JCJBXX AS f ON a.JCID = f.ID /*教材ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS g ON a.SQRID = g.ID /*申请人ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS h ON a.SHRID = h.ID /*审核人ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS i ON a.SFRK = i.DM /*是否入库*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS [eb] ON e.KCM = [eb].DM /*课程码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS [ec] ON e.KCDJM = [ec].DM /*课程等级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [ed] ON e.SKFSM = [ed].DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ee] ON e.SFZK = [ee].DM /*是否主课*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.SFYLXC = [fb].DM /*是否有练习册*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fc] ON f.SFYJCJF = [fc].DM /*是否有教参教辅*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [gb] ON g.XBM = [gb].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [gc] ON g.CSDM = [gc].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [gd] ON g.MZM = [gd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ge] ON g.GJDQM = [ge].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [gf] ON g.SFZJLXM = [gf].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [gg] ON g.HYZKM = [gg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [gh] ON g.GATQWM = [gh].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [gi] ON g.ZZMMM = [gi].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [gj] ON g.JKZKM = [gj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [gk] ON g.XYZJM = [gk].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [gl] ON g.XXM = [gl].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [gm] ON g.HKXZM = [gm].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [gn] ON g.XLM = [gn].DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [go] ON g.BZLBM = [go].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [gp] ON g.GWZYM = [gp].DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [gq] ON g.ZYRKXD = [gq].DM /*主要任课学段*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [hb] ON h.XBM = [hb].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [hc] ON h.CSDM = [hc].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [hd] ON h.MZM = [hd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [he] ON h.GJDQM = [he].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [hf] ON h.SFZJLXM = [hf].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [hg] ON h.HYZKM = [hg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [hh] ON h.GATQWM = [hh].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [hi] ON h.ZZMMM = [hi].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [hj] ON h.JKZKM = [hj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [hk] ON h.XYZJM = [hk].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [hl] ON h.XXM = [hl].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [hm] ON h.HKXZM = [hm].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [hn] ON h.XLM = [hn].DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [ho] ON h.BZLBM = [ho].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [hp] ON h.GWZYM = [hp].DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [hq] ON h.ZYRKXD = [hq].DM /*主要任课学段*/
GO
