
--�����
CREATE VIEW [dbo].[VIEW_EDU_ELE_10_DX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[DXZID]--������ID
      ,a.[DXMC]--��������
      ,a.[DXLX]--��������
      ,a.[DXID]--����ID
      ,c.SCHOOLID as c_DXZ_SCHOOLID--������� ѧУID
      ,c.DXZMC as c_DXZ_DXZMC--������� ����������
      ,c.DXIDLB as c_DXZ_DXIDLB--������� ����ID�б�
      ,c.DXMCLB as c_DXZ_DXMCLB--������� ���������б�

FROM dbo.EDU_ELE_10_DX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZ AS c ON a.DXZID = c.ID /*������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO
