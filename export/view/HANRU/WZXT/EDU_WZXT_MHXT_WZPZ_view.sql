
--��վ����
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZPZ_DISP]
AS
SELECT a.[WEBID]--��վID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBNAME]--��վ��
      ,a.[STATUID]--�Ƿ���
      ,a.[WEBURL]--��ַ
      ,a.[CSSID]--��վ��ʽ
      ,b.SCHOOLID as b_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,b.WEBNAME as b_WZPZ_WEBNAME--��վ���� ��վ��
      ,b.STATUID as b_WZPZ_STATUID--��վ���� �Ƿ���
      ,b.WEBURL as b_WZPZ_WEBURL--��վ���� ��ַ
      ,b.CSSID as b_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,d.SCHOOLID as d_WZYS_SCHOOLID--��ʽ�� ѧУ��
      ,d.WEBID as d_WZYS_WEBID--��ʽ�� ��վID
      ,d.NAME as d_WZYS_NAME--��ʽ�� ��ʽ��
      ,d.SHOWIMG as d_WZYS_SHOWIMG--��ʽ�� Ч��ͼ

FROM dbo.EDU_WZXT_MHXT_WZPZ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS b ON a.WEBID = b.WEBID /*��վID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZYS AS d ON a.CSSID = d.ID /*��վ��ʽ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/
GO
