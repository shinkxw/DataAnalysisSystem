
--��ʦ�ƽ�ɫ��
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_57_A02_DSZJS_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[JSMC]--��ɫ����
      ,a.[GNIDLB]--����ID�б�
      ,a.[GNMCLB]--���������б�
      ,a.[JSLX]--��ɫ����
      ,a.[NJID]--�꼶ID
      ,a.[KXXSSX]--��ѡѧ������
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_NJ_SCHOOLID--�꼶������� ѧУ��
      ,d.NJMC as d_NJ_NJMC--�꼶������� �꼶����
      ,d.ZT as d_NJ_ZT--�꼶������� ״̬
      ,d.PLSX as d_NJ_PLSX--�꼶������� ����˳��

FROM dbo.EDU_ZXXS_57_A02_DSZJS AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS d ON a.NJID = d.NJ /*�꼶ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/
GO
