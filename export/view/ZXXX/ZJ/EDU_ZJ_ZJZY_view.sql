
--�Խ�רҵ����
CREATE VIEW [dbo].[VIEW_EDU_ZJ_ZJZY_DISP]
AS
SELECT a.[DM]--����
      ,a.[ZYMLLB]--רҵĿ¼���
      ,a.[MC]--����
      ,b.MC as b_ZYML_MC--����

FROM dbo.EDU_ZJ_ZJZY AS a LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS b ON a.ZYMLLB = b.DM /*רҵĿ¼���*/
GO
