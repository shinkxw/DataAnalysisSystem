
--���Գ��α�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_31_A02_KSCC_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ExamID]--����ID
      ,a.[Name]--��������
      ,a.[TypeID]--����ʱ������
      ,a.[ExamDate]--��������
      ,c.SCHOOLID as c_EXAM_SCHOOLID--���Ա� ѧУ
      ,c.Name as c_EXAM_Name--���Ա� ��������
      ,c.CJKSKMLM as c_EXAM_CJKSKMLM--���Ա� �μӿ��Կ�Ŀ�б�
      ,c.StartDate as c_EXAM_StartDate--���Ա� ��ʼ����
      ,c.EndDate as c_EXAM_EndDate--���Ա� ��ֹ����
      ,c.XqID as c_EXAM_XqID--���Ա� ѧ��ID
      ,c.DffsID as c_EXAM_DffsID--���Ա� �Ƿַ�ʽ
      ,d.SCHOOLID as d_KSSDLX_SCHOOLID--����ʱ�����ͱ� ѧУ
      ,d.TypeName as d_KSSDLX_TypeName--����ʱ�����ͱ� ������
      ,d.StartTime as d_KSSDLX_StartTime--����ʱ�����ͱ� ��ʼʱ��
      ,d.EndTime as d_KSSDLX_EndTime--����ʱ�����ͱ� ����ʱ��

FROM dbo.EDU_ZZJX_31_A02_KSCC AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A01_EXAM AS c ON a.ExamID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_31_A01_KSSDLX AS d ON a.TypeID = d.ID /*����ʱ������*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
