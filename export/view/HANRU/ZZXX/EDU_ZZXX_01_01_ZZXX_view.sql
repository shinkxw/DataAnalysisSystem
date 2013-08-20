
--学校基本数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZXX_01_01_ZZXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[XXDM]--学校代码
      ,a.[XXMC]--学校名称
      ,a.[XXYWMC]--学校英文名称
      ,a.[XXJBZM]--学校举办者码
      ,a.[XXZGBMM]--学校主管部门码
      ,a.[XXDZ]--学校地址
      ,a.[XXYZBM]--学校邮政编码
      ,a.[XZQHM]--行政区划码
      ,a.[JXNY]--建校年月
      ,a.[XQR]--校庆日
      ,a.[CLBJ]--成立背景
      ,a.[LSYG]--历史沿革
      ,a.[XXXQS]--学校校区数
      ,a.[XXPGLX]--学校评估类型
      ,a.[XXPGQKSM]--学校评估情况说明
      ,a.[ZYDZ]--主页地址
      ,a.[FDDBRH]--法定代表人号
      ,a.[FRZSH]--法人证书号
      ,a.[LXDH]--联系电话
      ,a.[CZDH]--传真电话
      ,a.[DZXX]--电子信箱
      ,b.MC as b_XXJYJGJBZ_MC--学校（教育机构）举办者代码表 名称
      ,b.SM as b_XXJYJGJBZ_SM--学校（教育机构）举办者代码表 说明
      ,c.MC as c_XXJYJGJBZ_MC--学校（教育机构）举办者代码表 名称
      ,c.SM as c_XXJYJGJBZ_SM--学校（教育机构）举办者代码表 说明
      ,d.MC as d_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,e.MC as e_PGQK_MC--评估情况代码 名称

FROM dbo.EDU_ZZXX_01_01_ZZXX AS a LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS b ON a.XXJBZM = b.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS c ON a.XXZGBMM = c.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.XZQHM = d.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS e ON a.XXPGLX = e.DM /*学校评估类型*/
GO
