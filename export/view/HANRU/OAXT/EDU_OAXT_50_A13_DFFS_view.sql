
--��ַ�ʽ��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A13_DFFS_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XMID]--��ĿID
      ,a.[DFFSMC]--��ַ�ʽ����
      ,a.[DFLX]--�������
      ,a.[ZDZ]--���ֵ
      ,a.[ZXZ]--��Сֵ
      ,a.[MRZ]--Ĭ��ֵ
      ,c.SCHOOLID as c_DFXM_SCHOOLID--�����Ŀ�� ѧУID
      ,c.XMMC as c_DFXM_XMMC--�����Ŀ�� ��Ŀ����
      ,c.APPID as c_DFXM_APPID--�����Ŀ�� ����Ӧ��ID

FROM dbo.EDU_OAXT_50_A13_DFFS AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*��ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO
