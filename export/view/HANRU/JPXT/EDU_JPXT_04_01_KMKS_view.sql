
--��Ŀ���Ա�
CREATE VIEW [dbo].[VIEW_EDU_JPXT_04_01_KMKS_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[KMDM]--��Ŀ����
      ,a.[KSSJ]--����ʱ��
      ,a.[BZ]--��ע
      ,c.MC as c_JKKM_MC--�ݿ���Ŀ���� ��Ŀ����
      ,c.KSSX as c_JKKM_KSSX--�ݿ���Ŀ���� ����˳��

FROM dbo.EDU_JPXT_04_01_KMKS AS a LEFT OUTER JOIN
      dbo.EDU_ZZ_JKKM AS c ON a.KMDM = c.DM /*��Ŀ����*/
GO
