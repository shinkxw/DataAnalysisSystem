
--ѧ����ѧ�ڽ�ѧ�ƻ���
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A11_XFZXQJXJH_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[NJID]--�꼶ID
      ,a.[BJLBID]--�༶���ID
      ,a.[BJID]--�༶ID
      ,a.[KCLX]--�γ�����
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���
      ,d.SCHOOLID as d_NJ_SCHOOLID--�꼶������� ѧУ��
      ,d.NJMC as d_NJ_NJMC--�꼶������� �꼶����
      ,d.ZT as d_NJ_ZT--�꼶������� ״̬
      ,d.PLSX as d_NJ_PLSX--�꼶������� ����˳��
      ,e.SCHOOLID as e_BJLB_SCHOOLID--�༶���� ѧУ
      ,e.LBMC as e_BJLB_LBMC--�༶���� �������
      ,f.SCHOOLID as f_BJ_SCHOOLID--�༶������� ѧУ��
      ,f.NJ as f_BJ_NJ--�༶������� �꼶��
      ,f.BJ as f_BJ_BJ--�༶������� �༶����
      ,f.JBNY as f_BJ_JBNY--�༶������� ��������
      ,f.BZRGH as f_BJ_BZRGH--�༶������� �����ι���
      ,f.BZXH as f_BJ_BZXH--�༶������� �೤ѧ��
      ,f.BJRYCH as f_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,f.XZ as f_BJ_XZ--�༶������� ѧ��
      ,f.BJLXM as f_BJ_BJLXM--�༶������� �༶������
      ,[fb].MC as f_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,f.WLLX as f_BJ_WLLX--�༶������� ��������
      ,f.BYRQ as f_BJ_BYRQ--�༶������� ��ҵ����
      ,f.SFSSMZSYJXB as f_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,[fc].MC as f_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,f.SYJXMSM as f_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,[fd].MC as f_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,[fd].SM as f_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,f.BZRID as f_BJ_BZRID--�༶������� ������ID
      ,f.ZT as f_BJ_ZT--�༶������� ״̬
      ,f.PLSX as f_BJ_PLSX--�༶������� ����˳��
      ,f.BJLBID as f_BJ_BJLBID--�༶������� �༶���ID
      ,f.FBZRID as f_BJ_FBZRID--�༶������� ��������ID

FROM dbo.EDU_ZXJX_53_A11_XFZXQJXJH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS d ON a.NJID = d.NJ /*�꼶ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_A01_BJLB AS e ON a.BJLBID = e.ID /*�༶���ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS f ON a.BJID = f.BH /*�༶ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [fb] ON f.BJLXM = [fb].DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fc] ON f.SFSSMZSYJXB = [fc].DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [fd] ON f.SYJXMSM = [fd].DM /*˫���ѧģʽ��*/
GO
