
--学校班级数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_02_02_ZZBJ_DISP]
AS
SELECT a.[XZBDM]--行政班代码
      ,a.[SCHOOLID]--学校名
      ,a.[ZYXXID]--专业基本信息
      ,a.[ZZNJID]--学校年级数据表
      ,a.[XZBMC]--行政班名称
      ,a.[JBNY]--建班年月
      ,a.[BZRGH]--班主任工号
      ,a.[JSBH]--教室编号
      ,a.[NANSRS]--男生人数
      ,a.[NVSRS]--女生人数
      ,a.[ZRS]--总人数
      ,a.[BZXH]--班长学号
      ,a.[JXJH]--教学计划
      ,a.[JGH]--机构号
      ,a.[XQDM]--校区代码
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
      ,c.SCHOOLID as c_ZYXX_SCHOOLID--学校名
      ,c.ZYDM as c_ZYXX_ZYDM--专业代码
      ,cb.ZYMLLB as c_ZYXX_ZYDM_ZYMLLB--专业目录类别
      ,cb.MC as c_ZYXX_ZYDM_MC--名称
      ,c.ZYMC as c_ZYXX_ZYMC--专业名称
      ,c.ZYYWMC as c_ZYXX_ZYYWMC--专业英文名称
      ,c.XZ as c_ZYXX_XZ--学制
      ,c.ZYFXMC as c_ZYXX_ZYFXMC--专业方向名称
      ,c.ZYJC as c_ZYXX_ZYJC--专业简称
      ,c.JLNY as c_ZYXX_JLNY--建立年月
      ,c.ZYJSS as c_ZYXX_ZYJSS--专业教师数
      ,c.KSJGH as c_ZYXX_KSJGH--开设机构号
      ,c.ZXF as c_ZYXX_ZXF--总学分
      ,c.SSZYML as c_ZYXX_SSZYML--所属专业目录
      ,cc.MC as c_ZYXX_SSZYML_MC--名称
      ,c.ZYLB as c_ZYXX_ZYLB--专业类别名称
      ,d.SCHOOLID as d_ZZNJ_SCHOOLID--学校名
      ,d.NJMC as d_ZZNJ_NJMC--年级名称
      ,d.SSNF as d_ZZNJ_SSNF--所属年份
      ,d.NJZT as d_ZZNJ_NJZT--年级状态
      ,db.MC as d_ZZNJ_NJZT_MC--名称
      ,e.SCHOOLID as e_XNJG_SCHOOLID--学校名
      ,e.JGMC as e_XNJG_JGMC--机构名称
      ,e.JGYWMC as e_XNJG_JGYWMC--机构英文名称
      ,e.JGJC as e_XNJG_JGJC--机构简称
      ,e.JGJP as e_XNJG_JGJP--机构简拼
      ,e.JGDZ as e_XNJG_JGDZ--机构地址
      ,e.LSSJJGH as e_XNJG_LSSJJGH--隶属上级机构号
      ,e.LSXQH as e_XNJG_LSXQH--隶属校区号
      ,e.JGYXBS as e_XNJG_JGYXBS--机构有效标识
      ,eb.MC as e_XNJG_JGYXBS_MC--名称
      ,e.SFST as e_XNJG_SFST--是否实体
      ,ec.MC as e_XNJG_SFST_MC--名称
      ,e.JLNY as e_XNJG_JLNY--建立年月
      ,e.JGYZBM as e_XNJG_JGYZBM--机构邮政编码
      ,e.FZRH as e_XNJG_FZRH--负责人号

FROM dbo.EDU_ZZJX_02_02_ZZBJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS c ON a.ZYXXID = c.ZYBH /*专业基本信息*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS d ON a.ZZNJID = d.NJDM /*学校年级数据表*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS e ON a.JGH = e.JGH /*机构号*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*学校评估类型*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS cb ON c.ZYDM = cb.DM /*专业代码*/ AND c.SSZYML = cb.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS cc ON c.SSZYML = cc.DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS db ON d.NJZT = db.DM /*年级状态*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS eb ON e.JGYXBS = eb.DM /*机构有效标识*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ec ON e.SFST = ec.DM /*是否实体*/
GO
