
--�༶��������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_36_A02_BJGZJC_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[GZLBID]--�������ID
      ,a.[BJ]--�༶
      ,a.[RQ]--����
      ,a.[JG]--���
      ,a.[BJMC]--�༶����
      ,c.SCHOOLID as c_BJGZLB_SCHOOLID--�༶�������� ѧУID
      ,c.GZLBMC as c_BJGZLB_GZLBMC--�༶�������� �����������
      ,c.DJRYIDLB as c_BJGZLB_DJRYIDLB--�༶�������� �Ǽ���ԱID�б�
      ,c.DJRYXMLB as c_BJGZLB_DJRYXMLB--�༶�������� �Ǽ���Ա�����б�

FROM dbo.EDU_OAXT_36_A02_BJGZJC AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_36_A01_BJGZLB AS c ON a.GZLBID = c.ID /*�������ID*/
GO
