
--ƽ��ְҵ�����ѧ����Ŀ���ޱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_23_A09_PHZYDCJXBTMSX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[DCMCID]--��������ID
      ,a.[JXBID]--��ѧ��ID
      ,a.[TMID]--��ĿID
      ,a.[MESX]--��������
      ,c.SCHOOLID as c_PHZYDCMC_SCHOOLID--ƽ��ְҵ�������Ʊ� ѧУ
      ,c.DCMC as c_PHZYDCMC_DCMC--ƽ��ְҵ�������Ʊ� ��������
      ,c.BZ as c_PHZYDCMC_BZ--ƽ��ְҵ�������Ʊ� ��ע
      ,c.ZT as c_PHZYDCMC_ZT--ƽ��ְҵ�������Ʊ� ״̬
      ,d.SCHOOLID as d_PHZYDCJXB_SCHOOLID--ƽ��ְҵ�����ѧ���� ѧУ
      ,d.DCMCID as d_PHZYDCJXB_DCMCID--ƽ��ְҵ�����ѧ���� ��������ID
      ,d.JXBMC as d_PHZYDCJXB_JXBMC--ƽ��ְҵ�����ѧ���� ��ѧ������
      ,d.MESX as d_PHZYDCJXB_MESX--ƽ��ְҵ�����ѧ���� ��������
      ,e.SCHOOLID as e_PHZYDCTM_SCHOOLID--ƽ��ְҵ������Ŀ�� ѧУ
      ,e.DFFSID as e_PHZYDCTM_DFFSID--ƽ��ְҵ������Ŀ�� ��ַ�ʽID
      ,e.DCMCID as e_PHZYDCTM_DCMCID--ƽ��ְҵ������Ŀ�� ��������ID
      ,e.DCXM as e_PHZYDCTM_DCXM--ƽ��ְҵ������Ŀ�� ������Ŀ
      ,e.DCZB as e_PHZYDCTM_DCZB--ƽ��ְҵ������Ŀ�� ����ָ��
      ,e.ZT as e_PHZYDCTM_ZT--ƽ��ְҵ������Ŀ�� ״̬

FROM dbo.EDU_ZZJG_23_A09_PHZYDCJXBTMSX AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A01_PHZYDCMC AS c ON a.DCMCID = c.ID /*��������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A08_PHZYDCJXB AS d ON a.JXBID = d.ID /*��ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A04_PHZYDCTM AS e ON a.TMID = e.ID /*��ĿID*/
GO
