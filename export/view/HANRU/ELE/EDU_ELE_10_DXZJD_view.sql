
--������ڵ��
CREATE VIEW [dbo].[VIEW_EDU_ELE_10_DXZJD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[DXZID]--������ID
      ,a.[HFFSID]--���ַ�ʽID
      ,a.[HFCJID]--���ֲ㼶ID
      ,a.[FJDID]--���ڵ�ID
      ,a.[JDMC]--�ڵ�����
      ,a.[DXIDLB]--����ID�б�
      ,a.[DXMCLB]--���������б�
      ,c.SCHOOLID as c_DXZ_SCHOOLID--������� ѧУID
      ,c.DXZMC as c_DXZ_DXZMC--������� ����������
      ,c.DXIDLB as c_DXZ_DXIDLB--������� ����ID�б�
      ,c.DXMCLB as c_DXZ_DXMCLB--������� ���������б�
      ,d.SCHOOLID as d_DXZHFFS_SCHOOLID--�����黮�ַ�ʽ�� ѧУID
      ,d.DXZID as d_DXZHFFS_DXZID--�����黮�ַ�ʽ�� ������ID
      ,d.HFFSMC as d_DXZHFFS_HFFSMC--�����黮�ַ�ʽ�� ���ַ�ʽ����
      ,e.SCHOOLID as e_DXZHFCJ_SCHOOLID--�����黮�ֲ㼶�� ѧУID
      ,e.DXZID as e_DXZHFCJ_DXZID--�����黮�ֲ㼶�� ������ID
      ,e.HFFSID as e_DXZHFCJ_HFFSID--�����黮�ֲ㼶�� ���ַ�ʽID
      ,e.CJMC as e_DXZHFCJ_CJMC--�����黮�ֲ㼶�� �㼶����
      ,e.PLSX as e_DXZHFCJ_PLSX--�����黮�ֲ㼶�� ����˳��
      ,f.SCHOOLID as f_DXZJD_SCHOOLID--������ڵ�� ѧУID
      ,f.DXZID as f_DXZJD_DXZID--������ڵ�� ������ID
      ,f.HFFSID as f_DXZJD_HFFSID--������ڵ�� ���ַ�ʽID
      ,f.HFCJID as f_DXZJD_HFCJID--������ڵ�� ���ֲ㼶ID
      ,f.FJDID as f_DXZJD_FJDID--������ڵ�� ���ڵ�ID
      ,f.JDMC as f_DXZJD_JDMC--������ڵ�� �ڵ�����
      ,f.DXIDLB as f_DXZJD_DXIDLB--������ڵ�� ����ID�б�
      ,f.DXMCLB as f_DXZJD_DXMCLB--������ڵ�� ���������б�

FROM dbo.EDU_ELE_10_DXZJD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZ AS c ON a.DXZID = c.ID /*������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZHFFS AS d ON a.HFFSID = d.ID /*���ַ�ʽID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZHFCJ AS e ON a.HFCJID = e.ID /*���ֲ㼶ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZJD AS f ON a.FJDID = f.ID /*���ڵ�ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/
GO
