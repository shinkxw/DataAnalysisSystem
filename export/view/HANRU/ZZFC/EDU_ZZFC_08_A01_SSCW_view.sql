
--宿舍床位表
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_08_A01_SSCW_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[ID]--床位ID
      ,a.[SSLID]--宿舍楼ID
      ,a.[SSID]--宿舍ID
      ,a.[CWM]--床位名
      ,a.[BZ]--备注
      ,a.[SFRZ]--是否入住
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_JZWJBSJ_SCHOOLID--学校名
      ,c.JZWH as c_JZWJBSJ_JZWH--建筑物号
      ,c.JZWMC as c_JZWJBSJ_JZWMC--建筑物名称
      ,c.SYZKM as c_JZWJBSJ_SYZKM--使用状况码
      ,cb.MC as c_JZWJBSJ_SYZKM_MC--名称
      ,c.FWCQ as c_JZWJBSJ_FWCQ--房屋产权
      ,cc.MC as c_JZWJBSJ_FWCQ_MC--名称
      ,c.XQH as c_JZWJBSJ_XQH--校区号
      ,c.JZWFLM as c_JZWJBSJ_JZWFLM--建筑物分类码
      ,cd.MC as c_JZWJBSJ_JZWFLM_MC--名称
      ,c.JZWJGM as c_JZWJBSJ_JZWJGM--建筑物结构码
      ,ce.MC as c_JZWJBSJ_JZWJGM_MC--名称
      ,c.JZWCS as c_JZWJBSJ_JZWCS--建筑物层数
      ,c.JCNY as c_JZWJBSJ_JCNY--建成年月
      ,c.JZWTZZE as c_JZWJBSJ_JZWTZZE--建筑物投资总额
      ,c.JFLYM as c_JZWJBSJ_JFLYM--经费来源码
      ,cf.MC as c_JZWJBSJ_JFLYM_MC--名称
      ,c.ZJZMJ as c_JZWJBSJ_ZJZMJ--总建筑面积
      ,c.ZSYMJ as c_JZWJBSJ_ZSYMJ--总使用面积
      ,c.KZSFLDM as c_JZWJBSJ_KZSFLDM--抗震设防烈度码
      ,cg.JC as c_JZWJBSJ_KZSFLDM_JC--简称
      ,cg.MC as c_JZWJBSJ_KZSFLDM_MC--名称
      ,c.KZSFBZM as c_JZWJBSJ_KZSFBZM--抗震设防标准码
      ,ch.JC as c_JZWJBSJ_KZSFBZM_JC--简称
      ,ch.MC as c_JZWJBSJ_KZSFBZM_MC--名称
      ,ch.SM as c_JZWJBSJ_KZSFBZM_SM--说明
      ,c.JZWDZ as c_JZWJBSJ_JZWDZ--建筑物地址
      ,c.JZWZKM as c_JZWJBSJ_JZWZKM--建筑物状况码
      ,ci.MC as c_JZWJBSJ_JZWZKM_MC--名称
      ,ci.SM as c_JZWJBSJ_JZWZKM_SM--说明
      ,c.JZWTP as c_JZWJBSJ_JZWTP--建筑物图片
      ,c.JZWPMT as c_JZWJBSJ_JZWPMT--建筑物平面图
      ,c.XXDWCCM as c_JZWJBSJ_XXDWCCM--学校单位层次码
      ,cj.MC as c_JZWJBSJ_XXDWCCM_MC--名称
      ,c.JZWWZZK as c_JZWJBSJ_JZWWZZK--建筑物位置状况
      ,c.GHSPWH as c_JZWJBSJ_GHSPWH--规划审批文号
      ,c.ZHFZNL as c_JZWJBSJ_ZHFZNL--综合防灾能力
      ,c.GHSYNX as c_JZWJBSJ_GHSYNX--规划使用年限
      ,c.SFYYJBXCS as c_JZWJBSJ_SFYYJBXCS--是否有预警避险措施
      ,ck.MC as c_JZWJBSJ_SFYYJBXCS_MC--名称
      ,c.SFKYYYJBNCS as c_JZWJBSJ_SFKYYYJBNCS--是否可用于应急避难场所
      ,cl.MC as c_JZWJBSJ_SFKYYYJBNCS_MC--名称
      ,c.CQZH as c_JZWJBSJ_CQZH--产权证号
      ,c.JZWYTM as c_JZWJBSJ_JZWYTM--建筑物用途码
      ,cm.MC as c_JZWJBSJ_JZWYTM_MC--名称
      ,c.JZWZGD as c_JZWJBSJ_JZWZGD--建筑物总高度
      ,c.WFJDBM as c_JZWJBSJ_WFJDBM--危房鉴定部门
      ,c.WFJDWH as c_JZWJBSJ_WFJDWH--危房鉴定文号
      ,c.WFJDRQ as c_JZWJBSJ_WFJDRQ--危房鉴定日期
      ,c.GNFSM as c_JZWJBSJ_GNFSM--供暖方式码
      ,cn.MC as c_JZWJBSJ_GNFSM_MC--名称
      ,c.JZWJCXSM as c_JZWJBSJ_JZWJCXSM--建筑物基础形式码
      ,co.MC as c_JZWJBSJ_JZWJCXSM_MC--名称
      ,c.JZWPMXSM as c_JZWJBSJ_JZWPMXSM--建筑物平面形式码
      ,cp.MC as c_JZWJBSJ_JZWPMXSM_MC--名称
      ,c.JZWLBXSM as c_JZWJBSJ_JZWLBXSM--建筑物楼板形式码
      ,cq.MC as c_JZWJBSJ_JZWLBXSM_MC--名称
      ,c.SFYGZZ as c_JZWJBSJ_SFYGZZ--是否有构造柱
      ,cr.MC as c_JZWJBSJ_SFYGZZ_MC--名称
      ,c.QL as c_JZWJBSJ_QL--圈梁
      ,cs.MC as c_JZWJBSJ_QL_MC--名称
      ,c.ZJAQGZWCRQ as c_JZWJBSJ_ZJAQGZWCRQ--最近安全改造完成日期
      ,c.ZJAQGZHYJSYNX as c_JZWJBSJ_ZJAQGZHYJSYNX--最近安全改造后预计使用年限
      ,c.ZXLXM as c_JZWJBSJ_ZXLXM--专项类型
      ,c.ZYZXTZBZMCM as c_JZWJBSJ_ZYZXTZBZMCM--中央专项投资补助名称码
      ,ct.MC as c_JZWJBSJ_ZYZXTZBZMCM_MC--名称
      ,c.WWJZDJM as c_JZWJBSJ_WWJZDJM--文物建筑等级码
      ,cu.MC as c_JZWJBSJ_WWJZDJM_MC--名称
      ,c.JXJFZYF as c_JZWJBSJ_JXJFZYF--教学及辅助用房
      ,c.QZJS as c_JZWJBSJ_QZJS--其中教室
      ,c.QZSYS as c_JZWJBSJ_QZSYS--其中实验室
      ,c.QZTSS as c_JZWJBSJ_QZTSS--其中图书室
      ,c.QZWJS as c_JZWJBSJ_QZWJS--其中微机室
      ,c.QZYYS as c_JZWJBSJ_QZYYS--其中语音室
      ,c.QZTYHDS as c_JZWJBSJ_QZTYHDS--其中体育活动室
      ,c.QZQTJFYF as c_JZWJBSJ_QZQTJFYF--其中其他教辅用房
      ,c.SHYF as c_JZWJBSJ_SHYF--生活用房
      ,c.QZXSSS as c_JZWJBSJ_QZXSSS--其中学生宿舍
      ,c.QZST as c_JZWJBSJ_QZST--其中食堂
      ,c.QZCS as c_JZWJBSJ_QZCS--其中厕所
      ,c.QZGLF as c_JZWJBSJ_QZGLF--其中锅炉房(开水房)
      ,c.QZYS as c_JZWJBSJ_QZYS--其中浴室
      ,c.QZJGSS as c_JZWJBSJ_QZJGSS--其中教工宿舍
      ,c.QZQTSHYF as c_JZWJBSJ_QZQTSHYF--其中其他生活用房
      ,c.XZBGYF as c_JZWJBSJ_XZBGYF--行政办公用房
      ,c.QZJSBGS as c_JZWJBSJ_QZJSBGS--其中教职工办公室
      ,c.QZWSBJS as c_JZWJBSJ_QZWSBJS--其中卫生保健室
      ,c.QZQTXZBGYF as c_JZWJBSJ_QZQTXZBGYF--其中其他行政办公用房
      ,c.QTYF as c_JZWJBSJ_QTYF--其他用房
      ,d.SCHOOLID as d_XSSS_SCHOOLID--学校名
      ,d.SSLID as d_XSSS_SSLID--宿舍楼ID
      ,d.SSLBM as d_XSSS_SSLBM--宿舍楼编号
      ,d.FJBM as d_XSSS_FJBM--房间编号
      ,d.RZXB as d_XSSS_RZXB--入住性别
      ,db.MC as d_XSSS_RZXB_MC--名称
      ,d.SFKY as d_XSSS_SFKY--是否可用
      ,dc.MC as d_XSSS_SFKY_MC--名称
      ,d.KZRS as d_XSSS_KZRS--可住人数
      ,d.WLDK as d_XSSS_WLDK--网络端口
      ,d.AZDSJ as d_XSSS_AZDSJ--安装电视机
      ,dd.MC as d_XSSS_AZDSJ_MC--名称
      ,d.DHDK as d_XSSS_DHDK--电话端口
      ,d.DHHM as d_XSSS_DHHM--电话号码
      ,d.SBDS as d_XSSS_SBDS--水表底数
      ,d.DBDS as d_XSSS_DBDS--电表底数
      ,d.SSBZ as d_XSSS_SSBZ--宿舍备注
      ,d.SZLZ as d_XSSS_SZLZ--所在楼层
      ,d.SSM as d_XSSS_SSM--宿舍名
      ,e.MC as e_SFBZ_MC--名称

