
--ƽ��ְҵ���������
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_22_A06_PHZYKPJG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[CPMCID]--��������ID
      ,a.[PJJSID]--���۽�ʦID
      ,a.[BPJSID]--������ʦID
      ,a.[TMID]--��ĿID
      ,a.[FZ]--��ֵ
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_PHZYCPMC_SCHOOLID--ƽ��ְҵ�������Ʊ� ѧУ
      ,d.KPMC as d_PHZYCPMC_KPMC--ƽ��ְҵ�������Ʊ� ��������
      ,d.BZ as d_PHZYCPMC_BZ--ƽ��ְҵ�������Ʊ� ��ע
      ,e.SCHOOLID as e_PHZYKPJS_SCHOOLID--ƽ��ְҵ������ʦ�� ѧУ
      ,e.XQID as e_PHZYKPJS_XQID--ƽ��ְҵ������ʦ�� ѧ��ID
      ,e.JSID as e_PHZYKPJS_JSID--ƽ��ְҵ������ʦ�� ��ʦID
      ,e.XSZW as e_PHZYKPJS_XSZW--ƽ��ְҵ������ʦ�� ��ʾְ��
      ,e.TJZW as e_PHZYKPJS_TJZW--ƽ��ְҵ������ʦ�� ͳ��ְ��
      ,e.JXB as e_PHZYKPJS_JXB--ƽ��ְҵ������ʦ�� ��ѧ��
      ,e.JYZ as e_PHZYKPJS_JYZ--ƽ��ְҵ������ʦ�� ������
      ,e.XM as e_PHZYKPJS_XM--ƽ��ְҵ������ʦ�� ����
      ,e.SFKPQX as e_PHZYKPJS_SFKPQX--ƽ��ְҵ������ʦ�� �Ƿ����ȫУ
      ,e.SFBQXP as e_PHZYKPJS_SFBQXP--ƽ��ְҵ������ʦ�� �Ƿ�ȫУ��
      ,e.SFJRBMHP as e_PHZYKPJS_SFJRBMHP--ƽ��ְҵ������ʦ�� �Ƿ���벿�Ż���
      ,e.SFBBQXP as e_PHZYKPJS_SFBBQXP--ƽ��ְҵ������ʦ�� �Ƿ񲻱�ȫУ��
      ,f.SCHOOLID as f_PHZYKPJS_SCHOOLID--ƽ��ְҵ������ʦ�� ѧУ
      ,f.XQID as f_PHZYKPJS_XQID--ƽ��ְҵ������ʦ�� ѧ��ID
      ,f.JSID as f_PHZYKPJS_JSID--ƽ��ְҵ������ʦ�� ��ʦID
      ,f.XSZW as f_PHZYKPJS_XSZW--ƽ��ְҵ������ʦ�� ��ʾְ��
      ,f.TJZW as f_PHZYKPJS_TJZW--ƽ��ְҵ������ʦ�� ͳ��ְ��
      ,f.JXB as f_PHZYKPJS_JXB--ƽ��ְҵ������ʦ�� ��ѧ��
      ,f.JYZ as f_PHZYKPJS_JYZ--ƽ��ְҵ������ʦ�� ������
      ,f.XM as f_PHZYKPJS_XM--ƽ��ְҵ������ʦ�� ����
      ,f.SFKPQX as f_PHZYKPJS_SFKPQX--ƽ��ְҵ������ʦ�� �Ƿ����ȫУ
      ,f.SFBQXP as f_PHZYKPJS_SFBQXP--ƽ��ְҵ������ʦ�� �Ƿ�ȫУ��
      ,f.SFJRBMHP as f_PHZYKPJS_SFJRBMHP--ƽ��ְҵ������ʦ�� �Ƿ���벿�Ż���
      ,f.SFBBQXP as f_PHZYKPJS_SFBBQXP--ƽ��ְҵ������ʦ�� �Ƿ񲻱�ȫУ��
      ,g.SCHOOLID as g_PHZYCPTM_SCHOOLID--ƽ��ְҵ������Ŀ�� ѧУ
      ,g.DFFSID as g_PHZYCPTM_DFFSID--ƽ��ְҵ������Ŀ�� ��ַ�ʽID
      ,g.CPMCID as g_PHZYCPTM_CPMCID--ƽ��ְҵ������Ŀ�� ��������ID
      ,g.CPXM as g_PHZYCPTM_CPXM--ƽ��ְҵ������Ŀ�� ������Ŀ
      ,g.CPZB as g_PHZYCPTM_CPZB--ƽ��ְҵ������Ŀ�� ����ָ��
      ,g.ZT as g_PHZYCPTM_ZT--ƽ��ְҵ������Ŀ�� ״̬

FROM dbo.EDU_ZZJG_22_A06_PHZYKPJG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_22_A01_PHZYCPMC AS d ON a.CPMCID = d.ID /*��������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_22_A05_PHZYKPJS AS e ON a.PJJSID = e.ID /*���۽�ʦID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_22_A05_PHZYKPJS AS f ON a.BPJSID = f.ID /*������ʦID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_22_A04_PHZYCPTM AS g ON a.TMID = g.ID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/
GO
