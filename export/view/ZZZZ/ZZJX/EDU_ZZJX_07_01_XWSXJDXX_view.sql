
--校外实习基地信息数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_01_XWSXJDXX_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[ID]--企业表ID
      ,a.[QYBH]--企业编号
      ,a.[JDHZHTBH]--基地合作合同编号
      ,a.[JDHZHTMC]--基地合作合同名称
      ,a.[JDLBM]--基地类别码
      ,a.[DWMC]--单位名称
      ,a.[QYXZQ]--企业行政区
      ,a.[QYDZ]--企业地址
      ,a.[QYXZ]--企业性质
      ,a.[FRDB]--法人代表
      ,a.[QYLXR]--企业联系人
      ,a.[QYYZBM]--企业邮政编码
      ,a.[QYLXDH]--企业联系电话
      ,a.[QYYYZZ]--企业营业执照
      ,a.[QYLX]--企业类型
      ,a.[QYRS]--企业人数
      ,a.[QYZCZJ]--企业注册资金
      ,a.[QYCZ]--企业传真
      ,a.[QYFZR]--企业负责人
      ,a.[FZRZW]--负责人职位
      ,a.[FZRLXDH]--负责人联系电话
      ,a.[QYYXDZ]--企业邮箱地址
      ,a.[QYQQ]--企业QQ
      ,a.[QYMSN]--企业MSN
      ,a.[QYWZ]--企业网址
      ,a.[QYJJ]--企业简介
      ,a.[SHZT]--审核状态
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
      ,c.MC as c_SXJDLB_MC--名称
      ,d.MC as d_ZHRMGHGXZQH_MC--名称
      ,e.MC as e_JJLXFL_MC--名称

FROM dbo.EDU_ZZJX_07_01_XWSXJDXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS c ON a.JDLBM = c.DM /*基地类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.QYXZQ = d.DM /*企业行政区*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS e ON a.QYXZ = e.DM /*企业性质*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*学校评估类型*/
GO
