
--微导航表
CREATE VIEW [dbo].[VIEW_EDU_SYS_01_MICROMODULE_DISP]
AS
SELECT a.[ID]--编号
      ,a.[MODULEID]--模块ID
      ,a.[NAME]--名称
      ,a.[URL]--网址
      ,a.[PICTYPE]--图片类型
      ,a.[PIC1]--图片一
      ,a.[PIC2]--图片二
      ,b.APPID as b_MODULE_APPID--导航表 
      ,b.NAME as b_MODULE_NAME--导航表 
      ,b.Depth as b_MODULE_Depth--导航表 
      ,b.PID as b_MODULE_PID--导航表 
      ,b.MenuDisp as b_MODULE_MenuDisp--导航表 
      ,b.MenuUserType as b_MODULE_MenuUserType--导航表 
      ,b.Link as b_MODULE_Link--导航表 
      ,b.OrderIndex as b_MODULE_OrderIndex--导航表 

FROM dbo.EDU_SYS_01_MICROMODULE AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_MODULE AS b ON a.MODULEID = b.ID /*模块ID*/
GO