FROM dbo.EDU_ZZFC_08_A01_SSCW AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_02_01_JZWJBSJ AS c ON a.SSLID = c.ID /*宿舍楼ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_08_01_XSSS AS d ON a.SSID = d.ID /*宿舍ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFRZ = e.DM /*是否入住*/ LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS cb ON c.SYZKM = cb.DM /*使用状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS cc ON c.FWCQ = cc.DM /*房屋产权*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS cd ON c.JZWFLM = cd.DM /*建筑物分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS ce ON c.JZWJGM = ce.DM /*建筑物结构码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS cf ON c.JFLYM = cf.DM /*经费来源码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS cg ON c.KZSFLDM = cg.DM /*抗震设防烈度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS ch ON c.KZSFBZM = ch.DM /*抗震设防标准码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS ci ON c.JZWZKM = ci.DM /*建筑物状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS cj ON c.XXDWCCM = cj.DM /*学校单位层次码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ck ON c.SFYYJBXCS = ck.DM /*是否有预警避险措施*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cl ON c.SFKYYYJBNCS = cl.DM /*是否可用于应急避难场所*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS cm ON c.JZWYTM = cm.DM /*建筑物用途码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS cn ON c.GNFSM = cn.DM /*供暖方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS co ON c.JZWJCXSM = co.DM /*建筑物基础形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS cp ON c.JZWPMXSM = cp.DM /*建筑物平面形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS cq ON c.JZWLBXSM = cq.DM /*建筑物楼板形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFYGZZ = cr.DM /*是否有构造柱*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.QL = cs.DM /*圈梁*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS ct ON c.ZYZXTZBZMCM = ct.DM /*中央专项投资补助名称码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS cu ON c.WWJZDJM = cu.DM /*文物建筑等级码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.RZXB = db.DM /*入住性别*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dc ON d.SFKY = dc.DM /*是否可用*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dd ON d.AZDSJ = dd.DM /*安装电视机*/
GO
