
--��ֽڵ��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A12_DFJD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XMID]--��ĿID
      ,a.[DLID]--����ID
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
      ,d.SCHOOLID as d_DFDL_SCHOOLID--��ִ���� ѧУID
      ,d.XMID as d_DFDL_XMID--��ִ���� ��ĿID
      ,d.GJDID as d_DFDL_GJDID--��ִ���� ���ڵ�ID
      ,d.DFDXZID as d_DFDL_DFDXZID--��ִ���� ��ֶ�����ID
      ,d.SFXYSH as d_DFDL_SFXYSH--��ִ���� �Ƿ���Ҫ���
      ,d.SHFS as d_DFDL_SHFS--��ִ���� ��˷�ʽ
      ,d.SFKQ as d_DFDL_SFKQ--��ִ���� �Ƿ���
      ,e.SCHOOLID as e_DFJD_SCHOOLID--��ֽڵ�� ѧУID
      ,e.XMID as e_DFJD_XMID--��ֽڵ�� ��ĿID
      ,e.DLID as e_DFJD_DLID--��ֽڵ�� ����ID
      ,e.FJDID as e_DFJD_FJDID--��ֽڵ�� ���ڵ�ID
      ,e.SFDFX as e_DFJD_SFDFX--��ֽڵ�� �Ƿ�����
      ,e.JDMC as e_DFJD_JDMC--��ֽڵ�� �ڵ�����
      ,e.SFJCSJSZ as e_DFJD_SFJCSJSZ--��ֽڵ�� �Ƿ�̳��ϼ�����
      ,e.DFDXJDBMJH as e_DFJD_DFDXJDBMJH--��ֽڵ�� ��ֶ���ڵ���뼯��
      ,e.DFJSGXIDLB as e_DFJD_DFJSGXIDLB--��ֽڵ�� ��ֽ�ɫ��ϵID�б�
      ,e.SHJSGXIDLB as e_DFJD_SHJSGXIDLB--��ֽڵ�� ��˽�ɫ��ϵID�б�
      ,e.DFFSID as e_DFJD_DFFSID--��ֽڵ�� ��ַ�ʽID
      ,e.DFDXCJ as e_DFJD_DFDXCJ--��ֽڵ�� ��ֶ���㼶
      ,e.DFPC as e_DFJD_DFPC--��ֽڵ�� ���Ƶ��
      ,e.DFZB as e_DFJD_DFZB--��ֽڵ�� ���ָ��
      ,f.SCHOOLID as f_DFFS_SCHOOLID--��ַ�ʽ�� ѧУID
      ,f.XMID as f_DFFS_XMID--��ַ�ʽ�� ��ĿID
      ,f.DFFSMC as f_DFFS_DFFSMC--��ַ�ʽ�� ��ַ�ʽ����
      ,f.DFLX as f_DFFS_DFLX--��ַ�ʽ�� �������
      ,f.ZDZ as f_DFFS_ZDZ--��ַ�ʽ�� ���ֵ
      ,f.ZXZ as f_DFFS_ZXZ--��ַ�ʽ�� ��Сֵ
      ,f.MRZ as f_DFFS_MRZ--��ַ�ʽ�� Ĭ��ֵ

FROM dbo.EDU_OAXT_50_A12_DFJD AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*��ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A11_DFDL AS d ON a.DLID = d.ID /*����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ AND a.XMID = d.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS e ON a.FJDID = e.ID /*���ڵ�ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ AND a.XMID = e.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A13_DFFS AS f ON a.DFFSID = f.ID /*��ַ�ʽID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ AND a.XMID = f.XMID /*��ĿID*/
GO