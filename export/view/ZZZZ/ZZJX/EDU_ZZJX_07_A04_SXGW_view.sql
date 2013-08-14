
--实习岗位表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A04_SXGW_DISP]
AS
SELECT a.[ID]--实习岗位ID
      ,a.[SCHOOLID]--学校ID
      ,a.[QYID]--企业ID
      ,a.[GWMC]--岗位名称
      ,a.[QYMC]--企业名称
      ,a.[ZPKSSJ]--招聘开始时间
      ,a.[ZPJSSJ]--招聘结束时间
      ,a.[GZXS]--工作形式
      ,a.[XBYQ]--性别要求
      ,a.[GWXC]--岗位薪酬
      ,a.[WYYQ]--外语要求
      ,a.[GZDD]--工作地点
      ,a.[JSJSP]--计算机水平
      ,a.[ZPRS]--招聘人数
      ,a.[XLYQ]--学历要求
      ,a.[ZYYQ]--专业要求
      ,a.[NLYQ]--年龄要求
      ,a.[GWJJ]--岗位简介
      ,a.[JBQK]--基本情况
      ,a.[GZJY]--工作经验
      ,a.[SHZT]--审核状态
      ,a.[GWZT]--岗位状态
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
      ,c.SCHOOLID as c_XWSXJDXX_SCHOOLID--学校名
      ,c.QYBH as c_XWSXJDXX_QYBH--企业编号
      ,c.JDHZHTBH as c_XWSXJDXX_JDHZHTBH--基地合作合同编号
      ,c.JDHZHTMC as c_XWSXJDXX_JDHZHTMC--基地合作合同名称
      ,c.JDLBM as c_XWSXJDXX_JDLBM--基地类别码
      ,cb.MC as c_XWSXJDXX_JDLBM_MC--名称
      ,c.DWMC as c_XWSXJDXX_DWMC--单位名称
      ,c.QYXZQ as c_XWSXJDXX_QYXZQ--企业行政区
      ,cc.MC as c_XWSXJDXX_QYXZQ_MC--名称
      ,c.QYDZ as c_XWSXJDXX_QYDZ--企业地址
      ,c.QYXZ as c_XWSXJDXX_QYXZ--企业性质
      ,cd.MC as c_XWSXJDXX_QYXZ_MC--名称
      ,c.FRDB as c_XWSXJDXX_FRDB--法人代表
      ,c.QYLXR as c_XWSXJDXX_QYLXR--企业联系人
      ,c.QYYZBM as c_XWSXJDXX_QYYZBM--企业邮政编码
      ,c.QYLXDH as c_XWSXJDXX_QYLXDH--企业联系电话
      ,c.QYYYZZ as c_XWSXJDXX_QYYYZZ--企业营业执照
      ,c.QYLX as c_XWSXJDXX_QYLX--企业类型
      ,c.QYRS as c_XWSXJDXX_QYRS--企业人数
      ,c.QYZCZJ as c_XWSXJDXX_QYZCZJ--企业注册资金
      ,c.QYCZ as c_XWSXJDXX_QYCZ--企业传真
      ,c.QYFZR as c_XWSXJDXX_QYFZR--企业负责人
      ,c.FZRZW as c_XWSXJDXX_FZRZW--负责人职位
      ,c.FZRLXDH as c_XWSXJDXX_FZRLXDH--负责人联系电话
      ,c.QYYXDZ as c_XWSXJDXX_QYYXDZ--企业邮箱地址
      ,c.QYQQ as c_XWSXJDXX_QYQQ--企业QQ
      ,c.QYMSN as c_XWSXJDXX_QYMSN--企业MSN
      ,c.QYWZ as c_XWSXJDXX_QYWZ--企业网址
      ,c.QYJJ as c_XWSXJDXX_QYJJ--企业简介
      ,c.SHZT as c_XWSXJDXX_SHZT--审核状态

FROM dbo.EDU_ZZJX_07_A04_SXGW AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS c ON a.QYID = c.ID /*企业ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*学校评估类型*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS cb ON c.JDLBM = cb.DM /*基地类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.QYXZQ = cc.DM /*企业行政区*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS cd ON c.QYXZ = cd.DM /*企业性质*/
GO
