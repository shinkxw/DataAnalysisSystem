
--�ο�ѧ����Ϣ
CREATE VIEW [dbo].[VIEW_EDU_CFXT_01_A03_CKXS_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KSID]--����ID
      ,a.[XM]--����
      ,a.[ZKZH]--׼��֤��
      ,a.[JZDH]--�ҳ��绰
      ,a.[ZCJ]--�ܳɼ�
      ,c.SCHOOLID as c_KS_SCHOOLID--������Ϣ ѧУ
      ,c.KSMC as c_KS_KSMC--������Ϣ ��������
      ,c.KSKMIDLB as c_KS_KSKMIDLB--������Ϣ ���Կ�ĿID�б�
      ,c.KSKMMCLB as c_KS_KSKMMCLB--������Ϣ ���Կ�Ŀ�����б�
      ,c.CFWZ as c_KS_CFWZ--������Ϣ �����ַ
      ,c.CFZT as c_KS_CFZT--������Ϣ ���״̬
      ,c.HDX as c_KS_HDX--������Ϣ ������
      ,c.HDXSJG as c_KS_HDXSJG--������Ϣ �������Ͻ��
      ,c.HDXXJG as c_KS_HDXXJG--������Ϣ �������½��

FROM dbo.EDU_CFXT_01_A03_CKXS AS a LEFT OUTER JOIN
      dbo.EDU_CFXT_01_A02_KS AS c ON a.KSID = c.ID /*����ID*/
GO
