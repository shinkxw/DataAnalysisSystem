
--������Ӧ�õ�¼������
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_APPDLCS_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[APPUSERID]--Ӧ���û�ID
      ,a.[CSMC]--��������
      ,a.[CSZ]--����ֵ
      ,c.SCHOOLID as c_APPUSER_SCHOOLID--������Ӧ���û��� ѧУ
      ,c.YHID as c_APPUSER_YHID--������Ӧ���û��� �û�ID
      ,c.APPID as c_APPUSER_APPID--������Ӧ���û��� Ӧ��ID
      ,c.YHMC as c_APPUSER_YHMC--������Ӧ���û��� �û�����
      ,c.YHZT as c_APPUSER_YHZT--������Ӧ���û��� �û�״̬

FROM dbo.EDU_ELE_01_APPDLCS AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APPUSER AS c ON a.APPUSERID = c.ID /*Ӧ���û�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
