
--ѧ�������ύ��¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_20_A08_XSPJTJJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[KPBJID]--�����༶ID
      ,a.[SBM]--ʶ����
      ,a.[IP]--IP��ַ
      ,a.[TJSJ]--�ύʱ��
      ,b.SCHOOLID as b_XSPJKPBJ_SCHOOLID--ѧ�����̿����༶�� ѧУ
      ,b.KPID as b_XSPJKPBJ_KPID--ѧ�����̿����༶�� ����ID
      ,b.BJMC as b_XSPJKPBJ_BJMC--ѧ�����̿����༶�� �༶����
      ,b.BPJGIDLB as b_XSPJKPBJ_BPJGIDLB--ѧ�����̿����༶�� �����̹�ID�б�
      ,b.BPJGXMLB as b_XSPJKPBJ_BPJGXMLB--ѧ�����̿����༶�� �����̹������б�
      ,b.DYKCMCLB as b_XSPJKPBJ_DYKCMCLB--ѧ�����̿����༶�� ��Ӧ�γ������б�
      ,b.YPRS as b_XSPJKPBJ_YPRS--ѧ�����̿����༶�� Ӧ������
      ,b.SBM as b_XSPJKPBJ_SBM--ѧ�����̿����༶�� ʶ����
      ,b.KQSJ as b_XSPJKPBJ_KQSJ--ѧ�����̿����༶�� ����ʱ��
      ,b.ZDGBSJ as b_XSPJKPBJ_ZDGBSJ--ѧ�����̿����༶�� �Զ��ر�ʱ��
      ,b.ZT as b_XSPJKPBJ_ZT--ѧ�����̿����༶�� ״̬

FROM dbo.EDU_ZZJG_20_A08_XSPJTJJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_20_A06_XSPJKPBJ AS b ON a.KPBJID = b.ID /*�����༶ID*/
GO
