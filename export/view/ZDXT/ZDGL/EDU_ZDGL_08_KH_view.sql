
--�ͻ���
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_08_KH_DISP]
AS
SELECT a.[ID]--���
      ,a.[KHDM]--�ͻ�����
      ,a.[SZQYID]--��������ID
      ,a.[SSGSID]--������˾ID
      ,a.[DWMC]--��λ����
      ,a.[PY]--ƴ��
      ,a.[KHDZ]--�ͻ���ַ
      ,a.[LXR]--��ϵ��
      ,a.[DH]--�绰
      ,b.QHM as b_XZQH_QHM--���������� ������
      ,b.QHMC as b_XZQH_QHMC--���������� ��������
      ,b.QH as b_XZQH_QH--���������� ����
      ,c.GSDM as c_SSGS_GSDM--������˾�� ��˾����
      ,c.GSM as c_SSGS_GSM--������˾�� ��˾��

FROM dbo.EDU_ZDGL_08_KH AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_06_XZQH AS b ON a.SZQYID = b.ID /*��������ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_07_SSGS AS c ON a.SSGSID = c.ID /*������˾ID*/
GO
