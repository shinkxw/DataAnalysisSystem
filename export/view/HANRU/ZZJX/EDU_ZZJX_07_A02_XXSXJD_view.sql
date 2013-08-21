
--学校实习阶段表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A02_XXSXJD_DISP]
AS
SELECT a.[ID]--实习阶段ID
      ,a.[SCHOOLID]--学校ID
      ,a.[SXJHID]--实习计划ID
      ,a.[JDM]--阶段名
      ,a.[JDKSSJ]--阶段开始时间
      ,a.[JDJSSJ]--阶段结束时间
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--学校实习计划表 学校ID
      ,c.JHBT as c_XXSXJH_JHBT--学校实习计划表 计划标题
      ,c.NJ as c_XXSXJH_NJ--学校实习计划表 年级
      ,c.BGXS as c_XXSXJH_BGXS--学校实习计划表 报告形式
      ,c.SFSX as c_XXSXJH_SFSX--学校实习计划表 计划是否生效
      ,cb.MC as c_XXSXJH_SFSX_MC--授课方式代码表 名称

FROM dbo.EDU_ZZJX_07_A02_XXSXJD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*实习计划ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cb ON c.SFSX = cb.DM /*计划是否生效*/
GO
