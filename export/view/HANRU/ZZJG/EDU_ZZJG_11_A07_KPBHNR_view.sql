
--�����������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_11_A07_KPBHNR_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KPID]--����ID
      ,a.[KPNRID]--��������ID
      ,a.[QZ]--Ȩ��
      ,a.[XSFS]--��ʾ��ʽ
      ,c.SCHOOLID as c_KPSJ_SCHOOLID--�������ݱ� ѧУ
      ,c.XNID as c_KPSJ_XNID--�������ݱ� ѧ��ID
      ,c.XQID as c_KPSJ_XQID--�������ݱ� ѧ��ID
      ,c.KPMC as c_KPSJ_KPMC--�������ݱ� ��������
      ,c.BPRIDLB as c_KPSJ_BPRIDLB--�������ݱ� ������ID�б�
      ,c.KSSJ as c_KPSJ_KSSJ--�������ݱ� ��ʼʱ��
      ,c.JSSJ as c_KPSJ_JSSJ--�������ݱ� ����ʱ��
      ,c.ZT as c_KPSJ_ZT--�������ݱ� ״̬
      ,d.SCHOOLID as d_KPNRSJ_SCHOOLID--�����������ݱ� ѧУ
      ,d.KPNRMC as d_KPNRSJ_KPNRMC--�����������ݱ� ������������
      ,d.KPNRLX as d_KPNRSJ_KPNRLX--�����������ݱ� ������������
      ,d.KPZTID as d_KPNRSJ_KPZTID--�����������ݱ� ��������ID
      ,db.MC as d_KPNRSJ_KPZTID_MC--����������� ����

FROM dbo.EDU_ZZJG_11_A07_KPBHNR AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A04_KPSJ AS c ON a.KPID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A05_KPNRSJ AS d ON a.KPNRID = d.ID /*��������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_KPZT AS db ON d.KPZTID = db.DM /*��������ID*/
GO
