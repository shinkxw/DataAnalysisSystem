
--ѧԱ���Խ����
CREATE VIEW [dbo].[VIEW_EDU_JPXT_03_02_XYKSJG_DISP]
AS
SELECT a.[ID]--���
      ,a.[XYID]--ѧԱID
      ,a.[SCHOOLID]--ѧУID
      ,a.[KMKSID]--��Ŀ����ID
      ,a.[KSKMDM]--���Կ�Ŀ����
      ,a.[KSJG]--���Խ��
      ,b.SCHOOLID as b_XYSJ_SCHOOLID--ѧԱ���ݱ� ѧУID
      ,b.XM as b_XYSJ_XM--ѧԱ���ݱ� ����
      ,b.SFZH as b_XYSJ_SFZH--ѧԱ���ݱ� ���֤��
      ,b.XBM as b_XYSJ_XBM--ѧԱ���ݱ� �Ա���
      ,bb.MC as b_XYSJ_XBM_MC--�˵��Ա���� ����
      ,b.LXDH as b_XYSJ_LXDH--ѧԱ���ݱ� ��ϵ�绰
      ,b.ZZ as b_XYSJ_ZZ--ѧԱ���ݱ� סַ
      ,b.BMSJ as b_XYSJ_BMSJ--ѧԱ���ݱ� ����ʱ��
      ,b.SFQK as b_XYSJ_SFQK--ѧԱ���ݱ� �ɷ����
      ,b.SXCXID as b_XYSJ_SXCXID--ѧԱ���ݱ� ��ѡ����ID
      ,b.ZJQK as b_XYSJ_ZJQK--ѧԱ���ݱ� �������
      ,b.SZJLCID as b_XYSJ_SZJLCID--ѧԱ���ݱ� ��������ԱID
      ,b.YJJLYID as b_XYSJ_YJJLYID--ѧԱ���ݱ� ��������ԱID
      ,b.DQZT as b_XYSJ_DQZT--ѧԱ���ݱ� ��ǰ״̬
      ,b.BYSJ as b_XYSJ_BYSJ--ѧԱ���ݱ� ��ҵʱ��
      ,d.SCHOOLID as d_KMKS_SCHOOLID--��Ŀ���Ա� ѧУID
      ,d.KMDM as d_KMKS_KMDM--��Ŀ���Ա� ��Ŀ����
      ,db.MC as d_KMKS_KMDM_MC--�ݿ���Ŀ���� ��Ŀ����
      ,db.KSSX as d_KMKS_KMDM_KSSX--�ݿ���Ŀ���� ����˳��
      ,d.KSSJ as d_KMKS_KSSJ--��Ŀ���Ա� ����ʱ��
      ,d.BZ as d_KMKS_BZ--��Ŀ���Ա� ��ע
      ,e.MC as e_JKKM_MC--�ݿ���Ŀ���� ��Ŀ����
      ,e.KSSX as e_JKKM_KSSX--�ݿ���Ŀ���� ����˳��

FROM dbo.EDU_JPXT_03_02_XYKSJG AS a LEFT OUTER JOIN
      dbo.EDU_JPXT_03_01_XYSJ AS b ON a.XYID = b.ID /*ѧԱID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JPXT_04_01_KMKS AS d ON a.KMKSID = d.ID /*��Ŀ����ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_JKKM AS e ON a.KSKMDM = e.DM /*���Կ�Ŀ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bb ON b.XBM = bb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_JKKM AS db ON d.KMDM = db.DM /*��Ŀ����*/
GO
