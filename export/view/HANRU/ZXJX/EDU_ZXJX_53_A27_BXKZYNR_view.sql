
--���޿���ҵ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A27_BXKZYNR_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[BXKJXBID]--���޿ν�ѧ��ID
      ,a.[ZYNR]--��ҵ����
      ,a.[TJSJ]--���ʱ��
      ,c.SCHOOLID as c_BXKJXBSJ_SCHOOLID--���޿ν�ѧ�����ݱ� ѧУ
      ,c.XQID as c_BXKJXBSJ_XQID--���޿ν�ѧ�����ݱ� ѧ��ID
      ,c.ZRKJSID as c_BXKJXBSJ_ZRKJSID--���޿ν�ѧ�����ݱ� ���ον�ʦID
      ,c.FRKJSID as c_BXKJXBSJ_FRKJSID--���޿ν�ѧ�����ݱ� ���ον�ʦID
      ,c.KCID as c_BXKJXBSJ_KCID--���޿ν�ѧ�����ݱ� �γ�ID
      ,c.KKSJID as c_BXKJXBSJ_KKSJID--���޿ν�ѧ�����ݱ� ����ʱ��ID
      ,c.SKDD as c_BXKJXBSJ_SKDD--���޿ν�ѧ�����ݱ� �Ͽεص�
      ,c.ZKS as c_BXKJXBSJ_ZKS--���޿ν�ѧ�����ݱ� �ܿ�ʱ
      ,c.BJKRNRS as c_BXKJXBSJ_BJKRNRS--���޿ν�ѧ�����ݱ� �༶����������
      ,c.ZDKBRS as c_BXKJXBSJ_ZDKBRS--���޿ν�ѧ�����ݱ� ��Ϳ�������
      ,c.ZT as c_BXKJXBSJ_ZT--���޿ν�ѧ�����ݱ� ״̬
      ,c.BZ as c_BXKJXBSJ_BZ--���޿ν�ѧ�����ݱ� ��ע

FROM dbo.EDU_ZXJX_53_A27_BXKZYNR AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A21_BXKJXBSJ AS c ON a.BXKJXBID = c.ID /*���޿ν�ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
