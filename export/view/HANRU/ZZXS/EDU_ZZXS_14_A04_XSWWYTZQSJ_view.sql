
--ѧ����λһ��ֵ�����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_14_A04_XSWWYTZQSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ZQXMID]--ֵ����ĿID
      ,a.[JXBMC]--��ѧ������
      ,a.[ZQRYLX]--ֵ����Ա����
      ,a.[ZQRYID]--ֵ����ԱID
      ,a.[ZQNR]--ֵ������
      ,a.[ZQSJ]--ֵ��ʱ��
      ,a.[TJSJ]--���ʱ��
      ,c.SCHOOLID as c_XSWWYTZQXM_SCHOOLID--ѧ����λһ��ֵ����Ŀ�� ѧУ
      ,c.ZQXMMC as c_XSWWYTZQXM_ZQXMMC--ѧ����λһ��ֵ����Ŀ�� ֵ����Ŀ����

FROM dbo.EDU_ZZXS_14_A04_XSWWYTZQSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_14_A05_XSWWYTZQXM AS c ON a.ZQXMID = c.ID /*ֵ����ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
