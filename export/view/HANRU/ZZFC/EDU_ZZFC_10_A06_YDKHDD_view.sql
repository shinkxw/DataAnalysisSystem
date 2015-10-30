
--月度考核等第表
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_10_A06_YDKHDD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[YF]--月份
      ,a.[BJID]--班级ID
      ,a.[DD]--等第
      ,a.[PBFZ]--评比分值
      ,a.[TJJSID]--添加教师ID
      ,a.[SSLID]--宿舍楼ID
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键
      ,d.SCHOOLID as d_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,d.ZYXXID as d_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,d.ZZNJID as d_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,d.XZBMC as d_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,d.JBNY as d_ZZBJ_JBNY--学校班级数据表 建班年月
      ,d.BZRGH as d_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,d.JSBH as d_ZZBJ_JSBH--学校班级数据表 教室编号
      ,d.NANSRS as d_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,d.NVSRS as d_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,d.ZRS as d_ZZBJ_ZRS--学校班级数据表 总人数
      ,d.BZXH as d_ZZBJ_BZXH--学校班级数据表 班长学号
      ,d.JXJH as d_ZZBJ_JXJH--学校班级数据表 教学计划
      ,d.JGH as d_ZZBJ_JGH--学校班级数据表 机构号
      ,d.XQDM as d_ZZBJ_XQDM--学校班级数据表 校区代码
      ,d.BZRID as d_ZZBJ_BZRID--学校班级数据表 班主任ID
      ,d.PLSX as d_ZZBJ_PLSX--学校班级数据表 排列顺序
      ,d.ID as d_ZZBJ_ID--学校班级数据表 表Record外键
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
      ,f.SCHOOLID as f_JZWJBSJ_SCHOOLID--建筑物基本数据类表 学校名
      ,f.JZWH as f_JZWJBSJ_JZWH--建筑物基本数据类表 建筑物号
      ,f.JZWMC as f_JZWJBSJ_JZWMC--建筑物基本数据类表 建筑物名称
      ,f.SYZKM as f_JZWJBSJ_SYZKM--建筑物基本数据类表 使用状况码
      ,[fb].MC as f_JZWJBSJ_SYZKM_MC--使用状况代码表 名称
      ,f.FWCQ as f_JZWJBSJ_FWCQ--建筑物基本数据类表 房屋产权
      ,[fc].MC as f_JZWJBSJ_FWCQ_MC--产权代码表 名称
      ,f.XQH as f_JZWJBSJ_XQH--建筑物基本数据类表 校区号
      ,f.JZWFLM as f_JZWJBSJ_JZWFLM--建筑物基本数据类表 建筑物分类码
      ,[fd].MC as f_JZWJBSJ_JZWFLM_MC--建筑物分类代码表 名称
      ,f.JZWJGM as f_JZWJBSJ_JZWJGM--建筑物基本数据类表 建筑物结构码
      ,[fe].MC as f_JZWJBSJ_JZWJGM_MC--建筑物结构代码表 名称
      ,f.JZWCS as f_JZWJBSJ_JZWCS--建筑物基本数据类表 建筑物层数
      ,f.JCNY as f_JZWJBSJ_JCNY--建筑物基本数据类表 建成年月
      ,f.JZWTZZE as f_JZWJBSJ_JZWTZZE--建筑物基本数据类表 建筑物投资总额
      ,f.JFLYM as f_JZWJBSJ_JFLYM--建筑物基本数据类表 经费来源码
      ,[ff].MC as f_JZWJBSJ_JFLYM_MC--经费来源代码表 名称
      ,f.ZJZMJ as f_JZWJBSJ_ZJZMJ--建筑物基本数据类表 总建筑面积
      ,f.ZSYMJ as f_JZWJBSJ_ZSYMJ--建筑物基本数据类表 总使用面积
      ,f.KZSFLDM as f_JZWJBSJ_KZSFLDM--建筑物基本数据类表 抗震设防烈度码
      ,[fg].JC as f_JZWJBSJ_KZSFLDM_JC--抗震设防烈度代码 简称
      ,[fg].MC as f_JZWJBSJ_KZSFLDM_MC--抗震设防烈度代码 名称
      ,f.KZSFBZM as f_JZWJBSJ_KZSFBZM--建筑物基本数据类表 抗震设防标准码
      ,[fh].JC as f_JZWJBSJ_KZSFBZM_JC--抗震设防标准代码 简称
      ,[fh].MC as f_JZWJBSJ_KZSFBZM_MC--抗震设防标准代码 名称
      ,[fh].SM as f_JZWJBSJ_KZSFBZM_SM--抗震设防标准代码 说明
      ,f.JZWDZ as f_JZWJBSJ_JZWDZ--建筑物基本数据类表 建筑物地址
      ,f.JZWZKM as f_JZWJBSJ_JZWZKM--建筑物基本数据类表 建筑物状况码
      ,[fi].MC as f_JZWJBSJ_JZWZKM_MC--建筑物状况代码表 名称
      ,[fi].SM as f_JZWJBSJ_JZWZKM_SM--建筑物状况代码表 说明
      ,f.JZWTP as f_JZWJBSJ_JZWTP--建筑物基本数据类表 建筑物图片
      ,f.JZWPMT as f_JZWJBSJ_JZWPMT--建筑物基本数据类表 建筑物平面图
      ,f.XXDWCCM as f_JZWJBSJ_XXDWCCM--建筑物基本数据类表 学校单位层次码
      ,[fj].MC as f_JZWJBSJ_XXDWCCM_MC--学校单位层次代码表 名称
      ,f.JZWWZZK as f_JZWJBSJ_JZWWZZK--建筑物基本数据类表 建筑物位置状况
      ,f.GHSPWH as f_JZWJBSJ_GHSPWH--建筑物基本数据类表 规划审批文号
      ,f.ZHFZNL as f_JZWJBSJ_ZHFZNL--建筑物基本数据类表 综合防灾能力
      ,f.GHSYNX as f_JZWJBSJ_GHSYNX--建筑物基本数据类表 规划使用年限
      ,f.SFYYJBXCS as f_JZWJBSJ_SFYYJBXCS--建筑物基本数据类表 是否有预警避险措施
      ,[fk].MC as f_JZWJBSJ_SFYYJBXCS_MC--是否标志代码表 名称
      ,f.SFKYYYJBNCS as f_JZWJBSJ_SFKYYYJBNCS--建筑物基本数据类表 是否可用于应急避难场所
      ,[fl].MC as f_JZWJBSJ_SFKYYYJBNCS_MC--是否标志代码表 名称
      ,f.CQZH as f_JZWJBSJ_CQZH--建筑物基本数据类表 产权证号
      ,f.JZWYTM as f_JZWJBSJ_JZWYTM--建筑物基本数据类表 建筑物用途码
      ,[fm].MC as f_JZWJBSJ_JZWYTM_MC--建筑物用途代码表 名称
      ,f.JZWZGD as f_JZWJBSJ_JZWZGD--建筑物基本数据类表 建筑物总高度
      ,f.WFJDBM as f_JZWJBSJ_WFJDBM--建筑物基本数据类表 危房鉴定部门
      ,f.WFJDWH as f_JZWJBSJ_WFJDWH--建筑物基本数据类表 危房鉴定文号
      ,f.WFJDRQ as f_JZWJBSJ_WFJDRQ--建筑物基本数据类表 危房鉴定日期
      ,f.GNFSM as f_JZWJBSJ_GNFSM--建筑物基本数据类表 供暖方式码
      ,[fn].MC as f_JZWJBSJ_GNFSM_MC--供暖方式代码表 名称
      ,f.JZWJCXSM as f_JZWJBSJ_JZWJCXSM--建筑物基本数据类表 建筑物基础形式码
      ,[fo].MC as f_JZWJBSJ_JZWJCXSM_MC--建筑物基础形式代码表 名称
      ,f.JZWPMXSM as f_JZWJBSJ_JZWPMXSM--建筑物基本数据类表 建筑物平面形式码
      ,[fp].MC as f_JZWJBSJ_JZWPMXSM_MC--建筑物平面形式代码表 名称
      ,f.JZWLBXSM as f_JZWJBSJ_JZWLBXSM--建筑物基本数据类表 建筑物楼板形式码
      ,[fq].MC as f_JZWJBSJ_JZWLBXSM_MC--建筑物楼板形式代码表 名称
      ,f.SFYGZZ as f_JZWJBSJ_SFYGZZ--建筑物基本数据类表 是否有构造柱
      ,[fr].MC as f_JZWJBSJ_SFYGZZ_MC--是否标志代码表 名称
      ,f.QL as f_JZWJBSJ_QL--建筑物基本数据类表 圈梁
      ,[fs].MC as f_JZWJBSJ_QL_MC--是否标志代码表 名称
      ,f.ZJAQGZWCRQ as f_JZWJBSJ_ZJAQGZWCRQ--建筑物基本数据类表 最近安全改造完成日期
      ,f.ZJAQGZHYJSYNX as f_JZWJBSJ_ZJAQGZHYJSYNX--建筑物基本数据类表 最近安全改造后预计使用年限
      ,f.ZXLXM as f_JZWJBSJ_ZXLXM--建筑物基本数据类表 专项类型
      ,f.ZYZXTZBZMCM as f_JZWJBSJ_ZYZXTZBZMCM--建筑物基本数据类表 中央专项投资补助名称码
      ,[ft].MC as f_JZWJBSJ_ZYZXTZBZMCM_MC--中央专项投资补助名称代码表 名称
      ,f.WWJZDJM as f_JZWJBSJ_WWJZDJM--建筑物基本数据类表 文物建筑等级码
      ,[fu].MC as f_JZWJBSJ_WWJZDJM_MC--文物建筑等级代码表 名称
      ,f.JXJFZYF as f_JZWJBSJ_JXJFZYF--建筑物基本数据类表 教学及辅助用房
      ,f.QZJS as f_JZWJBSJ_QZJS--建筑物基本数据类表 其中教室
      ,f.QZSYS as f_JZWJBSJ_QZSYS--建筑物基本数据类表 其中实验室
      ,f.QZTSS as f_JZWJBSJ_QZTSS--建筑物基本数据类表 其中图书室
      ,f.QZWJS as f_JZWJBSJ_QZWJS--建筑物基本数据类表 其中微机室
      ,f.QZYYS as f_JZWJBSJ_QZYYS--建筑物基本数据类表 其中语音室
      ,f.QZTYHDS as f_JZWJBSJ_QZTYHDS--建筑物基本数据类表 其中体育活动室
      ,f.QZQTJFYF as f_JZWJBSJ_QZQTJFYF--建筑物基本数据类表 其中其他教辅用房
      ,f.SHYF as f_JZWJBSJ_SHYF--建筑物基本数据类表 生活用房
      ,f.QZXSSS as f_JZWJBSJ_QZXSSS--建筑物基本数据类表 其中学生宿舍
      ,f.QZST as f_JZWJBSJ_QZST--建筑物基本数据类表 其中食堂
      ,f.QZCS as f_JZWJBSJ_QZCS--建筑物基本数据类表 其中厕所
      ,f.QZGLF as f_JZWJBSJ_QZGLF--建筑物基本数据类表 其中锅炉房(开水房)
      ,f.QZYS as f_JZWJBSJ_QZYS--建筑物基本数据类表 其中浴室
      ,f.QZJGSS as f_JZWJBSJ_QZJGSS--建筑物基本数据类表 其中教工宿舍
      ,f.QZQTSHYF as f_JZWJBSJ_QZQTSHYF--建筑物基本数据类表 其中其他生活用房
      ,f.XZBGYF as f_JZWJBSJ_XZBGYF--建筑物基本数据类表 行政办公用房
      ,f.QZJSBGS as f_JZWJBSJ_QZJSBGS--建筑物基本数据类表 其中教职工办公室
      ,f.QZWSBJS as f_JZWJBSJ_QZWSBJS--建筑物基本数据类表 其中卫生保健室
      ,f.QZQTXZBGYF as f_JZWJBSJ_QZQTXZBGYF--建筑物基本数据类表 其中其他行政办公用房
      ,f.QTYF as f_JZWJBSJ_QTYF--建筑物基本数据类表 其他用房
      ,f.GLY as f_JZWJBSJ_GLY--建筑物基本数据类表 管理员

