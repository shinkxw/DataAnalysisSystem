
--�������۶��ż�¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_25_A11_DYPJDXJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[GLXSPFJLID]--����ѧ�����ּ�¼ID
      ,a.[FSDXMC]--���Ͷ�������
      ,a.[DHHM]--�绰����
      ,a.[DXNR]--��������
      ,a.[TJSJ]--���ʱ��
      ,a.[FSSJ]--����ʱ��
      ,a.[FSZT]--����״̬
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���
      ,d.SCHOOLID as d_DYPJXSPFJL_SCHOOLID--��������ѧ�����ּ�¼�� ѧУ
      ,d.XQID as d_DYPJXSPFJL_XQID--��������ѧ�����ּ�¼�� ѧ��ID
      ,d.ZCID as d_DYPJXSPFJL_ZCID--��������ѧ�����ּ�¼�� �ܴ�ID
      ,d.JSID as d_DYPJXSPFJL_JSID--��������ѧ�����ּ�¼�� ��ʦID
      ,d.XSID as d_DYPJXSPFJL_XSID--��������ѧ�����ּ�¼�� ѧ��ID
      ,d.DLID as d_DYPJXSPFJL_DLID--��������ѧ�����ּ�¼�� ����ID
      ,d.XLID as d_DYPJXSPFJL_XLID--��������ѧ�����ּ�¼�� С��ID
      ,d.SJ as d_DYPJXSPFJL_SJ--��������ѧ�����ּ�¼�� ʱ��
      ,d.FZ as d_DYPJXSPFJL_FZ--��������ѧ�����ּ�¼�� ��ֵ
      ,d.BZ as d_DYPJXSPFJL_BZ--��������ѧ�����ּ�¼�� ��ע
      ,d.ZT as d_DYPJXSPFJL_ZT--��������ѧ�����ּ�¼�� ״̬
      ,d.TJSJ as d_DYPJXSPFJL_TJSJ--��������ѧ�����ּ�¼�� ���ʱ��
      ,d.XFSQJSID as d_DYPJXSPFJL_XFSQJSID--��������ѧ�����ּ�¼�� ���������ʦID
      ,d.XFSQSJ as d_DYPJXSPFJL_XFSQSJ--��������ѧ�����ּ�¼�� ��������ʱ��
      ,d.XFLY as d_DYPJXSPFJL_XFLY--��������ѧ�����ּ�¼�� ��������
      ,d.XFCLJSID as d_DYPJXSPFJL_XFCLJSID--��������ѧ�����ּ�¼�� ���ִ����ʦID
      ,d.XFCLSJ as d_DYPJXSPFJL_XFCLSJ--��������ѧ�����ּ�¼�� ���ִ���ʱ��
      ,d.CLYJ as d_DYPJXSPFJL_CLYJ--��������ѧ�����ּ�¼�� �������
      ,d.GLBJPFJLID as d_DYPJXSPFJL_GLBJPFJLID--��������ѧ�����ּ�¼�� �����༶���ּ�¼ID

FROM dbo.EDU_ZZXS_25_A11_DYPJDXJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A04_DYPJXSPFJL AS d ON a.GLXSPFJLID = d.ID /*����ѧ�����ּ�¼ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/
GO
