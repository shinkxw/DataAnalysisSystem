
--������Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_50_A14_PJTM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[PJID]--����ID
      ,a.[PFFSID]--���ַ�ʽID
      ,a.[TMMC]--��Ŀ����
      ,a.[PJZB]--����ָ��
      ,c.SCHOOLID as c_XKXSPJ_SCHOOLID--ѡ��ѧ�����̱� ѧУ
      ,c.PJMC as c_XKXSPJ_PJMC--ѡ��ѧ�����̱� ��������
      ,c.KSSJ as c_XKXSPJ_KSSJ--ѡ��ѧ�����̱� ��ʼʱ��
      ,c.JSSJ as c_XKXSPJ_JSSJ--ѡ��ѧ�����̱� ����ʱ��
      ,d.SCHOOLID as d_PJPFFS_SCHOOLID--�������ַ�ʽ�� ѧУ
      ,d.PFFSMC as d_PJPFFS_PFFSMC--�������ַ�ʽ�� ���ַ�ʽ����

FROM dbo.EDU_ZZJX_50_A14_PJTM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_50_A11_XKXSPJ AS c ON a.PJID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_50_A12_PJPFFS AS d ON a.PFFSID = d.ID /*���ַ�ʽID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
