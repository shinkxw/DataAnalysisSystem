
--课程数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_02_KC_DISP]
AS
SELECT a.[KCH]--课程号
      ,a.[SCHOOLID]--学校ID
      ,a.[KCMC]--课程名称
      ,a.[KCYWM]--课程英文名
      ,a.[KCBM]--课程别名
      ,a.[KCJS]--课程介绍
      ,a.[XF]--学分
      ,a.[ZXS]--总学时
      ,a.[LLXS]--理论学时
      ,a.[SJXS]--实践学时
      ,a.[QTXS]--其他学时
      ,a.[CKSM]--参考书目
      ,a.[KKDW]--开课单位
      ,a.[KSXS]--考试形式
      ,a.[SKFSM]--授课方式码
      ,a.[KCFY]--课程费用
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
      ,c.SCHOOLID as c_XNJG_SCHOOLID--学校名
      ,c.JGMC as c_XNJG_JGMC--机构名称
      ,c.JGYWMC as c_XNJG_JGYWMC--机构英文名称
      ,c.JGJC as c_XNJG_JGJC--机构简称
      ,c.JGJP as c_XNJG_JGJP--机构简拼
      ,c.JGDZ as c_XNJG_JGDZ--机构地址
      ,c.LSSJJGH as c_XNJG_LSSJJGH--隶属上级机构号
      ,c.LSXQH as c_XNJG_LSXQH--隶属校区号
      ,c.JGYXBS as c_XNJG_JGYXBS--机构有效标识
      ,cb.MC as c_XNJG_JGYXBS_MC--名称
      ,c.SFST as c_XNJG_SFST--是否实体
      ,cc.MC as c_XNJG_SFST_MC--名称
      ,c.JLNY as c_XNJG_JLNY--建立年月
      ,c.JGYZBM as c_XNJG_JGYZBM--机构邮政编码
      ,c.FZRH as c_XNJG_FZRH--负责人号
      ,d.MC as d_KSXS_MC--名称
      ,e.MC as e_SKFS_MC--名称

FROM dbo.EDU_ZZJX_01_02_KC AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.KKDW = c.JGH /*开课单位*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS d ON a.KSXS = d.DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS e ON a.SKFSM = e.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*学校评估类型*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.JGYXBS = cb.DM /*机构有效标识*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cc ON c.SFST = cc.DM /*是否实体*/
GO
