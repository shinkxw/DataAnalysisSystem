
--���˻��ܱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_51_A11_KHHZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[MC]--����
      ,a.[HZFS]--���ܷ�ʽ
      ,a.[KHDX]--���˶���
      ,a.[YXDLIDLB]--���ȴ���ID�б�
      ,a.[YXDLMCLB]--���ȴ��������б�
      ,a.[YXPXFS]--��������ʽ
      ,a.[CXDLIDLB]--���ȴ���ID�б�
      ,a.[CXDLMCLB]--���ȴ��������б�
      ,a.[CXPXFS]--��������ʽ
      ,a.[DDPXFS]--�ȵ���ѡ��ʽ
      ,a.[SFXSWDD]--�Ƿ���ʾ�޵ȵ�
      ,c.MC as c_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZXXS_51_A11_KHHZ AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFXSWDD = c.DM /*�Ƿ���ʾ�޵ȵ�*/
GO
