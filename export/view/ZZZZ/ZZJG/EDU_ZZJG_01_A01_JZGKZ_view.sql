
--��ְ����չ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_01_A01_JZGKZ_DISP]
AS
SELECT a.[JZGJBSJID]--�̹�������ϢID
      ,a.[SCHOOLID]--ѧУID
      ,a.[JL]--����
      ,a.[GL]--����
      ,a.[GZJY]--��������
      ,a.[LDJN]--�Ͷ�����
      ,a.[XXJL]--ѧϰ����
      ,b.SCHOOLID as b_JZGJBSJ_SCHOOLID--ѧУ��
      ,b.GH as b_JZGJBSJ_GH--����
      ,b.XM as b_JZGJBSJ_XM--����
      ,b.YWXM as b_JZGJBSJ_YWXM--Ӣ������
      ,b.XMPY as b_JZGJBSJ_XMPY--����ƴ��
      ,b.CYM as b_JZGJBSJ_CYM--������
      ,b.SFZJLXM as b_JZGJBSJ_SFZJLXM--���֤��������
      ,bb.MC as b_JZGJBSJ_SFZJLXM_MC--����
      ,b.SFZJH as b_JZGJBSJ_SFZJH--���֤����
      ,b.CSRQ as b_JZGJBSJ_CSRQ--��������
      ,b.XBM as b_JZGJBSJ_XBM--�Ա���
      ,bc.MC as b_JZGJBSJ_XBM_MC--����
      ,b.MZM as b_JZGJBSJ_MZM--������
      ,bd.MZMC as b_JZGJBSJ_MZM_MZMC--��������
      ,bd.ZMDM as b_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,b.XXM as b_JZGJBSJ_XXM--Ѫ����
      ,be.MC as b_JZGJBSJ_XXM_MC--����
      ,be.JC as b_JZGJBSJ_XXM_JC--���
      ,b.JKZKM as b_JZGJBSJ_JKZKM--����״����
      ,bf.MC as b_JZGJBSJ_JKZKM_MC--����
      ,bf.SM as b_JZGJBSJ_JKZKM_SM--˵��
      ,b.HYZTM as b_JZGJBSJ_HYZTM--����״̬��
      ,bg.MC as b_JZGJBSJ_HYZTM_MC--����
      ,b.ZZMMM as b_JZGJBSJ_ZZMMM--������ò��
      ,bh.MC as b_JZGJBSJ_ZZMMM_MC--����
      ,bh.JC as b_JZGJBSJ_ZZMMM_JC--���
      ,b.GATQWM as b_JZGJBSJ_GATQWM--�۰�̨������
      ,bi.MC as b_JZGJBSJ_GATQWM_MC--����
      ,bi.SM as b_JZGJBSJ_GATQWM_SM--˵��
      ,b.JG as b_JZGJBSJ_JG--����
      ,b.GJDQM as b_JZGJBSJ_GJDQM--����/������
      ,bj.GJDQMCJC as b_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,bj.EZMDM as b_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,bj.SZMDM as b_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,b.CSDXZQHM as b_JZGJBSJ_CSDXZQHM--����������������
      ,bk.MC as b_JZGJBSJ_CSDXZQHM_MC--����
      ,b.XYZJM as b_JZGJBSJ_XYZJM--�����ڽ���
      ,bl.MC as b_JZGJBSJ_XYZJM_MC--����
      ,b.JZGHKSZDXZQHM as b_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,bm.MC as b_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,b.HKLBM as b_JZGJBSJ_HKLBM--���������
      ,bn.MC as b_JZGJBSJ_HKLBM_MC--����
      ,b.DQZZ as b_JZGJBSJ_DQZZ--��ǰסַ
      ,b.DQZZYZBM as b_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,b.CJGZNY as b_JZGJBSJ_CJGZNY--�μӹ�������
      ,b.CJNY as b_JZGJBSJ_CJNY--�ӽ�����
      ,b.LXNY as b_JZGJBSJ_LXNY--��У����
      ,b.BZLBM as b_JZGJBSJ_BZLBM--���������
      ,bo.MC as b_JZGJBSJ_BZLBM_MC--����
      ,b.JZGLBM as b_JZGJBSJ_JZGLBM--��ְ�������
      ,bp.MC as b_JZGJBSJ_JZGLBM_MC--����
      ,bp.SM as b_JZGJBSJ_JZGLBM_SM--˵��
      ,b.GWLBM as b_JZGJBSJ_GWLBM--��λ�����
      ,bq.MC as b_JZGJBSJ_GWLBM_MC--����
      ,b.SFJZJS as b_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,br.MC as b_JZGJBSJ_SFJZJS_MC--����
      ,b.SFSSXJS as b_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,bs.MC as b_JZGJBSJ_SFSSXJS_MC--����
      ,b.ZP as b_JZGJBSJ_ZP--��Ƭ(·��)
      ,b.DQZTM as b_JZGJBSJ_DQZTM--��ǰ״̬��
      ,bt.MC as b_JZGJBSJ_DQZTM_MC--����
      ,c.XXDM as c_ZZXX_XXDM--ѧУ����
      ,c.XXMC as c_ZZXX_XXMC--ѧУ����
      ,c.XXYWMC as c_ZZXX_XXYWMC--ѧУӢ������
      ,c.XXJBZM as c_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,cb.MC as c_ZZXX_XXJBZM_MC--����
      ,cb.SM as c_ZZXX_XXJBZM_SM--˵��
      ,c.XXZGBMM as c_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,cc.MC as c_ZZXX_XXZGBMM_MC--����
      ,cc.SM as c_ZZXX_XXZGBMM_SM--˵��
      ,c.XXDZ as c_ZZXX_XXDZ--ѧУ��ַ
      ,c.XXYZBM as c_ZZXX_XXYZBM--ѧУ��������
      ,c.XZQHM as c_ZZXX_XZQHM--����������
      ,cd.MC as c_ZZXX_XZQHM_MC--����
      ,c.JXNY as c_ZZXX_JXNY--��У����
      ,c.XQR as c_ZZXX_XQR--У����
      ,c.CLBJ as c_ZZXX_CLBJ--��������
      ,c.LSYG as c_ZZXX_LSYG--��ʷ�ظ�
      ,c.XXXQS as c_ZZXX_XXXQS--ѧУУ����
      ,c.XXPGLX as c_ZZXX_XXPGLX--ѧУ��������
      ,ce.MC as c_ZZXX_XXPGLX_MC--����
      ,c.XXPGQKSM as c_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,c.ZYDZ as c_ZZXX_ZYDZ--��ҳ��ַ
      ,c.FDDBRH as c_ZZXX_FDDBRH--���������˺�
      ,c.FRZSH as c_ZZXX_FRZSH--����֤���
      ,c.LXDH as c_ZZXX_LXDH--��ϵ�绰
      ,c.CZDH as c_ZZXX_CZDH--����绰
      ,c.DZXX as c_ZZXX_DZXX--��������

FROM dbo.EDU_ZZJG_01_A01_JZGKZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS b ON a.JZGJBSJID = b.ID /*�̹�������ϢID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bd ON b.MZM = bd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS be ON b.XXM = be.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bf ON b.JKZKM = bf.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZTM = bg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bh ON b.ZZMMM = bh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bj ON b.GJDQM = bj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bk ON b.CSDXZQHM = bk.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bl ON b.XYZJM = bl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bm ON b.JZGHKSZDXZQHM = bm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bn ON b.HKLBM = bn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS bo ON b.BZLBM = bo.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS bp ON b.JZGLBM = bp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS bq ON b.GWLBM = bq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS br ON b.SFJZJS = br.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bs ON b.SFSSXJS = bs.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS bt ON b.DQZTM = bt.DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*ѧУ��������*/
GO
