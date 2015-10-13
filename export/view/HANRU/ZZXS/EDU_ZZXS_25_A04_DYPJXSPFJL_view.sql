
--德育评价学生评分记录表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_25_A04_DYPJXSPFJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[ZCID]--周次ID
      ,a.[JSID]--教师ID
      ,a.[XSID]--学生ID
      ,a.[DLID]--大类ID
      ,a.[XLID]--小类ID
      ,a.[SJ]--时间
      ,a.[FZ]--分值
      ,a.[BZ]--备注
      ,a.[ZT]--状态
      ,a.[TJSJ]--添加时间
      ,a.[XFSQJSID]--销分申请教师ID
      ,a.[XFSQSJ]--销分申请时间
      ,a.[XFLY]--销分理由
      ,a.[XFCLJSID]--销分处理教师ID
      ,a.[XFCLSJ]--销分处理时间
      ,a.[CLYJ]--处理意见
      ,a.[GLBJPFJLID]--关联班级评分记录ID
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
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[eb].MC as e_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,e.SFZJH as e_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,e.CSRQ as e_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,e.XBM as e_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[ec].MC as e_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,e.MZM as e_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[ed].MZMC as e_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[ed].ZMDM as e_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,e.XXM as e_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[ee].MC as e_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[ee].JC as e_JZGJBSJ_XXM_JC--血型代码表 简称
      ,e.JKZKM as e_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[ef].MC as e_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[ef].SM as e_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,e.HYZTM as e_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[eg].MC as e_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[eh].MC as e_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[eh].JC as e_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,e.GATQWM as e_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[ei].MC as e_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[ei].SM as e_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,e.JG as e_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,e.GJDQM as e_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[ej].GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[ej].EZMDM as e_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[ej].SZMDM as e_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,e.CSDXZQHM as e_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[ek].MC as e_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,e.XYZJM as e_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[el].MC as e_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,e.JZGHKSZDXZQHM as e_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[em].MC as e_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,e.HKLBM as e_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[en].MC as e_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,e.DQZZ as e_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,e.DQZZYZBM as e_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,e.CJGZNY as e_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,e.CJNY as e_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,e.LXNY as e_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,e.BZLBM as e_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[eo].MC as e_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,e.JZGLBM as e_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[ep].MC as e_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[ep].SM as e_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,e.GWLBM as e_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[eq].MC as e_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,e.SFJZJS as e_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[er].MC as e_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,e.SFSSXJS as e_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[es].MC as e_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,e.ZP as e_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,e.DQZTM as e_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[et].MC as e_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,e.YDDH as e_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,e.GDDH as e_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,e.TXDZYZBM as e_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,e.TXDZ as e_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,e.DZXX as e_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,e.WLDZ as e_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,e.JSTXH as e_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,e.JSKQJS as e_JZGJBSJ_JSKQJS--教职工基本数据子类表 教师考勤角色
      ,e.TeacherGroupId as e_JZGJBSJ_TeacherGroupId--教职工基本数据子类表 表TeacherGroup的外键
      ,f.SCHOOLID as f_XSXX_SCHOOLID--学生信息数据表 学校名
      ,f.XH as f_XSXX_XH--学生信息数据表 学号
      ,f.XM as f_XSXX_XM--学生信息数据表 姓名
      ,f.YWXM as f_XSXX_YWXM--学生信息数据表 英文姓名
      ,f.XMPY as f_XSXX_XMPY--学生信息数据表 姓名拼音
      ,f.CYM as f_XSXX_CYM--学生信息数据表 曾用名
      ,f.SFZJLXM as f_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,[fb].MC as f_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,f.SFZJH as f_XSXX_SFZJH--学生信息数据表 身份证件号
      ,f.XBM as f_XSXX_XBM--学生信息数据表 性别码
      ,[fc].MC as f_XSXX_XBM_MC--人的性别代码 名称
      ,f.XXM as f_XSXX_XXM--学生信息数据表 血型码
      ,[fd].MC as f_XSXX_XXM_MC--血型代码表 名称
      ,[fd].JC as f_XSXX_XXM_JC--血型代码表 简称
      ,f.CSRQ as f_XSXX_CSRQ--学生信息数据表 出生日期
      ,f.CSDM as f_XSXX_CSDM--学生信息数据表 出生地码
      ,[fe].MC as f_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,f.JG as f_XSXX_JG--学生信息数据表 籍贯
      ,f.MZM as f_XSXX_MZM--学生信息数据表 民族码
      ,[ff].MZMC as f_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[ff].ZMDM as f_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,f.HYZKM as f_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,[fg].MC as f_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,f.XYZJM as f_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,[fh].MC as f_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,f.GATQWM as f_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,[fi].MC as f_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[fi].SM as f_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,f.JKZKM as f_XSXX_JKZKM--学生信息数据表 健康状况码
      ,[fj].MC as f_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[fj].SM as f_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,f.ZZMMM as f_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,[fk].MC as f_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[fk].JC as f_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,f.HKSZDXZQHM as f_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,[fl].MC as f_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,f.HKLBM as f_XSXX_HKLBM--学生信息数据表 户口类别码
      ,[fm].MC as f_XSXX_HKLBM_MC--户口类别代码 名称
      ,f.SFSLDRK as f_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,[fn].MC as f_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,f.GJDQM as f_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,[fo].GJDQMCJC as f_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[fo].EZMDM as f_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[fo].SZMDM as f_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,f.TC as f_XSXX_TC--学生信息数据表 特长
      ,f.XSLXDH as f_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,f.WLDZ as f_XSXX_WLDZ--学生信息数据表 网络地址
      ,f.JSTXH as f_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,f.DZXX as f_XSXX_DZXX--学生信息数据表 电子信箱
      ,f.ZP as f_XSXX_ZP--学生信息数据表 照片(路径)
      ,f.RXXQID as f_XSXX_RXXQID--学生信息数据表 入学学期ID
      ,f.NFCKH as f_XSXX_NFCKH--学生信息数据表 NFC卡号
      ,g.SCHOOLID as g_DYPJDL_SCHOOLID--德育评价大类表 学校
      ,g.PFDXLX as g_DYPJDL_PFDXLX--德育评价大类表 评分对象类型
      ,g.MC as g_DYPJDL_MC--德育评价大类表 名称
      ,g.PLSX as g_DYPJDL_PLSX--德育评价大类表 排列顺序
      ,h.SCHOOLID as h_DYPJXL_SCHOOLID--德育评价小类表 学校
      ,h.PFDXLX as h_DYPJXL_PFDXLX--德育评价小类表 评分对象类型
      ,h.DLID as h_DYPJXL_DLID--德育评价小类表 大类ID
      ,h.MC as h_DYPJXL_MC--德育评价小类表 名称
      ,h.MRFZ as h_DYPJXL_MRFZ--德育评价小类表 默认分值
      ,h.NFXGFZ as h_DYPJXL_NFXGFZ--德育评价小类表 能否修改分值
      ,h.FZSX as h_DYPJXL_FZSX--德育评价小类表 分值上限
      ,h.FZXX as h_DYPJXL_FZXX--德育评价小类表 分值下限
      ,h.PLSX as h_DYPJXL_PLSX--德育评价小类表 排列顺序
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
      ,i.TeacherGroupId as i_JZGJBSJ_TeacherGroupId--教职工基本数据子类表 表TeacherGroup的外键
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
      ,k.SCHOOLID as k_DYPJBJPFJL_SCHOOLID--德育评价班级评分记录表 学校
      ,k.XQID as k_DYPJBJPFJL_XQID--德育评价班级评分记录表 学期ID
      ,k.ZCID as k_DYPJBJPFJL_ZCID--德育评价班级评分记录表 周次ID
      ,k.JSID as k_DYPJBJPFJL_JSID--德育评价班级评分记录表 教师ID
      ,k.BJID as k_DYPJBJPFJL_BJID--德育评价班级评分记录表 班级ID
      ,k.DLID as k_DYPJBJPFJL_DLID--德育评价班级评分记录表 大类ID
      ,k.XLID as k_DYPJBJPFJL_XLID--德育评价班级评分记录表 小类ID
      ,k.SJ as k_DYPJBJPFJL_SJ--德育评价班级评分记录表 时间
      ,k.FZ as k_DYPJBJPFJL_FZ--德育评价班级评分记录表 分值
      ,k.BZ as k_DYPJBJPFJL_BZ--德育评价班级评分记录表 备注
      ,k.ZT as k_DYPJBJPFJL_ZT--德育评价班级评分记录表 状态
      ,k.TJSJ as k_DYPJBJPFJL_TJSJ--德育评价班级评分记录表 添加时间
      ,k.XFSQJSID as k_DYPJBJPFJL_XFSQJSID--德育评价班级评分记录表 销分申请教师ID
      ,k.XFSQSJ as k_DYPJBJPFJL_XFSQSJ--德育评价班级评分记录表 销分申请时间
      ,k.XFLY as k_DYPJBJPFJL_XFLY--德育评价班级评分记录表 销分理由
      ,k.XFCLJSID as k_DYPJBJPFJL_XFCLJSID--德育评价班级评分记录表 销分处理教师ID
      ,k.XFCLSJ as k_DYPJBJPFJL_XFCLSJ--德育评价班级评分记录表 销分处理时间
      ,k.CLYJ as k_DYPJBJPFJL_CLYJ--德育评价班级评分记录表 处理意见

