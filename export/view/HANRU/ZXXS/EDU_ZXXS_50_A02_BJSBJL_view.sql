
--�༶�ϱ���¼��
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_50_A02_BJSBJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[BJID]--�༶ID
      ,a.[ZT]--״̬
      ,a.[RQ]--����
      ,a.[QQRS]--ȱ������
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

FROM dbo.EDU_ZXXS_50_A02_BJSBJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS c ON a.BJID = c.BH /*�༶ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [cb] ON c.BJLXM = [cb].DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFSSMZSYJXB = [cc].DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [cd] ON c.SYJXMSM = [cd].DM /*˫���ѧģʽ��*/
GO
