
--�ʲ�Ŀ¼��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A01_ZCML_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[Name]--У��Ŀ¼
      ,a.[Superid]--��Ŀ¼ID
      ,a.[Remark]--��ע
      ,c.SCHOOLID as c_ZCML_SCHOOLID--�ʲ�Ŀ¼�� ѧУ
      ,c.Name as c_ZCML_Name--�ʲ�Ŀ¼�� У��Ŀ¼
      ,c.Superid as c_ZCML_Superid--�ʲ�Ŀ¼�� ��Ŀ¼ID
      ,c.Remark as c_ZCML_Remark--�ʲ�Ŀ¼�� ��ע

FROM dbo.EDU_OAXT_15_A01_ZCML AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A01_ZCML AS c ON a.Superid = c.ID /*��Ŀ¼ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
