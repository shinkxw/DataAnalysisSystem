
--�豸�ͺ����ñ�
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_03_SBXH_DISP]
AS
SELECT a.[ID]--���
      ,a.[SBLXID]--�豸����ID
      ,a.[SCCJID]--��������ID
      ,a.[XHMC]--�ͺ�����
      ,a.[WLMS]--��������
      ,a.[XHMCPY]--�ͺ�����ƴ��
      ,b.LXMC as b_SBLX_LXMC--�豸�������ñ� ��������
      ,b.ZT as b_SBLX_ZT--�豸�������ñ� ״̬
      ,c.CJMC as c_SCCJ_CJMC--����������Ϣ�� ��������
      ,c.ZT as c_SCCJ_ZT--����������Ϣ�� ״̬

FROM dbo.EDU_ZDGL_03_SBXH AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_01_SBLX AS b ON a.SBLXID = b.ID /*�豸����ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_02_SCCJ AS c ON a.SCCJID = c.ID /*��������ID*/
GO
