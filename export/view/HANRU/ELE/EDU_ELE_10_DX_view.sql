
--�����
CREATE VIEW [dbo].[VIEW_EDU_ELE_10_DX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[DXZID]--������ID
      ,a.[HFFSID]--���ַ�ʽID
      ,a.[JDID]--�ڵ�ID
      ,a.[DXMC]--��������
      ,a.[DXLX]--��������
      ,a.[DXID]--����ID
      ,c.SCHOOLID as c_DXZ_SCHOOLID--������� ѧУID
      ,c.DXZMC as c_DXZ_DXZMC--������� ����������
      ,c.DXIDLB as c_DXZ_DXIDLB--������� ����ID�б�
      ,c.DXMCLB as c_DXZ_DXMCLB--������� ���������б�
      ,d.SCHOOLID as d_DXZHFFS_SCHOOLID--�����黮�ַ�ʽ�� ѧУID
      ,d.DXZID as d_DXZHFFS_DXZID--�����黮�ַ�ʽ�� ������ID
      ,d.HFFSMC as d_DXZHFFS_HFFSMC--�����黮�ַ�ʽ�� ���ַ�ʽ����
      ,e.SCHOOLID as e_DXZJD_SCHOOLID--������ڵ�� ѧУID
      ,e.DXZID as e_DXZJD_DXZID--������ڵ�� ������ID
      ,e.HFFSID as e_DXZJD_HFFSID--������ڵ�� ���ַ�ʽID
      ,e.HFCJID as e_DXZJD_HFCJID--������ڵ�� ���ֲ㼶ID
      ,e.FJDID as e_DXZJD_FJDID--������ڵ�� ���ڵ�ID
      ,e.JDMC as e_DXZJD_JDMC--������ڵ�� �ڵ�����

FROM dbo.EDU_ELE_10_DX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZ AS c ON a.DXZID = c.ID /*������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZHFFS AS d ON a.HFFSID = d.ID /*���ַ�ʽID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZJD AS e ON a.JDID = e.ID /*�ڵ�ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/
GO
