
--建筑物基本数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZXFC_02_01_JZWJBSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[JZWH]--建筑物号
      ,a.[JZWMC]--建筑物名称
      ,a.[SYZKM]--使用状况码
      ,a.[FWCQ]--房屋产权
      ,a.[XQH]--校区号
      ,a.[JZWFLM]--建筑物分类码
      ,a.[JZWJGM]--建筑物结构码
      ,a.[JZWCS]--建筑物层数
      ,a.[JCNY]--建成年月
      ,a.[JZWTZZE]--建筑物投资总额
      ,a.[JFLYM]--经费来源码
      ,a.[ZJZMJ]--总建筑面积
      ,a.[ZSYMJ]--总使用面积
      ,a.[KZSFLDM]--抗震设防烈度码
      ,a.[KZSFBZM]--抗震设防标准码
      ,a.[JZWDZ]--建筑物地址
      ,a.[JZWZKM]--建筑物状况码
      ,a.[JZWTP]--建筑物图片
      ,a.[JZWPMT]--建筑物平面图
      ,a.[XXDWCCM]--学校单位层次码
      ,a.[JZWWZZK]--建筑物位置状况
      ,a.[GHSPWH]--规划审批文号
      ,a.[ZHFZNL]--综合防灾能力
      ,a.[GHSYNX]--规划使用年限
      ,a.[SFYYJBXCS]--是否有预警避险措施
      ,a.[SFKYYYJBNCS]--是否可用于应急避难场所
      ,a.[CQZH]--产权证号
      ,a.[JZWYTM]--建筑物用途码
      ,a.[JZWZGD]--建筑物总高度
      ,a.[WFJDBM]--危房鉴定部门
      ,a.[WFJDWH]--危房鉴定文号
      ,a.[WFJDRQ]--危房鉴定日期
      ,a.[GNFSM]--供暖方式码
      ,a.[JZWJCXSM]--建筑物基础形式码
      ,a.[JZWPMXSM]--建筑物平面形式码
      ,a.[JZWLBXSM]--建筑物楼板形式码
      ,a.[SFYGZZ]--是否有构造柱
      ,a.[QL]--圈梁
      ,a.[ZJAQGZWCRQ]--最近安全改造完成日期
      ,a.[ZJAQGZHYJSYNX]--最近安全改造后预计使用年限
      ,a.[ZXLXM]--专项类型
      ,a.[ZYZXTZBZMCM]--中央专项投资补助名称码
      ,a.[WWJZDJM]--文物建筑等级码
      ,a.[JXJFZYF]--教学及辅助用房
      ,a.[QZJS]--其中教室
      ,a.[QZSYS]--其中实验室
      ,a.[QZTSS]--其中图书室
      ,a.[QZWJS]--其中微机室
      ,a.[QZYYS]--其中语音室
      ,a.[QZTYHDS]--其中体育活动室
      ,a.[QZQTJFYF]--其中其他教辅用房
      ,a.[SHYF]--生活用房
      ,a.[QZXSSS]--其中学生宿舍
      ,a.[QZST]--其中食堂
      ,a.[QZCS]--其中厕所
      ,a.[QZGLF]--其中锅炉房(开水房)
      ,a.[QZYS]--其中浴室
      ,a.[QZJGSS]--其中教工宿舍
      ,a.[QZQTSHYF]--其中其他生活用房
      ,a.[XZBGYF]--行政办公用房
      ,a.[QZJSBGS]--其中教职工办公室
      ,a.[QZWSBJS]--其中卫生保健室
      ,a.[QZQTXZBGYF]--其中其他行政办公用房
      ,a.[QTYF]--其他用房
      ,a.[GLY]--管理员
      ,c.MC as c_SYZK_MC--使用状况代码表 名称
      ,d.MC as d_CQ_MC--产权代码表 名称
      ,e.MC as e_JZWFL_MC--建筑物分类代码表 名称
      ,f.MC as f_JZWJG_MC--建筑物结构代码表 名称
      ,g.MC as g_JFLY_MC--经费来源代码表 名称
      ,h.JC as h_KZSFLD_JC--抗震设防烈度代码 简称
      ,h.MC as h_KZSFLD_MC--抗震设防烈度代码 名称
      ,i.JC as i_KZSFBZ_JC--抗震设防标准代码 简称
      ,i.MC as i_KZSFBZ_MC--抗震设防标准代码 名称
      ,i.SM as i_KZSFBZ_SM--抗震设防标准代码 说明
      ,j.MC as j_JZWZK_MC--建筑物状况代码表 名称
      ,j.SM as j_JZWZK_SM--建筑物状况代码表 说明
      ,k.MC as k_XXDWCC_MC--学校单位层次代码表 名称
      ,l.MC as l_SFBZ_MC--是否标志代码表 名称
      ,m.MC as m_SFBZ_MC--是否标志代码表 名称
      ,n.MC as n_JZWYT_MC--建筑物用途代码表 名称
      ,o.MC as o_GNFS_MC--供暖方式代码表 名称
      ,p.MC as p_JZWJCXS_MC--建筑物基础形式代码表 名称
      ,q.MC as q_JZWPMXS_MC--建筑物平面形式代码表 名称
      ,r.MC as r_JZWLBXS_MC--建筑物楼板形式代码表 名称
      ,s.MC as s_SFBZ_MC--是否标志代码表 名称
      ,t.MC as t_SFBZ_MC--是否标志代码表 名称
      ,u.MC as u_ZYZXTZBZMC_MC--中央专项投资补助名称代码表 名称
      ,v.MC as v_WWJZDJ_MC--文物建筑等级代码表 名称

FROM dbo.EDU_ZXFC_02_01_JZWJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS c ON a.SYZKM = c.DM /*使用状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS d ON a.FWCQ = d.DM /*房屋产权*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS e ON a.JZWFLM = e.DM /*建筑物分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS f ON a.JZWJGM = f.DM /*建筑物结构码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS g ON a.JFLYM = g.DM /*经费来源码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS h ON a.KZSFLDM = h.DM /*抗震设防烈度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS i ON a.KZSFBZM = i.DM /*抗震设防标准码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS j ON a.JZWZKM = j.DM /*建筑物状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS k ON a.XXDWCCM = k.DM /*学校单位层次码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS l ON a.SFYYJBXCS = l.DM /*是否有预警避险措施*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS m ON a.SFKYYYJBNCS = m.DM /*是否可用于应急避难场所*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS n ON a.JZWYTM = n.DM /*建筑物用途码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS o ON a.GNFSM = o.DM /*供暖方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS p ON a.JZWJCXSM = p.DM /*建筑物基础形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS q ON a.JZWPMXSM = q.DM /*建筑物平面形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS r ON a.JZWLBXSM = r.DM /*建筑物楼板形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS s ON a.SFYGZZ = s.DM /*是否有构造柱*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS t ON a.QL = t.DM /*圈梁*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS u ON a.ZYZXTZBZMCM = u.DM /*中央专项投资补助名称码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS v ON a.WWJZDJM = v.DM /*文物建筑等级码*/
GO
