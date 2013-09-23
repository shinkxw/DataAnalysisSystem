
--学员考试情况表
CREATE VIEW [dbo].[VIEW_EDU_JPXT_03_02_XYKSQK_DISP]
AS
SELECT a.[XYID]--学员ID
      ,a.[SCHOOLID]--学校ID
      ,a.[KMYIKSSJ]--科目一考试时间
      ,a.[KMYIKSJG]--科目一考试结果
      ,a.[KMERKSSJ]--科目二考试时间
      ,a.[KMERYKSJG]--科目二考试结果
      ,a.[KMSANKSSJ]--科目三考试时间
      ,a.[KMSANKSJG]--科目三考试结果
      ,a.[KMSIKSSJ]--科目四考试时间
      ,a.[KMSIKSJG]--科目四考试结果
      ,a.[KMWUKSSJ]--科目五考试时间
      ,a.[KMWUKSJG]--科目五考试结果
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

FROM dbo.EDU_JPXT_03_02_XYKSQK AS a LEFT OUTER JOIN
      dbo.EDU_JPXT_03_01_XYSJ AS b ON a.XYID = b.ID /*学员ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bb ON b.XBM = bb.DM /*性别码*/
GO
