
--维修记录表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A13_WXJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[WPID]--物品ID
      ,a.[WXZT]--维修状态
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_BXGL_SCHOOLID--报修管理表 学校
      ,c.AID as c_BXGL_AID--报修管理表 库存表ID
      ,c.TypeID as c_BXGL_TypeID--报修管理表 报修类型ID
      ,c.Title as c_BXGL_Title--报修管理表 报修主题
      ,c.Telephone as c_BXGL_Telephone--报修管理表 联系电话
      ,c.Repairplace as c_BXGL_Repairplace--报修管理表 报修地点
      ,c.Repaircontent as c_BXGL_Repaircontent--报修管理表 报修内容
      ,c.Repairpeople as c_BXGL_Repairpeople--报修管理表 维修人
      ,c.RepairDate as c_BXGL_RepairDate--报修管理表 维修时间
      ,c.ReadrID as c_BXGL_ReadrID--报修管理表 阅读情况
      ,c.Readr as c_BXGL_Readr--报修管理表 阅读情况
      ,c.Applicant as c_BXGL_Applicant--报修管理表 申请人
      ,c.Approver as c_BXGL_Approver--报修管理表 审批人
      ,c.Evaluate as c_BXGL_Evaluate--报修管理表 评价
      ,c.StartDate as c_BXGL_StartDate--报修管理表 开始时间
      ,c.Status as c_BXGL_Status--报修管理表 状态
      ,c.Remark as c_BXGL_Remark--报修管理表 备注
      ,c.SumCount as c_BXGL_SumCount--报修管理表 数量
      ,c.GZTP as c_BXGL_GZTP--报修管理表 故障图片
      ,c.WCZT as c_BXGL_WCZT--报修管理表 完成状态
      ,c.SCZT as c_BXGL_SCZT--报修管理表 删除状态

FROM dbo.EDU_OAXT_15_A13_WXJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A08_BXGL AS c ON a.WPID = c.ID /*物品ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
