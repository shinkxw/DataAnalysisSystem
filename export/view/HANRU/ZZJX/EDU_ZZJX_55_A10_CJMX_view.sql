
--成绩明细表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_55_A10_CJMX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[NJID]--年级ID
      ,a.[ZYKCKID]--专业课程库ID
      ,a.[XSID]--学生ID
      ,a.[PFXMID]--评分项目ID
      ,a.[FZ]--分值
      ,a.[DJRID]--登记人ID
      ,a.[DJSJ]--登记时间
      ,a.[KCLX]--课程类型
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键
      ,d.SCHOOLID as d_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,d.NJMC as d_ZZNJ_NJMC--学校年级数据表 年级名称
      ,d.SSNF as d_ZZNJ_SSNF--学校年级数据表 所属年份
      ,d.NJZT as d_ZZNJ_NJZT--学校年级数据表 年级状态
      ,[db].MC as d_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,d.PLSX as d_ZZNJ_PLSX--学校年级数据表 排列顺序
      ,e.SCHOOLID as e_ZYKCK_SCHOOLID--专业课程库表 学校
      ,e.ZYID as e_ZYKCK_ZYID--专业课程库表 专业ID
      ,e.FZXXID as e_ZYKCK_FZXXID--专业课程库表 分制信息ID
      ,e.KCBH as e_ZYKCK_KCBH--专业课程库表 课程名称
      ,e.ZXF as e_ZYKCK_ZXF--专业课程库表 总学分
      ,e.ZXS as e_ZYKCK_ZXS--专业课程库表 总学时
      ,e.KKDW as e_ZYKCK_KKDW--专业课程库表 开课单位
      ,e.KSXS as e_ZYKCK_KSXS--专业课程库表 考试形式
      ,e.SKFSM as e_ZYKCK_SKFSM--专业课程库表 授课方式码
      ,e.JXDG as e_ZYKCK_JXDG--专业课程库表 教学大纲
      ,e.SFSY as e_ZYKCK_SFSY--专业课程库表 是否使用
      ,e.CourseGroupId as e_ZYKCK_CourseGroupId--专业课程库表 表CourseGroup的外键
      ,e.KCLX as e_ZYKCK_KCLX--专业课程库表 课程类型
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
      ,g.SCHOOLID as g_KCPFXM_SCHOOLID--课程评分项目表 学校
      ,g.FXMID as g_KCPFXM_FXMID--课程评分项目表 父项目ID
      ,g.XMMC as g_KCPFXM_XMMC--课程评分项目表 项目名称
      ,g.SFYZXM as g_KCPFXM_SFYZXM--课程评分项目表 是否有子项目
      ,g.BL as g_KCPFXM_BL--课程评分项目表 比例
      ,g.SFYXXG as g_KCPFXM_SFYXXG--课程评分项目表 是否允许修改
      ,g.XGSX as g_KCPFXM_XGSX--课程评分项目表 修改上限
      ,g.XGXX as g_KCPFXM_XGXX--课程评分项目表 修改下限
      ,g.LY as g_KCPFXM_LY--课程评分项目表 来源
      ,g.PLSX as g_KCPFXM_PLSX--课程评分项目表 排列顺序
      ,h.SCHOOLID as h_USER_SCHOOLID--应用系统用户表 学校ID
      ,h.APPID as h_USER_APPID--应用系统用户表 应用ID
      ,'' as h_USER_PWD--应用系统用户表 密码
      ,h.STATUS as h_USER_STATUS--应用系统用户表 用户状态
      ,h.USERTYPE as h_USER_USERTYPE--应用系统用户表 用户类别
      ,h.USERID as h_USER_USERID--应用系统用户表 用户ID
      ,h.ROLEIDLst as h_USER_ROLEIDLst--应用系统用户表 用户角色
      ,h.XM as h_USER_XM--应用系统用户表 姓名
      ,h.XB as h_USER_XB--应用系统用户表 性别
      ,h.QQ as h_USER_QQ--应用系统用户表 QQ
      ,h.DZYJ as h_USER_DZYJ--应用系统用户表 电子邮件
      ,h.LXDH as h_USER_LXDH--应用系统用户表 联系电话
      ,h.ZJDLSJ as h_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,h.DLCGCS as h_USER_DLCGCS--应用系统用户表 登录成功次数
      ,h.YHCJSJ as h_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,h.YHRY as h_USER_YHRY--应用系统用户表 用户荣誉
      ,h.YHJF as h_USER_YHJF--应用系统用户表 用户积分

FROM dbo.EDU_ZZJX_55_A10_CJMX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS d ON a.NJID = d.NJDM /*年级ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A04_ZYKCK AS e ON a.ZYKCKID = e.ID /*专业课程库ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS f ON a.XSID = f.ID /*学生ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A06_KCPFXM AS g ON a.PFXMID = g.ID /*评分项目ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS h ON a.DJRID = h.LOGINNAME /*登记人ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [db] ON d.NJZT = [db].DM /*年级状态*/ LEFT OUTER JOIN
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
      dbo.EDU_GB_SJGGHDQMC AS [fo] ON f.GJDQM = [fo].DM /*国籍/地区*/
GO
