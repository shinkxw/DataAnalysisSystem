
--�������������ƻ���
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_22_A02_ZSGLZSJH_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[JHMC]--�ƻ�����
      ,a.[XNID]--ѧ��ID
      ,a.[KG]--����
      ,c.SCHOOLID as c_XN_SCHOOLID--ѧ��� ѧУ��
      ,c.XN as c_XN_XN--ѧ��� ѧ��

FROM dbo.EDU_ZZXS_22_A02_ZSGLZSJH AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
