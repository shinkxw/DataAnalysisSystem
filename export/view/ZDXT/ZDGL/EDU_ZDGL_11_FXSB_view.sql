
--�����豸��
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_11_FXSB_DISP]
AS
SELECT a.[ID]--���
      ,a.[FXDID]--���޵�ID
      ,a.[BXSBID]--�����豸ID
      ,b.FXDH as b_FXDXX_FXDH--���޵���Ϣ�� ���޵���
      ,b.CJYHID as b_FXDXX_CJYHID--���޵���Ϣ�� �����û�
      ,b.CJSJ as b_FXDXX_CJSJ--���޵���Ϣ�� ����ʱ��
      ,b.FXSJ as b_FXDXX_FXSJ--���޵���Ϣ�� ����ʱ��
      ,b.SHSJ as b_FXDXX_SHSJ--���޵���Ϣ�� ���ʱ��
      ,b.ZT as b_FXDXX_ZT--���޵���Ϣ�� ״̬
      ,c.SBXHID as c_BXSB_SBXHID--�����豸�� �豸�ͺ�ID
      ,c.SXDWID as c_BXSB_SXDWID--�����豸�� ���޵�λID
      ,c.SNM as c_BXSB_SNM--�����豸�� S/N��
      ,c.SCRQ as c_BXSB_SCRQ--�����豸�� ��������
      ,c.SCCJ as c_BXSB_SCCJ--�����豸�� ��������
      ,c.BXZT as c_BXSB_BXZT--�����豸�� ����״̬
      ,c.BXHTID as c_BXSB_BXHTID--�����豸�� ���޺�ͬID
      ,c.SBZT as c_BXSB_SBZT--�����豸�� �豸״̬
      ,c.WXZT as c_BXSB_WXZT--�����豸�� ά��״̬
      ,c.RKSJ as c_BXSB_RKSJ--�����豸�� ���ʱ��
      ,c.RKCZYHID as c_BXSB_RKCZYHID--�����豸�� �������û�
      ,c.FXM as c_BXSB_FXM--�����豸�� ������
      ,c.FXSJ as c_BXSB_FXSJ--�����豸�� ����ʱ��
      ,c.FXDJYHID as c_BXSB_FXDJYHID--�����豸�� ���޵Ǽ��û�

FROM dbo.EDU_ZDGL_11_FXSB AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_10_FXDXX AS b ON a.FXDID = b.ID /*���޵�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_07_BXSB AS c ON a.BXSBID = c.ID /*�����豸ID*/
GO
