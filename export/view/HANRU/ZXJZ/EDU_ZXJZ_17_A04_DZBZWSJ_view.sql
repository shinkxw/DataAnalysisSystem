
--��֧��ְλ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_17_A04_DZBZWSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[DZBID]--��֧��ID
      ,a.[ZWMC]--ְλ����
      ,a.[GZNR]--��������
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_DZBSJ_SCHOOLID--��֧�����ݱ� ѧУ
      ,c.DZBMC as c_DZBSJ_DZBMC--��֧�����ݱ� ��֧������
      ,c.SS as c_DZBSJ_SS--��֧�����ݱ� ����
      ,c.BZ as c_DZBSJ_BZ--��֧�����ݱ� ��ע

FROM dbo.EDU_ZXJZ_17_A04_DZBZWSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_17_A03_DZBSJ AS c ON a.DZBID = c.ID /*��֧��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
