
--ƽ��ְҵ�����ύ��¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_23_A07_PHZYDCTJJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[DCMCID]--��������ID
      ,a.[PJJSID]--���۽�ʦID
      ,a.[TJSJ]--�ύʱ��
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���
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
      ,e.JXBID as e_PHZYDCJS_JXBID--ƽ��ְҵ�����ʦ�� ��ѧ��ID
      ,e.TMIDLB as e_PHZYDCJS_TMIDLB--ƽ��ְҵ�����ʦ�� ��ĿID�б�
      ,e.TMMCLB as e_PHZYDCJS_TMMCLB--ƽ��ְҵ�����ʦ�� ��Ŀ�����б�

FROM dbo.EDU_ZZJG_23_A07_PHZYDCTJJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A01_PHZYDCMC AS d ON a.DCMCID = d.ID /*��������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A05_PHZYDCJS AS e ON a.PJJSID = e.ID /*���۽�ʦID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/
GO
