
--ѧ����ѡ�α�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A20_XFZXK_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[XKMC]--ѡ������
      ,a.[XKKSSJ]--ѡ�ο�ʼʱ��
      ,a.[XKJSSJ]--ѡ�ν���ʱ��
      ,a.[SFYXSYXSECXK]--�Ƿ���������ѧ������ѡ��
      ,a.[ECXKKSSJ]--����ѡ�ο�ʼʱ��
      ,a.[ECXKJSSJ]--����ѡ�ν���ʱ��
      ,a.[XKFFYLC]--ѡ�η���������
      ,a.[KXKCLXIDLB]--��ѡ�γ�����ID�б�
      ,a.[KXKCLXMCLB]--��ѡ�γ����������б�
      ,a.[XKBJIDLB]--ѡ�ΰ༶ID�б�
      ,a.[XSZDXKMS]--ѧ�����ѡ������
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���

FROM dbo.EDU_ZXJX_53_A20_XFZXK AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/
GO
