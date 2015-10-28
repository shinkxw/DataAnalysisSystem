
--德育评价班级评分记录表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_25_A03_DYPJBJPFJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[ZCID]--周次ID
      ,a.[JSID]--教师ID
      ,a.[BJID]--班级ID
      ,a.[DLID]--大类ID
      ,a.[XLID]--小类ID
      ,a.[SJ]--时间
      ,a.[FZ]--分值
      ,a.[BZ]--备注
      ,a.[ZT]--状态
      ,a.[TJSJ]--添加时间
      ,a.[XFZT]--销分状态
      ,a.[XFSQJSID]--销分申请教师ID
      ,a.[XFSQSJ]--销分申请时间
      ,a.[XFLY]--销分理由
      ,a.[XFCLJG]--销分处理结果
      ,a.[XFCLJSID]--销分处理教师ID
      ,a.[XFCLSJ]--销分处理时间
      ,a.[CLYJ]--处理意见
      ,a.[SCZT]--删除状态
      ,a.[SCJSID]--删除教师ID
      ,a.[SCSJ]--删除时间
      ,a.[GLXSPFJLID]--关联学生评分记录ID
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
      ,l.SCHOOLID as l_DYPJXSPFJL_SCHOOLID--德育评价学生评分记录表 学校
      ,l.XQID as l_DYPJXSPFJL_XQID--德育评价学生评分记录表 学期ID
      ,l.ZCID as l_DYPJXSPFJL_ZCID--德育评价学生评分记录表 周次ID
      ,l.JSID as l_DYPJXSPFJL_JSID--德育评价学生评分记录表 教师ID
      ,l.BJID as l_DYPJXSPFJL_BJID--德育评价学生评分记录表 班级ID
      ,l.XSID as l_DYPJXSPFJL_XSID--德育评价学生评分记录表 学生ID
      ,l.DLID as l_DYPJXSPFJL_DLID--德育评价学生评分记录表 大类ID
      ,l.XLID as l_DYPJXSPFJL_XLID--德育评价学生评分记录表 小类ID
      ,l.SJ as l_DYPJXSPFJL_SJ--德育评价学生评分记录表 时间
      ,l.FZ as l_DYPJXSPFJL_FZ--德育评价学生评分记录表 分值
      ,l.BZ as l_DYPJXSPFJL_BZ--德育评价学生评分记录表 备注
      ,l.ZT as l_DYPJXSPFJL_ZT--德育评价学生评分记录表 状态
      ,l.TJSJ as l_DYPJXSPFJL_TJSJ--德育评价学生评分记录表 添加时间
      ,l.SCZT as l_DYPJXSPFJL_SCZT--德育评价学生评分记录表 删除状态
      ,l.SCJSID as l_DYPJXSPFJL_SCJSID--德育评价学生评分记录表 删除教师ID
      ,l.SCSJ as l_DYPJXSPFJL_SCSJ--德育评价学生评分记录表 删除时间

FROM dbo.EDU_ZZXS_25_A03_DYPJBJPFJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS d ON a.ZCID = d.ID /*周次ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.JSID = e.ID /*教师ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS f ON a.BJID = f.XZBDM /*班级ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A01_DYPJDL AS g ON a.DLID = g.ID /*大类ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A02_DYPJXL AS h ON a.XLID = h.ID /*小类ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS i ON a.XFSQJSID = i.ID /*销分申请教师ID*/ AND a.SCHOOLID = i.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS j ON a.XFCLJSID = j.ID /*销分处理教师ID*/ AND a.SCHOOLID = j.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS k ON a.SCJSID = k.ID /*删除教师ID*/ AND a.SCHOOLID = k.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A04_DYPJXSPFJL AS l ON a.GLXSPFJLID = l.ID /*关联学生评分记录ID*/ AND a.SCHOOLID = l.SCHOOLID /*学校*/ LEFT OUTER JOIN
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
