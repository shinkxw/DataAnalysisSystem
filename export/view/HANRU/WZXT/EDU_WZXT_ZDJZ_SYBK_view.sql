
--��ҳ����
CREATE VIEW [dbo].[VIEW_EDU_WZXT_ZDJZ_SYBK_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[WEBID]--��վID
      ,a.[BKMC]--�������
      ,a.[XSFS]--��ʾ��ʽ
      ,a.[XWLYK]--������Դ��
      ,a.[XWMLID]--����Ŀ¼ID
      ,a.[XWXSSL]--������ʾ����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,c.URL as c_WZPZ_URL--��վ���� ������ַ

FROM dbo.EDU_WZXT_ZDJZ_SYBK AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO
