
--�ļ������������
CREATE VIEW [dbo].[VIEW_EDU_ZZBG_06_01_WJJQ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WJID]--�ļ�ID
      ,a.[JYSPRID]--����������ID
      ,a.[JYJBRID]--���ľ�����ID
      ,a.[JYR]--������
      ,a.[JYRQ]--��������
      ,a.[JYSPRGH]--���������˹���
      ,a.[JYJBRGH]--���ľ����˹���
      ,a.[JYYY]--����ԭ��
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--����
      ,c.ZTC as c_WJJBSJ_ZTC--�����
      ,c.MJM as c_WJJBSJ_MJM--�ܼ���
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--����
      ,c.YS as c_WJJBSJ_YS--ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--˵��
      ,c.ZW as c_WJJBSJ_ZW--����
      ,c.FJ as c_WJJBSJ_FJ--����
      ,c.FWRQ as c_WJJBSJ_FWRQ--��������
      ,c.CSDW as c_WJJBSJ_CSDW--���͵�λ
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--ѧУ��
      ,d.GH as d_JZGJBSJ_GH--����
      ,d.XM as d_JZGJBSJ_XM--����
      ,d.YWXM as d_JZGJBSJ_YWXM--Ӣ������
      ,d.XMPY as d_JZGJBSJ_XMPY--����ƴ��
      ,d.CYM as d_JZGJBSJ_CYM--������
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--���֤��������
      ,db.MC as d_JZGJBSJ_SFZJLXM_MC--����
      ,d.SFZJH as d_JZGJBSJ_SFZJH--���֤����
      ,d.CSRQ as d_JZGJBSJ_CSRQ--��������
      ,d.XBM as d_JZGJBSJ_XBM--�Ա���
      ,dc.MC as d_JZGJBSJ_XBM_MC--����
      ,d.MZM as d_JZGJBSJ_MZM--������
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--��������
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,d.XXM as d_JZGJBSJ_XXM--Ѫ����
      ,de.MC as d_JZGJBSJ_XXM_MC--����
      ,de.JC as d_JZGJBSJ_XXM_JC--���
      ,d.JKZKM as d_JZGJBSJ_JKZKM--����״����
      ,df.MC as d_JZGJBSJ_JKZKM_MC--����
      ,df.SM as d_JZGJBSJ_JKZKM_SM--˵��
      ,d.HYZTM as d_JZGJBSJ_HYZTM--����״̬��
      ,dg.MC as d_JZGJBSJ_HYZTM_MC--����
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--������ò��
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--����
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--���
      ,d.GATQWM as d_JZGJBSJ_GATQWM--�۰�̨������
      ,di.MC as d_JZGJBSJ_GATQWM_MC--����
      ,di.SM as d_JZGJBSJ_GATQWM_SM--˵��
      ,d.JG as d_JZGJBSJ_JG--����
      ,d.GJDQM as d_JZGJBSJ_GJDQM--����/������
      ,dj.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,dj.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,dj.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,d.CSDXZQHM as d_JZGJBSJ_CSDXZQHM--����������������
      ,dk.MC as d_JZGJBSJ_CSDXZQHM_MC--����
      ,d.XYZJM as d_JZGJBSJ_XYZJM--�����ڽ���
      ,dl.MC as d_JZGJBSJ_XYZJM_MC--����
      ,d.JZGHKSZDXZQHM as d_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,dm.MC as d_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,d.HKLBM as d_JZGJBSJ_HKLBM--���������
      ,dn.MC as d_JZGJBSJ_HKLBM_MC--����
      ,d.DQZZ as d_JZGJBSJ_DQZZ--��ǰסַ
      ,d.DQZZYZBM as d_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,d.CJGZNY as d_JZGJBSJ_CJGZNY--�μӹ�������
      ,d.CJNY as d_JZGJBSJ_CJNY--�ӽ�����
      ,d.LXNY as d_JZGJBSJ_LXNY--��У����
      ,d.BZLBM as d_JZGJBSJ_BZLBM--���������
      ,do.MC as d_JZGJBSJ_BZLBM_MC--����
      ,d.JZGLBM as d_JZGJBSJ_JZGLBM--��ְ�������
      ,dp.MC as d_JZGJBSJ_JZGLBM_MC--����
      ,dp.SM as d_JZGJBSJ_JZGLBM_SM--˵��
      ,d.GWLBM as d_JZGJBSJ_GWLBM--��λ�����
      ,dq.MC as d_JZGJBSJ_GWLBM_MC--����
      ,d.SFJZJS as d_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,dr.MC as d_JZGJBSJ_SFJZJS_MC--����
      ,d.SFSSXJS as d_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,ds.MC as d_JZGJBSJ_SFSSXJS_MC--����
      ,d.ZP as d_JZGJBSJ_ZP--��Ƭ(·��)
      ,d.DQZTM as d_JZGJBSJ_DQZTM--��ǰ״̬��
      ,dt.MC as d_JZGJBSJ_DQZTM_MC--����
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--ѧУ��
      ,e.GH as e_JZGJBSJ_GH--����
      ,e.XM as e_JZGJBSJ_XM--����
      ,e.YWXM as e_JZGJBSJ_YWXM--Ӣ������
      ,e.XMPY as e_JZGJBSJ_XMPY--����ƴ��
      ,e.CYM as e_JZGJBSJ_CYM--������
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--���֤��������
      ,eb.MC as e_JZGJBSJ_SFZJLXM_MC--����
      ,e.SFZJH as e_JZGJBSJ_SFZJH--���֤����
      ,e.CSRQ as e_JZGJBSJ_CSRQ--��������
      ,e.XBM as e_JZGJBSJ_XBM--�Ա���
      ,ec.MC as e_JZGJBSJ_XBM_MC--����
      ,e.MZM as e_JZGJBSJ_MZM--������
      ,ed.MZMC as e_JZGJBSJ_MZM_MZMC--��������
      ,ed.ZMDM as e_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,e.XXM as e_JZGJBSJ_XXM--Ѫ����
      ,ee.MC as e_JZGJBSJ_XXM_MC--����
      ,ee.JC as e_JZGJBSJ_XXM_JC--���
      ,e.JKZKM as e_JZGJBSJ_JKZKM--����״����
      ,ef.MC as e_JZGJBSJ_JKZKM_MC--����
      ,ef.SM as e_JZGJBSJ_JKZKM_SM--˵��
      ,e.HYZTM as e_JZGJBSJ_HYZTM--����״̬��
      ,eg.MC as e_JZGJBSJ_HYZTM_MC--����
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--������ò��
      ,eh.MC as e_JZGJBSJ_ZZMMM_MC--����
      ,eh.JC as e_JZGJBSJ_ZZMMM_JC--���
      ,e.GATQWM as e_JZGJBSJ_GATQWM--�۰�̨������
      ,ei.MC as e_JZGJBSJ_GATQWM_MC--����
      ,ei.SM as e_JZGJBSJ_GATQWM_SM--˵��
      ,e.JG as e_JZGJBSJ_JG--����
      ,e.GJDQM as e_JZGJBSJ_GJDQM--����/������
      ,ej.GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,ej.EZMDM as e_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,ej.SZMDM as e_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,e.CSDXZQHM as e_JZGJBSJ_CSDXZQHM--����������������
      ,ek.MC as e_JZGJBSJ_CSDXZQHM_MC--����
      ,e.XYZJM as e_JZGJBSJ_XYZJM--�����ڽ���
      ,el.MC as e_JZGJBSJ_XYZJM_MC--����
      ,e.JZGHKSZDXZQHM as e_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,em.MC as e_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,e.HKLBM as e_JZGJBSJ_HKLBM--���������
      ,en.MC as e_JZGJBSJ_HKLBM_MC--����
      ,e.DQZZ as e_JZGJBSJ_DQZZ--��ǰסַ
      ,e.DQZZYZBM as e_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,e.CJGZNY as e_JZGJBSJ_CJGZNY--�μӹ�������
      ,e.CJNY as e_JZGJBSJ_CJNY--�ӽ�����
      ,e.LXNY as e_JZGJBSJ_LXNY--��У����
      ,e.BZLBM as e_JZGJBSJ_BZLBM--���������
      ,eo.MC as e_JZGJBSJ_BZLBM_MC--����
      ,e.JZGLBM as e_JZGJBSJ_JZGLBM--��ְ�������
      ,ep.MC as e_JZGJBSJ_JZGLBM_MC--����
      ,ep.SM as e_JZGJBSJ_JZGLBM_SM--˵��
      ,e.GWLBM as e_JZGJBSJ_GWLBM--��λ�����
      ,eq.MC as e_JZGJBSJ_GWLBM_MC--����
      ,e.SFJZJS as e_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,er.MC as e_JZGJBSJ_SFJZJS_MC--����
      ,e.SFSSXJS as e_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,es.MC as e_JZGJBSJ_SFSSXJS_MC--����
      ,e.ZP as e_JZGJBSJ_ZP--��Ƭ(·��)
      ,e.DQZTM as e_JZGJBSJ_DQZTM--��ǰ״̬��
      ,et.MC as e_JZGJBSJ_DQZTM_MC--����

