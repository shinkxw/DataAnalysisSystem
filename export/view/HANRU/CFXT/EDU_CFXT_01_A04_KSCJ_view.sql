
--���Գɼ�
CREATE VIEW [dbo].[VIEW_EDU_CFXT_01_A04_KSCJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KSID]--����ID
      ,a.[KMID]--��ĿID
      ,a.[CKXSID]--�ο�ѧ��ID
      ,a.[CJ]--�ɼ�
      ,c.SCHOOLID as c_KS_SCHOOLID--������Ϣ ѧУ
      ,c.KSMC as c_KS_KSMC--������Ϣ ��������
      ,c.KSKMIDLB as c_KS_KSKMIDLB--������Ϣ ���Կ�ĿID�б�
      ,c.KSKMMCLB as c_KS_KSKMMCLB--������Ϣ ���Կ�Ŀ�����б�
      ,c.CFWZ as c_KS_CFWZ--������Ϣ �����ַ
      ,c.CFZT as c_KS_CFZT--������Ϣ ���״̬
      ,d.SCHOOLID as d_KM_SCHOOLID--��Ŀ��Ϣ ѧУ
      ,d.KMMC as d_KM_KMMC--��Ŀ��Ϣ ��Ŀ����
      ,d.KMZF as d_KM_KMZF--��Ŀ��Ϣ ��Ŀ�ܷ�
      ,e.SCHOOLID as e_CKXS_SCHOOLID--�ο�ѧ����Ϣ ѧУ
      ,e.KSID as e_CKXS_KSID--�ο�ѧ����Ϣ ����ID
      ,e.XM as e_CKXS_XM--�ο�ѧ����Ϣ ����
      ,e.ZKZH as e_CKXS_ZKZH--�ο�ѧ����Ϣ ׼��֤��
      ,e.JZDH as e_CKXS_JZDH--�ο�ѧ����Ϣ �ҳ��绰
      ,e.ZCJ as e_CKXS_ZCJ--�ο�ѧ����Ϣ �ܳɼ�
      ,e.JG as e_CKXS_JG--�ο�ѧ����Ϣ ���

FROM dbo.EDU_CFXT_01_A04_KSCJ AS a LEFT OUTER JOIN
      dbo.EDU_CFXT_01_A02_KS AS c ON a.KSID = c.ID /*����ID*/ LEFT OUTER JOIN
      dbo.EDU_CFXT_01_A01_KM AS d ON a.KMID = d.ID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_CFXT_01_A03_CKXS AS e ON a.CKXSID = e.ID /*�ο�ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/
GO
