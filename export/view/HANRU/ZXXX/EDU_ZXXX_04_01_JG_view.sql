
--�����������
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_04_01_JG_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[JGH]--������
      ,a.[LSJGH]--����������
      ,a.[JGMC]--��������
      ,a.[JGJC]--�������
      ,a.[FZRGH]--�����˹���
      ,c.SCHOOLID as c_JG_SCHOOLID--����������� ѧУ��
      ,c.LSJGH as c_JG_LSJGH--����������� ����������
      ,c.JGMC as c_JG_JGMC--����������� ��������
      ,c.JGJC as c_JG_JGJC--����������� �������
      ,c.FZRGH as c_JG_FZRGH--����������� �����˹���

FROM dbo.EDU_ZXXX_04_01_JG AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS c ON a.LSJGH = c.JGH /*����������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO
