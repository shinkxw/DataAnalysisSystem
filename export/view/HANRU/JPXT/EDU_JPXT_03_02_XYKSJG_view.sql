
--ѧԱ���Խ����
CREATE VIEW [dbo].[VIEW_EDU_JPXT_03_02_XYKSJG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XYID]--ѧԱID
      ,a.[KMKSID]--��Ŀ����ID
      ,a.[KSJG]--���Խ��
      ,c.SCHOOLID as c_XYSJ_SCHOOLID--ѧԱ���ݱ� ѧУID
      ,c.XM as c_XYSJ_XM--ѧԱ���ݱ� ����
      ,c.SFZH as c_XYSJ_SFZH--ѧԱ���ݱ� ���֤��
      ,c.XBM as c_XYSJ_XBM--ѧԱ���ݱ� �Ա���
      ,[cb].MC as c_XYSJ_XBM_MC--�˵��Ա���� ����
      ,c.LXDH as c_XYSJ_LXDH--ѧԱ���ݱ� ��ϵ�绰
      ,c.ZZ as c_XYSJ_ZZ--ѧԱ���ݱ� סַ
      ,c.BMSJ as c_XYSJ_BMSJ--ѧԱ���ݱ� ����ʱ��
      ,c.SFQK as c_XYSJ_SFQK--ѧԱ���ݱ� �ɷ����
      ,c.SXCXID as c_XYSJ_SXCXID--ѧԱ���ݱ� ��ѡ����ID
      ,c.ZJQK as c_XYSJ_ZJQK--ѧԱ���ݱ� �������
      ,c.SSJLYID as c_XYSJ_SSJLYID--ѧԱ���ݱ� ��������ԱID
      ,c.YJJLYID as c_XYSJ_YJJLYID--ѧԱ���ݱ� ��������ԱID
      ,c.DQZT as c_XYSJ_DQZT--ѧԱ���ݱ� ��ǰ״̬
      ,c.BYSJ as c_XYSJ_BYSJ--ѧԱ���ݱ� ��ҵʱ��
      ,d.SCHOOLID as d_KMKS_SCHOOLID--��Ŀ���Ա� ѧУID
      ,d.KMDM as d_KMKS_KMDM--��Ŀ���Ա� ��Ŀ����
      ,[db].MC as d_KMKS_KMDM_MC--�ݿ���Ŀ���� ��Ŀ����
      ,[db].KSSX as d_KMKS_KMDM_KSSX--�ݿ���Ŀ���� ����˳��
      ,d.KSSJ as d_KMKS_KSSJ--��Ŀ���Ա� ����ʱ��
      ,d.BZ as d_KMKS_BZ--��Ŀ���Ա� ��ע

FROM dbo.EDU_JPXT_03_02_XYKSJG AS a LEFT OUTER JOIN
      dbo.EDU_JPXT_03_01_XYSJ AS c ON a.XYID = c.ID /*ѧԱID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JPXT_04_01_KMKS AS d ON a.KMKSID = d.ID /*��Ŀ����ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cb] ON c.XBM = [cb].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_JKKM AS [db] ON d.KMDM = [db].DM /*��Ŀ����*/
GO
