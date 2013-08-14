
--学校实习周/月表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A03_XXSXZY_DISP]
AS
SELECT a.[ID]--实习周/月ID
      ,a.[SCHOOLID]--学校ID
      ,a.[SXJHID]--实习计划ID
      ,a.[SXJDID]--实习阶段ID
      ,a.[MC]--名称
      ,a.[KSSJ]--开始时间
      ,a.[JSSJ]--结束时间
      ,a.[LX]--类型
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
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--学校ID
      ,c.JHBT as c_XXSXJH_JHBT--计划标题
      ,c.NJ as c_XXSXJH_NJ--年级
      ,c.BGXS as c_XXSXJH_BGXS--报告形式
      ,c.SFSX as c_XXSXJH_SFSX--计划是否生效
      ,cb.MC as c_XXSXJH_SFSX_MC--名称
      ,d.SCHOOLID as d_XXSXJD_SCHOOLID--学校ID
      ,d.SXJHID as d_XXSXJD_SXJHID--实习计划ID
      ,d.JDM as d_XXSXJD_JDM--阶段名
      ,d.JDKSSJ as d_XXSXJD_JDKSSJ--阶段开始时间
      ,d.JDJSSJ as d_XXSXJD_JDJSSJ--阶段结束时间

FROM dbo.EDU_ZZJX_07_A03_XXSXZY AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*实习计划ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A02_XXSXJD AS d ON a.SXJDID = d.ID /*实习阶段ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*学校评估类型*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cb ON c.SFSX = cb.DM /*计划是否生效*/
GO
