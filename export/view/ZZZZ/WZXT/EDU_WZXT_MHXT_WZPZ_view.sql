
--网站配置
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZPZ_DISP]
AS
SELECT a.[WEBID]--网站ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBNAME]--网站名
      ,a.[STATUID]--是否开启
      ,a.[WEBURL]--网址
      ,a.[CSSID]--网站样式
      ,b.SCHOOLID as b_WZPZ_SCHOOLID--学校名
      ,b.WEBNAME as b_WZPZ_WEBNAME--网站名
      ,b.STATUID as b_WZPZ_STATUID--是否开启
      ,b.WEBURL as b_WZPZ_WEBURL--网址
      ,b.CSSID as b_WZPZ_CSSID--网站样式
      ,c.XXDM as c_ZZXX_XXDM--学校代码
      ,c.XXMC as c_ZZXX_XXMC--学校名称
      ,c.XXYWMC as c_ZZXX_XXYWMC--学校英文名称
      ,c.XXJBZM as c_ZZXX_XXJBZM--学校举办者码
      ,cb.MC as c_ZZXX_XXJBZM_MC--名称
      ,cb.SM as c_ZZXX_XXJBZM_SM--说明
      ,c.XXZGBMM as c_ZZXX_XXZGBMM--学校主管部门码
      ,cc.MC as c_ZZXX_XXZGBMM_MC--名称
      ,cc.SM as c_ZZXX_XXZGBMM_SM--说明
      ,c.XXDZ as c_ZZXX_XXDZ--学校地址
      ,c.XXYZBM as c_ZZXX_XXYZBM--学校邮政编码
      ,c.XZQHM as c_ZZXX_XZQHM--行政区划码
      ,cd.MC as c_ZZXX_XZQHM_MC--名称
      ,c.JXNY as c_ZZXX_JXNY--建校年月
      ,c.XQR as c_ZZXX_XQR--校庆日
      ,c.CLBJ as c_ZZXX_CLBJ--成立背景
      ,c.LSYG as c_ZZXX_LSYG--历史沿革
      ,c.XXXQS as c_ZZXX_XXXQS--学校校区数
      ,c.XXPGLX as c_ZZXX_XXPGLX--学校评估类型
      ,ce.MC as c_ZZXX_XXPGLX_MC--名称
      ,c.XXPGQKSM as c_ZZXX_XXPGQKSM--学校评估情况说明
      ,c.ZYDZ as c_ZZXX_ZYDZ--主页地址
      ,c.FDDBRH as c_ZZXX_FDDBRH--法定代表人号
      ,c.FRZSH as c_ZZXX_FRZSH--法人证书号
      ,c.LXDH as c_ZZXX_LXDH--联系电话
      ,c.CZDH as c_ZZXX_CZDH--传真电话
      ,c.DZXX as c_ZZXX_DZXX--电子信箱
      ,d.SCHOOLID as d_WZYS_SCHOOLID--学校名
      ,d.WEBID as d_WZYS_WEBID--网站ID
      ,d.NAME as d_WZYS_NAME--样式名
      ,d.SHOWIMG as d_WZYS_SHOWIMG--效果图

FROM dbo.EDU_WZXT_MHXT_WZPZ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS b ON a.WEBID = b.WEBID /*网站ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZYS AS d ON a.CSSID = d.ID /*网站样式*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*学校评估类型*/
GO
