
--���޵�λ��Ϣ��
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_04_SXDW_DISP]
AS
SELECT a.[ID]--���
      ,a.[QHM]--������
      ,a.[SSSJQHM]--�����м�������
      ,a.[DWMC]--��λ����
      ,a.[DWMCPY]--��λ����ƴ��
      ,b.MC as b_XZQH_MC--���������� ����
      ,b.QH as b_XZQH_QH--���������� ����

FROM dbo.EDU_ZDGL_04_SXDW AS a LEFT OUTER JOIN
      dbo.EDU_ELE_10_XZQH AS b ON a.QHM = b.DM /*������*/
GO
