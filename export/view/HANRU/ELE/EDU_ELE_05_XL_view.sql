
--У����
CREATE VIEW [dbo].[VIEW_EDU_ELE_05_XL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[NAME]--У������
      ,a.[STARTDAY]--��ʼ����
      ,a.[ENDDAY]--��������
      ,a.[XNID]--ѧ��ID
      ,a.[XQID]--ѧ��ID
      ,c.SCHOOLID as c_XN_SCHOOLID--ѧ��� ѧУ��
      ,c.XN as c_XN_XN--ѧ��� ѧ��

FROM dbo.EDU_ELE_05_XL AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO
