
--�������ɫ��
CREATE VIEW [dbo].[VIEW_EDU_ELE_11_DXZJS_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[DXZID]--������ID
      ,a.[JSLBID]--��ɫ���ID
      ,a.[JSMC]--��ɫ����
      ,a.[DXZJDBMJH]--������ڵ���뼯��
      ,a.[DXZJDMCLB]--������ڵ������б�
      ,c.SCHOOLID as c_DXZ_SCHOOLID--������� ѧУID
      ,c.DXZMC as c_DXZ_DXZMC--������� ����������
      ,c.DXIDLB as c_DXZ_DXIDLB--������� ����ID�б�
      ,c.DXMCLB as c_DXZ_DXMCLB--������� ���������б�
      ,d.SCHOOLID as d_DXZJSLB_SCHOOLID--�������ɫ���� ѧУID
      ,d.DXZID as d_DXZJSLB_DXZID--�������ɫ���� ������ID
      ,d.JSLBMC as d_DXZJSLB_JSLBMC--�������ɫ���� ��ɫ�������

FROM dbo.EDU_ELE_11_DXZJS AS a LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZ AS c ON a.DXZID = c.ID /*������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_11_DXZJSLB AS d ON a.JSLBID = d.ID /*��ɫ���ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/
GO
