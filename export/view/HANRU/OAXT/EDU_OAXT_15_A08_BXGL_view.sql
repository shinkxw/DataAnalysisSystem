
--���޹����
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A08_BXGL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[AID]--����ID
      ,a.[TypeID]--��������ID
      ,a.[Title]--��������
      ,a.[Telephone]--��ϵ�绰
      ,a.[Repairplace]--���޵ص�
      ,a.[Repaircontent]--��������
      ,a.[Repairpeople]--ά����
      ,a.[RepairDate]--ά��ʱ��
      ,a.[ReadrID]--�Ķ����
      ,a.[Readr]--�Ķ����
      ,a.[Applicant]--������
      ,a.[Approver]--������
      ,a.[Evaluate]--����
      ,a.[StartDate]--��ʼʱ��
      ,a.[Status]--״̬
      ,a.[Remark]--��ע
      ,c.SCHOOLID as c_ZCKC_SCHOOLID--�ʲ����� ѧУ
      ,c.TypeID as c_ZCKC_TypeID--�ʲ����� �ʲ�Ŀ¼��ID
      ,c.ClassID as c_ZCKC_ClassID--�ʲ����� �ʲ������ID
      ,c.Name as c_ZCKC_Name--�ʲ����� �ʲ�����
      ,c.Info as c_ZCKC_Info--�ʲ����� �ʲ����
      ,c.Productdate as c_ZCKC_Productdate--�ʲ����� ����ʱ��
      ,c.Price as c_ZCKC_Price--�ʲ����� ����
      ,c.SumCount as c_ZCKC_SumCount--�ʲ����� ����
      ,c.Merchant as c_ZCKC_Merchant--�ʲ����� ��Ӧ��
      ,c.Vender as c_ZCKC_Vender--�ʲ����� ����
      ,c.Remark as c_ZCKC_Remark--�ʲ����� ��ע
      ,d.SCHOOLID as d_BXLX_SCHOOLID--�������ͱ� ѧУ
      ,d.TypeName as d_BXLX_TypeName--�������ͱ� ��������
      ,d.Remark as d_BXLX_Remark--�������ͱ� ��ע

FROM dbo.EDU_OAXT_15_A08_BXGL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A07_BXLX AS d ON a.TypeID = d.ID /*��������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
