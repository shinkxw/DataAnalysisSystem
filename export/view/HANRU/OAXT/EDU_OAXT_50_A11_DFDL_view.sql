
--��ִ����
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A11_DFDL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XMID]--��ĿID
      ,a.[GJDID]--���ڵ�ID
      ,a.[DFDXZID]--��ֶ�����ID
      ,a.[SFXYSH]--�Ƿ���Ҫ���
      ,a.[SHFS]--��˷�ʽ
      ,a.[SFKQ]--�Ƿ���
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
      ,d.SFPLDF as d_DFJD_SFPLDF--��ֽڵ�� �Ƿ��������
      ,d.XQKBFDW as d_DFJD_XQKBFDW--��ֽڵ�� ��ǰ�ɲ��ֵ�λ
      ,d.XHYDFDW as d_DFJD_XHYDFDW--��ֽڵ�� ���Ԥ��ֵ�λ

FROM dbo.EDU_OAXT_50_A11_DFDL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*��ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS d ON a.GJDID = d.ID /*���ڵ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ AND a.XMID = d.XMID /*��ĿID*/
GO
