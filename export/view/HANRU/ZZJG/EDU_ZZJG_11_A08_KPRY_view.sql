
--������Ա��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_11_A08_KPRY_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KPBHNRID]--�����������ݱ�ID
      ,a.[KPRIDLB]--������ID�б�
      ,a.[BPRIDLB]--������ID�б�
      ,a.[KPZTID]--��������ID
      ,c.SCHOOLID as c_KPBHNR_SCHOOLID--�����������ݱ� ѧУ
      ,c.KPID as c_KPBHNR_KPID--�����������ݱ� ����ID
      ,c.KPNRID as c_KPBHNR_KPNRID--�����������ݱ� ��������ID
      ,c.QZ as c_KPBHNR_QZ--�����������ݱ� Ȩ��
      ,c.XSFS as c_KPBHNR_XSFS--�����������ݱ� ��ʾ��ʽ
      ,d.MC as d_KPZT_MC--����������� ����

FROM dbo.EDU_ZZJG_11_A08_KPRY AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A07_KPBHNR AS c ON a.KPBHNRID = c.ID /*�����������ݱ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_KPZT AS d ON a.KPZTID = d.DM /*��������ID*/
GO
