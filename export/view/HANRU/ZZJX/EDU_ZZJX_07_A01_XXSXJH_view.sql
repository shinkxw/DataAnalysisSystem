
--ѧУʵϰ�ƻ���
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A01_XXSXJH_DISP]
AS
SELECT a.[ID]--ʵϰ�ƻ�ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[JHBT]--�ƻ�����
      ,a.[NJ]--�꼶
      ,a.[BGXS]--������ʽ
      ,a.[SFSX]--�ƻ��Ƿ���Ч
      ,c.MC as c_SKFS_MC--�ڿη�ʽ����� ����

FROM dbo.EDU_ZZJX_07_A01_XXSXJH AS a LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS c ON a.SFSX = c.DM /*�ƻ��Ƿ���Ч*/
GO
