
--�ʲ�����
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A03_ZCKC_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[TypeID]--�ʲ�Ŀ¼��ID
      ,a.[ClassID]--�ʲ������ID
      ,a.[Name]--�ʲ�����
      ,a.[Info]--�ʲ����
      ,a.[Productdate]--����ʱ��
      ,a.[Price]--����
      ,a.[SumCount]--����
      ,a.[Merchant]--��Ӧ��
      ,a.[Vender]--����
      ,a.[Remark]--��ע
      ,c.SCHOOLID as c_ZCML_SCHOOLID--�ʲ�Ŀ¼�� ѧУ
      ,c.Name as c_ZCML_Name--�ʲ�Ŀ¼�� �ʲ�Ŀ¼����
      ,c.Superid as c_ZCML_Superid--�ʲ�Ŀ¼�� ��Ŀ¼ID
      ,c.Remark as c_ZCML_Remark--�ʲ�Ŀ¼�� ��ע
      ,d.SCHOOLID as d_ZCDL_SCHOOLID--�ʲ������ ѧУ
      ,d.Name as d_ZCDL_Name--�ʲ������ �ʲ���������
      ,d.Remark as d_ZCDL_Remark--�ʲ������ ��ע

FROM dbo.EDU_OAXT_15_A03_ZCKC AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A01_ZCML AS c ON a.TypeID = c.ID /*�ʲ�Ŀ¼��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A02_ZCDL AS d ON a.ClassID = d.ID /*�ʲ������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
