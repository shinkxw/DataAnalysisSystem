
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
      ,a.[DFJSLBIDLB]--��ֽ�ɫ���ID�б�
      ,a.[SHJSLBIDLB]--��˽�ɫ���ID�б�
      ,a.[DFFSID]--��ַ�ʽID
      ,a.[DFDXCJ]--��ֶ���㼶
      ,a.[DFPC]--���Ƶ��
      ,a.[DFZB]--���ָ��
      ,a.[DFDXJDMCLB]--��ֶ���ڵ������б�
      ,a.[DFJSLBMCLB]--��ֽ�ɫ��������б�
      ,a.[SHJSLBMCLB]--��˽�ɫ��������б�
      ,a.[DFDXCJMC]--��ֶ���㼶����
      ,a.[CKJSLBIDLB]--�鿴��ɫ���ID�б�
      ,a.[CKJSLBMCLB]--�鿴��ɫ��������б�
      ,a.[SFPLDF]--�Ƿ��������
      ,a.[XQKBFDW]--��ǰ�ɲ��ֵ�λ
      ,a.[XHYDFDW]--���Ԥ��ֵ�λ
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
      ,e.DFJSLBIDLB as e_DFJD_DFJSLBIDLB--��ֽڵ�� ��ֽ�ɫ���ID�б�
      ,e.SHJSLBIDLB as e_DFJD_SHJSLBIDLB--��ֽڵ�� ��˽�ɫ���ID�б�
      ,e.DFFSID as e_DFJD_DFFSID--��ֽڵ�� ��ַ�ʽID
      ,e.DFDXCJ as e_DFJD_DFDXCJ--��ֽڵ�� ��ֶ���㼶
      ,e.DFPC as e_DFJD_DFPC--��ֽڵ�� ���Ƶ��
      ,e.DFZB as e_DFJD_DFZB--��ֽڵ�� ���ָ��
      ,e.DFDXJDMCLB as e_DFJD_DFDXJDMCLB--��ֽڵ�� ��ֶ���ڵ������б�
      ,e.DFJSLBMCLB as e_DFJD_DFJSLBMCLB--��ֽڵ�� ��ֽ�ɫ��������б�
      ,e.SHJSLBMCLB as e_DFJD_SHJSLBMCLB--��ֽڵ�� ��˽�ɫ��������б�
      ,e.DFDXCJMC as e_DFJD_DFDXCJMC--��ֽڵ�� ��ֶ���㼶����
      ,e.CKJSLBIDLB as e_DFJD_CKJSLBIDLB--��ֽڵ�� �鿴��ɫ���ID�б�
      ,e.CKJSLBMCLB as e_DFJD_CKJSLBMCLB--��ֽڵ�� �鿴��ɫ��������б�
      ,e.SFPLDF as e_DFJD_SFPLDF--��ֽڵ�� �Ƿ��������
      ,e.XQKBFDW as e_DFJD_XQKBFDW--��ֽڵ�� ��ǰ�ɲ��ֵ�λ
      ,e.XHYDFDW as e_DFJD_XHYDFDW--��ֽڵ�� ���Ԥ��ֵ�λ
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
