
--��ֽڵ��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A12_DFJD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XMID]--��ĿID
      ,a.[FJDID]--���ڵ�ID
      ,a.[SFDFX]--�Ƿ�����
      ,a.[JDMC]--�ڵ�����
      ,a.[SFJCSJSZ]--�Ƿ�̳��ϼ�����
      ,a.[DFDXJDBMJH]--��ֶ���ڵ���뼯��
      ,a.[DFJSGXIDLB]--��ֽ�ɫ��ϵID�б�
      ,a.[SHJSGXIDLB]--��˽�ɫ��ϵID�б�
      ,a.[DFFSID]--��ַ�ʽID
      ,a.[DFDXCJ]--��ֶ���㼶
      ,a.[DFPC]--���Ƶ��
      ,a.[DFZB]--���ָ��
      ,c.SCHOOLID as c_DFXM_SCHOOLID--�����Ŀ�� ѧУID
      ,c.XMMC as c_DFXM_XMMC--�����Ŀ�� ��Ŀ����
      ,c.APPID as c_DFXM_APPID--�����Ŀ�� ����Ӧ��ID
      ,d.SCHOOLID as d_DFJD_SCHOOLID--��ֽڵ�� ѧУID
      ,d.XMID as d_DFJD_XMID--��ֽڵ�� ��ĿID
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
      ,e.SCHOOLID as e_DFFS_SCHOOLID--��ַ�ʽ�� ѧУID
      ,e.XMID as e_DFFS_XMID--��ַ�ʽ�� ��ĿID
      ,e.DFFSMC as e_DFFS_DFFSMC--��ַ�ʽ�� ��ַ�ʽ����
      ,e.DFLX as e_DFFS_DFLX--��ַ�ʽ�� �������
      ,e.ZDZ as e_DFFS_ZDZ--��ַ�ʽ�� ���ֵ
      ,e.ZXZ as e_DFFS_ZXZ--��ַ�ʽ�� ��Сֵ
      ,e.MRZ as e_DFFS_MRZ--��ַ�ʽ�� Ĭ��ֵ

FROM dbo.EDU_OAXT_50_A12_DFJD AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*��ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS d ON a.FJDID = d.ID /*���ڵ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ AND a.XMID = d.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A13_DFFS AS e ON a.DFFSID = e.ID /*��ַ�ʽID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ AND a.XMID = e.XMID /*��ĿID*/
GO
