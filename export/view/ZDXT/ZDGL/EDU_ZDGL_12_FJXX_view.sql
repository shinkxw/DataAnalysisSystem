
--�ּ���ϸ��
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_12_FJXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[PCH]--���κ�
      ,a.[XHID]--�ͺ�ID
      ,a.[SRSL]--��������
      ,a.[LPSL]--��Ʒ����
      ,a.[GZSL]--��������
      ,a.[BFSL]--��������
      ,a.[RWSHSL]--��Ϊ������
      ,a.[QT]--����
      ,a.[HJ]--�ϼ�
      ,a.[BZ]--��ע
      ,b.XX as b_SBXH_XX--�豸�ͺű� �ͺ�
      ,b.LXID as b_SBXH_LXID--�豸�ͺű� ����ID
      ,b.SCCJID as b_SBXH_SCCJID--�豸�ͺű� ��������ID
      ,b.PY as b_SBXH_PY--�豸�ͺű� ƴ��
      ,b.MS as b_SBXH_MS--�豸�ͺű� ����
      ,b.JG as b_SBXH_JG--�豸�ͺű� �۸�

FROM dbo.EDU_ZDGL_12_FJXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_05_SBXH AS b ON a.XHID = b.ID /*�ͺ�ID*/
GO
