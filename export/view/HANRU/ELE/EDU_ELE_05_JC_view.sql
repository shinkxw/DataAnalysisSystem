
--�ڴ�
CREATE VIEW [dbo].[VIEW_EDU_ELE_05_JC_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[SDID]--����ʱ��ID
      ,a.[MC]--����
      ,a.[KSXS]--��ʼСʱ
      ,a.[KSFZ]--��ʼ����
      ,a.[JSXS]--����Сʱ
      ,a.[JSFZ]--��������
      ,c.SCHOOLID as c_SD_SCHOOLID--ʱ�� ѧУ��
      ,c.MC as c_SD_MC--ʱ�� ����

FROM dbo.EDU_ELE_05_JC AS a LEFT OUTER JOIN
      dbo.EDU_ELE_05_SD AS c ON a.SDID = c.ID /*����ʱ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO
