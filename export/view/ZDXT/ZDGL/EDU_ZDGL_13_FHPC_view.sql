
--�������α�
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_13_FHPC_DISP]
AS
SELECT a.[ID]--���
      ,a.[FHPCH]--�������κ�
      ,a.[FHR]--������
      ,a.[WLGSID]--������˾ID
      ,a.[ZXS]--������
      ,a.[FHSJ]--����ʱ��
      ,a.[FJPCID]--�ּ�����ID
      ,a.[FHRID]--������ID
      ,b.GSDM as b_WLGS_GSDM--������˾�� ��˾����
      ,b.GSM as b_WLGS_GSM--������˾�� ��˾��
      ,b.GSLXR as b_WLGS_GSLXR--������˾�� ��˾��ϵ��
      ,b.LXDH as b_WLGS_LXDH--������˾�� ��ϵ�绰
      ,c.PCH as c_FJPC_PCH--�ּ����α� ���κ�
      ,c.KHID as c_FJPC_KHID--�ּ����α� �ͻ�ID
      ,c.JSRQ as c_FJPC_JSRQ--�ּ����α� ��������
      ,c.LRSJ as c_FJPC_LRSJ--�ּ����α� ¼��ʱ��
      ,c.FJWGSJ as c_FJPC_FJWGSJ--�ּ����α� �ּ��깤ʱ��
      ,c.FJFZR as c_FJPC_FJFZR--�ּ����α� �ּ�����
      ,c.QRR as c_FJPC_QRR--�ּ����α� ȷ����
      ,c.QRRLXDH as c_FJPC_QRRLXDH--�ּ����α� ȷ������ϵ�绰
      ,c.QRSJ as c_FJPC_QRSJ--�ּ����α� ȷ��ʱ��
      ,c.CSJG as c_FJPC_CSJG--�ּ����α� ���Խ��
      ,d.GH as d_FHR_GH--�����˱� ����
      ,d.XM as d_FHR_XM--�����˱� ����
      ,d.LXDH as d_FHR_LXDH--�����˱� ��ϵ�绰

FROM dbo.EDU_ZDGL_13_FHPC AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_15_WLGS AS b ON a.WLGSID = b.ID /*������˾ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_11_FJPC AS c ON a.FJPCID = c.ID /*�ּ�����ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_22_FHR AS d ON a.FHRID = d.ID /*������ID*/
GO
