
--�����黮�ֲ㼶��
CREATE VIEW [dbo].[VIEW_EDU_ELE_10_DXZHFCJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[DXZID]--������ID
      ,a.[HFFSID]--���ַ�ʽID
      ,a.[CJMC]--�㼶����
      ,a.[PLSX]--����˳��
      ,c.SCHOOLID as c_DXZ_SCHOOLID--������� ѧУID
      ,c.DXZMC as c_DXZ_DXZMC--������� ����������
      ,c.DXIDLB as c_DXZ_DXIDLB--������� ����ID�б�
      ,c.DXMCLB as c_DXZ_DXMCLB--������� ���������б�
      ,d.SCHOOLID as d_DXZHFFS_SCHOOLID--�����黮�ַ�ʽ�� ѧУID
      ,d.DXZID as d_DXZHFFS_DXZID--�����黮�ַ�ʽ�� ������ID
      ,d.HFFSMC as d_DXZHFFS_HFFSMC--�����黮�ַ�ʽ�� ���ַ�ʽ����

FROM dbo.EDU_ELE_10_DXZHFCJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZ AS c ON a.DXZID = c.ID /*������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZHFFS AS d ON a.HFFSID = d.ID /*���ַ�ʽID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/
GO
