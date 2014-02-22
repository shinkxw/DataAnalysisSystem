
--宿舍床位表
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_08_A01_SSCW_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[SSLID]--宿舍楼ID
      ,a.[SSID]--宿舍ID
      ,a.[CWM]--床位名
      ,a.[BZ]--备注
      ,a.[SFRZ]--是否入住
      ,c.SCHOOLID as c_JZWJBSJ_SCHOOLID--建筑物基本数据类表 学校名
      ,c.JZWH as c_JZWJBSJ_JZWH--建筑物基本数据类表 建筑物号
      ,c.JZWMC as c_JZWJBSJ_JZWMC--建筑物基本数据类表 建筑物名称
      ,c.SYZKM as c_JZWJBSJ_SYZKM--建筑物基本数据类表 使用状况码
      ,[cb].MC as c_JZWJBSJ_SYZKM_MC--使用状况代码表 名称
      ,c.FWCQ as c_JZWJBSJ_FWCQ--建筑物基本数据类表 房屋产权
      ,[cc].MC as c_JZWJBSJ_FWCQ_MC--产权代码表 名称
      ,c.XQH as c_JZWJBSJ_XQH--建筑物基本数据类表 校区号
      ,c.JZWFLM as c_JZWJBSJ_JZWFLM--建筑物基本数据类表 建筑物分类码
      ,[cd].MC as c_JZWJBSJ_JZWFLM_MC--建筑物分类代码表 名称
      ,c.JZWJGM as c_JZWJBSJ_JZWJGM--建筑物基本数据类表 建筑物结构码
      ,[ce].MC as c_JZWJBSJ_JZWJGM_MC--建筑物结构代码表 名称
      ,c.JZWCS as c_JZWJBSJ_JZWCS--建筑物基本数据类表 建筑物层数
      ,c.JCNY as c_JZWJBSJ_JCNY--建筑物基本数据类表 建成年月
      ,c.JZWTZZE as c_JZWJBSJ_JZWTZZE--建筑物基本数据类表 建筑物投资总额
      ,c.JFLYM as c_JZWJBSJ_JFLYM--建筑物基本数据类表 经费来源码
      ,[cf].MC as c_JZWJBSJ_JFLYM_MC--经费来源代码表 名称
      ,c.ZJZMJ as c_JZWJBSJ_ZJZMJ--建筑物基本数据类表 总建筑面积
      ,c.ZSYMJ as c_JZWJBSJ_ZSYMJ--建筑物基本数据类表 总使用面积
      ,c.KZSFLDM as c_JZWJBSJ_KZSFLDM--建筑物基本数据类表 抗震设防烈度码
      ,[cg].JC as c_JZWJBSJ_KZSFLDM_JC--抗震设防烈度代码 简称
      ,[cg].MC as c_JZWJBSJ_KZSFLDM_MC--抗震设防烈度代码 名称
      ,c.KZSFBZM as c_JZWJBSJ_KZSFBZM--建筑物基本数据类表 抗震设防标准码
      ,[ch].JC as c_JZWJBSJ_KZSFBZM_JC--抗震设防标准代码 简称
      ,[ch].MC as c_JZWJBSJ_KZSFBZM_MC--抗震设防标准代码 名称
      ,[ch].SM as c_JZWJBSJ_KZSFBZM_SM--抗震设防标准代码 说明
      ,c.JZWDZ as c_JZWJBSJ_JZWDZ--建筑物基本数据类表 建筑物地址
      ,c.JZWZKM as c_JZWJBSJ_JZWZKM--建筑物基本数据类表 建筑物状况码
      ,[ci].MC as c_JZWJBSJ_JZWZKM_MC--建筑物状况代码表 名称
      ,[ci].SM as c_JZWJBSJ_JZWZKM_SM--建筑物状况代码表 说明
      ,c.JZWTP as c_JZWJBSJ_JZWTP--建筑物基本数据类表 建筑物图片
      ,c.JZWPMT as c_JZWJBSJ_JZWPMT--建筑物基本数据类表 建筑物平面图
      ,c.XXDWCCM as c_JZWJBSJ_XXDWCCM--建筑物基本数据类表 学校单位层次码
      ,[cj].MC as c_JZWJBSJ_XXDWCCM_MC--学校单位层次代码表 名称
      ,c.JZWWZZK as c_JZWJBSJ_JZWWZZK--建筑物基本数据类表 建筑物位置状况
      ,c.GHSPWH as c_JZWJBSJ_GHSPWH--建筑物基本数据类表 规划审批文号
      ,c.ZHFZNL as c_JZWJBSJ_ZHFZNL--建筑物基本数据类表 综合防灾能力
      ,c.GHSYNX as c_JZWJBSJ_GHSYNX--建筑物基本数据类表 规划使用年限
      ,c.SFYYJBXCS as c_JZWJBSJ_SFYYJBXCS--建筑物基本数据类表 是否有预警避险措施
      ,[ck].MC as c_JZWJBSJ_SFYYJBXCS_MC--是否标志代码表 名称
      ,c.SFKYYYJBNCS as c_JZWJBSJ_SFKYYYJBNCS--建筑物基本数据类表 是否可用于应急避难场所
      ,[cl].MC as c_JZWJBSJ_SFKYYYJBNCS_MC--是否标志代码表 名称
      ,c.CQZH as c_JZWJBSJ_CQZH--建筑物基本数据类表 产权证号
      ,c.JZWYTM as c_JZWJBSJ_JZWYTM--建筑物基本数据类表 建筑物用途码
      ,[cm].MC as c_JZWJBSJ_JZWYTM_MC--建筑物用途代码表 名称
      ,c.JZWZGD as c_JZWJBSJ_JZWZGD--建筑物基本数据类表 建筑物总高度
      ,c.WFJDBM as c_JZWJBSJ_WFJDBM--建筑物基本数据类表 危房鉴定部门
      ,c.WFJDWH as c_JZWJBSJ_WFJDWH--建筑物基本数据类表 危房鉴定文号
      ,c.WFJDRQ as c_JZWJBSJ_WFJDRQ--建筑物基本数据类表 危房鉴定日期
      ,c.GNFSM as c_JZWJBSJ_GNFSM--建筑物基本数据类表 供暖方式码
      ,[cn].MC as c_JZWJBSJ_GNFSM_MC--供暖方式代码表 名称
      ,c.JZWJCXSM as c_JZWJBSJ_JZWJCXSM--建筑物基本数据类表 建筑物基础形式码
      ,[co].MC as c_JZWJBSJ_JZWJCXSM_MC--建筑物基础形式代码表 名称
      ,c.JZWPMXSM as c_JZWJBSJ_JZWPMXSM--建筑物基本数据类表 建筑物平面形式码
      ,[cp].MC as c_JZWJBSJ_JZWPMXSM_MC--建筑物平面形式代码表 名称
      ,c.JZWLBXSM as c_JZWJBSJ_JZWLBXSM--建筑物基本数据类表 建筑物楼板形式码
      ,[cq].MC as c_JZWJBSJ_JZWLBXSM_MC--建筑物楼板形式代码表 名称
      ,c.SFYGZZ as c_JZWJBSJ_SFYGZZ--建筑物基本数据类表 是否有构造柱
      ,[cr].MC as c_JZWJBSJ_SFYGZZ_MC--是否标志代码表 名称
      ,c.QL as c_JZWJBSJ_QL--建筑物基本数据类表 圈梁
      ,[cs].MC as c_JZWJBSJ_QL_MC--是否标志代码表 名称
      ,c.ZJAQGZWCRQ as c_JZWJBSJ_ZJAQGZWCRQ--建筑物基本数据类表 最近安全改造完成日期
      ,c.ZJAQGZHYJSYNX as c_JZWJBSJ_ZJAQGZHYJSYNX--建筑物基本数据类表 最近安全改造后预计使用年限
      ,c.ZXLXM as c_JZWJBSJ_ZXLXM--建筑物基本数据类表 专项类型
      ,c.ZYZXTZBZMCM as c_JZWJBSJ_ZYZXTZBZMCM--建筑物基本数据类表 中央专项投资补助名称码
      ,[ct].MC as c_JZWJBSJ_ZYZXTZBZMCM_MC--中央专项投资补助名称代码表 名称
      ,c.WWJZDJM as c_JZWJBSJ_WWJZDJM--建筑物基本数据类表 文物建筑等级码
      ,[cu].MC as c_JZWJBSJ_WWJZDJM_MC--文物建筑等级代码表 名称
      ,c.JXJFZYF as c_JZWJBSJ_JXJFZYF--建筑物基本数据类表 教学及辅助用房
      ,c.QZJS as c_JZWJBSJ_QZJS--建筑物基本数据类表 其中教室
      ,c.QZSYS as c_JZWJBSJ_QZSYS--建筑物基本数据类表 其中实验室
      ,c.QZTSS as c_JZWJBSJ_QZTSS--建筑物基本数据类表 其中图书室
      ,c.QZWJS as c_JZWJBSJ_QZWJS--建筑物基本数据类表 其中微机室
      ,c.QZYYS as c_JZWJBSJ_QZYYS--建筑物基本数据类表 其中语音室
      ,c.QZTYHDS as c_JZWJBSJ_QZTYHDS--建筑物基本数据类表 其中体育活动室
      ,c.QZQTJFYF as c_JZWJBSJ_QZQTJFYF--建筑物基本数据类表 其中其他教辅用房
      ,c.SHYF as c_JZWJBSJ_SHYF--建筑物基本数据类表 生活用房
      ,c.QZXSSS as c_JZWJBSJ_QZXSSS--建筑物基本数据类表 其中学生宿舍
      ,c.QZST as c_JZWJBSJ_QZST--建筑物基本数据类表 其中食堂
      ,c.QZCS as c_JZWJBSJ_QZCS--建筑物基本数据类表 其中厕所
      ,c.QZGLF as c_JZWJBSJ_QZGLF--建筑物基本数据类表 其中锅炉房(开水房)
      ,c.QZYS as c_JZWJBSJ_QZYS--建筑物基本数据类表 其中浴室
      ,c.QZJGSS as c_JZWJBSJ_QZJGSS--建筑物基本数据类表 其中教工宿舍
      ,c.QZQTSHYF as c_JZWJBSJ_QZQTSHYF--建筑物基本数据类表 其中其他生活用房
      ,c.XZBGYF as c_JZWJBSJ_XZBGYF--建筑物基本数据类表 行政办公用房
      ,c.QZJSBGS as c_JZWJBSJ_QZJSBGS--建筑物基本数据类表 其中教职工办公室
      ,c.QZWSBJS as c_JZWJBSJ_QZWSBJS--建筑物基本数据类表 其中卫生保健室
      ,c.QZQTXZBGYF as c_JZWJBSJ_QZQTXZBGYF--建筑物基本数据类表 其中其他行政办公用房
      ,c.QTYF as c_JZWJBSJ_QTYF--建筑物基本数据类表 其他用房
      ,c.GLY as c_JZWJBSJ_GLY--建筑物基本数据类表 管理员
      ,d.SCHOOLID as d_XSSS_SCHOOLID--学生宿舍数据类表 学校名
      ,d.SSLID as d_XSSS_SSLID--学生宿舍数据类表 宿舍楼ID
      ,d.SSLBM as d_XSSS_SSLBM--学生宿舍数据类表 宿舍楼编号
      ,d.FJBM as d_XSSS_FJBM--学生宿舍数据类表 房间编号
      ,d.RZXB as d_XSSS_RZXB--学生宿舍数据类表 入住性别
      ,[db].MC as d_XSSS_RZXB_MC--人的性别代码 名称
      ,d.SFKY as d_XSSS_SFKY--学生宿舍数据类表 是否可用
      ,[dc].MC as d_XSSS_SFKY_MC--是否标志代码表 名称
      ,d.KZRS as d_XSSS_KZRS--学生宿舍数据类表 可住人数
      ,d.WLDK as d_XSSS_WLDK--学生宿舍数据类表 网络端口
      ,d.AZDSJ as d_XSSS_AZDSJ--学生宿舍数据类表 安装电视机
      ,[dd].MC as d_XSSS_AZDSJ_MC--是否标志代码表 名称
      ,d.DHDK as d_XSSS_DHDK--学生宿舍数据类表 电话端口
      ,d.DHHM as d_XSSS_DHHM--学生宿舍数据类表 电话号码
      ,d.SBDS as d_XSSS_SBDS--学生宿舍数据类表 水表底数
      ,d.DBDS as d_XSSS_DBDS--学生宿舍数据类表 电表底数
      ,d.SSBZ as d_XSSS_SSBZ--学生宿舍数据类表 宿舍备注
      ,d.SZLZ as d_XSSS_SZLZ--学生宿舍数据类表 所在楼层
      ,d.SSM as d_XSSS_SSM--学生宿舍数据类表 宿舍名
      ,e.MC as e_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZZFC_08_A01_SSCW AS a LEFT OUTER JOIN
      dbo.EDU_ZZFC_02_01_JZWJBSJ AS c ON a.SSLID = c.ID /*宿舍楼ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_08_01_XSSS AS d ON a.SSID = d.ID /*宿舍ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFRZ = e.DM /*是否入住*/ LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS [cb] ON c.SYZKM = [cb].DM /*使用状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS [cc] ON c.FWCQ = [cc].DM /*房屋产权*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS [cd] ON c.JZWFLM = [cd].DM /*建筑物分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS [ce] ON c.JZWJGM = [ce].DM /*建筑物结构码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS [cf] ON c.JFLYM = [cf].DM /*经费来源码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS [cg] ON c.KZSFLDM = [cg].DM /*抗震设防烈度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS [ch] ON c.KZSFBZM = [ch].DM /*抗震设防标准码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS [ci] ON c.JZWZKM = [ci].DM /*建筑物状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS [cj] ON c.XXDWCCM = [cj].DM /*学校单位层次码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ck] ON c.SFYYJBXCS = [ck].DM /*是否有预警避险措施*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cl] ON c.SFKYYYJBNCS = [cl].DM /*是否可用于应急避难场所*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS [cm] ON c.JZWYTM = [cm].DM /*建筑物用途码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS [cn] ON c.GNFSM = [cn].DM /*供暖方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS [co] ON c.JZWJCXSM = [co].DM /*建筑物基础形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS [cp] ON c.JZWPMXSM = [cp].DM /*建筑物平面形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS [cq] ON c.JZWLBXSM = [cq].DM /*建筑物楼板形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cr] ON c.SFYGZZ = [cr].DM /*是否有构造柱*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cs] ON c.QL = [cs].DM /*圈梁*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS [ct] ON c.ZYZXTZBZMCM = [ct].DM /*中央专项投资补助名称码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS [cu] ON c.WWJZDJM = [cu].DM /*文物建筑等级码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [db] ON d.RZXB = [db].DM /*入住性别*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dc] ON d.SFKY = [dc].DM /*是否可用*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dd] ON d.AZDSJ = [dd].DM /*安装电视机*/
GO
