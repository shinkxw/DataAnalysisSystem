
--�༶ѧ��������¼��
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_07_A21_BJXSHDQKJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[HDBJ]--��༶
      ,a.[SJ]--ʱ��
      ,a.[DD]--�ص�
      ,a.[CYRS]--��������
      ,a.[HDXS]--���ʽ
      ,a.[HDZT]--�����
      ,a.[HDGCJL]--����̼�¼������ͼƬ��
      ,a.[HDHJ]--���ǣ������ε�����
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

FROM dbo.EDU_ZXDY_07_A21_BJXSHDQKJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS c ON a.HDBJ = c.BH /*��༶*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [cb] ON c.BJLXM = [cb].DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFSSMZSYJXB = [cc].DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [cd] ON c.SYJXMSM = [cd].DM /*˫���ѧģʽ��*/
GO
