
--�����豸��
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_09_SXSB_DISP]
AS
SELECT a.[ID]--���
      ,a.[SXDID]--���޵�ID
      ,a.[BXSBID]--�����豸ID
      ,b.SXDH as b_SXDXX_SXDH--���޵���Ϣ�� ���޵���
      ,b.CJYHID as b_SXDXX_CJYHID--���޵���Ϣ�� �����û�
      ,b.CJSJ as b_SXDXX_CJSJ--���޵���Ϣ�� ����ʱ��
      ,b.SXSJ as b_SXDXX_SXSJ--���޵���Ϣ�� ����ʱ��
      ,b.QRSJ as b_SXDXX_QRSJ--���޵���Ϣ�� ȷ��ʱ��
      ,b.ZT as b_SXDXX_ZT--���޵���Ϣ�� ״̬
      ,c.SBXHID as c_BXSB_SBXHID--�����豸�� �豸�ͺ�ID
      ,c.SXDWID as c_BXSB_SXDWID--�����豸�� ���޵�λID
      ,c.SXDWMC as c_BXSB_SXDWMC--�����豸�� ���޵�λ����
      ,c.SNM as c_BXSB_SNM--�����豸�� S/N��
      ,c.SCRQ as c_BXSB_SCRQ--�����豸�� ��������
      ,c.SBLXMC as c_BXSB_SBLXMC--�����豸�� �豸��������
      ,c.SCCJMC as c_BXSB_SCCJMC--�����豸�� ������������
      ,c.SBXHMC as c_BXSB_SBXHMC--�����豸�� �豸�ͺ�����
      ,c.BXZT as c_BXSB_BXZT--�����豸�� ����״̬
      ,c.BXHTID as c_BXSB_BXHTID--�����豸�� ���޺�ͬID
      ,c.SBZT as c_BXSB_SBZT--�����豸�� �豸״̬
      ,c.WXZT as c_BXSB_WXZT--�����豸�� ά��״̬
      ,c.RKSJ as c_BXSB_RKSJ--�����豸�� ���ʱ��
      ,c.RKCZYHID as c_BXSB_RKCZYHID--�����豸�� �������û�
      ,c.FXM as c_BXSB_FXM--�����豸�� ������
      ,c.FXXX as c_BXSB_FXXX--�����豸�� ������Ϣ
      ,c.FXXH as c_BXSB_FXXH--�����豸�� �������
      ,c.WXJSSJ as c_BXSB_WXJSSJ--�����豸�� ά�޽���ʱ��
      ,c.WXJSDJYHID as c_BXSB_WXJSDJYHID--�����豸�� ά�޽����Ǽ��û�

FROM dbo.EDU_ZDGL_09_SXSB AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_SXDXX AS b ON a.SXDID = b.ID /*���޵�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_07_BXSB AS c ON a.BXSBID = c.ID /*�����豸ID*/
GO
