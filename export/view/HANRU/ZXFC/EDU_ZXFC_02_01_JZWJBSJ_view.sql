
--����������������
CREATE VIEW [dbo].[VIEW_EDU_ZXFC_02_01_JZWJBSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[JZWH]--�������
      ,a.[JZWMC]--����������
      ,a.[SYZKM]--ʹ��״����
      ,a.[FWCQ]--���ݲ�Ȩ
      ,a.[XQH]--У����
      ,a.[JZWFLM]--�����������
      ,a.[JZWJGM]--������ṹ��
      ,a.[JZWCS]--���������
      ,a.[JCNY]--��������
      ,a.[JZWTZZE]--������Ͷ���ܶ�
      ,a.[JFLYM]--������Դ��
      ,a.[ZJZMJ]--�ܽ������
      ,a.[ZSYMJ]--��ʹ�����
      ,a.[KZSFLDM]--��������Ҷ���
      ,a.[KZSFBZM]--���������׼��
      ,a.[JZWDZ]--�������ַ
      ,a.[JZWZKM]--������״����
      ,a.[JZWTP]--������ͼƬ
      ,a.[JZWPMT]--������ƽ��ͼ
      ,a.[XXDWCCM]--ѧУ��λ�����
      ,a.[JZWWZZK]--������λ��״��
      ,a.[GHSPWH]--�滮�����ĺ�
      ,a.[ZHFZNL]--�ۺϷ�������
      ,a.[GHSYNX]--�滮ʹ������
      ,a.[SFYYJBXCS]--�Ƿ���Ԥ�����մ�ʩ
      ,a.[SFKYYYJBNCS]--�Ƿ������Ӧ�����ѳ���
      ,a.[CQZH]--��Ȩ֤��
      ,a.[JZWYTM]--��������;��
      ,a.[JZWZGD]--�������ܸ߶�
      ,a.[WFJDBM]--Σ����������
      ,a.[WFJDWH]--Σ�������ĺ�
      ,a.[WFJDRQ]--Σ����������
      ,a.[GNFSM]--��ů��ʽ��
      ,a.[JZWJCXSM]--�����������ʽ��
      ,a.[JZWPMXSM]--������ƽ����ʽ��
      ,a.[JZWLBXSM]--������¥����ʽ��
      ,a.[SFYGZZ]--�Ƿ��й�����
      ,a.[QL]--Ȧ��
      ,a.[ZJAQGZWCRQ]--�����ȫ�����������
      ,a.[ZJAQGZHYJSYNX]--�����ȫ�����Ԥ��ʹ������
      ,a.[ZXLXM]--ר������
      ,a.[ZYZXTZBZMCM]--����ר��Ͷ�ʲ���������
      ,a.[WWJZDJM]--���ｨ���ȼ���
      ,a.[JXJFZYF]--��ѧ�������÷�
      ,a.[QZJS]--���н���
      ,a.[QZSYS]--����ʵ����
      ,a.[QZTSS]--����ͼ����
      ,a.[QZWJS]--����΢����
      ,a.[QZYYS]--����������
      ,a.[QZTYHDS]--�����������
      ,a.[QZQTJFYF]--���������̸��÷�
      ,a.[SHYF]--�����÷�
      ,a.[QZXSSS]--����ѧ������
      ,a.[QZST]--����ʳ��
      ,a.[QZCS]--���в���
      ,a.[QZGLF]--���й�¯��(��ˮ��)
      ,a.[QZYS]--����ԡ��
      ,a.[QZJGSS]--���н̹�����
      ,a.[QZQTSHYF]--�������������÷�
      ,a.[XZBGYF]--�����칫�÷�
      ,a.[QZJSBGS]--���н�ְ���칫��
      ,a.[QZWSBJS]--��������������
      ,a.[QZQTXZBGYF]--�������������칫�÷�
      ,a.[QTYF]--�����÷�
      ,a.[GLY]--����Ա
      ,c.MC as c_SYZK_MC--ʹ��״������� ����
      ,d.MC as d_CQ_MC--��Ȩ����� ����
      ,e.MC as e_JZWFL_MC--������������� ����
      ,f.MC as f_JZWJG_MC--������ṹ����� ����
      ,g.MC as g_JFLY_MC--������Դ����� ����
      ,h.JC as h_KZSFLD_JC--��������Ҷȴ��� ���
      ,h.MC as h_KZSFLD_MC--��������Ҷȴ��� ����
      ,i.JC as i_KZSFBZ_JC--���������׼���� ���
      ,i.MC as i_KZSFBZ_MC--���������׼���� ����
      ,i.SM as i_KZSFBZ_SM--���������׼���� ˵��
      ,j.MC as j_JZWZK_MC--������״������� ����
      ,j.SM as j_JZWZK_SM--������״������� ˵��
      ,k.MC as k_XXDWCC_MC--ѧУ��λ��δ���� ����
      ,l.MC as l_SFBZ_MC--�Ƿ��־����� ����
      ,m.MC as m_SFBZ_MC--�Ƿ��־����� ����
      ,n.MC as n_JZWYT_MC--��������;����� ����
      ,o.MC as o_GNFS_MC--��ů��ʽ����� ����
      ,p.MC as p_JZWJCXS_MC--�����������ʽ����� ����
      ,q.MC as q_JZWPMXS_MC--������ƽ����ʽ����� ����
      ,r.MC as r_JZWLBXS_MC--������¥����ʽ����� ����
      ,s.MC as s_SFBZ_MC--�Ƿ��־����� ����
      ,t.MC as t_SFBZ_MC--�Ƿ��־����� ����
      ,u.MC as u_ZYZXTZBZMC_MC--����ר��Ͷ�ʲ������ƴ���� ����
      ,v.MC as v_WWJZDJ_MC--���ｨ���ȼ������ ����

FROM dbo.EDU_ZXFC_02_01_JZWJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS c ON a.SYZKM = c.DM /*ʹ��״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS d ON a.FWCQ = d.DM /*���ݲ�Ȩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS e ON a.JZWFLM = e.DM /*�����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS f ON a.JZWJGM = f.DM /*������ṹ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS g ON a.JFLYM = g.DM /*������Դ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS h ON a.KZSFLDM = h.DM /*��������Ҷ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS i ON a.KZSFBZM = i.DM /*���������׼��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS j ON a.JZWZKM = j.DM /*������״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS k ON a.XXDWCCM = k.DM /*ѧУ��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS l ON a.SFYYJBXCS = l.DM /*�Ƿ���Ԥ�����մ�ʩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS m ON a.SFKYYYJBNCS = m.DM /*�Ƿ������Ӧ�����ѳ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS n ON a.JZWYTM = n.DM /*��������;��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS o ON a.GNFSM = o.DM /*��ů��ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS p ON a.JZWJCXSM = p.DM /*�����������ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS q ON a.JZWPMXSM = q.DM /*������ƽ����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS r ON a.JZWLBXSM = r.DM /*������¥����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS s ON a.SFYGZZ = s.DM /*�Ƿ��й�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS t ON a.QL = t.DM /*Ȧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS u ON a.ZYZXTZBZMCM = u.DM /*����ר��Ͷ�ʲ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS v ON a.WWJZDJM = v.DM /*���ｨ���ȼ���*/
GO
