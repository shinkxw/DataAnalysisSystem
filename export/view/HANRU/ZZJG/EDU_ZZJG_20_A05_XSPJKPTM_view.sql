
--ѧ�����̿�����Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_20_A05_XSPJKPTM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KPID]--����ID
      ,a.[TMID]--������ĿID
      ,c.SCHOOLID as c_XSPJKP_SCHOOLID--ѧ�����̿����� ѧУ
      ,c.KPMC as c_XSPJKP_KPMC--ѧ�����̿����� ��������
      ,c.KSSJ as c_XSPJKP_KSSJ--ѧ�����̿����� ��ʼʱ��
      ,c.JSSJ as c_XSPJKP_JSSJ--ѧ�����̿����� ����ʱ��
      ,c.ZT as c_XSPJKP_ZT--ѧ�����̿����� ״̬
      ,d.SCHOOLID as d_XSPJTM_SCHOOLID--ѧ��������Ŀ�� ѧУ
      ,d.DFFSID as d_XSPJTM_DFFSID--ѧ��������Ŀ�� ��ַ�ʽID
      ,d.PJXM as d_XSPJTM_PJXM--ѧ��������Ŀ�� ������Ŀ
      ,d.PJZB as d_XSPJTM_PJZB--ѧ��������Ŀ�� ����ָ��
      ,d.ZT as d_XSPJTM_ZT--ѧ��������Ŀ�� ״̬

FROM dbo.EDU_ZZJG_20_A05_XSPJKPTM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_20_A04_XSPJKP AS c ON a.KPID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_20_A03_XSPJTM AS d ON a.TMID = d.ID /*������ĿID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
