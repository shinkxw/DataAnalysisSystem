
--�ֲ����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_54_A03_SCNR_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[BJID]--�༶ID
      ,a.[XMID]--��ĿID
      ,a.[XNID]--ѧ��ID
      ,a.[XQID]--ѧ��ID
      ,a.[NR]--����
      ,c.SCHOOLID as c_BJ_SCHOOLID--�༶������� ѧУ��
      ,c.NJ as c_BJ_NJ--�༶������� �꼶��
      ,c.BJ as c_BJ_BJ--�༶������� �༶����
      ,c.JBNY as c_BJ_JBNY--�༶������� ��������
      ,c.BZRGH as c_BJ_BZRGH--�༶������� �����ι���
      ,c.BZXH as c_BJ_BZXH--�༶������� �೤ѧ��
      ,c.BJRYCH as c_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,c.XZ as c_BJ_XZ--�༶������� ѧ��
      ,c.BJLXM as c_BJ_BJLXM--�༶������� �༶������
      ,[cb].MC as c_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,c.WLLX as c_BJ_WLLX--�༶������� ��������
      ,c.BYRQ as c_BJ_BYRQ--�༶������� ��ҵ����
      ,c.SFSSMZSYJXB as c_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,[cc].MC as c_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,c.SYJXMSM as c_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,[cd].MC as c_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,[cd].SM as c_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,c.BZRID as c_BJ_BZRID--�༶������� ������ID
      ,c.ZT as c_BJ_ZT--�༶������� ״̬
      ,c.PLSX as c_BJ_PLSX--�༶������� ����˳��
      ,c.BJLBID as c_BJ_BJLBID--�༶������� �༶���ID
      ,c.FBZRID as c_BJ_FBZRID--�༶������� ��������ID
      ,d.SCHOOLID as d_SCXM_SCHOOLID--�ֲ���Ŀ�� ѧУ
      ,d.XMMC as d_SCXM_XMMC--�ֲ���Ŀ�� ��Ŀ����
      ,d.SFQFXQ as d_SCXM_SFQFXQ--�ֲ���Ŀ�� �Ƿ�����ѧ��
      ,d.PLSX as d_SCXM_PLSX--�ֲ���Ŀ�� ����˳��
      ,d.SCNRMBID as d_SCXM_SCNRMBID--�ֲ���Ŀ�� �ֲ�����ģ��ID
      ,e.SCHOOLID as e_XN_SCHOOLID--ѧ��� ѧУ��
      ,e.XN as e_XN_XN--ѧ��� ѧ��
      ,f.SCHOOLID as f_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,f.XNID as f_XQ_XNID--ѧ�����ݱ� ѧ��
      ,f.XQM as f_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[fb].MC as f_XQ_XQM_MC--ѧ�ڴ���� ����
      ,f.XQMC as f_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,f.XQKSRQ as f_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,f.XQJSRQ as f_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������

FROM dbo.EDU_ZXJX_54_A03_SCNR AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS c ON a.BJID = c.BH /*�༶ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_54_A02_SCXM AS d ON a.XMID = d.ID /*��ĿID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS e ON a.XNID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS f ON a.XQID = f.ID /*ѧ��ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [cb] ON c.BJLXM = [cb].DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFSSMZSYJXB = [cc].DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [cd] ON c.SYJXMSM = [cd].DM /*˫���ѧģʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [fb] ON f.XQM = [fb].DM /*ѧ����*/
GO
