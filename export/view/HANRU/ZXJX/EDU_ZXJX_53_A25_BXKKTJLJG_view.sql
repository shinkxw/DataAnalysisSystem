
--���޿ο��ü�¼�����
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A25_BXKKTJLJG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XKJLID]--ѡ�μ�¼ID
      ,a.[XMID]--��ĿID
      ,a.[JG]--���
      ,c.SCHOOLID as c_XSBXKXKJL_SCHOOLID--ѧ�����޿�ѡ�μ�¼�� ѧУ
      ,c.XSID as c_XSBXKXKJL_XSID--ѧ�����޿�ѡ�μ�¼�� ѧ��ID
      ,c.BXKJXBID as c_XSBXKXKJL_BXKJXBID--ѧ�����޿�ѡ�μ�¼�� ���޿ν�ѧ��ID
      ,d.SCHOOLID as d_BXKKTJLXM_SCHOOLID--���޿ο��ü�¼��Ŀ�� ѧУ
      ,d.XMMC as d_BXKKTJLXM_XMMC--���޿ο��ü�¼��Ŀ�� ��Ŀ����
      ,d.SRLX as d_BXKKTJLXM_SRLX--���޿ο��ü�¼��Ŀ�� ��������
      ,d.MRZ as d_BXKKTJLXM_MRZ--���޿ο��ü�¼��Ŀ�� Ĭ��ֵ
      ,d.PLSX as d_BXKKTJLXM_PLSX--���޿ο��ü�¼��Ŀ�� ����˳��

FROM dbo.EDU_ZXJX_53_A25_BXKKTJLJG AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A22_XSBXKXKJL AS c ON a.XKJLID = c.ID /*ѡ�μ�¼ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A24_BXKKTJLXM AS d ON a.XMID = d.ID /*��ĿID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
