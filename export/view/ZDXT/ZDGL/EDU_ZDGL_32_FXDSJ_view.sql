
--���޵����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_32_FXDSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[FXDID]--���޵�ID
      ,a.[WLMC]--��������
      ,a.[PZ]--����
      ,a.[DW]--��λ
      ,a.[SL]--����
      ,a.[RWSM]--����˵��
      ,a.[CLJG]--������
      ,b.FXDH as b_FXD_FXDH--���޵��� ���޵���
      ,b.PDBM as b_FXD_PDBM--���޵��� �ɵ�����
      ,b.PDY as b_FXD_PDY--���޵��� �ɵ�Ա
      ,b.PDSJ as b_FXD_PDSJ--���޵��� �ɵ�ʱ��
      ,b.SHDW as b_FXD_SHDW--���޵��� �ջ���λ
      ,b.LXR as b_FXD_LXR--���޵��� ��ϵ��
      ,b.LXDH as b_FXD_LXDH--���޵��� ��ϵ�绰
      ,b.WGSX as b_FXD_WGSX--���޵��� �깤ʱ��
      ,b.DZ as b_FXD_DZ--���޵��� ��ַ
      ,b.ZJTS as b_FXD_ZJTS--���޵��� �ܼ�̨��
      ,b.ZJJS as b_FXD_ZJJS--���޵��� �ܼƼ���
      ,b.SLBM as b_FXD_SLBM--���޵��� ������
      ,b.SDY as b_FXD_SDY--���޵��� �ܵ�Ա
      ,b.QSY as b_FXD_QSY--���޵��� ǩ��Ա
      ,b.QSSJ as b_FXD_QSSJ--���޵��� ǩ��ʱ��
      ,b.FWQK as b_FXD_FWQK--���޵��� �������
      ,b.FWGCS as b_FXD_FWGCS--���޵��� ���񹤳�ʦ
      ,b.WGSJ as b_FXD_WGSJ--���޵��� �깤ʱ��
      ,b.YSQK as b_FXD_YSQK--���޵��� �������
      ,b.YSRY as b_FXD_YSRY--���޵��� ������Ա
      ,b.YSSJ as b_FXD_YSSJ--���޵��� ����ʱ��
      ,b.TJYH as b_FXD_TJYH--���޵��� ����û�
      ,b.TJSJ as b_FXD_TJSJ--���޵��� ���ʱ��

FROM dbo.EDU_ZDGL_32_FXDSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_31_FXD AS b ON a.FXDID = b.ID /*���޵�ID*/
GO
