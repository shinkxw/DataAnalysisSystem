
--ѧԱ�ط���Ϣ��
CREATE VIEW [dbo].[VIEW_EDU_JPXT_03_03_XYHFXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XYID]--ѧԱID
      ,a.[HFSJ]--�ط�ʱ��
      ,a.[HFJG]--�طý��
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_XYSJ_SCHOOLID--ѧԱ���ݱ� ѧУID
      ,c.XM as c_XYSJ_XM--ѧԱ���ݱ� ����
      ,c.SFZH as c_XYSJ_SFZH--ѧԱ���ݱ� ���֤��
      ,c.XBM as c_XYSJ_XBM--ѧԱ���ݱ� �Ա���
      ,cb.MC as c_XYSJ_XBM_MC--�˵��Ա���� ����
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

FROM dbo.EDU_JPXT_03_03_XYHFXX AS a LEFT OUTER JOIN
      dbo.EDU_JPXT_03_01_XYSJ AS c ON a.XYID = c.ID /*ѧԱID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cb ON c.XBM = cb.DM /*�Ա���*/
GO
