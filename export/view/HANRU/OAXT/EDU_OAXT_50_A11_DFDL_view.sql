
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
      ,d.DFJSGXIDLB as d_DFJD_DFJSGXIDLB--��ֽڵ�� ��ֽ�ɫ��ϵID�б�
      ,d.SHJSGXIDLB as d_DFJD_SHJSGXIDLB--��ֽڵ�� ��˽�ɫ��ϵID�б�
      ,d.DFFSID as d_DFJD_DFFSID--��ֽڵ�� ��ַ�ʽID
      ,d.DFDXCJ as d_DFJD_DFDXCJ--��ֽڵ�� ��ֶ���㼶
      ,d.DFPC as d_DFJD_DFPC--��ֽڵ�� ���Ƶ��
      ,d.DFZB as d_DFJD_DFZB--��ֽڵ�� ���ָ��

FROM dbo.EDU_OAXT_50_A11_DFDL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*��ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS d ON a.GJDID = d.ID /*���ڵ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ AND a.XMID = d.XMID /*��ĿID*/
GO
