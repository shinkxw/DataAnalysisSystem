
--技能鉴定安排
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_37_A02_JNJDAP_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KSMC]--考试名称
      ,a.[JDXMID]--鉴定项目ID
      ,a.[KSSJ]--考试时间
      ,a.[KSDD]--考试地点
      ,a.[KSXS]--考试学生
      ,c.SCHOOLID as c_JNJDXM_SCHOOLID--技能鉴定项目 学校
      ,c.JNMC as c_JNJDXM_JNMC--技能鉴定项目 技能名称
      ,c.JNZY as c_JNJDXM_JNZY--技能鉴定项目 技能专业
      ,c.JNGZ as c_JNJDXM_JNGZ--技能鉴定项目 技能工种
      ,c.JDJG as c_JNJDXM_JDJG--技能鉴定项目 鉴定机构
      ,c.SBZT as c_JNJDXM_SBZT--技能鉴定项目 申报状态

FROM dbo.EDU_ZZJX_37_A02_JNJDAP AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_37_A01_JNJDXM AS c ON a.JDXMID = c.ID /*鉴定项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
