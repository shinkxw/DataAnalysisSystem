
--�ʲ������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A06_ZCBG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[TypeID]--���(���á����á�����)
      ,a.[TypeName]--�������
      ,a.[AID]--����ID
      ,a.[Name]--�ʲ�����
      ,a.[Option]--����
      ,a.[RegistTime]--�Ǽ�ʱ��
      ,a.[Remark]--��ע
      ,a.[SumCount]--����
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
      ,c.AllCount as c_ZCKC_AllCount--�ʲ����� �ʲ�����
      ,c.RKL as c_ZCKC_RKL--�ʲ����� �����
      ,c.RQ as c_ZCKC_RQ--�ʲ����� ����
      ,c.DW as c_ZCKC_DW--�ʲ����� ��λ
      ,c.ZJ as c_ZCKC_ZJ--�ʲ����� �ܼ�
      ,c.SYBM as c_ZCKC_SYBM--�ʲ����� ʹ�ò���
      ,c.CFDW as c_ZCKC_CFDW--�ʲ����� ��ŵ�λ
      ,c.FZR as c_ZCKC_FZR--�ʲ����� ������
      ,c.CZFS as c_ZCKC_CZFS--�ʲ����� ���÷�ʽ

FROM dbo.EDU_OAXT_15_A06_ZCBG AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
