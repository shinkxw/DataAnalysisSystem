
--����רҵС���
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_25_A05_CWZYXL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ZYDLID]--רҵ����ID
      ,a.[ZYXLDM]--רҵС�����
      ,a.[ZYXLMC]--רҵС������
      ,a.[JSS]--��ʦ��
      ,a.[XSS]--ѧ����
      ,c.SCHOOLID as c_CWZYDL_SCHOOLID--����רҵ����� ѧУ
      ,c.ZYDLDM as c_CWZYDL_ZYDLDM--����רҵ����� רҵ�������
      ,c.ZYDLMC as c_CWZYDL_ZYDLMC--����רҵ����� רҵ��������

FROM dbo.EDU_ZZJG_25_A05_CWZYXL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A04_CWZYDL AS c ON a.ZYDLID = c.ID /*רҵ����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
