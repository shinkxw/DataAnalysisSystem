
--΢������
CREATE VIEW [dbo].[VIEW_EDU_SYS_01_MICROMODULE_DISP]
AS
SELECT a.[ID]--���
      ,a.[MODULEID]--ģ��ID
      ,a.[NAME]--����
      ,a.[URL]--��ַ
      ,a.[PICTYPE]--ͼƬ����
      ,a.[PIC1]--ͼƬһ
      ,a.[PIC2]--ͼƬ��
      ,b.APPID as b_MODULE_APPID--������ 
      ,b.NAME as b_MODULE_NAME--������ 
      ,b.Depth as b_MODULE_Depth--������ 
      ,b.PID as b_MODULE_PID--������ 
      ,b.MenuDisp as b_MODULE_MenuDisp--������ 
      ,b.MenuUserType as b_MODULE_MenuUserType--������ 
      ,b.Link as b_MODULE_Link--������ 
      ,b.OrderIndex as b_MODULE_OrderIndex--������ 

FROM dbo.EDU_SYS_01_MICROMODULE AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_MODULE AS b ON a.MODULEID = b.ID /*ģ��ID*/
GO
