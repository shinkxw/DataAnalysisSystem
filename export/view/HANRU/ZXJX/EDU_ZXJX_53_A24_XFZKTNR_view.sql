
--ѧ���ƿ������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A24_XFZKTNR_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XFZJXBID]--ѧ���ƽ�ѧ��ID
      ,a.[KTNR]--��������
      ,a.[TJSJ]--���ʱ��
      ,c.SCHOOLID as c_XFZJXBSJ_SCHOOLID--ѧ���ƽ�ѧ�����ݱ� ѧУ
      ,c.XQID as c_XFZJXBSJ_XQID--ѧ���ƽ�ѧ�����ݱ� ѧ��ID
      ,c.ZRKJSID as c_XFZJXBSJ_ZRKJSID--ѧ���ƽ�ѧ�����ݱ� ���ον�ʦID
      ,c.FRKJSID as c_XFZJXBSJ_FRKJSID--ѧ���ƽ�ѧ�����ݱ� ���ον�ʦID
      ,c.KCID as c_XFZJXBSJ_KCID--ѧ���ƽ�ѧ�����ݱ� �γ�ID
      ,c.KKSJID as c_XFZJXBSJ_KKSJID--ѧ���ƽ�ѧ�����ݱ� ����ʱ��ID
      ,c.SKDD as c_XFZJXBSJ_SKDD--ѧ���ƽ�ѧ�����ݱ� �Ͽεص�
      ,c.ZKS as c_XFZJXBSJ_ZKS--ѧ���ƽ�ѧ�����ݱ� �ܿ�ʱ
      ,c.BJKRNRS as c_XFZJXBSJ_BJKRNRS--ѧ���ƽ�ѧ�����ݱ� �༶����������
      ,c.ZDKBRS as c_XFZJXBSJ_ZDKBRS--ѧ���ƽ�ѧ�����ݱ� ��Ϳ�������
      ,c.ZT as c_XFZJXBSJ_ZT--ѧ���ƽ�ѧ�����ݱ� ״̬
      ,c.BZ as c_XFZJXBSJ_BZ--ѧ���ƽ�ѧ�����ݱ� ��ע
      ,c.KCMC as c_XFZJXBSJ_KCMC--ѧ���ƽ�ѧ�����ݱ� �γ�����
      ,c.SKBJIDLB as c_XFZJXBSJ_SKBJIDLB--ѧ���ƽ�ѧ�����ݱ� �ڿΰ༶ID�б�
      ,c.SKBJMCLB as c_XFZJXBSJ_SKBJMCLB--ѧ���ƽ�ѧ�����ݱ� �ڿΰ༶�����б�
      ,c.JXBLX as c_XFZJXBSJ_JXBLX--ѧ���ƽ�ѧ�����ݱ� ��ѧ������

FROM dbo.EDU_ZXJX_53_A24_XFZKTNR AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A21_XFZJXBSJ AS c ON a.XFZJXBID = c.ID /*ѧ���ƽ�ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
