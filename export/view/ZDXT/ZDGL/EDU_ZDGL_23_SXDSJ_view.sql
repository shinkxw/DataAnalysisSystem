
--���޵����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_23_SXDSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SXDID]--���޵�ID
      ,a.[SBXHID]--�豸�ͺ�ID
      ,a.[SXDXMID]--���޵���ĿID
      ,a.[SL]--����
      ,b.SXDWID as b_SXD_SXDWID--���޵��� ���޵�λID
      ,b.SXDMC as b_SXD_SXDMC--���޵��� ���޵�����
      ,b.SXDH as b_SXD_SXDH--���޵��� ���޵���
      ,b.SXRQ as b_SXD_SXRQ--���޵��� ��������
      ,b.GSXX as b_SXD_GSXX--���޵��� ��˾��Ϣ
      ,b.LXRXX as b_SXD_LXRXX--���޵��� ��ϵ����Ϣ
      ,b.LXDHXX as b_SXD_LXDHXX--���޵��� ��ϵ�绰��Ϣ
      ,b.DZXX as b_SXD_DZXX--���޵��� ��ַ��Ϣ
      ,b.QZXX as b_SXD_QZXX--���޵��� ǩ����Ϣ
      ,b.TJYH as b_SXD_TJYH--���޵��� ����û�
      ,b.TJSJ as b_SXD_TJSJ--���޵��� ���ʱ��
      ,c.SBLXID as c_SBXH_SBLXID--�豸�ͺ����ñ� �豸����ID
      ,c.SCCJID as c_SBXH_SCCJID--�豸�ͺ����ñ� ��������ID
      ,c.XHMC as c_SBXH_XHMC--�豸�ͺ����ñ� �ͺ�����
      ,c.WLMS as c_SBXH_WLMS--�豸�ͺ����ñ� ��������
      ,c.XHMCPY as c_SBXH_XHMCPY--�豸�ͺ����ñ� �ͺ�����ƴ��
      ,c.WLBH as c_SBXH_WLBH--�豸�ͺ����ñ� ���ϱ��
      ,d.SSLB as d_SXDXM_SSLB--���޵���Ŀ�� �������
      ,d.XMMC as d_SXDXM_XMMC--���޵���Ŀ�� ��Ŀ����
      ,d.SFXS as d_SXDXM_SFXS--���޵���Ŀ�� �Ƿ���ʾ
      ,d.PLSX as d_SXDXM_PLSX--���޵���Ŀ�� ����˳��

FROM dbo.EDU_ZDGL_23_SXDSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_22_SXD AS b ON a.SXDID = b.ID /*���޵�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_03_SBXH AS c ON a.SBXHID = c.ID /*�豸�ͺ�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_21_SXDXM AS d ON a.SXDXMID = d.ID /*���޵���ĿID*/
GO
