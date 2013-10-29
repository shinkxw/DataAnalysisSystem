
--宿舍考核结果表
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_10_A02_SSKHJG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[BJID]--班级ID
      ,a.[QSID]--寝室ID
      ,a.[KHXMID]--考核项目ID
      ,a.[KHSJ]--考核时间
      ,a.[KHFZ]--考核分值
      ,a.[TJJSID]--添加教师ID
      ,c.SCHOOLID as c_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,c.ZYXXID as c_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,c.ZZNJID as c_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,c.XZBMC as c_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,c.JBNY as c_ZZBJ_JBNY--学校班级数据表 建班年月
      ,c.BZRGH as c_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,c.JSBH as c_ZZBJ_JSBH--学校班级数据表 教室编号
      ,c.NANSRS as c_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,c.NVSRS as c_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,c.ZRS as c_ZZBJ_ZRS--学校班级数据表 总人数
      ,c.BZXH as c_ZZBJ_BZXH--学校班级数据表 班长学号
      ,c.JXJH as c_ZZBJ_JXJH--学校班级数据表 教学计划
      ,c.JGH as c_ZZBJ_JGH--学校班级数据表 机构号
      ,c.XQDM as c_ZZBJ_XQDM--学校班级数据表 校区代码
      ,c.BZRID as c_ZZBJ_BZRID--学校班级数据表 班主任ID
      ,d.SCHOOLID as d_XSSS_SCHOOLID--学生宿舍数据类表 学校名
      ,d.SSLID as d_XSSS_SSLID--学生宿舍数据类表 宿舍楼ID
      ,d.SSLBM as d_XSSS_SSLBM--学生宿舍数据类表 宿舍楼编号
      ,d.FJBM as d_XSSS_FJBM--学生宿舍数据类表 房间编号
      ,d.RZXB as d_XSSS_RZXB--学生宿舍数据类表 入住性别
      ,db.MC as d_XSSS_RZXB_MC--人的性别代码 名称
      ,d.SFKY as d_XSSS_SFKY--学生宿舍数据类表 是否可用
      ,dc.MC as d_XSSS_SFKY_MC--是否标志代码表 名称
      ,d.KZRS as d_XSSS_KZRS--学生宿舍数据类表 可住人数
      ,d.WLDK as d_XSSS_WLDK--学生宿舍数据类表 网络端口
      ,d.AZDSJ as d_XSSS_AZDSJ--学生宿舍数据类表 安装电视机
      ,dd.MC as d_XSSS_AZDSJ_MC--是否标志代码表 名称
      ,d.DHDK as d_XSSS_DHDK--学生宿舍数据类表 电话端口
      ,d.DHHM as d_XSSS_DHHM--学生宿舍数据类表 电话号码
      ,d.SBDS as d_XSSS_SBDS--学生宿舍数据类表 水表底数
      ,d.DBDS as d_XSSS_DBDS--学生宿舍数据类表 电表底数
      ,d.SSBZ as d_XSSS_SSBZ--学生宿舍数据类表 宿舍备注
      ,d.SZLZ as d_XSSS_SZLZ--学生宿舍数据类表 所在楼层
      ,d.SSM as d_XSSS_SSM--学生宿舍数据类表 宿舍名
      ,e.SCHOOLID as e_SSKHXM_SCHOOLID--宿舍考核项目表 学校
      ,e.LX as e_SSKHXM_LX--宿舍考核项目表 类型
      ,e.XMMC as e_SSKHXM_XMMC--宿舍考核项目表 项目名称
      ,e.SFYXPB as e_SSKHXM_SFYXPB--宿舍考核项目表 是否影响评比
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,f.GH as f_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,f.XM as f_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,f.YWXM as f_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,f.XMPY as f_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,f.CYM as f_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,fb.MC as f_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,f.SFZJH as f_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,f.CSRQ as f_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,f.XBM as f_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,fc.MC as f_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,f.MZM as f_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,f.XXM as f_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,fe.MC as f_JZGJBSJ_XXM_MC--血型代码表 名称
      ,fe.JC as f_JZGJBSJ_XXM_JC--血型代码表 简称
      ,f.JKZKM as f_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,ff.MC as f_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,ff.SM as f_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,f.HYZTM as f_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,fg.MC as f_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,fh.MC as f_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,fh.JC as f_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,f.GATQWM as f_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,fi.MC as f_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,fi.SM as f_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,f.JG as f_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,f.GJDQM as f_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,fj.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,fj.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,fj.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,f.CSDXZQHM as f_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,fk.MC as f_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,f.XYZJM as f_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,fl.MC as f_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,f.JZGHKSZDXZQHM as f_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,fm.MC as f_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,f.HKLBM as f_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,fn.MC as f_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,f.DQZZ as f_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,f.DQZZYZBM as f_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,f.CJGZNY as f_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,f.CJNY as f_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,f.LXNY as f_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,f.BZLBM as f_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,fo.MC as f_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,f.JZGLBM as f_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,fp.MC as f_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,fp.SM as f_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,f.GWLBM as f_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,fq.MC as f_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,f.SFJZJS as f_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,fr.MC as f_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,f.SFSSXJS as f_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,fs.MC as f_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,f.ZP as f_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,f.DQZTM as f_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,ft.MC as f_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,f.YDDH as f_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,f.GDDH as f_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,f.TXDZYZBM as f_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,f.TXDZ as f_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,f.DZXX as f_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,f.WLDZ as f_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,f.JSTXH as f_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号

FROM dbo.EDU_ZZFC_10_A02_SSKHJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS c ON a.BJID = c.XZBDM /*班级ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_08_01_XSSS AS d ON a.QSID = d.ID /*寝室ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_10_A01_SSKHXM AS e ON a.KHXMID = e.ID /*考核项目ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS f ON a.TJJSID = f.ID /*添加教师ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.RZXB = db.DM /*入住性别*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dc ON d.SFKY = dc.DM /*是否可用*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dd ON d.AZDSJ = dd.DM /*安装电视机*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS fb ON f.SFZJLXM = fb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fc ON f.XBM = fc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fe ON f.XXM = fe.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ff ON f.JKZKM = ff.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS fg ON f.HYZTM = fg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fh ON f.ZZMMM = fh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fi ON f.GATQWM = fi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fj ON f.GJDQM = fj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fk ON f.CSDXZQHM = fk.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fl ON f.XYZJM = fl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fm ON f.JZGHKSZDXZQHM = fm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS fn ON f.HKLBM = fn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS fo ON f.BZLBM = fo.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS fp ON f.JZGLBM = fp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS fq ON f.GWLBM = fq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fr ON f.SFJZJS = fr.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fs ON f.SFSSXJS = fs.DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ft ON f.DQZTM = ft.DM /*当前状态码*/
GO
