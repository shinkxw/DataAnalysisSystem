
--���˻��ܴ������ñ�
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_51_A14_KHHZDLPZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KHHZID]--���˻���ID
      ,a.[DLID]--����ID
      ,a.[ZSL]--������
      ,a.[XYXMIDLB]--ѡ����ĿID�б�
      ,a.[XSXX]--��ʾ��Ϣ
      ,c.SCHOOLID as c_KHHZ_SCHOOLID--���˻��ܱ� ѧУ
      ,c.MC as c_KHHZ_MC--���˻��ܱ� ����
      ,c.HZFS as c_KHHZ_HZFS--���˻��ܱ� ���ܷ�ʽ
      ,c.KHDX as c_KHHZ_KHDX--���˻��ܱ� ���˶���
      ,c.YXDLIDLB as c_KHHZ_YXDLIDLB--���˻��ܱ� ���ȴ���ID�б�
      ,c.YXDLMCLB as c_KHHZ_YXDLMCLB--���˻��ܱ� ���ȴ��������б�
      ,c.YXPXFS as c_KHHZ_YXPXFS--���˻��ܱ� ��������ʽ
      ,c.CXDLIDLB as c_KHHZ_CXDLIDLB--���˻��ܱ� ���ȴ���ID�б�
      ,c.CXDLMCLB as c_KHHZ_CXDLMCLB--���˻��ܱ� ���ȴ��������б�
      ,c.CXPXFS as c_KHHZ_CXPXFS--���˻��ܱ� ��������ʽ
      ,c.DDPXFS as c_KHHZ_DDPXFS--���˻��ܱ� �ȵ���ѡ��ʽ
      ,c.SFXSWDD as c_KHHZ_SFXSWDD--���˻��ܱ� �Ƿ���ʾ�޵ȵ�
      ,[cb].MC as c_KHHZ_SFXSWDD_MC--�Ƿ��־����� ����
      ,d.SCHOOLID as d_KHDL_SCHOOLID--���˴���� ѧУ
      ,d.MC as d_KHDL_MC--���˴���� ����
      ,d.KHDX as d_KHDL_KHDX--���˴���� ���˶���
      ,d.DJFS as d_KHDL_DJFS--���˴���� �ǼǷ�ʽ
      ,d.KDJYHIDLB as d_KHDL_KDJYHIDLB--���˴���� �ɵǼ��û�ID�б�
      ,d.KDJYHXMLB as d_KHDL_KDJYHXMLB--���˴���� �ɵǼ��û������б�

FROM dbo.EDU_ZXXS_51_A14_KHHZDLPZ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_51_A11_KHHZ AS c ON a.KHHZID = c.ID /*���˻���ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_51_A01_KHDL AS d ON a.DLID = d.ID /*����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFXSWDD = [cb].DM /*�Ƿ���ʾ�޵ȵ�*/
GO
