
--���Ӽ�¼��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A17_FJJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XMID]--��ĿID
      ,a.[DFJDID]--��ֽڵ�ID
      ,a.[DFPCID]--�������ID
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
      ,d.DFJSLBIDLB as d_DFJD_DFJSLBIDLB--��ֽڵ�� ��ֽ�ɫ���ID�б�
      ,d.SHJSLBIDLB as d_DFJD_SHJSLBIDLB--��ֽڵ�� ��˽�ɫ���ID�б�
      ,d.DFFSID as d_DFJD_DFFSID--��ֽڵ�� ��ַ�ʽID
      ,d.DFDXCJ as d_DFJD_DFDXCJ--��ֽڵ�� ��ֶ���㼶
      ,d.DFPC as d_DFJD_DFPC--��ֽڵ�� ���Ƶ��
      ,d.DFZB as d_DFJD_DFZB--��ֽڵ�� ���ָ��
      ,d.DFDXJDMCLB as d_DFJD_DFDXJDMCLB--��ֽڵ�� ��ֶ���ڵ������б�
      ,d.DFJSLBMCLB as d_DFJD_DFJSLBMCLB--��ֽڵ�� ��ֽ�ɫ��������б�
      ,d.SHJSLBMCLB as d_DFJD_SHJSLBMCLB--��ֽڵ�� ��˽�ɫ��������б�
      ,d.DFDXCJMC as d_DFJD_DFDXCJMC--��ֽڵ�� ��ֶ���㼶����
      ,d.CKJSLBIDLB as d_DFJD_CKJSLBIDLB--��ֽڵ�� �鿴��ɫ���ID�б�
      ,d.CKJSLBMCLB as d_DFJD_CKJSLBMCLB--��ֽڵ�� �鿴��ɫ��������б�
      ,e.SCHOOLID as e_DFPC_SCHOOLID--������α� ѧУID
      ,e.XMID as e_DFPC_XMID--������α� ��ĿID
      ,e.DFDLID as e_DFPC_DFDLID--������α� ��ִ���ID
      ,e.DFJDID as e_DFPC_DFJDID--������α� ��ֽڵ�ID
      ,e.XQID as e_DFPC_XQID--������α� ѧ��ID
      ,e.DFPCMC as e_DFPC_DFPCMC--������α� �����������
      ,e.CKSJ as e_DFPC_CKSJ--������α� �ο�ʱ��
      ,e.TJSJ as e_DFPC_TJSJ--������α� ���ʱ��
      ,f.SCHOOLID as f_DFJG_SCHOOLID--��ֽ���� ѧУID
      ,f.XMID as f_DFJG_XMID--��ֽ���� ��ĿID
      ,f.DFDLID as f_DFJG_DFDLID--��ֽ���� ��ִ���ID
      ,f.DFJDID as f_DFJG_DFJDID--��ֽ���� ��ֽڵ�ID
      ,f.DFPCID as f_DFJG_DFPCID--��ֽ���� �������ID
      ,f.XQID as f_DFJG_XQID--��ֽ���� ѧ��ID
      ,f.BDFDXBM as f_DFJG_BDFDXBM--��ֽ���� ����ֶ������
      ,f.BDFDXMC as f_DFJG_BDFDXMC--��ֽ���� ����ֶ�������
      ,f.DFXXID as f_DFJG_DFXXID--��ֽ���� ���ѡ��ID
      ,f.WBZ as f_DFJG_WBZ--��ֽ���� �ı�ֵ
      ,f.FZ as f_DFJG_FZ--��ֽ���� ��ֵ
      ,f.DFYHID as f_DFJG_DFYHID--��ֽ���� ����û�ID
      ,f.CKSJ as f_DFJG_CKSJ--��ֽ���� �ο�ʱ��
      ,f.TJSJ as f_DFJG_TJSJ--��ֽ���� ���ʱ��
      ,f.SHZT as f_DFJG_SHZT--��ֽ���� ���״̬
      ,f.SHJLID as f_DFJG_SHJLID--��ֽ���� ��˼�¼ID
      ,g.SCHOOLID as g_FJZD_SCHOOLID--�����ֶα� ѧУID
      ,g.XMID as g_FJZD_XMID--�����ֶα� ��ĿID
      ,g.DFJDID as g_FJZD_DFJDID--�����ֶα� ��ֽڵ�ID
      ,g.ZDMC as g_FJZD_ZDMC--�����ֶα� �ֶ�����
      ,g.MRZ as g_FJZD_MRZ--�����ֶα� Ĭ��ֵ
      ,g.PLSX as g_FJZD_PLSX--�����ֶα� ����˳��

FROM dbo.EDU_OAXT_50_A17_FJJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*��ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS d ON a.DFJDID = d.ID /*��ֽڵ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ AND a.XMID = d.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A19_DFPC AS e ON a.DFPCID = e.ID /*�������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ AND a.XMID = e.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A15_DFJG AS f ON a.DFJGID = f.ID /*��ֽ��ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ AND a.XMID = f.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A16_FJZD AS g ON a.FJZDID = g.ID /*�����ֶ�ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ AND a.XMID = g.XMID /*��ĿID*/
GO