FROM dbo.EDU_ZZXS_25_A04_DYPJXSPFJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS d ON a.ZCID = d.ID /*周次ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.JSID = e.ID /*教师ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS f ON a.XSID = f.ID /*学生ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A01_DYPJDL AS g ON a.DLID = g.ID /*大类ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A02_DYPJXL AS h ON a.XLID = h.ID /*小类ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS i ON a.XFSQJSID = i.ID /*销分申请教师ID*/ AND a.SCHOOLID = i.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS j ON a.XFCLJSID = j.ID /*销分处理教师ID*/ AND a.SCHOOLID = j.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A03_DYPJBJPFJL AS k ON a.GLBJPFJLID = k.ID /*关联班级评分记录ID*/ AND a.SCHOOLID = k.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [eb] ON e.SFZJLXM = [eb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ec] ON e.XBM = [ec].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ed] ON e.MZM = [ed].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ee] ON e.XXM = [ee].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ef] ON e.JKZKM = [ef].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [eg] ON e.HYZTM = [eg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [eh] ON e.ZZMMM = [eh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ei] ON e.GATQWM = [ei].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ej] ON e.GJDQM = [ej].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ek] ON e.CSDXZQHM = [ek].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [el] ON e.XYZJM = [el].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [em] ON e.JZGHKSZDXZQHM = [em].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [en] ON e.HKLBM = [en].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [eo] ON e.BZLBM = [eo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [ep] ON e.JZGLBM = [ep].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [eq] ON e.GWLBM = [eq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [er] ON e.SFJZJS = [er].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [es] ON e.SFSSXJS = [es].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [et] ON e.DQZTM = [et].DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [fb] ON f.SFZJLXM = [fb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [fc] ON f.XBM = [fc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [fd] ON f.XXM = [fd].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fe] ON f.CSDM = [fe].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ff] ON f.MZM = [ff].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [fg] ON f.HYZKM = [fg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [fh] ON f.XYZJM = [fh].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [fi] ON f.GATQWM = [fi].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [fj] ON f.JKZKM = [fj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [fk] ON f.ZZMMM = [fk].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fl] ON f.HKSZDXZQHM = [fl].DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [fm] ON f.HKLBM = [fm].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fn] ON f.SFSLDRK = [fn].DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [fo] ON f.GJDQM = [fo].DM /*国籍/地区*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_JZGDQZT AS [jt] ON j.DQZTM = [jt].DM /*当前状态码*/
GO
