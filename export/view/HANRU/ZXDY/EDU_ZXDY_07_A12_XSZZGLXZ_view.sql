
--ѧ����������С���
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_07_A12_XSZZGLXZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[GLJGID]--�������ID
      ,a.[ZZ]--�鳤
      ,a.[ZY]--��Ա
      ,a.[XZKH]--С��ں�(Ŀ��)
      ,a.[PLSX]--����˳��
      ,c.SCHOOLID as c_XSZZGLJG_SCHOOLID--ѧ��������������� ѧУID
      ,c.JGMC as c_XSZZGLJG_JGMC--ѧ��������������� ��������

FROM dbo.EDU_ZXDY_07_A12_XSZZGLXZ AS a LEFT OUTER JOIN
      dbo.EDU_ZXDY_07_A11_XSZZGLJG AS c ON a.GLJGID = c.ID /*�������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO
