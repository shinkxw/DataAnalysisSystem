
--������λ��
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_04_A01_JGGW_DISP]
AS
SELECT a.[ID]--��λ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[JGH]--������
      ,a.[GWBH]--��λ���
      ,a.[GWMC]--��λ����
      ,a.[GWSM]--��λ˵��
      ,c.SCHOOLID as c_JG_SCHOOLID--����������� ѧУ��
      ,c.LSJGH as c_JG_LSJGH--����������� ����������
      ,c.JGMC as c_JG_JGMC--����������� ��������
      ,c.JGJC as c_JG_JGJC--����������� �������
      ,c.FZRGH as c_JG_FZRGH--����������� �����˹���

FROM dbo.EDU_ZXXX_04_A01_JGGW AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS c ON a.JGH = c.JGH /*������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO
