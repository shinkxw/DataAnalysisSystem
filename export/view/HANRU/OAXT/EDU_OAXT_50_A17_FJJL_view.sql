
--���Ӽ�¼��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A17_FJJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XMID]--��ĿID
      ,a.[DFJDID]--��ֽڵ�ID
      ,a.[DFJGID]--��ֽ��ID
      ,a.[FJZDID]--�����ֶ�ID
      ,a.[FJZ]--����ֵ
      ,c.SCHOOLID as c_DFXM_SCHOOLID--�����Ŀ�� ѧУID
      ,c.XMMC as c_DFXM_XMMC--�����Ŀ�� ��Ŀ����
      ,c.APPID as c_DFXM_APPID--�����Ŀ�� ����Ӧ��ID
      ,d.SCHOOLID as d_DFJD_SCHOOLID--��ֽڵ�� ѧУID
      ,d.XMID as d_DFJD_XMID--��ֽڵ�� ��ĿID
      ,d.DLID as d_DFJD_DLID--��ֽڵ�� ����ID
      ,d.FJDID as d_DFJD_FJDID--��ֽڵ�� ���ڵ�ID
      ,d.SFDFX as d_DFJD_SFDFX--��ֽڵ�� �Ƿ�����
      ,d.JDMC as d_DFJD_JDMC--��ֽڵ�� �ڵ�����
      ,d.SFJCSJSZ as d_DFJD_SFJCSJSZ--��ֽڵ�� �Ƿ�̳��ϼ�����
      ,d.DFDXJDBMJH as d_DFJD_DFDXJDBMJH--��ֽڵ�� ��ֶ���ڵ���뼯��
      ,d.DFJSGXIDLB as d_DFJD_DFJSGXIDLB--��ֽڵ�� ��ֽ�ɫ��ϵID�б�
      ,d.SHJSGXIDLB as d_DFJD_SHJSGXIDLB--��ֽڵ�� ��˽�ɫ��ϵID�б�
      ,d.DFFSID as d_DFJD_DFFSID--��ֽڵ�� ��ַ�ʽID
      ,d.DFDXCJ as d_DFJD_DFDXCJ--��ֽڵ�� ��ֶ���㼶
      ,d.DFPC as d_DFJD_DFPC--��ֽڵ�� ���Ƶ��
      ,d.DFZB as d_DFJD_DFZB--��ֽڵ�� ���ָ��
      ,e.SCHOOLID as e_DFJG_SCHOOLID--��ֽ���� ѧУID
      ,e.XMID as e_DFJG_XMID--��ֽ���� ��ĿID
      ,e.DFJDID as e_DFJG_DFJDID--��ֽ���� ��ֽڵ�ID
      ,e.DFXXID as e_DFJG_DFXXID--��ֽ���� ���ѡ��ID
      ,e.WBZ as e_DFJG_WBZ--��ֽ���� �ı�ֵ
      ,e.FZ as e_DFJG_FZ--��ֽ���� ��ֵ
      ,e.DFYHID as e_DFJG_DFYHID--��ֽ���� ����û�ID
      ,e.DFSJ as e_DFJG_DFSJ--��ֽ���� ���ʱ��
      ,f.SCHOOLID as f_FJZD_SCHOOLID--�����ֶα� ѧУID
      ,f.XMID as f_FJZD_XMID--�����ֶα� ��ĿID
      ,f.DFJDID as f_FJZD_DFJDID--�����ֶα� ��ֽڵ�ID
      ,f.ZDMC as f_FJZD_ZDMC--�����ֶα� �ֶ�����
      ,f.MRZ as f_FJZD_MRZ--�����ֶα� Ĭ��ֵ
      ,f.PLSX as f_FJZD_PLSX--�����ֶα� ����˳��

FROM dbo.EDU_OAXT_50_A17_FJJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*��ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS d ON a.DFJDID = d.ID /*��ֽڵ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ AND a.XMID = d.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A15_DFJG AS e ON a.DFJGID = e.ID /*��ֽ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ AND a.XMID = e.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A16_FJZD AS f ON a.FJZDID = f.ID /*�����ֶ�ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ AND a.XMID = f.XMID /*��ĿID*/
GO
