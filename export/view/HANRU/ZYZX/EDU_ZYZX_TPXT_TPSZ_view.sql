
--ͶƱ����
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_TPXT_TPSZ_DISP]
AS
SELECT a.[ID]--ͶƱ����ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[TITLE]--����
      ,a.[CONTENT]--����
      ,a.[SHOWSTYLEID]--��ʾ��ʽ
      ,a.[CSSID]--��ʾ��ʽ
      ,a.[LOGINNAMELIST]--ͶƱ��
      ,a.[STARTSTATU]--�Ƿ���
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,d.SCHOOLID as d_TPYS_SCHOOLID--ͶƱ��ʽ�� ѧУ��
      ,d.WEBID as d_TPYS_WEBID--ͶƱ��ʽ�� ��վID
      ,d.NAME as d_TPYS_NAME--ͶƱ��ʽ�� ��ʽ��
      ,d.SHOWIMG as d_TPYS_SHOWIMG--ͶƱ��ʽ�� Ч��ͼ

FROM dbo.EDU_ZYZX_TPXT_TPSZ AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZYZX_TPXT_TPYS AS d ON a.CSSID = d.ID /*��ʾ��ʽ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/
GO