
--ƽ��ְҵ��������
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_23_A06_PHZYDCJG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[DCMCID]--��������ID
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
      ,d.SCHOOLID as d_PHZYDCMC_SCHOOLID--ƽ��ְҵ�������Ʊ� ѧУ
      ,d.DCMC as d_PHZYDCMC_DCMC--ƽ��ְҵ�������Ʊ� ��������
      ,d.BZ as d_PHZYDCMC_BZ--ƽ��ְҵ�������Ʊ� ��ע
      ,d.ZT as d_PHZYDCMC_ZT--ƽ��ְҵ�������Ʊ� ״̬
      ,e.SCHOOLID as e_PHZYDCJS_SCHOOLID--ƽ��ְҵ�����ʦ�� ѧУ
      ,e.XQID as e_PHZYDCJS_XQID--ƽ��ְҵ�����ʦ�� ѧ��ID
      ,e.JSID as e_PHZYDCJS_JSID--ƽ��ְҵ�����ʦ�� ��ʦID
      ,e.DCMCID as e_PHZYDCJS_DCMCID--ƽ��ְҵ�����ʦ�� ��������ID
      ,e.JXB as e_PHZYDCJS_JXB--ƽ��ְҵ�����ʦ�� ��ѧ��
      ,e.XM as e_PHZYDCJS_XM--ƽ��ְҵ�����ʦ�� ����
      ,e.SFJRBMHP as e_PHZYDCJS_SFJRBMHP--ƽ��ְҵ�����ʦ�� �Ƿ񱻽�ѧ����
      ,e.SFKPQX as e_PHZYDCJS_SFKPQX--ƽ��ְҵ�����ʦ�� �Ƿ����ȫУ
      ,e.SFBQXP as e_PHZYDCJS_SFBQXP--ƽ��ְҵ�����ʦ�� �Ƿ�ȫУ��
      ,f.SCHOOLID as f_PHZYDCJS_SCHOOLID--ƽ��ְҵ�����ʦ�� ѧУ
      ,f.XQID as f_PHZYDCJS_XQID--ƽ��ְҵ�����ʦ�� ѧ��ID
      ,f.JSID as f_PHZYDCJS_JSID--ƽ��ְҵ�����ʦ�� ��ʦID
      ,f.DCMCID as f_PHZYDCJS_DCMCID--ƽ��ְҵ�����ʦ�� ��������ID
      ,f.JXB as f_PHZYDCJS_JXB--ƽ��ְҵ�����ʦ�� ��ѧ��
      ,f.XM as f_PHZYDCJS_XM--ƽ��ְҵ�����ʦ�� ����
      ,f.SFJRBMHP as f_PHZYDCJS_SFJRBMHP--ƽ��ְҵ�����ʦ�� �Ƿ񱻽�ѧ����
      ,f.SFKPQX as f_PHZYDCJS_SFKPQX--ƽ��ְҵ�����ʦ�� �Ƿ����ȫУ
      ,f.SFBQXP as f_PHZYDCJS_SFBQXP--ƽ��ְҵ�����ʦ�� �Ƿ�ȫУ��
      ,g.SCHOOLID as g_PHZYDCTM_SCHOOLID--ƽ��ְҵ������Ŀ�� ѧУ
      ,g.DFFSID as g_PHZYDCTM_DFFSID--ƽ��ְҵ������Ŀ�� ��ַ�ʽID
      ,g.DCMCID as g_PHZYDCTM_DCMCID--ƽ��ְҵ������Ŀ�� ��������ID
      ,g.DCXM as g_PHZYDCTM_DCXM--ƽ��ְҵ������Ŀ�� ������Ŀ
      ,g.DCZB as g_PHZYDCTM_DCZB--ƽ��ְҵ������Ŀ�� ����ָ��
      ,g.ZT as g_PHZYDCTM_ZT--ƽ��ְҵ������Ŀ�� ״̬

FROM dbo.EDU_ZZJG_23_A06_PHZYDCJG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A01_PHZYDCMC AS d ON a.DCMCID = d.ID /*��������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A05_PHZYDCJS AS e ON a.PJJSID = e.ID /*���۽�ʦID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A05_PHZYDCJS AS f ON a.BPJSID = f.ID /*������ʦID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A04_PHZYDCTM AS g ON a.TMID = g.ID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/
GO
