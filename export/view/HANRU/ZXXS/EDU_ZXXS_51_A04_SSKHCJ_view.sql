
--宿舍考核成绩表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_51_A04_SSKHCJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SSDLID]--所属大类ID
      ,a.[SSDLXMID]--所属大类项目ID
      ,a.[GYID]--宿舍楼ID
      ,a.[SSID]--宿舍ID
      ,a.[FZ]--分值
      ,a.[DJRID]--登记人ID
      ,a.[DJSJ]--登记时间
      ,c.SCHOOLID as c_KHDL_SCHOOLID--考核大类表 学校
      ,c.MC as c_KHDL_MC--考核大类表 名称
      ,c.KHDX as c_KHDL_KHDX--考核大类表 考核对象
      ,c.DJFS as c_KHDL_DJFS--考核大类表 登记方式
      ,c.KDJYHIDLB as c_KHDL_KDJYHIDLB--考核大类表 可登记用户ID列表
      ,c.KDJYHXMLB as c_KHDL_KDJYHXMLB--考核大类表 可登记用户姓名列表
      ,d.SCHOOLID as d_KHDLXM_SCHOOLID--考核大类项目表 学校
      ,d.SSDLID as d_KHDLXM_SSDLID--考核大类项目表 所属大类ID
      ,d.DLXMMC as d_KHDLXM_DLXMMC--考核大类项目表 大类项目名称
      ,d.FZLX as d_KHDLXM_FZLX--考核大类项目表 分值类型
      ,d.XMZGF as d_KHDLXM_XMZGF--考核大类项目表 项目最高分
      ,e.SCHOOLID as e_JZWJBSJ_SCHOOLID--建筑物基本数据类表 学校名
      ,e.JZWH as e_JZWJBSJ_JZWH--建筑物基本数据类表 建筑物号
      ,e.JZWMC as e_JZWJBSJ_JZWMC--建筑物基本数据类表 建筑物名称
      ,e.SYZKM as e_JZWJBSJ_SYZKM--建筑物基本数据类表 使用状况码
      ,[eb].MC as e_JZWJBSJ_SYZKM_MC--使用状况代码表 名称
      ,e.FWCQ as e_JZWJBSJ_FWCQ--建筑物基本数据类表 房屋产权
      ,[ec].MC as e_JZWJBSJ_FWCQ_MC--产权代码表 名称
      ,e.XQH as e_JZWJBSJ_XQH--建筑物基本数据类表 校区号
      ,e.JZWFLM as e_JZWJBSJ_JZWFLM--建筑物基本数据类表 建筑物分类码
      ,[ed].MC as e_JZWJBSJ_JZWFLM_MC--建筑物分类代码表 名称
      ,e.JZWJGM as e_JZWJBSJ_JZWJGM--建筑物基本数据类表 建筑物结构码
      ,[ee].MC as e_JZWJBSJ_JZWJGM_MC--建筑物结构代码表 名称
      ,e.JZWCS as e_JZWJBSJ_JZWCS--建筑物基本数据类表 建筑物层数
      ,e.JCNY as e_JZWJBSJ_JCNY--建筑物基本数据类表 建成年月
      ,e.JZWTZZE as e_JZWJBSJ_JZWTZZE--建筑物基本数据类表 建筑物投资总额
      ,e.JFLYM as e_JZWJBSJ_JFLYM--建筑物基本数据类表 经费来源码
      ,[ef].MC as e_JZWJBSJ_JFLYM_MC--经费来源代码表 名称
      ,e.ZJZMJ as e_JZWJBSJ_ZJZMJ--建筑物基本数据类表 总建筑面积
      ,e.ZSYMJ as e_JZWJBSJ_ZSYMJ--建筑物基本数据类表 总使用面积
      ,e.KZSFLDM as e_JZWJBSJ_KZSFLDM--建筑物基本数据类表 抗震设防烈度码
      ,[eg].JC as e_JZWJBSJ_KZSFLDM_JC--抗震设防烈度代码 简称
      ,[eg].MC as e_JZWJBSJ_KZSFLDM_MC--抗震设防烈度代码 名称
      ,e.KZSFBZM as e_JZWJBSJ_KZSFBZM--建筑物基本数据类表 抗震设防标准码
      ,[eh].JC as e_JZWJBSJ_KZSFBZM_JC--抗震设防标准代码 简称
      ,[eh].MC as e_JZWJBSJ_KZSFBZM_MC--抗震设防标准代码 名称
      ,[eh].SM as e_JZWJBSJ_KZSFBZM_SM--抗震设防标准代码 说明
      ,e.JZWDZ as e_JZWJBSJ_JZWDZ--建筑物基本数据类表 建筑物地址
      ,e.JZWZKM as e_JZWJBSJ_JZWZKM--建筑物基本数据类表 建筑物状况码
      ,[ei].MC as e_JZWJBSJ_JZWZKM_MC--建筑物状况代码表 名称
      ,[ei].SM as e_JZWJBSJ_JZWZKM_SM--建筑物状况代码表 说明
      ,e.JZWTP as e_JZWJBSJ_JZWTP--建筑物基本数据类表 建筑物图片
      ,e.JZWPMT as e_JZWJBSJ_JZWPMT--建筑物基本数据类表 建筑物平面图
      ,e.XXDWCCM as e_JZWJBSJ_XXDWCCM--建筑物基本数据类表 学校单位层次码
      ,[ej].MC as e_JZWJBSJ_XXDWCCM_MC--学校单位层次代码表 名称
      ,e.JZWWZZK as e_JZWJBSJ_JZWWZZK--建筑物基本数据类表 建筑物位置状况
      ,e.GHSPWH as e_JZWJBSJ_GHSPWH--建筑物基本数据类表 规划审批文号
      ,e.ZHFZNL as e_JZWJBSJ_ZHFZNL--建筑物基本数据类表 综合防灾能力
      ,e.GHSYNX as e_JZWJBSJ_GHSYNX--建筑物基本数据类表 规划使用年限
      ,e.SFYYJBXCS as e_JZWJBSJ_SFYYJBXCS--建筑物基本数据类表 是否有预警避险措施
      ,[ek].MC as e_JZWJBSJ_SFYYJBXCS_MC--是否标志代码表 名称
      ,e.SFKYYYJBNCS as e_JZWJBSJ_SFKYYYJBNCS--建筑物基本数据类表 是否可用于应急避难场所
      ,[el].MC as e_JZWJBSJ_SFKYYYJBNCS_MC--是否标志代码表 名称
      ,e.CQZH as e_JZWJBSJ_CQZH--建筑物基本数据类表 产权证号
      ,e.JZWYTM as e_JZWJBSJ_JZWYTM--建筑物基本数据类表 建筑物用途码
      ,[em].MC as e_JZWJBSJ_JZWYTM_MC--建筑物用途代码表 名称
      ,e.JZWZGD as e_JZWJBSJ_JZWZGD--建筑物基本数据类表 建筑物总高度
      ,e.WFJDBM as e_JZWJBSJ_WFJDBM--建筑物基本数据类表 危房鉴定部门
      ,e.WFJDWH as e_JZWJBSJ_WFJDWH--建筑物基本数据类表 危房鉴定文号
      ,e.WFJDRQ as e_JZWJBSJ_WFJDRQ--建筑物基本数据类表 危房鉴定日期
      ,e.GNFSM as e_JZWJBSJ_GNFSM--建筑物基本数据类表 供暖方式码
      ,[en].MC as e_JZWJBSJ_GNFSM_MC--供暖方式代码表 名称
      ,e.JZWJCXSM as e_JZWJBSJ_JZWJCXSM--建筑物基本数据类表 建筑物基础形式码
      ,[eo].MC as e_JZWJBSJ_JZWJCXSM_MC--建筑物基础形式代码表 名称
      ,e.JZWPMXSM as e_JZWJBSJ_JZWPMXSM--建筑物基本数据类表 建筑物平面形式码
      ,[ep].MC as e_JZWJBSJ_JZWPMXSM_MC--建筑物平面形式代码表 名称
      ,e.JZWLBXSM as e_JZWJBSJ_JZWLBXSM--建筑物基本数据类表 建筑物楼板形式码
      ,[eq].MC as e_JZWJBSJ_JZWLBXSM_MC--建筑物楼板形式代码表 名称
      ,e.SFYGZZ as e_JZWJBSJ_SFYGZZ--建筑物基本数据类表 是否有构造柱
      ,[er].MC as e_JZWJBSJ_SFYGZZ_MC--是否标志代码表 名称
      ,e.QL as e_JZWJBSJ_QL--建筑物基本数据类表 圈梁
      ,[es].MC as e_JZWJBSJ_QL_MC--是否标志代码表 名称
      ,e.ZJAQGZWCRQ as e_JZWJBSJ_ZJAQGZWCRQ--建筑物基本数据类表 最近安全改造完成日期
      ,e.ZJAQGZHYJSYNX as e_JZWJBSJ_ZJAQGZHYJSYNX--建筑物基本数据类表 最近安全改造后预计使用年限
      ,e.ZXLXM as e_JZWJBSJ_ZXLXM--建筑物基本数据类表 专项类型
      ,e.ZYZXTZBZMCM as e_JZWJBSJ_ZYZXTZBZMCM--建筑物基本数据类表 中央专项投资补助名称码
      ,[et].MC as e_JZWJBSJ_ZYZXTZBZMCM_MC--中央专项投资补助名称代码表 名称
      ,e.WWJZDJM as e_JZWJBSJ_WWJZDJM--建筑物基本数据类表 文物建筑等级码
      ,[eu].MC as e_JZWJBSJ_WWJZDJM_MC--文物建筑等级代码表 名称
      ,e.JXJFZYF as e_JZWJBSJ_JXJFZYF--建筑物基本数据类表 教学及辅助用房
      ,e.QZJS as e_JZWJBSJ_QZJS--建筑物基本数据类表 其中教室
      ,e.QZSYS as e_JZWJBSJ_QZSYS--建筑物基本数据类表 其中实验室
      ,e.QZTSS as e_JZWJBSJ_QZTSS--建筑物基本数据类表 其中图书室
      ,e.QZWJS as e_JZWJBSJ_QZWJS--建筑物基本数据类表 其中微机室
      ,e.QZYYS as e_JZWJBSJ_QZYYS--建筑物基本数据类表 其中语音室
      ,e.QZTYHDS as e_JZWJBSJ_QZTYHDS--建筑物基本数据类表 其中体育活动室
      ,e.QZQTJFYF as e_JZWJBSJ_QZQTJFYF--建筑物基本数据类表 其中其他教辅用房
      ,e.SHYF as e_JZWJBSJ_SHYF--建筑物基本数据类表 生活用房
      ,e.QZXSSS as e_JZWJBSJ_QZXSSS--建筑物基本数据类表 其中学生宿舍
      ,e.QZST as e_JZWJBSJ_QZST--建筑物基本数据类表 其中食堂
      ,e.QZCS as e_JZWJBSJ_QZCS--建筑物基本数据类表 其中厕所
      ,e.QZGLF as e_JZWJBSJ_QZGLF--建筑物基本数据类表 其中锅炉房(开水房)
      ,e.QZYS as e_JZWJBSJ_QZYS--建筑物基本数据类表 其中浴室
      ,e.QZJGSS as e_JZWJBSJ_QZJGSS--建筑物基本数据类表 其中教工宿舍
      ,e.QZQTSHYF as e_JZWJBSJ_QZQTSHYF--建筑物基本数据类表 其中其他生活用房
      ,e.XZBGYF as e_JZWJBSJ_XZBGYF--建筑物基本数据类表 行政办公用房
      ,e.QZJSBGS as e_JZWJBSJ_QZJSBGS--建筑物基本数据类表 其中教职工办公室
      ,e.QZWSBJS as e_JZWJBSJ_QZWSBJS--建筑物基本数据类表 其中卫生保健室
      ,e.QZQTXZBGYF as e_JZWJBSJ_QZQTXZBGYF--建筑物基本数据类表 其中其他行政办公用房
      ,e.QTYF as e_JZWJBSJ_QTYF--建筑物基本数据类表 其他用房
      ,e.GLY as e_JZWJBSJ_GLY--建筑物基本数据类表 管理员
      ,f.SCHOOLID as f_XSSS_SCHOOLID--学生宿舍数据类表 学校名
      ,f.SSLID as f_XSSS_SSLID--学生宿舍数据类表 宿舍楼ID
      ,f.SSLBM as f_XSSS_SSLBM--学生宿舍数据类表 宿舍楼编号
      ,f.FJBM as f_XSSS_FJBM--学生宿舍数据类表 房间编号
      ,f.RZXB as f_XSSS_RZXB--学生宿舍数据类表 入住性别
      ,[fb].MC as f_XSSS_RZXB_MC--人的性别代码 名称
      ,f.SFKY as f_XSSS_SFKY--学生宿舍数据类表 是否可用
      ,[fc].MC as f_XSSS_SFKY_MC--是否标志代码表 名称
      ,f.KZRS as f_XSSS_KZRS--学生宿舍数据类表 可住人数
      ,f.WLDK as f_XSSS_WLDK--学生宿舍数据类表 网络端口
      ,f.AZDSJ as f_XSSS_AZDSJ--学生宿舍数据类表 安装电视机
      ,[fd].MC as f_XSSS_AZDSJ_MC--是否标志代码表 名称
      ,f.DHDK as f_XSSS_DHDK--学生宿舍数据类表 电话端口
      ,f.DHHM as f_XSSS_DHHM--学生宿舍数据类表 电话号码
      ,f.SBDS as f_XSSS_SBDS--学生宿舍数据类表 水表底数
      ,f.DBDS as f_XSSS_DBDS--学生宿舍数据类表 电表底数
      ,f.SSBZ as f_XSSS_SSBZ--学生宿舍数据类表 宿舍备注
      ,f.SZLZ as f_XSSS_SZLZ--学生宿舍数据类表 所在楼层
      ,f.SSM as f_XSSS_SSM--学生宿舍数据类表 宿舍名
      ,g.SCHOOLID as g_USER_SCHOOLID--应用系统用户表 学校ID
      ,g.APPID as g_USER_APPID--应用系统用户表 应用ID
      ,g.PWD as g_USER_PWD--应用系统用户表 密码
      ,g.STATUS as g_USER_STATUS--应用系统用户表 用户状态
      ,g.USERTYPE as g_USER_USERTYPE--应用系统用户表 用户类别
      ,g.USERID as g_USER_USERID--应用系统用户表 用户ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--应用系统用户表 用户角色
      ,g.XM as g_USER_XM--应用系统用户表 姓名
      ,g.XB as g_USER_XB--应用系统用户表 性别
      ,g.QQ as g_USER_QQ--应用系统用户表 QQ
      ,g.DZYJ as g_USER_DZYJ--应用系统用户表 电子邮件
      ,g.LXDH as g_USER_LXDH--应用系统用户表 联系电话
      ,g.ZJDLSJ as g_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,g.DLCGCS as g_USER_DLCGCS--应用系统用户表 登录成功次数
      ,g.YHCJSJ as g_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,g.YHRY as g_USER_YHRY--应用系统用户表 用户荣誉
      ,g.YHJF as g_USER_YHJF--应用系统用户表 用户积分

