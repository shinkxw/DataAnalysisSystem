
--学生住宿记录表
CREATE VIEW [dbo].[VIEW_EDU_ZXFC_08_A02_XSZSJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XSID]--学生ID
      ,a.[SSLID]--宿舍楼ID
      ,a.[SSID]--宿舍ID
      ,a.[CWID]--床位ID
      ,a.[NJMC]--年级名称
      ,a.[BJMC]--班级名称
      ,a.[XSXM]--学生姓名
      ,a.[RZSJ]--入住时间
      ,a.[SFTS]--是否退宿
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生基本数据子类表 学校名
      ,c.XH as c_XSXX_XH--学生基本数据子类表 学号
      ,c.XM as c_XSXX_XM--学生基本数据子类表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生基本数据子类表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生基本数据子类表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生基本数据子类表 曾用名
      ,c.XBM as c_XSXX_XBM--学生基本数据子类表 性别码
      ,[cb].MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.CSRQ as c_XSXX_CSRQ--学生基本数据子类表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生基本数据子类表 出生地码
      ,[cc].MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生基本数据子类表 籍贯
      ,c.MZM as c_XSXX_MZM--学生基本数据子类表 民族码
      ,[cd].MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[cd].ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.GJDQM as c_XSXX_GJDQM--学生基本数据子类表 国籍/地区码
      ,[ce].GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[ce].EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[ce].SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生基本数据子类表 身份证件类型码
      ,[cf].MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生基本数据子类表 身份证件号
      ,c.HYZKM as c_XSXX_HYZKM--学生基本数据子类表 婚姻状况码
      ,[cg].MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生基本数据子类表 港澳台侨外码
      ,[ch].MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[ch].SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生基本数据子类表 政治面貌码
      ,[ci].MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[ci].JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.JKZKM as c_XSXX_JKZKM--学生基本数据子类表 健康状况码
      ,[cj].MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[cj].SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.XYZJM as c_XSXX_XYZJM--学生基本数据子类表 信仰宗教码
      ,[ck].MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.XXM as c_XSXX_XXM--学生基本数据子类表 血型码
      ,[cl].MC as c_XSXX_XXM_MC--血型代码表 名称
      ,[cl].JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.ZP as c_XSXX_ZP--学生基本数据子类表 照片
      ,c.SFZJYXQ as c_XSXX_SFZJYXQ--学生基本数据子类表 身份证件有效期
      ,c.DSZYBZ as c_XSXX_DSZYBZ--学生基本数据子类表 独生子女标志
      ,[cm].MC as c_XSXX_DSZYBZ_MC--是否标志代码表 名称
      ,c.RXNY as c_XSXX_RXNY--学生基本数据子类表 入学年月
      ,c.NJ as c_XSXX_NJ--学生基本数据子类表 年级
      ,c.BH as c_XSXX_BH--学生基本数据子类表 班号
      ,c.XSLBM as c_XSXX_XSLBM--学生基本数据子类表 学生类别码
      ,[cn].MC as c_XSXX_XSLBM_MC--学生类别代码表 名称
      ,[cn].SM as c_XSXX_XSLBM_SM--学生类别代码表 说明
      ,c.XZZ as c_XSXX_XZZ--学生基本数据子类表 现住址
      ,c.HKSZD as c_XSXX_HKSZD--学生基本数据子类表 户口所在地
      ,c.HKXZM as c_XSXX_HKXZM--学生基本数据子类表 户口性质码
      ,[co].MC as c_XSXX_HKXZM_MC--户口类别代码 名称
      ,c.SFLDRK as c_XSXX_SFLDRK--学生基本数据子类表 是否流动人口
      ,[cp].MC as c_XSXX_SFLDRK_MC--是否标志代码表 名称
      ,c.TC as c_XSXX_TC--学生基本数据子类表 特长
      ,c.LXDH as c_XSXX_LXDH--学生基本数据子类表 联系电话
      ,c.TXDZ as c_XSXX_TXDZ--学生基本数据子类表 通信地址
      ,c.YZBM as c_XSXX_YZBM--学生基本数据子类表 邮政编码
      ,c.DZXX as c_XSXX_DZXX--学生基本数据子类表 电子信箱
      ,c.ZYDZ as c_XSXX_ZYDZ--学生基本数据子类表 主页地址
      ,c.XJH as c_XSXX_XJH--学生基本数据子类表 学籍号
      ,c.XSDQZTM as c_XSXX_XSDQZTM--学生基本数据子类表 学生当前状态码
      ,[cq].MC as c_XSXX_XSDQZTM_MC--学生当前状态代码表 名称
      ,[cq].SM as c_XSXX_XSDQZTM_SM--学生当前状态代码表 说明
      ,d.SCHOOLID as d_JZWJBSJ_SCHOOLID--建筑物基本数据类表 学校名
      ,d.JZWH as d_JZWJBSJ_JZWH--建筑物基本数据类表 建筑物号
      ,d.JZWMC as d_JZWJBSJ_JZWMC--建筑物基本数据类表 建筑物名称
      ,d.SYZKM as d_JZWJBSJ_SYZKM--建筑物基本数据类表 使用状况码
      ,[db].MC as d_JZWJBSJ_SYZKM_MC--使用状况代码表 名称
      ,d.FWCQ as d_JZWJBSJ_FWCQ--建筑物基本数据类表 房屋产权
      ,[dc].MC as d_JZWJBSJ_FWCQ_MC--产权代码表 名称
      ,d.XQH as d_JZWJBSJ_XQH--建筑物基本数据类表 校区号
      ,d.JZWFLM as d_JZWJBSJ_JZWFLM--建筑物基本数据类表 建筑物分类码
      ,[dd].MC as d_JZWJBSJ_JZWFLM_MC--建筑物分类代码表 名称
      ,d.JZWJGM as d_JZWJBSJ_JZWJGM--建筑物基本数据类表 建筑物结构码
      ,[de].MC as d_JZWJBSJ_JZWJGM_MC--建筑物结构代码表 名称
      ,d.JZWCS as d_JZWJBSJ_JZWCS--建筑物基本数据类表 建筑物层数
      ,d.JCNY as d_JZWJBSJ_JCNY--建筑物基本数据类表 建成年月
      ,d.JZWTZZE as d_JZWJBSJ_JZWTZZE--建筑物基本数据类表 建筑物投资总额
      ,d.JFLYM as d_JZWJBSJ_JFLYM--建筑物基本数据类表 经费来源码
      ,[df].MC as d_JZWJBSJ_JFLYM_MC--经费来源代码表 名称
      ,d.ZJZMJ as d_JZWJBSJ_ZJZMJ--建筑物基本数据类表 总建筑面积
      ,d.ZSYMJ as d_JZWJBSJ_ZSYMJ--建筑物基本数据类表 总使用面积
      ,d.KZSFLDM as d_JZWJBSJ_KZSFLDM--建筑物基本数据类表 抗震设防烈度码
      ,[dg].JC as d_JZWJBSJ_KZSFLDM_JC--抗震设防烈度代码 简称
      ,[dg].MC as d_JZWJBSJ_KZSFLDM_MC--抗震设防烈度代码 名称
      ,d.KZSFBZM as d_JZWJBSJ_KZSFBZM--建筑物基本数据类表 抗震设防标准码
      ,[dh].JC as d_JZWJBSJ_KZSFBZM_JC--抗震设防标准代码 简称
      ,[dh].MC as d_JZWJBSJ_KZSFBZM_MC--抗震设防标准代码 名称
      ,[dh].SM as d_JZWJBSJ_KZSFBZM_SM--抗震设防标准代码 说明
      ,d.JZWDZ as d_JZWJBSJ_JZWDZ--建筑物基本数据类表 建筑物地址
      ,d.JZWZKM as d_JZWJBSJ_JZWZKM--建筑物基本数据类表 建筑物状况码
      ,[di].MC as d_JZWJBSJ_JZWZKM_MC--建筑物状况代码表 名称
      ,[di].SM as d_JZWJBSJ_JZWZKM_SM--建筑物状况代码表 说明
      ,d.JZWTP as d_JZWJBSJ_JZWTP--建筑物基本数据类表 建筑物图片
      ,d.JZWPMT as d_JZWJBSJ_JZWPMT--建筑物基本数据类表 建筑物平面图
      ,d.XXDWCCM as d_JZWJBSJ_XXDWCCM--建筑物基本数据类表 学校单位层次码
      ,[dj].MC as d_JZWJBSJ_XXDWCCM_MC--学校单位层次代码表 名称
      ,d.JZWWZZK as d_JZWJBSJ_JZWWZZK--建筑物基本数据类表 建筑物位置状况
      ,d.GHSPWH as d_JZWJBSJ_GHSPWH--建筑物基本数据类表 规划审批文号
      ,d.ZHFZNL as d_JZWJBSJ_ZHFZNL--建筑物基本数据类表 综合防灾能力
      ,d.GHSYNX as d_JZWJBSJ_GHSYNX--建筑物基本数据类表 规划使用年限
      ,d.SFYYJBXCS as d_JZWJBSJ_SFYYJBXCS--建筑物基本数据类表 是否有预警避险措施
      ,[dk].MC as d_JZWJBSJ_SFYYJBXCS_MC--是否标志代码表 名称
      ,d.SFKYYYJBNCS as d_JZWJBSJ_SFKYYYJBNCS--建筑物基本数据类表 是否可用于应急避难场所
      ,[dl].MC as d_JZWJBSJ_SFKYYYJBNCS_MC--是否标志代码表 名称
      ,d.CQZH as d_JZWJBSJ_CQZH--建筑物基本数据类表 产权证号
      ,d.JZWYTM as d_JZWJBSJ_JZWYTM--建筑物基本数据类表 建筑物用途码
      ,[dm].MC as d_JZWJBSJ_JZWYTM_MC--建筑物用途代码表 名称
      ,d.JZWZGD as d_JZWJBSJ_JZWZGD--建筑物基本数据类表 建筑物总高度
      ,d.WFJDBM as d_JZWJBSJ_WFJDBM--建筑物基本数据类表 危房鉴定部门
      ,d.WFJDWH as d_JZWJBSJ_WFJDWH--建筑物基本数据类表 危房鉴定文号
      ,d.WFJDRQ as d_JZWJBSJ_WFJDRQ--建筑物基本数据类表 危房鉴定日期
      ,d.GNFSM as d_JZWJBSJ_GNFSM--建筑物基本数据类表 供暖方式码
      ,[dn].MC as d_JZWJBSJ_GNFSM_MC--供暖方式代码表 名称
      ,d.JZWJCXSM as d_JZWJBSJ_JZWJCXSM--建筑物基本数据类表 建筑物基础形式码
      ,[do].MC as d_JZWJBSJ_JZWJCXSM_MC--建筑物基础形式代码表 名称
      ,d.JZWPMXSM as d_JZWJBSJ_JZWPMXSM--建筑物基本数据类表 建筑物平面形式码
      ,[dp].MC as d_JZWJBSJ_JZWPMXSM_MC--建筑物平面形式代码表 名称
      ,d.JZWLBXSM as d_JZWJBSJ_JZWLBXSM--建筑物基本数据类表 建筑物楼板形式码
      ,[dq].MC as d_JZWJBSJ_JZWLBXSM_MC--建筑物楼板形式代码表 名称
      ,d.SFYGZZ as d_JZWJBSJ_SFYGZZ--建筑物基本数据类表 是否有构造柱
      ,[dr].MC as d_JZWJBSJ_SFYGZZ_MC--是否标志代码表 名称
      ,d.QL as d_JZWJBSJ_QL--建筑物基本数据类表 圈梁
      ,[ds].MC as d_JZWJBSJ_QL_MC--是否标志代码表 名称
      ,d.ZJAQGZWCRQ as d_JZWJBSJ_ZJAQGZWCRQ--建筑物基本数据类表 最近安全改造完成日期
      ,d.ZJAQGZHYJSYNX as d_JZWJBSJ_ZJAQGZHYJSYNX--建筑物基本数据类表 最近安全改造后预计使用年限
      ,d.ZXLXM as d_JZWJBSJ_ZXLXM--建筑物基本数据类表 专项类型
      ,d.ZYZXTZBZMCM as d_JZWJBSJ_ZYZXTZBZMCM--建筑物基本数据类表 中央专项投资补助名称码
      ,[dt].MC as d_JZWJBSJ_ZYZXTZBZMCM_MC--中央专项投资补助名称代码表 名称
      ,d.WWJZDJM as d_JZWJBSJ_WWJZDJM--建筑物基本数据类表 文物建筑等级码
      ,[du].MC as d_JZWJBSJ_WWJZDJM_MC--文物建筑等级代码表 名称
      ,d.JXJFZYF as d_JZWJBSJ_JXJFZYF--建筑物基本数据类表 教学及辅助用房
      ,d.QZJS as d_JZWJBSJ_QZJS--建筑物基本数据类表 其中教室
      ,d.QZSYS as d_JZWJBSJ_QZSYS--建筑物基本数据类表 其中实验室
      ,d.QZTSS as d_JZWJBSJ_QZTSS--建筑物基本数据类表 其中图书室
      ,d.QZWJS as d_JZWJBSJ_QZWJS--建筑物基本数据类表 其中微机室
      ,d.QZYYS as d_JZWJBSJ_QZYYS--建筑物基本数据类表 其中语音室
      ,d.QZTYHDS as d_JZWJBSJ_QZTYHDS--建筑物基本数据类表 其中体育活动室
      ,d.QZQTJFYF as d_JZWJBSJ_QZQTJFYF--建筑物基本数据类表 其中其他教辅用房
      ,d.SHYF as d_JZWJBSJ_SHYF--建筑物基本数据类表 生活用房
      ,d.QZXSSS as d_JZWJBSJ_QZXSSS--建筑物基本数据类表 其中学生宿舍
      ,d.QZST as d_JZWJBSJ_QZST--建筑物基本数据类表 其中食堂
      ,d.QZCS as d_JZWJBSJ_QZCS--建筑物基本数据类表 其中厕所
      ,d.QZGLF as d_JZWJBSJ_QZGLF--建筑物基本数据类表 其中锅炉房(开水房)
      ,d.QZYS as d_JZWJBSJ_QZYS--建筑物基本数据类表 其中浴室
      ,d.QZJGSS as d_JZWJBSJ_QZJGSS--建筑物基本数据类表 其中教工宿舍
      ,d.QZQTSHYF as d_JZWJBSJ_QZQTSHYF--建筑物基本数据类表 其中其他生活用房
      ,d.XZBGYF as d_JZWJBSJ_XZBGYF--建筑物基本数据类表 行政办公用房
      ,d.QZJSBGS as d_JZWJBSJ_QZJSBGS--建筑物基本数据类表 其中教职工办公室
      ,d.QZWSBJS as d_JZWJBSJ_QZWSBJS--建筑物基本数据类表 其中卫生保健室
      ,d.QZQTXZBGYF as d_JZWJBSJ_QZQTXZBGYF--建筑物基本数据类表 其中其他行政办公用房
      ,d.QTYF as d_JZWJBSJ_QTYF--建筑物基本数据类表 其他用房
      ,d.GLY as d_JZWJBSJ_GLY--建筑物基本数据类表 管理员
      ,e.SCHOOLID as e_XSSS_SCHOOLID--学生宿舍数据类表 学校名
      ,e.SSLID as e_XSSS_SSLID--学生宿舍数据类表 宿舍楼ID
      ,e.SSLBM as e_XSSS_SSLBM--学生宿舍数据类表 宿舍楼编号
      ,e.FJBM as e_XSSS_FJBM--学生宿舍数据类表 房间编号
      ,e.RZXB as e_XSSS_RZXB--学生宿舍数据类表 入住性别
      ,[eb].MC as e_XSSS_RZXB_MC--人的性别代码 名称
      ,e.SFKY as e_XSSS_SFKY--学生宿舍数据类表 是否可用
      ,[ec].MC as e_XSSS_SFKY_MC--是否标志代码表 名称
      ,e.KZRS as e_XSSS_KZRS--学生宿舍数据类表 可住人数
      ,e.WLDK as e_XSSS_WLDK--学生宿舍数据类表 网络端口
      ,e.AZDSJ as e_XSSS_AZDSJ--学生宿舍数据类表 安装电视机
      ,[ed].MC as e_XSSS_AZDSJ_MC--是否标志代码表 名称
      ,e.DHDK as e_XSSS_DHDK--学生宿舍数据类表 电话端口
      ,e.DHHM as e_XSSS_DHHM--学生宿舍数据类表 电话号码
      ,e.SBDS as e_XSSS_SBDS--学生宿舍数据类表 水表底数
      ,e.DBDS as e_XSSS_DBDS--学生宿舍数据类表 电表底数
      ,e.SSBZ as e_XSSS_SSBZ--学生宿舍数据类表 宿舍备注
      ,e.SZLZ as e_XSSS_SZLZ--学生宿舍数据类表 所在楼层
      ,e.SSM as e_XSSS_SSM--学生宿舍数据类表 宿舍名
      ,f.SCHOOLID as f_SSCW_SCHOOLID--宿舍床位表 学校ID
      ,f.SSLID as f_SSCW_SSLID--宿舍床位表 宿舍楼ID
      ,f.SSID as f_SSCW_SSID--宿舍床位表 宿舍ID
      ,f.CWM as f_SSCW_CWM--宿舍床位表 床位名
      ,f.BZ as f_SSCW_BZ--宿舍床位表 备注
      ,f.SFRZ as f_SSCW_SFRZ--宿舍床位表 是否入住
      ,[fb].MC as f_SSCW_SFRZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZXFC_08_A02_XSZSJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS c ON a.XSID = c.ID /*学生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXFC_02_01_JZWJBSJ AS d ON a.SSLID = d.ID /*宿舍楼ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXFC_08_01_XSSS AS e ON a.SSID = e.ID /*宿舍ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXFC_08_A01_SSCW AS f ON a.CWID = f.ID /*床位ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cb] ON c.XBM = [cb].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cc] ON c.CSDM = [cc].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cd] ON c.MZM = [cd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ce] ON c.GJDQM = [ce].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cf] ON c.SFZJLXM = [cf].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZKM = [cg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ch] ON c.GATQWM = [ch].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ci] ON c.ZZMMM = [ci].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cj] ON c.JKZKM = [cj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ck] ON c.XYZJM = [ck].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [cl] ON c.XXM = [cl].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cm] ON c.DSZYBZ = [cm].DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS [cn] ON c.XSLBM = [cn].DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [co] ON c.HKXZM = [co].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cp] ON c.SFLDRK = [cp].DM /*是否流动人口*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS [cq] ON c.XSDQZTM = [cq].DM /*学生当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS [db] ON d.SYZKM = [db].DM /*使用状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS [dc] ON d.FWCQ = [dc].DM /*房屋产权*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS [dd] ON d.JZWFLM = [dd].DM /*建筑物分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS [de] ON d.JZWJGM = [de].DM /*建筑物结构码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS [df] ON d.JFLYM = [df].DM /*经费来源码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS [dg] ON d.KZSFLDM = [dg].DM /*抗震设防烈度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS [dh] ON d.KZSFBZM = [dh].DM /*抗震设防标准码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS [di] ON d.JZWZKM = [di].DM /*建筑物状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS [dj] ON d.XXDWCCM = [dj].DM /*学校单位层次码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dk] ON d.SFYYJBXCS = [dk].DM /*是否有预警避险措施*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dl] ON d.SFKYYYJBNCS = [dl].DM /*是否可用于应急避难场所*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS [dm] ON d.JZWYTM = [dm].DM /*建筑物用途码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS [dn] ON d.GNFSM = [dn].DM /*供暖方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS [do] ON d.JZWJCXSM = [do].DM /*建筑物基础形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS [dp] ON d.JZWPMXSM = [dp].DM /*建筑物平面形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS [dq] ON d.JZWLBXSM = [dq].DM /*建筑物楼板形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dr] ON d.SFYGZZ = [dr].DM /*是否有构造柱*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ds] ON d.QL = [ds].DM /*圈梁*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS [dt] ON d.ZYZXTZBZMCM = [dt].DM /*中央专项投资补助名称码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS [du] ON d.WWJZDJM = [du].DM /*文物建筑等级码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [eb] ON e.RZXB = [eb].DM /*入住性别*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ec] ON e.SFKY = [ec].DM /*是否可用*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ed] ON e.AZDSJ = [ed].DM /*安装电视机*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.SFRZ = [fb].DM /*是否入住*/
GO
