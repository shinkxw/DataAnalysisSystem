
--ѧ�����̿����༶��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_20_A06_XSPJKPBJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KPID]--����ID
      ,a.[BJMC]--�༶����
      ,a.[BPJGIDLB]--�����̹�ID�б�
      ,a.[DYKCMCLB]--��Ӧ�γ������б�
      ,a.[YPRS]--Ӧ������
      ,a.[SBM]--ʶ����
      ,a.[KQSJ]--����ʱ��
      ,a.[ZDGBSJ]--�Զ��ر�ʱ��
      ,a.[ZT]--״̬
      ,c.SCHOOLID as c_XSPJKP_SCHOOLID--ѧ�����̿����� ѧУ
      ,c.KPMC as c_XSPJKP_KPMC--ѧ�����̿����� ��������
      ,c.KSSJ as c_XSPJKP_KSSJ--ѧ�����̿����� ��ʼʱ��
      ,c.JSSJ as c_XSPJKP_JSSJ--ѧ�����̿����� ����ʱ��
      ,c.ZT as c_XSPJKP_ZT--ѧ�����̿����� ״̬

FROM dbo.EDU_ZZJG_20_A06_XSPJKPBJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_20_A04_XSPJKP AS c ON a.KPID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
