
--ѧ���춯���������
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_07_02_XJYD_DISP]
AS
SELECT a.[ID]--ѧ���춯����
      ,a.[XSXXID]--ѧ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[YDLBM]--�춯�����
      ,a.[YDRQ]--�춯����
      ,a.[YDYYM]--�춯ԭ����
      ,a.[SPRQ]--��������
      ,a.[SPWH]--�����ĺ�
      ,a.[JBRID]--������ID
      ,a.[JBRGH]--�����˹���
      ,a.[YDLYXXM]--�춯��ԴѧУ��
      ,a.[YDQXXXM]--�춯ȥ��ѧУ��
      ,a.[YDSM]--�춯˵��
      ,a.[YZYID]--ԭרҵID
      ,a.[YBH]--ԭ���
      ,a.[YNJ]--ԭ�꼶
      ,a.[XZYID]--��רҵID
      ,a.[XBH]--�ְ��
      ,a.[XNJ]--���꼶
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bb.MC as b_XSXX_XBM_MC--����
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,bc.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bd.MZMC as b_XSXX_MZM_MZMC--��������
      ,bd.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.GJDQM as b_XSXX_GJDQM--����/������
      ,be.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,be.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,be.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bf.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bh.MC as b_XSXX_GATQWM_MC--����
      ,bh.SM as b_XSXX_GATQWM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bi.MC as b_XSXX_ZZMMM_MC--����
      ,bi.JC as b_XSXX_ZZMMM_JC--���
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bk.MC as b_XSXX_XYZJM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bl.MC as b_XSXX_XXM_MC--����
      ,bl.JC as b_XSXX_XXM_JC--���
      ,b.ZP as b_XSXX_ZP--��Ƭ
      ,b.SFZJYXQ as b_XSXX_SFZJYXQ--���֤����Ч��
      ,b.DSZYBZ as b_XSXX_DSZYBZ--������Ů��־
      ,b.RXNY as b_XSXX_RXNY--��ѧ����
      ,b.NJ as b_XSXX_NJ--�꼶
      ,b.BH as b_XSXX_BH--���
      ,b.XSLBM as b_XSXX_XSLBM--ѧ�������
      ,b.XZZ as b_XSXX_XZZ--��סַ
      ,b.HKSZD as b_XSXX_HKSZD--�������ڵ�
      ,b.HKXZM as b_XSXX_HKXZM--����������
      ,b.SFLDRK as b_XSXX_SFLDRK--�Ƿ������˿�
      ,b.TC as b_XSXX_TC--�س�
      ,b.LXDH as b_XSXX_LXDH--��ϵ�绰
      ,b.TXDZ as b_XSXX_TXDZ--ͨ�ŵ�ַ
      ,b.YZBM as b_XSXX_YZBM--��������
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZYDZ as b_XSXX_ZYDZ--��ҳ��ַ
      ,b.XJH as b_XSXX_XJH--ѧ����
      ,c.XXDM as c_ZXXX_XXDM--ѧУ����
      ,c.XXMC as c_ZXXX_XXMC--ѧУ����
      ,c.XXYWMC as c_ZXXX_XXYWMC--ѧУӢ������
      ,c.XXDZ as c_ZXXX_XXDZ--ѧУ��ַ
      ,c.XXYZBM as c_ZXXX_XXYZBM--ѧУ��������
      ,c.XZQHM as c_ZXXX_XZQHM--����������
      ,c.JXNY as c_ZXXX_JXNY--��У����
      ,c.XQR as c_ZXXX_XQR--У����
      ,c.XXBXLXM as c_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,c.XXZGBMM as c_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,c.FDDBRH as c_ZXXX_FDDBRH--���������˺�
      ,c.FRZSH as c_ZXXX_FRZSH--����֤���
      ,c.XZGH as c_ZXXX_XZGH--У������
      ,c.XZXM as c_ZXXX_XZXM--У������
      ,c.DWFZRH as c_ZXXX_DWFZRH--��ί�����˺�
      ,c.ZZJGM as c_ZXXX_ZZJGM--��֯������
      ,c.LXDH as c_ZXXX_LXDH--��ϵ�绰
      ,c.CZDH as c_ZXXX_CZDH--����绰
      ,c.DZXX as c_ZXXX_DZXX--��������
      ,c.ZYDZ as c_ZXXX_ZYDZ--��ҳ��ַ
      ,c.LSYG as c_ZXXX_LSYG--��ʷ�ظ�
      ,c.XXBBM as c_ZXXX_XXBBM--ѧУ�����
      ,c.SSZGDWM as c_ZXXX_SSZGDWM--�������ܵ�λ��
      ,c.SZDCXLXM as c_ZXXX_SZDCXLXM--���ڵس���������
      ,c.SZDJJSXM as c_ZXXX_SZDJJSXM--���ڵؾ���������
      ,c.SZDMZSX as c_ZXXX_SZDMZSX--���ڵ���������
      ,c.XXXZ as c_ZXXX_XXXZ--Сѧѧ��
      ,c.XXRXNL as c_ZXXX_XXRXNL--Сѧ��ѧ����
      ,c.CZXZ as c_ZXXX_CZXZ--����ѧ��
      ,c.CZRXNL as c_ZXXX_CZRXNL--������ѧ����
      ,c.GZXZ as c_ZXXX_GZXZ--����ѧ��
      ,c.ZJXYYM as c_ZXXX_ZJXYYM--����ѧ������
      ,c.FJXYYM as c_ZXXX_FJXYYM--����ѧ������
      ,c.ZSBJ as c_ZXXX_ZSBJ--�����뾶
      ,d.MC as d_XJYDLB_MC--����
      ,e.MC as e_XJYDYY_MC--����
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--ѧУ��
      ,f.GH as f_JZGJBSJ_GH--����
      ,f.XM as f_JZGJBSJ_XM--����
      ,f.YWXM as f_JZGJBSJ_YWXM--Ӣ������
      ,f.XMPY as f_JZGJBSJ_XMPY--����ƴ��
      ,f.CYM as f_JZGJBSJ_CYM--������
      ,f.XBM as f_JZGJBSJ_XBM--�Ա���
      ,fb.MC as f_JZGJBSJ_XBM_MC--����
      ,f.CSRQ as f_JZGJBSJ_CSRQ--��������
      ,f.CSDM as f_JZGJBSJ_CSDM--��������
      ,fc.MC as f_JZGJBSJ_CSDM_MC--����
      ,f.JG as f_JZGJBSJ_JG--����
      ,f.MZM as f_JZGJBSJ_MZM--������
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--��������
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,f.GJDQM as f_JZGJBSJ_GJDQM--����/������
      ,fe.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,fe.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,fe.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--���֤��������
      ,ff.MC as f_JZGJBSJ_SFZJLXM_MC--����
      ,f.SFZJH as f_JZGJBSJ_SFZJH--���֤����
      ,f.HYZKM as f_JZGJBSJ_HYZKM--����״����
      ,f.GATQWM as f_JZGJBSJ_GATQWM--�۰�̨������
      ,fg.MC as f_JZGJBSJ_GATQWM_MC--����
      ,fg.SM as f_JZGJBSJ_GATQWM_SM--˵��
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--������ò��
      ,fh.MC as f_JZGJBSJ_ZZMMM_MC--����
      ,fh.JC as f_JZGJBSJ_ZZMMM_JC--���
      ,f.JKZKM as f_JZGJBSJ_JKZKM--����״����
      ,fi.MC as f_JZGJBSJ_JKZKM_MC--����
      ,fi.SM as f_JZGJBSJ_JKZKM_SM--˵��
      ,f.XYZJM as f_JZGJBSJ_XYZJM--�����ڽ���
      ,fj.MC as f_JZGJBSJ_XYZJM_MC--����
      ,f.XXM as f_JZGJBSJ_XXM--Ѫ����
      ,fk.MC as f_JZGJBSJ_XXM_MC--����
      ,fk.JC as f_JZGJBSJ_XXM_JC--���
      ,f.ZP as f_JZGJBSJ_ZP--��Ƭ
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--���֤����Ч��
      ,f.JGH as f_JZGJBSJ_JGH--������
      ,f.JTZZ as f_JZGJBSJ_JTZZ--��ͥסַ
      ,f.XZZ as f_JZGJBSJ_XZZ--��סַ
      ,f.HKSZD as f_JZGJBSJ_HKSZD--�������ڵ�
      ,f.HKXZM as f_JZGJBSJ_HKXZM--����������
      ,f.XLM as f_JZGJBSJ_XLM--ѧ����
      ,f.GZNY as f_JZGJBSJ_GZNY--�μӹ�������
      ,f.LXNY as f_JZGJBSJ_LXNY--��У����
      ,f.CJNY as f_JZGJBSJ_CJNY--�ӽ�����
      ,f.BZLBM as f_JZGJBSJ_BZLBM--���������
      ,f.DABH as f_JZGJBSJ_DABH--�������
      ,f.DAWB as f_JZGJBSJ_DAWB--�����ı�
      ,f.TXDZ as f_JZGJBSJ_TXDZ--ͨ�ŵ�ַ
      ,f.LXDH as f_JZGJBSJ_LXDH--��ϵ�绰
      ,f.YZBM as f_JZGJBSJ_YZBM--��������
      ,f.DZXX as f_JZGJBSJ_DZXX--��������
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--��ҳ��ַ
      ,f.TC as f_JZGJBSJ_TC--�س�
      ,f.GWZYM as f_JZGJBSJ_GWZYM--��λְҵ��
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--��Ҫ�ο�ѧ��
      ,g.SCHOOLID as g_NJ_SCHOOLID--ѧУ��
      ,g.NJMC as g_NJ_NJMC--�꼶����
      ,h.SCHOOLID as h_NJ_SCHOOLID--ѧУ��
      ,h.NJMC as h_NJ_NJMC--�꼶����

FROM dbo.EDU_ZXXS_07_02_XJYD AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ��ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS c ON a.SCHOOLID = c.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDLB AS d ON a.YDLBM = d.DM /*�춯�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDYY AS e ON a.YDYYM = e.DM /*�춯ԭ����*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.JBRID = f.ID /*������ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS g ON a.YNJ = g.NJ /*ԭ�꼶*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS h ON a.XNJ = h.NJ /*���꼶*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bb ON b.XBM = bb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bc ON b.CSDM = bc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bd ON b.MZM = bd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS be ON b.GJDQM = be.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bf ON b.SFZJLXM = bf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bh ON b.GATQWM = bh.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bi ON b.ZZMMM = bi.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bk ON b.XYZJM = bk.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bl ON b.XXM = bl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fb ON f.XBM = fb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fc ON f.CSDM = fc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fe ON f.GJDQM = fe.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ff ON f.SFZJLXM = ff.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fg ON f.GATQWM = fg.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fh ON f.ZZMMM = fh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS fi ON f.JKZKM = fi.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fj ON f.XYZJM = fj.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fk ON f.XXM = fk.DM /*Ѫ����*/
GO
