
--��վ���
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_MHXT_WZGG_DISP]
AS
SELECT a.[ID]--��վ���ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[SHOWTYPE]--��ʾ��ʽ
      ,a.[ADCONTENT]--�������
      ,a.[GGLJ]--�������
      ,a.[SHOWSTATU]--�Ƿ���ʾ
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ

FROM dbo.EDU_ZYZX_MHXT_WZGG AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO