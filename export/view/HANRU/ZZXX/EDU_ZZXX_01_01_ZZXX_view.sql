
--ѧУ�������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXX_01_01_ZZXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[XXDM]--ѧУ����
      ,a.[XXMC]--ѧУ����
      ,a.[XXYWMC]--ѧУӢ������
      ,a.[XXJBZM]--ѧУ�ٰ�����
      ,a.[XXZGBMM]--ѧУ���ܲ�����
      ,a.[XXDZ]--ѧУ��ַ
      ,a.[XXYZBM]--ѧУ��������
      ,a.[XZQHM]--����������
      ,a.[JXNY]--��У����
      ,a.[XQR]--У����
      ,a.[CLBJ]--��������
      ,a.[LSYG]--��ʷ�ظ�
      ,a.[XXXQS]--ѧУУ����
      ,a.[XXPGLX]--ѧУ��������
      ,a.[XXPGQKSM]--ѧУ�������˵��
      ,a.[ZYDZ]--��ҳ��ַ
      ,a.[FDDBRH]--���������˺�
      ,a.[FRZSH]--����֤���
      ,a.[LXDH]--��ϵ�绰
      ,a.[CZDH]--����绰
      ,a.[DZXX]--��������
      ,b.MC as b_XXJYJGJBZ_MC--ѧУ�������������ٰ��ߴ���� ����
      ,b.SM as b_XXJYJGJBZ_SM--ѧУ�������������ٰ��ߴ���� ˵��
      ,c.MC as c_XXJYJGJBZ_MC--ѧУ�������������ٰ��ߴ���� ����
      ,c.SM as c_XXJYJGJBZ_SM--ѧУ�������������ٰ��ߴ���� ˵��
      ,d.MC as d_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,e.MC as e_PGQK_MC--����������� ����

FROM dbo.EDU_ZZXX_01_01_ZZXX AS a LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS b ON a.XXJBZM = b.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS c ON a.XXZGBMM = c.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.XZQHM = d.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS e ON a.XXPGLX = e.DM /*ѧУ��������*/
GO
