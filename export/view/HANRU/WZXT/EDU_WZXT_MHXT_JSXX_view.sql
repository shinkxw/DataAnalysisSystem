
--��ɫ��Ϣ��
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_JSXX_DISP]
AS
SELECT a.[ID]--��ɫID
      ,a.[SCHOOLID]--ѧУID
      ,a.[WEBID]--��վID
      ,a.[JSMC]--��ɫ����
      ,a.[JSLX]--��ɫ����
      ,a.[LMIDLB]--��ĿID�б�
      ,a.[LMMCLB]--��Ŀ�����б�
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,c.URL as c_WZPZ_URL--��վ���� ������ַ
      ,c.YS as c_WZPZ_YS--��վ���� ҳ��
      ,c.YW as c_WZPZ_YW--��վ���� ҳβ

FROM dbo.EDU_WZXT_MHXT_JSXX AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO
