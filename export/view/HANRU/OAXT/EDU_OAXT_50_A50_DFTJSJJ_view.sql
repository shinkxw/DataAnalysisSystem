
--���ͳ�����ݼ���
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A50_DFTJSJJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XMID]--��ĿID
      ,a.[SJJMC]--���ݼ�����
      ,a.[DFDXZID]--��ֶ�����ID
      ,a.[TJDXJDBMJH]--ͳ�ƶ���ڵ���뼯��
      ,a.[TJDXJDMCLB]--ͳ�ƶ���ڵ������б�
      ,a.[QSSJ]--��ʼʱ��
      ,a.[JSSJ]--����ʱ��
      ,a.[SJSCZT]--��������״̬
      ,a.[DQPCBH]--��ǰ���α��
      ,c.SCHOOLID as c_DFXM_SCHOOLID--�����Ŀ�� ѧУID
      ,c.XMMC as c_DFXM_XMMC--�����Ŀ�� ��Ŀ����
      ,c.APPID as c_DFXM_APPID--�����Ŀ�� ����Ӧ��ID
      ,d.SCHOOLID as d_DXZ_SCHOOLID--������� ѧУID
      ,d.DXZMC as d_DXZ_DXZMC--������� ����������
      ,d.DXIDLB as d_DXZ_DXIDLB--������� ����ID�б�
      ,d.DXMCLB as d_DXZ_DXMCLB--������� ���������б�

FROM dbo.EDU_OAXT_50_A50_DFTJSJJ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*��ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZ AS d ON a.DFDXZID = d.ID /*��ֶ�����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/
GO
