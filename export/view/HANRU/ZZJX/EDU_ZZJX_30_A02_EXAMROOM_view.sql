
--������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_30_A02_EXAMROOM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[Name]--��������
      ,a.[RoomID]--����ID
      ,a.[ExamID]--����ID
      ,a.[StuCount]--������������
      ,c.SCHOOLID as c_CLASSROOM_SCHOOLID--���ұ� ѧУ
      ,c.Name as c_CLASSROOM_Name--���ұ� ��������
      ,c.Place as c_CLASSROOM_Place--���ұ� �ص�
      ,c.Counts as c_CLASSROOM_Counts--���ұ� ��λ��
      ,c.FullPlaceName as c_CLASSROOM_FullPlaceName--���ұ� �����ص�����
      ,c.RecordID as c_CLASSROOM_RecordID--���ұ� ��¼ID
      ,d.SCHOOLID as d_EXAM_SCHOOLID--���Ա� ѧУ
      ,d.Name as d_EXAM_Name--���Ա� ��������
      ,d.CJKSKMLM as d_EXAM_CJKSKMLM--���Ա� �μӿ��Կ�Ŀ�б�
      ,d.StartDate as d_EXAM_StartDate--���Ա� ��ʼ����
      ,d.EndDate as d_EXAM_EndDate--���Ա� ��ֹ����
      ,d.XqID as d_EXAM_XqID--���Ա� ѧ��ID
      ,d.DffsID as d_EXAM_DffsID--���Ա� �Ƿַ�ʽ

FROM dbo.EDU_ZZJX_30_A02_EXAMROOM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_30_A01_CLASSROOM AS c ON a.RoomID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A01_EXAM AS d ON a.ExamID = d.ID /*����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
