
--德育评价学生评分记录表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_25_A04_DYPJXSPFJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[ZCID]--周次ID
      ,a.[JSID]--教师ID
      ,a.[BJID]--班级ID
      ,a.[XSID]--学生ID
      ,a.[DLID]--大类ID
      ,a.[XLID]--小类ID
      ,a.[SJ]--时间
      ,a.[FZ]--分值
      ,a.[BZ]--备注
      ,a.[ZT]--状态
      ,a.[TJSJ]--添加时间
      ,a.[SCZT]--删除状态
      ,a.[SCJSID]--删除教师ID
      ,a.[SCSJ]--删除时间
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
      ,e.PersonalCard1 as e_JZGJBSJ_PersonalCard1--教职工基本数据子类表 个人卡1
      ,e.PersonalCard2 as e_JZGJBSJ_PersonalCard2--教职工基本数据子类表 个人卡2
      ,e.PersonalCard3 as e_JZGJBSJ_PersonalCard3--教职工基本数据子类表 个人卡3
      ,f.SCHOOLID as f_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,f.ZYXXID as f_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,f.ZZNJID as f_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,f.XZBMC as f_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,f.JBNY as f_ZZBJ_JBNY--学校班级数据表 建班年月
      ,f.BZRGH as f_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,f.JSBH as f_ZZBJ_JSBH--学校班级数据表 教室编号
      ,f.NANSRS as f_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,f.NVSRS as f_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,f.ZRS as f_ZZBJ_ZRS--学校班级数据表 总人数
      ,f.BZXH as f_ZZBJ_BZXH--学校班级数据表 班长学号
      ,f.JXJH as f_ZZBJ_JXJH--学校班级数据表 教学计划
      ,f.JGH as f_ZZBJ_JGH--学校班级数据表 机构号
      ,f.XQDM as f_ZZBJ_XQDM--学校班级数据表 校区代码
      ,f.BZRID as f_ZZBJ_BZRID--学校班级数据表 班主任ID
      ,f.PLSX as f_ZZBJ_PLSX--学校班级数据表 排列顺序
      ,f.ID as f_ZZBJ_ID--学校班级数据表 表Record外键
      ,g.SCHOOLID as g_XSXX_SCHOOLID--学生信息数据表 学校名
      ,g.XH as g_XSXX_XH--学生信息数据表 学号
      ,g.XM as g_XSXX_XM--学生信息数据表 姓名
      ,g.YWXM as g_XSXX_YWXM--学生信息数据表 英文姓名
      ,g.XMPY as g_XSXX_XMPY--学生信息数据表 姓名拼音
      ,g.CYM as g_XSXX_CYM--学生信息数据表 曾用名
      ,g.SFZJLXM as g_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,[gb].MC as g_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,g.SFZJH as g_XSXX_SFZJH--学生信息数据表 身份证件号
      ,g.XBM as g_XSXX_XBM--学生信息数据表 性别码
      ,[gc].MC as g_XSXX_XBM_MC--人的性别代码 名称
      ,g.XXM as g_XSXX_XXM--学生信息数据表 血型码
      ,[gd].MC as g_XSXX_XXM_MC--血型代码表 名称
      ,[gd].JC as g_XSXX_XXM_JC--血型代码表 简称
      ,g.CSRQ as g_XSXX_CSRQ--学生信息数据表 出生日期
      ,g.CSDM as g_XSXX_CSDM--学生信息数据表 出生地码
      ,[ge].MC as g_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,g.JG as g_XSXX_JG--学生信息数据表 籍贯
      ,g.MZM as g_XSXX_MZM--学生信息数据表 民族码
      ,[gf].MZMC as g_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[gf].ZMDM as g_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,g.HYZKM as g_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,[gg].MC as g_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,g.XYZJM as g_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,[gh].MC as g_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,g.GATQWM as g_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,[gi].MC as g_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[gi].SM as g_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,g.JKZKM as g_XSXX_JKZKM--学生信息数据表 健康状况码
      ,[gj].MC as g_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[gj].SM as g_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,g.ZZMMM as g_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,[gk].MC as g_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[gk].JC as g_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,g.HKSZDXZQHM as g_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,[gl].MC as g_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,g.HKLBM as g_XSXX_HKLBM--学生信息数据表 户口类别码
      ,[gm].MC as g_XSXX_HKLBM_MC--户口类别代码 名称
      ,g.SFSLDRK as g_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,[gn].MC as g_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,g.GJDQM as g_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,[go].GJDQMCJC as g_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[go].EZMDM as g_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[go].SZMDM as g_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,g.TC as g_XSXX_TC--学生信息数据表 特长
      ,g.XSLXDH as g_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,g.WLDZ as g_XSXX_WLDZ--学生信息数据表 网络地址
      ,g.JSTXH as g_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,g.DZXX as g_XSXX_DZXX--学生信息数据表 电子信箱
      ,g.ZP as g_XSXX_ZP--学生信息数据表 照片(路径)
      ,g.RXXQID as g_XSXX_RXXQID--学生信息数据表 入学学期ID
      ,g.NFCKH as g_XSXX_NFCKH--学生信息数据表 NFC卡号
      ,h.SCHOOLID as h_DYPJDL_SCHOOLID--德育评价大类表 学校
      ,h.PFDXLX as h_DYPJDL_PFDXLX--德育评价大类表 评分对象类型
      ,h.MC as h_DYPJDL_MC--德育评价大类表 名称
      ,h.PLSX as h_DYPJDL_PLSX--德育评价大类表 排列顺序
      ,i.SCHOOLID as i_DYPJXL_SCHOOLID--德育评价小类表 学校
      ,i.PFDXLX as i_DYPJXL_PFDXLX--德育评价小类表 评分对象类型
      ,i.DLID as i_DYPJXL_DLID--德育评价小类表 大类ID
      ,i.MC as i_DYPJXL_MC--德育评价小类表 名称
      ,i.MRFZ as i_DYPJXL_MRFZ--德育评价小类表 默认分值
      ,i.NFXGFZ as i_DYPJXL_NFXGFZ--德育评价小类表 能否修改分值
      ,i.FZSX as i_DYPJXL_FZSX--德育评价小类表 分值上限
      ,i.FZXX as i_DYPJXL_FZXX--德育评价小类表 分值下限
      ,i.PLSX as i_DYPJXL_PLSX--德育评价小类表 排列顺序
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

