
--У��Ŀ¼��
CREATE VIEW [dbo].[VIEW_EDU_ZWXT_05_A02_XCML_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[MLMC]--Ŀ¼����
      ,a.[FMLID]--��Ŀ¼ID
      ,c.SCHOOLID as c_XCML_SCHOOLID--У��Ŀ¼�� ѧУID
      ,c.MLMC as c_XCML_MLMC--У��Ŀ¼�� Ŀ¼����
      ,c.FMLID as c_XCML_FMLID--У��Ŀ¼�� ��Ŀ¼ID

FROM dbo.EDU_ZWXT_05_A02_XCML AS a LEFT OUTER JOIN
      dbo.EDU_ZWXT_05_A02_XCML AS c ON a.FMLID = c.ID /*��Ŀ¼ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO
