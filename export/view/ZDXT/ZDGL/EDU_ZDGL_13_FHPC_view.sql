
--�������α�
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_13_FHPC_DISP]
AS
SELECT a.[ID]--���
      ,a.[FHPCH]--�������κ�
      ,a.[FHR]--������
      ,a.[WLGSID]--������˾ID
      ,a.[ZXS]--������
      ,a.[FHSJ]--����ʱ��
      ,b.GSDM as b_WLGS_GSDM--������˾�� ��˾����
      ,b.GSM as b_WLGS_GSM--������˾�� ��˾��
      ,b.GSLXR as b_WLGS_GSLXR--������˾�� ��˾��ϵ��
      ,b.LXDH as b_WLGS_LXDH--������˾�� ��ϵ�绰

FROM dbo.EDU_ZDGL_13_FHPC AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_15_WLGS AS b ON a.WLGSID = b.ID /*������˾ID*/
GO