FROM dbo.EDU_ZZXS_25_A04_DYPJXSPFJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS d ON a.ZCID = d.ID /*周次ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.JSID = e.ID /*教师ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS f ON a.BJID = f.XZBDM /*班级ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS g ON a.XSID = g.ID /*学生ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A01_DYPJDL AS h ON a.DLID = h.ID /*大类ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A02_DYPJXL AS i ON a.XLID = i.ID /*小类ID*/ AND a.SCHOOLID = i.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS j ON a.SCJSID = j.ID /*删除教师ID*/ AND a.SCHOOLID = j.SCHOOLID /*学校*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SFZJLX AS [gb] ON g.SFZJLXM = [gb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [gc] ON g.XBM = [gc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [gd] ON g.XXM = [gd].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ge] ON g.CSDM = [ge].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [gf] ON g.MZM = [gf].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [gg] ON g.HYZKM = [gg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [gh] ON g.XYZJM = [gh].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [gi] ON g.GATQWM = [gi].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [gj] ON g.JKZKM = [gj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [gk] ON g.ZZMMM = [gk].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [gl] ON g.HKSZDXZQHM = [gl].DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [gm] ON g.HKLBM = [gm].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gn] ON g.SFSLDRK = [gn].DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [go] ON g.GJDQM = [go].DM /*国籍/地区*/ LEFT OUTER JOIN
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
