
--��ִ����
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A11_DFDL_DISP]
AS
SELECT a.[ID]--���ڵ�ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XMID]--��ĿID
      ,a.[SFXYSH]--�Ƿ���Ҫ���
      ,a.[SHFS]--��˷�ʽ
      ,b.SCHOOLID as b_DFJD_SCHOOLID--��ֽڵ�� ѧУID
      ,b.XMID as b_DFJD_XMID--��ֽڵ�� ��ĿID
      ,b.FJDID as b_DFJD_FJDID--��ֽڵ�� ���ڵ�ID
      ,b.SFDFX as b_DFJD_SFDFX--��ֽڵ�� �Ƿ�����
      ,b.JDMC as b_DFJD_JDMC--��ֽڵ�� �ڵ�����
      ,b.SFJCSJSZ as b_DFJD_SFJCSJSZ--��ֽڵ�� �Ƿ�̳��ϼ�����
      ,b.DFDXJDBMJH as b_DFJD_DFDXJDBMJH--��ֽڵ�� ��ֶ���ڵ���뼯��
      ,b.DFJSGXIDLB as b_DFJD_DFJSGXIDLB--��ֽڵ�� ��ֽ�ɫ��ϵID�б�
      ,b.SHJSGXIDLB as b_DFJD_SHJSGXIDLB--��ֽڵ�� ��˽�ɫ��ϵID�б�
      ,b.DFFSID as b_DFJD_DFFSID--��ֽڵ�� ��ַ�ʽID
      ,b.DFDXCJ as b_DFJD_DFDXCJ--��ֽڵ�� ��ֶ���㼶
      ,b.DFPC as b_DFJD_DFPC--��ֽڵ�� ���Ƶ��
      ,b.DFZB as b_DFJD_DFZB--��ֽڵ�� ���ָ��
      ,d.SCHOOLID as d_DFXM_SCHOOLID--�����Ŀ�� ѧУID
      ,d.XMMC as d_DFXM_XMMC--�����Ŀ�� ��Ŀ����
      ,d.APPID as d_DFXM_APPID--�����Ŀ�� ����Ӧ��ID

FROM dbo.EDU_OAXT_50_A11_DFDL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS b ON a.ID = b.ID /*���ڵ�ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ AND a.XMID = b.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS d ON a.XMID = d.ID /*��ĿID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/
GO
