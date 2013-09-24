
--学员考试结果表
CREATE VIEW [dbo].[VIEW_EDU_JPXT_03_02_XYKSJG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[XYID]--学员ID
      ,a.[SCHOOLID]--学校ID
      ,a.[KMKSID]--科目考试ID
      ,a.[KSKMDM]--考试科目代码
      ,a.[KSJG]--考试结果
      ,b.SCHOOLID as b_XYSJ_SCHOOLID--学员数据表 学校ID
      ,b.XM as b_XYSJ_XM--学员数据表 姓名
      ,b.SFZH as b_XYSJ_SFZH--学员数据表 身份证号
      ,b.XBM as b_XYSJ_XBM--学员数据表 性别码
      ,bb.MC as b_XYSJ_XBM_MC--人的性别代码 名称
      ,b.LXDH as b_XYSJ_LXDH--学员数据表 联系电话
      ,b.ZZ as b_XYSJ_ZZ--学员数据表 住址
      ,b.BMSJ as b_XYSJ_BMSJ--学员数据表 报名时间
      ,b.SFQK as b_XYSJ_SFQK--学员数据表 缴费情况
      ,b.SXCXID as b_XYSJ_SXCXID--学员数据表 所选车型ID
      ,b.ZJQK as b_XYSJ_ZJQK--学员数据表 增加情况
      ,b.SZJLCID as b_XYSJ_SZJLCID--学员数据表 所属教练员ID
      ,b.YJJLYID as b_XYSJ_YJJLYID--学员数据表 引荐教练员ID
      ,b.DQZT as b_XYSJ_DQZT--学员数据表 当前状态
      ,b.BYSJ as b_XYSJ_BYSJ--学员数据表 毕业时间
      ,d.SCHOOLID as d_KMKS_SCHOOLID--科目考试表 学校ID
      ,d.KMDM as d_KMKS_KMDM--科目考试表 科目代码
      ,db.MC as d_KMKS_KMDM_MC--驾考科目代码 科目名称
      ,db.KSSX as d_KMKS_KMDM_KSSX--驾考科目代码 考试顺序
      ,d.KSSJ as d_KMKS_KSSJ--科目考试表 考试时间
      ,d.BZ as d_KMKS_BZ--科目考试表 备注
      ,e.MC as e_JKKM_MC--驾考科目代码 科目名称
      ,e.KSSX as e_JKKM_KSSX--驾考科目代码 考试顺序

FROM dbo.EDU_JPXT_03_02_XYKSJG AS a LEFT OUTER JOIN
      dbo.EDU_JPXT_03_01_XYSJ AS b ON a.XYID = b.ID /*学员ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JPXT_04_01_KMKS AS d ON a.KMKSID = d.ID /*科目考试ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_JKKM AS e ON a.KSKMDM = e.DM /*考试科目代码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bb ON b.XBM = bb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_JKKM AS db ON d.KMDM = db.DM /*科目代码*/
GO