FROM dbo.EDU_ZXXS_51_A04_SSKHCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_51_A01_KHDL AS c ON a.SSDLID = c.ID /*所属大类ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_51_A02_KHDLXM AS d ON a.SSDLXMID = d.ID /*所属大类项目ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXFC_02_01_JZWJBSJ AS e ON a.GYID = e.ID /*宿舍楼ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXFC_08_01_XSSS AS f ON a.SSID = f.ID /*宿舍ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.DJRID = g.LOGINNAME /*登记人ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS [eb] ON e.SYZKM = [eb].DM /*使用状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS [ec] ON e.FWCQ = [ec].DM /*房屋产权*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS [ed] ON e.JZWFLM = [ed].DM /*建筑物分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS [ee] ON e.JZWJGM = [ee].DM /*建筑物结构码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS [ef] ON e.JFLYM = [ef].DM /*经费来源码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS [eg] ON e.KZSFLDM = [eg].DM /*抗震设防烈度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS [eh] ON e.KZSFBZM = [eh].DM /*抗震设防标准码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS [ei] ON e.JZWZKM = [ei].DM /*建筑物状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS [ej] ON e.XXDWCCM = [ej].DM /*学校单位层次码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ek] ON e.SFYYJBXCS = [ek].DM /*是否有预警避险措施*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [el] ON e.SFKYYYJBNCS = [el].DM /*是否可用于应急避难场所*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS [em] ON e.JZWYTM = [em].DM /*建筑物用途码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS [en] ON e.GNFSM = [en].DM /*供暖方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS [eo] ON e.JZWJCXSM = [eo].DM /*建筑物基础形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS [ep] ON e.JZWPMXSM = [ep].DM /*建筑物平面形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS [eq] ON e.JZWLBXSM = [eq].DM /*建筑物楼板形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [er] ON e.SFYGZZ = [er].DM /*是否有构造柱*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [es] ON e.QL = [es].DM /*圈梁*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS [et] ON e.ZYZXTZBZMCM = [et].DM /*中央专项投资补助名称码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS [eu] ON e.WWJZDJM = [eu].DM /*文物建筑等级码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [fb] ON f.RZXB = [fb].DM /*入住性别*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fc] ON f.SFKY = [fc].DM /*是否可用*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fd] ON f.AZDSJ = [fd].DM /*安装电视机*/
GO
