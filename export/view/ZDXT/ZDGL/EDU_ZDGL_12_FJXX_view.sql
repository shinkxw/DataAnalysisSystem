
--�ּ���ϸ��
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_12_FJXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[PCID]--����ID
      ,a.[XHID]--�ͺ�ID
      ,a.[SRSL]--��������
      ,a.[LPSL]--��Ʒ����
      ,a.[GZSL]--��������
      ,a.[BFSL]--��������
      ,a.[RWSHSL]--��Ϊ������
      ,a.[QT]--����
      ,a.[HJ]--�ϼ�
      ,a.[BZ]--��ע
      ,a.[JCFW]--��������
      ,a.[HK]--����
      ,a.[WX]--ά��
      ,a.[XDY]--�µ�Դ
      ,a.[JDY]--�ɵ�Դ
      ,a.[PJ]--���
      ,a.[TH]--�˻�
      ,a.[QTE]--������
      ,a.[WF]--δ��
      ,a.[FHRQ]--��������
      ,b.PCH as b_FJPC_PCH--�ּ����α� ���κ�
      ,b.KHID as b_FJPC_KHID--�ּ����α� �ͻ�ID
      ,b.JSRQ as b_FJPC_JSRQ--�ּ����α� ��������
      ,b.LRSJ as b_FJPC_LRSJ--�ּ����α� ¼��ʱ��
      ,b.FJWGSJ as b_FJPC_FJWGSJ--�ּ����α� �ּ��깤ʱ��
      ,b.FJFZR as b_FJPC_FJFZR--�ּ����α� �ּ�����
      ,b.QRR as b_FJPC_QRR--�ּ����α� ȷ����
      ,b.QRRLXDH as b_FJPC_QRRLXDH--�ּ����α� ȷ������ϵ�绰
      ,b.QRSJ as b_FJPC_QRSJ--�ּ����α� ȷ��ʱ��
      ,b.CSJG as b_FJPC_CSJG--�ּ����α� ���Խ��
      ,c.XX as c_SBXH_XX--�豸�ͺű� �ͺ�
      ,c.LXID as c_SBXH_LXID--�豸�ͺű� ����ID
      ,c.SCCJID as c_SBXH_SCCJID--�豸�ͺű� ��������ID
      ,c.PY as c_SBXH_PY--�豸�ͺű� ƴ��
      ,c.MS as c_SBXH_MS--�豸�ͺű� ����
      ,c.JG as c_SBXH_JG--�豸�ͺű� �۸�
      ,c.XTLX as c_SBXH_XTLX--�豸�ͺű� ϵͳ����

FROM dbo.EDU_ZDGL_12_FJXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_11_FJPC AS b ON a.PCID = b.ID /*����ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_05_SBXH AS c ON a.XHID = c.ID /*�ͺ�ID*/
GO