FROM dbo.EDU_ZZBG_06_01_WJJQ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS d ON a.JYSPRID = d.ID /*����������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.JYJBRID = e.ID /*���ľ�����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS db ON d.SFZJLXM = db.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS dc ON d.XBM = dc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS de ON d.XXM = de.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS df ON d.JKZKM = df.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZTM = dg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS di ON d.GATQWM = di.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS dj ON d.GJDQM = dj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dk ON d.CSDXZQHM = dk.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dl ON d.XYZJM = dl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dm ON d.JZGHKSZDXZQHM = dm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dn ON d.HKLBM = dn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS do ON d.BZLBM = do.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS dp ON d.JZGLBM = dp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS dq ON d.GWLBM = dq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dr ON d.SFJZJS = dr.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ds ON d.SFSSXJS = ds.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS dt ON d.DQZTM = dt.DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS eb ON e.SFZJLXM = eb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS ec ON e.XBM = ec.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ed ON e.MZM = ed.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ee ON e.XXM = ee.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ef ON e.JKZKM = ef.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS eg ON e.HYZTM = eg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS eh ON e.ZZMMM = eh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ei ON e.GATQWM = ei.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ej ON e.GJDQM = ej.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ek ON e.CSDXZQHM = ek.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS el ON e.XYZJM = el.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS em ON e.JZGHKSZDXZQHM = em.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS en ON e.HKLBM = en.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS eo ON e.BZLBM = eo.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS ep ON e.JZGLBM = ep.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS eq ON e.GWLBM = eq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS er ON e.SFJZJS = er.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS es ON e.SFSSXJS = es.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS et ON e.DQZTM = et.DM /*��ǰ״̬��*/
GO
