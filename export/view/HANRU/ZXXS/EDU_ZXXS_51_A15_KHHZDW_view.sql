
--���˻��ܵ�λ��
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_51_A15_KHHZDW_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KHHZID]--���˻���ID
      ,a.[DWMC]--��λ����
      ,a.[HFSX]--��������
      ,a.[HFXX]--��������
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

FROM dbo.EDU_ZXXS_51_A15_KHHZDW AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_51_A11_KHHZ AS c ON a.KHHZID = c.ID /*���˻���ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFXSWDD = [cb].DM /*�Ƿ���ʾ�޵ȵ�*/
GO
