
--ѧУ�������������
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_01_01_ZXXX_DISP]
AS
SELECT a.[ID]--ѧУID
      ,a.[XXDM]--ѧУ����
      ,a.[XXMC]--ѧУ����
      ,a.[XXYWMC]--ѧУӢ������
      ,a.[XXDZ]--ѧУ��ַ
      ,a.[XXYZBM]--ѧУ��������
      ,a.[XZQHM]--����������
      ,a.[JXNY]--��У����
      ,a.[XQR]--У����
      ,a.[XXBXLXM]--ѧУ��ѧ������
      ,a.[XXZGBMM]--ѧУ���ܲ�����
      ,a.[FDDBRH]--���������˺�
      ,a.[FRZSH]--����֤���
      ,a.[XZGH]--У������
      ,a.[XZXM]--У������
      ,a.[DWFZRH]--��ί�����˺�
      ,a.[ZZJGM]--��֯������
      ,a.[LXDH]--��ϵ�绰
      ,a.[CZDH]--����绰
      ,a.[DZXX]--��������
      ,a.[ZYDZ]--��ҳ��ַ
      ,a.[LSYG]--��ʷ�ظ�
      ,a.[XXBBM]--ѧУ�����
      ,a.[SSZGDWM]--�������ܵ�λ��
      ,a.[SZDCXLXM]--���ڵس���������
      ,a.[SZDJJSXM]--���ڵؾ���������
      ,a.[SZDMZSX]--���ڵ���������
      ,a.[XXXZ]--Сѧѧ��
      ,a.[XXRXNL]--Сѧ��ѧ����
      ,a.[CZXZ]--����ѧ��
      ,a.[CZRXNL]--������ѧ����
      ,a.[GZXZ]--����ѧ��
      ,a.[ZJXYYM]--����ѧ������
      ,a.[FJXYYM]--����ѧ������
      ,a.[ZSBJ]--�����뾶
      ,b.MC as b_ZHRMGHGXZQH_MC--����
      ,c.MC as c_BXLX_MC--����
      ,c.SM as c_BXLX_SM--˵��
      ,d.MC as d_XXJYJGJBZ_MC--����
      ,d.SM as d_XXJYJGJBZ_SM--˵��
      ,e.MC as e_XXBB_MC--����
      ,f.MC as f_XXJYJGJBZ_MC--����
      ,f.SM as f_XXJYJGJBZ_SM--˵��
      ,g.MC as g_SZDCXLX_MC--����
      ,h.MC as h_SZDQJJSX_MC--����
      ,i.MC as i_SFBZ_MC--����
      ,j.MC as j_ZGYZ_MC--����
      ,j.ZMDM as j_ZGYZ_ZMDM--��ĸ����
      ,k.MC as k_ZGYZ_MC--����
      ,k.ZMDM as k_ZGYZ_ZMDM--��ĸ����

FROM dbo.EDU_ZXXX_01_01_ZXXX AS a LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS b ON a.XZQHM = b.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS c ON a.XXBXLXM = c.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS d ON a.XXZGBMM = d.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS e ON a.XXBBM = e.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS f ON a.SSZGDWM = f.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS g ON a.SZDCXLXM = g.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS h ON a.SZDJJSXM = h.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS i ON a.SZDMZSX = i.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS j ON a.ZJXYYM = j.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS k ON a.FJXYYM = k.DM /*����ѧ������*/
GO
