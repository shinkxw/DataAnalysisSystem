
--���ѡ���
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A14_DFXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XMID]--��ĿID
      ,a.[DFFSID]--��ַ�ʽID
      ,a.[XXMC]--ѡ������
      ,a.[XXFZ]--ѡ���ֵ
      ,a.[PLSX]--����˳��
      ,c.SCHOOLID as c_DFXM_SCHOOLID--�����Ŀ�� ѧУID
      ,c.XMMC as c_DFXM_XMMC--�����Ŀ�� ��Ŀ����
      ,c.APPID as c_DFXM_APPID--�����Ŀ�� ����Ӧ��ID
      ,d.SCHOOLID as d_DFFS_SCHOOLID--��ַ�ʽ�� ѧУID
      ,d.XMID as d_DFFS_XMID--��ַ�ʽ�� ��ĿID
      ,d.DFLX as d_DFFS_DFLX--��ַ�ʽ�� �������
      ,d.ZDZ as d_DFFS_ZDZ--��ַ�ʽ�� ���ֵ
      ,d.ZXZ as d_DFFS_ZXZ--��ַ�ʽ�� ��Сֵ
      ,d.MRZ as d_DFFS_MRZ--��ַ�ʽ�� Ĭ��ֵ

FROM dbo.EDU_OAXT_50_A14_DFXX AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*��ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A13_DFFS AS d ON a.DFFSID = d.ID /*��ַ�ʽID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ AND a.XMID = d.XMID /*��ĿID*/
GO
