
--����׶����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_11_A05_KTJDSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KTID]--����ID
      ,a.[JDMC]--�׶�����
      ,a.[JDGZNR]--�׶ι�������
      ,a.[SCSJ]--�ϴ�ʱ��
      ,c.SCHOOLID as c_KTSJ_SCHOOLID--�������ݱ� ѧУ
      ,c.XNID as c_KTSJ_XNID--�������ݱ� ѧ��ID
      ,c.XQID as c_KTSJ_XQID--�������ݱ� ѧ��ID
      ,c.KTMC as c_KTSJ_KTMC--�������ݱ� ��������
      ,c.KTZT as c_KTSJ_KTZT--�������ݱ� ��������
      ,c.KTNR as c_KTSJ_KTNR--�������ݱ� ��������
      ,c.SQJSID as c_KTSJ_SQJSID--�������ݱ� �����ʦID
      ,c.SQSJ as c_KTSJ_SQSJ--�������ݱ� ����ʱ��
      ,c.SHZT as c_KTSJ_SHZT--�������ݱ� ���״̬
      ,c.SHJSID as c_KTSJ_SHJSID--�������ݱ� ��˽�ʦID
      ,c.SHSJ as c_KTSJ_SHSJ--�������ݱ� ���ʱ��
      ,c.JXZT as c_KTSJ_JXZT--�������ݱ� ����״̬
      ,c.JXSJ as c_KTSJ_JXSJ--�������ݱ� ����ʱ��

FROM dbo.EDU_ZXJX_11_A05_KTJDSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_11_A04_KTSJ AS c ON a.KTID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
