
--ѧ���������������
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_01_01_XSXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XH]--ѧ��
      ,a.[XM]--����
      ,a.[YWXM]--Ӣ������
      ,a.[XMPY]--����ƴ��
      ,a.[CYM]--������
      ,a.[XBM]--�Ա���
      ,a.[CSRQ]--��������
      ,a.[CSDM]--��������
      ,a.[JG]--����
      ,a.[MZM]--������
      ,a.[GJDQM]--����/������
      ,a.[SFZJLXM]--���֤��������
      ,a.[SFZJH]--���֤����
      ,a.[HYZKM]--����״����
      ,a.[GATQWM]--�۰�̨������
      ,a.[ZZMMM]--������ò��
      ,a.[JKZKM]--����״����
      ,a.[XYZJM]--�����ڽ���
      ,a.[XXM]--Ѫ����
      ,a.[ZP]--��Ƭ
      ,a.[SFZJYXQ]--���֤����Ч��
      ,a.[DSZYBZ]--������Ů��־
      ,a.[RXNY]--��ѧ����
      ,a.[NJ]--�꼶
      ,a.[BH]--���
      ,a.[XSLBM]--ѧ�������
      ,a.[XZZ]--��סַ
      ,a.[HKSZD]--�������ڵ�
      ,a.[HKXZM]--����������
      ,a.[SFLDRK]--�Ƿ������˿�
      ,a.[TC]--�س�
      ,a.[LXDH]--��ϵ�绰
      ,a.[TXDZ]--ͨ�ŵ�ַ
      ,a.[YZBM]--��������
      ,a.[DZXX]--��������
      ,a.[ZYDZ]--��ҳ��ַ
      ,a.[XJH]--ѧ����
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.MC as c_RDXB_MC--����
      ,d.MC as d_ZHRMGHGXZQH_MC--����
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--��������
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--��ĸ����
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--����/�������Ƽ��
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--����ĸ����
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--����ĸ����
      ,g.MC as g_SFZJLX_MC--����
      ,h.MC as h_HYZZ_MC--����
      ,i.MC as i_GATQW_MC--����
      ,i.SM as i_GATQW_SM--˵��
      ,j.MC as j_ZZMM_MC--����
      ,j.JC as j_ZZMM_JC--���
      ,k.MC as k_JKZKYWSZ_MC--����
      ,k.SM as k_JKZKYWSZ_SM--˵��
      ,l.MC as l_ZJXY_MC--����
      ,m.MC as m_XX_MC--����
      ,m.JC as m_XX_JC--���

FROM dbo.EDU_ZXXS_01_01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS c ON a.XBM = c.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.CSDM = d.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS f ON a.GJDQM = f.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS g ON a.SFZJLXM = g.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS h ON a.HYZKM = h.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS i ON a.GATQWM = i.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS j ON a.ZZMMM = j.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS k ON a.JKZKM = k.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS l ON a.XYZJM = l.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS m ON a.XXM = m.DM /*Ѫ����*/
GO
