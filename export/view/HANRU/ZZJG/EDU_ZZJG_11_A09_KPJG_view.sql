
--���������
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_11_A09_KPJG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KPBHNRID]--�����������ݱ�ID
      ,a.[KPNRXMID]--����������ĿID
      ,a.[KPFSID]--������ʽID
      ,a.[KPRID]--������ID
      ,a.[BPRID]--������ID
      ,a.[KPZTID]--��������ID
      ,a.[KPFZ]--������ֵ
      ,c.SCHOOLID as c_KPBHNR_SCHOOLID--�����������ݱ� ѧУ
      ,c.KPID as c_KPBHNR_KPID--�����������ݱ� ����ID
      ,c.KPNRID as c_KPBHNR_KPNRID--�����������ݱ� ��������ID
      ,c.QZ as c_KPBHNR_QZ--�����������ݱ� Ȩ��
      ,c.XSFS as c_KPBHNR_XSFS--�����������ݱ� ��ʾ��ʽ
      ,d.SCHOOLID as d_KPNRXM_SCHOOLID--����������Ŀ�� ѧУ
      ,d.XMMC as d_KPNRXM_XMMC--����������Ŀ�� ��Ŀ����
      ,d.XMXX as d_KPNRXM_XMXX--����������Ŀ�� ��Ŀ��Ϣ
      ,d.KPNRID as d_KPNRXM_KPNRID--����������Ŀ�� ��������ID
      ,d.KPFSID as d_KPNRXM_KPFSID--����������Ŀ�� ������ʽID
      ,d.QZ as d_KPNRXM_QZ--����������Ŀ�� Ȩ��
      ,e.SCHOOLID as e_KPFS_SCHOOLID--������ʽ�� ѧУ
      ,e.KPFSMC as e_KPFS_KPFSMC--������ʽ�� ������ʽ����
      ,f.MC as f_KPZT_MC--����������� ����

FROM dbo.EDU_ZZJG_11_A09_KPJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A07_KPBHNR AS c ON a.KPBHNRID = c.ID /*�����������ݱ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A06_KPNRXM AS d ON a.KPNRXMID = d.ID /*����������ĿID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A03_KPFS AS e ON a.KPFSID = e.ID /*������ʽID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_KPZT AS f ON a.KPZTID = f.DM /*��������ID*/
GO
