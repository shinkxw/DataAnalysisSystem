
--�����������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_11_A05_KPNRSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KPNRMC]--������������
      ,a.[KPNRLX]--������������
      ,a.[KPZTID]--��������ID
      ,c.MC as c_KPZT_MC--����������� ����

FROM dbo.EDU_ZZJG_11_A05_KPNRSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZJ_KPZT AS c ON a.KPZTID = c.DM /*��������ID*/
GO