FROM dbo.EDU_ZZFC_10_A06_YDKHDD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS d ON a.BJID = d.XZBDM /*班级ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.TJJSID = e.ID /*添加教师ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_02_01_JZWJBSJ AS f ON a.SSLID = f.ID /*宿舍楼ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SYZK AS [fb] ON f.SYZKM = [fb].DM /*使用状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS [fc] ON f.FWCQ = [fc].DM /*房屋产权*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS [fd] ON f.JZWFLM = [fd].DM /*建筑物分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS [fe] ON f.JZWJGM = [fe].DM /*建筑物结构码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS [ff] ON f.JFLYM = [ff].DM /*经费来源码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS [fg] ON f.KZSFLDM = [fg].DM /*抗震设防烈度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS [fh] ON f.KZSFBZM = [fh].DM /*抗震设防标准码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS [fi] ON f.JZWZKM = [fi].DM /*建筑物状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS [fj] ON f.XXDWCCM = [fj].DM /*学校单位层次码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fk] ON f.SFYYJBXCS = [fk].DM /*是否有预警避险措施*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fl] ON f.SFKYYYJBNCS = [fl].DM /*是否可用于应急避难场所*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS [fm] ON f.JZWYTM = [fm].DM /*建筑物用途码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS [fn] ON f.GNFSM = [fn].DM /*供暖方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS [fo] ON f.JZWJCXSM = [fo].DM /*建筑物基础形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS [fp] ON f.JZWPMXSM = [fp].DM /*建筑物平面形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS [fq] ON f.JZWLBXSM = [fq].DM /*建筑物楼板形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fr] ON f.SFYGZZ = [fr].DM /*是否有构造柱*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fs] ON f.QL = [fs].DM /*圈梁*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS [ft] ON f.ZYZXTZBZMCM = [ft].DM /*中央专项投资补助名称码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS [fu] ON f.WWJZDJM = [fu].DM /*文物建筑等级码*/
GO
