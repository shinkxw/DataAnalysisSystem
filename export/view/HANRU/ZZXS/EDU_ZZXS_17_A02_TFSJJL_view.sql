
--�ŷ��սɼ�¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_17_A02_TFSJJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[TYXXID]--��Ա��Ϣ��ID
      ,a.[SJJE]--�սɽ��
      ,a.[TJSJ]--���ʱ��
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,cb.MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_TYXX_SCHOOLID--��Ա��Ϣ��չ�� ѧУ
      ,d.BJID as d_TYXX_BJID--��Ա��Ϣ��չ�� �༶ID
      ,d.XSXXID as d_TYXX_XSXXID--��Ա��Ϣ��չ�� ѧ��ID
      ,d.RTSJ as d_TYXX_RTSJ--��Ա��Ϣ��չ�� ����ʱ��
      ,d.ZRD as d_TYXX_ZRD--��Ա��Ϣ��չ�� ת���
      ,d.ZRSJ as d_TYXX_ZRSJ--��Ա��Ϣ��չ�� ת��ʱ��
      ,d.ZCSJ as d_TYXX_ZCSJ--��Ա��Ϣ��չ�� ת��ʱ��
      ,d.DQZT as d_TYXX_DQZT--��Ա��Ϣ��չ�� ��ǰ״̬
      ,d.JBJSID as d_TYXX_JBJSID--��Ա��Ϣ��չ�� �����ʦID
      ,d.BZ as d_TYXX_BZ--��Ա��Ϣ��չ�� ��ע

FROM dbo.EDU_ZZXS_17_A02_TFSJJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_17_A01_TYXX AS d ON a.TYXXID = d.ID /*��Ա��Ϣ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/
GO
