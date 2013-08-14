
--教学计划课程清单数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_03_JXJHKCQD_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[KCH]--课程号
      ,a.[JHBH]--计划编号
      ,a.[XQID]--学期ID
      ,a.[KCMC]--课程名称
      ,a.[YXKC]--预修课程
      ,a.[SFHXKC]--是否核心（骨干）
      ,a.[KCFLM]--课程分类码
      ,a.[KCSXM]--课程属性码
      ,a.[ZXXQ]--执行学期
      ,b.XXDM as b_ZZXX_XXDM--学校代码
      ,b.XXMC as b_ZZXX_XXMC--学校名称
      ,b.XXYWMC as b_ZZXX_XXYWMC--学校英文名称
      ,b.XXJBZM as b_ZZXX_XXJBZM--学校举办者码
      ,bb.MC as b_ZZXX_XXJBZM_MC--名称
      ,bb.SM as b_ZZXX_XXJBZM_SM--说明
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--学校主管部门码
      ,bc.MC as b_ZZXX_XXZGBMM_MC--名称
      ,bc.SM as b_ZZXX_XXZGBMM_SM--说明
      ,b.XXDZ as b_ZZXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZZXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZZXX_XZQHM--行政区划码
      ,bd.MC as b_ZZXX_XZQHM_MC--名称
      ,b.JXNY as b_ZZXX_JXNY--建校年月
      ,b.XQR as b_ZZXX_XQR--校庆日
      ,b.CLBJ as b_ZZXX_CLBJ--成立背景
      ,b.LSYG as b_ZZXX_LSYG--历史沿革
      ,b.XXXQS as b_ZZXX_XXXQS--学校校区数
      ,b.XXPGLX as b_ZZXX_XXPGLX--学校评估类型
      ,be.MC as b_ZZXX_XXPGLX_MC--名称
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--学校评估情况说明
      ,b.ZYDZ as b_ZZXX_ZYDZ--主页地址
      ,b.FDDBRH as b_ZZXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZZXX_FRZSH--法人证书号
      ,b.LXDH as b_ZZXX_LXDH--联系电话
      ,b.CZDH as b_ZZXX_CZDH--传真电话
      ,b.DZXX as b_ZZXX_DZXX--电子信箱
      ,c.SCHOOLID as c_KC_SCHOOLID--学校ID
      ,c.KCMC as c_KC_KCMC--课程名称
      ,c.KCYWM as c_KC_KCYWM--课程英文名
      ,c.KCBM as c_KC_KCBM--课程别名
      ,c.KCJS as c_KC_KCJS--课程介绍
      ,c.XF as c_KC_XF--学分
      ,c.ZXS as c_KC_ZXS--总学时
      ,c.LLXS as c_KC_LLXS--理论学时
      ,c.SJXS as c_KC_SJXS--实践学时
      ,c.QTXS as c_KC_QTXS--其他学时
      ,c.CKSM as c_KC_CKSM--参考书目
      ,c.KKDW as c_KC_KKDW--开课单位
      ,c.KSXS as c_KC_KSXS--考试形式
      ,cb.MC as c_KC_KSXS_MC--名称
      ,c.SKFSM as c_KC_SKFSM--授课方式码
      ,cc.MC as c_KC_SKFSM_MC--名称
      ,c.KCFY as c_KC_KCFY--课程费用
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--学校ID
      ,d.JHNJ as d_ZTJXJH_JHNJ--计划年级
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--专业编号
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--计划专业名称
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--总学分要求
      ,d.JLNY as d_ZTJXJH_JLNY--建立年月
      ,d.SYXZ as d_ZTJXJH_SYXZ--适用学制
      ,d.PYMB as d_ZTJXJH_PYMB--培养目标
      ,d.SFKY as d_ZTJXJH_SFKY--是否可用
      ,db.MC as d_ZTJXJH_SFKY_MC--名称
      ,d.FJ as d_ZTJXJH_FJ--附件
      ,e.SchoolID as e_ZZXQ_SchoolID--学校名
      ,e.XNID as e_ZZXQ_XNID--学年
      ,e.XQM as e_ZZXQ_XQM--学期码
      ,eb.MC as e_ZZXQ_XQM_MC--名称
      ,e.XQMC as e_ZZXQ_XQMC--学期名称
      ,e.XQKSRQ as e_ZZXQ_XQKSRQ--学期开始日期
      ,e.XQJSRQ as e_ZZXQ_XQJSRQ--学期结束日期
      ,f.MC as f_SKFS_MC--名称
      ,g.MC as g_KCFL_MC--名称
      ,h.MC as h_KCSX_MC--名称
      ,h.SM as h_KCSX_SM--说明

FROM dbo.EDU_ZZJX_03_03_JXJHKCQD AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS c ON a.KCH = c.KCH /*课程号*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JHBH = d.JHBH /*计划编号*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_03_ZZXQ AS e ON a.XQID = e.ID /*学期ID*/ AND a.SCHOOLID = e.SchoolID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS f ON a.SFHXKC = f.DM /*是否核心（骨干）*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS g ON a.KCFLM = g.DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS h ON a.KCSXM = h.DM /*课程属性码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*学校评估类型*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS cb ON c.KSXS = cb.DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cc ON c.SKFSM = cc.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFKY = db.DM /*是否可用*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS eb ON e.XQM = eb.DM /*学期码*/
GO
