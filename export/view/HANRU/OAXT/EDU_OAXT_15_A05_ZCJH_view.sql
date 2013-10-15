
--�ʲ��軹��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A05_ZCJH_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[TypeID]--�ʲ�Ŀ¼��ID
      ,a.[ClassID]--�ʲ������ID
      ,a.[AID]--����ID
      ,a.[SumCount]--����
      ,a.[Unit]--��λ
      ,a.[Borrower]--���÷�
      ,a.[Remark]--��ע
      ,c.SCHOOLID as c_ZCML_SCHOOLID--�ʲ�Ŀ¼�� ѧУ
      ,c.Name as c_ZCML_Name--�ʲ�Ŀ¼�� �ʲ�Ŀ¼����
      ,c.Superid as c_ZCML_Superid--�ʲ�Ŀ¼�� ��Ŀ¼ID
      ,c.Remark as c_ZCML_Remark--�ʲ�Ŀ¼�� ��ע
      ,d.SCHOOLID as d_ZCDL_SCHOOLID--�ʲ������ ѧУ
      ,d.Name as d_ZCDL_Name--�ʲ������ �ʲ���������
      ,d.Remark as d_ZCDL_Remark--�ʲ������ ��ע
      ,e.SCHOOLID as e_ZCKC_SCHOOLID--�ʲ����� ѧУ
      ,e.TypeID as e_ZCKC_TypeID--�ʲ����� �ʲ�Ŀ¼��ID
      ,e.ClassID as e_ZCKC_ClassID--�ʲ����� �ʲ������ID
      ,e.Name as e_ZCKC_Name--�ʲ����� �ʲ�����
      ,e.Info as e_ZCKC_Info--�ʲ����� �ʲ����
      ,e.Productdate as e_ZCKC_Productdate--�ʲ����� ����ʱ��
      ,e.Price as e_ZCKC_Price--�ʲ����� ����
      ,e.SumCount as e_ZCKC_SumCount--�ʲ����� ����
      ,e.Merchant as e_ZCKC_Merchant--�ʲ����� ��Ӧ��
      ,e.Vender as e_ZCKC_Vender--�ʲ����� ����
      ,e.Remark as e_ZCKC_Remark--�ʲ����� ��ע

FROM dbo.EDU_OAXT_15_A05_ZCJH AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A01_ZCML AS c ON a.TypeID = c.ID /*�ʲ�Ŀ¼��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A02_ZCDL AS d ON a.ClassID = d.ID /*�ʲ������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS e ON a.AID = e.ID /*����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/
GO
