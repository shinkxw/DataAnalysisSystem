
--Ӧ�ñ�
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_APP_DISP]
AS
SELECT a.[ID]--Ӧ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[NAME]--Ӧ������
      ,a.[URL]--��ַ
      ,a.[AUTHIP]--����IP
      ,a.[SM]--˵��
      ,a.[DLFS]--��¼��ʽ
      ,a.[STATUS]--Ӧ��״̬

FROM dbo.EDU_ELE_01_APP AS a
GO
