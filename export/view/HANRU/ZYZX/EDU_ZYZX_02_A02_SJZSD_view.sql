
--�Ծ�֪ʶ���
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_02_A02_SJZSD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KCKID]--�γ̿�ID
      ,a.[ZSDMC]--֪ʶ������
      ,c.SCHOOLID as c_KCK_SCHOOLID--�γ̿�� ѧУ
      ,c.KCDM as c_KCK_KCDM--�γ̿�� �γ̴���
      ,c.KCMC as c_KCK_KCMC--�γ̿�� �γ�����

FROM dbo.EDU_ZYZX_02_A02_SJZSD AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_03_A01_KCK AS c ON a.KCKID = c.ID /*�γ̿�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
