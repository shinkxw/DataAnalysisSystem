
--�ļ������������
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_05_01_WJXH_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WJID]--�ļ�ID
      ,a.[XHSPRID]--����������ID
      ,a.[JBRID]--������ID
      ,a.[XHRQ]--��������
      ,a.[XHSPRGH]--���������˹���
      ,a.[XHSM]--����˵��
      ,a.[JBRGH]--�����˹���
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
      ,d.XBM as d_JZGJBSJ_XBM--�Ա���
      ,db.MC as d_JZGJBSJ_XBM_MC--����
      ,d.CSRQ as d_JZGJBSJ_CSRQ--��������
      ,d.CSDM as d_JZGJBSJ_CSDM--��������
      ,dc.MC as d_JZGJBSJ_CSDM_MC--����
      ,d.JG as d_JZGJBSJ_JG--����
      ,d.MZM as d_JZGJBSJ_MZM--������
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--��������
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,d.GJDQM as d_JZGJBSJ_GJDQM--����/������
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--���֤��������
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--����
      ,d.SFZJH as d_JZGJBSJ_SFZJH--���֤����
      ,d.HYZKM as d_JZGJBSJ_HYZKM--����״����
      ,d.GATQWM as d_JZGJBSJ_GATQWM--�۰�̨������
      ,dg.MC as d_JZGJBSJ_GATQWM_MC--����
      ,dg.SM as d_JZGJBSJ_GATQWM_SM--˵��
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--������ò��
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--����
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--���
      ,d.JKZKM as d_JZGJBSJ_JKZKM--����״����
      ,di.MC as d_JZGJBSJ_JKZKM_MC--����
      ,di.SM as d_JZGJBSJ_JKZKM_SM--˵��
      ,d.XYZJM as d_JZGJBSJ_XYZJM--�����ڽ���
      ,dj.MC as d_JZGJBSJ_XYZJM_MC--����
      ,d.XXM as d_JZGJBSJ_XXM--Ѫ����
      ,dk.MC as d_JZGJBSJ_XXM_MC--����
      ,dk.JC as d_JZGJBSJ_XXM_JC--���
      ,d.ZP as d_JZGJBSJ_ZP--��Ƭ
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--���֤����Ч��
      ,d.JGH as d_JZGJBSJ_JGH--������
      ,d.JTZZ as d_JZGJBSJ_JTZZ--��ͥסַ
      ,d.XZZ as d_JZGJBSJ_XZZ--��סַ
      ,d.HKSZD as d_JZGJBSJ_HKSZD--�������ڵ�
      ,d.HKXZM as d_JZGJBSJ_HKXZM--����������
      ,d.XLM as d_JZGJBSJ_XLM--ѧ����
      ,d.GZNY as d_JZGJBSJ_GZNY--�μӹ�������
      ,d.LXNY as d_JZGJBSJ_LXNY--��У����
      ,d.CJNY as d_JZGJBSJ_CJNY--�ӽ�����
      ,d.BZLBM as d_JZGJBSJ_BZLBM--���������
      ,d.DABH as d_JZGJBSJ_DABH--�������
      ,d.DAWB as d_JZGJBSJ_DAWB--�����ı�
      ,d.TXDZ as d_JZGJBSJ_TXDZ--ͨ�ŵ�ַ
      ,d.LXDH as d_JZGJBSJ_LXDH--��ϵ�绰
      ,d.YZBM as d_JZGJBSJ_YZBM--��������
      ,d.DZXX as d_JZGJBSJ_DZXX--��������
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--��ҳ��ַ
      ,d.TC as d_JZGJBSJ_TC--�س�
      ,d.GWZYM as d_JZGJBSJ_GWZYM--��λְҵ��
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--��Ҫ�ο�ѧ��
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--ѧУ��
      ,e.GH as e_JZGJBSJ_GH--����
      ,e.XM as e_JZGJBSJ_XM--����
      ,e.YWXM as e_JZGJBSJ_YWXM--Ӣ������
      ,e.XMPY as e_JZGJBSJ_XMPY--����ƴ��
      ,e.CYM as e_JZGJBSJ_CYM--������
      ,e.XBM as e_JZGJBSJ_XBM--�Ա���
      ,eb.MC as e_JZGJBSJ_XBM_MC--����
      ,e.CSRQ as e_JZGJBSJ_CSRQ--��������
      ,e.CSDM as e_JZGJBSJ_CSDM--��������
      ,ec.MC as e_JZGJBSJ_CSDM_MC--����
      ,e.JG as e_JZGJBSJ_JG--����
      ,e.MZM as e_JZGJBSJ_MZM--������
      ,ed.MZMC as e_JZGJBSJ_MZM_MZMC--��������
      ,ed.ZMDM as e_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,e.GJDQM as e_JZGJBSJ_GJDQM--����/������
      ,ee.GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,ee.EZMDM as e_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,ee.SZMDM as e_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--���֤��������
      ,ef.MC as e_JZGJBSJ_SFZJLXM_MC--����
      ,e.SFZJH as e_JZGJBSJ_SFZJH--���֤����
      ,e.HYZKM as e_JZGJBSJ_HYZKM--����״����
      ,e.GATQWM as e_JZGJBSJ_GATQWM--�۰�̨������
      ,eg.MC as e_JZGJBSJ_GATQWM_MC--����
      ,eg.SM as e_JZGJBSJ_GATQWM_SM--˵��
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--������ò��
      ,eh.MC as e_JZGJBSJ_ZZMMM_MC--����
      ,eh.JC as e_JZGJBSJ_ZZMMM_JC--���
      ,e.JKZKM as e_JZGJBSJ_JKZKM--����״����
      ,ei.MC as e_JZGJBSJ_JKZKM_MC--����
      ,ei.SM as e_JZGJBSJ_JKZKM_SM--˵��
      ,e.XYZJM as e_JZGJBSJ_XYZJM--�����ڽ���
      ,ej.MC as e_JZGJBSJ_XYZJM_MC--����
      ,e.XXM as e_JZGJBSJ_XXM--Ѫ����
      ,ek.MC as e_JZGJBSJ_XXM_MC--����
      ,ek.JC as e_JZGJBSJ_XXM_JC--���
      ,e.ZP as e_JZGJBSJ_ZP--��Ƭ
      ,e.SFZJYXQ as e_JZGJBSJ_SFZJYXQ--���֤����Ч��
      ,e.JGH as e_JZGJBSJ_JGH--������
      ,e.JTZZ as e_JZGJBSJ_JTZZ--��ͥסַ
      ,e.XZZ as e_JZGJBSJ_XZZ--��סַ
      ,e.HKSZD as e_JZGJBSJ_HKSZD--�������ڵ�
      ,e.HKXZM as e_JZGJBSJ_HKXZM--����������
      ,e.XLM as e_JZGJBSJ_XLM--ѧ����
      ,e.GZNY as e_JZGJBSJ_GZNY--�μӹ�������
      ,e.LXNY as e_JZGJBSJ_LXNY--��У����
      ,e.CJNY as e_JZGJBSJ_CJNY--�ӽ�����
      ,e.BZLBM as e_JZGJBSJ_BZLBM--���������
      ,e.DABH as e_JZGJBSJ_DABH--�������
      ,e.DAWB as e_JZGJBSJ_DAWB--�����ı�
      ,e.TXDZ as e_JZGJBSJ_TXDZ--ͨ�ŵ�ַ
      ,e.LXDH as e_JZGJBSJ_LXDH--��ϵ�绰
      ,e.YZBM as e_JZGJBSJ_YZBM--��������
      ,e.DZXX as e_JZGJBSJ_DZXX--��������
      ,e.ZYDZ as e_JZGJBSJ_ZYDZ--��ҳ��ַ
      ,e.TC as e_JZGJBSJ_TC--�س�
      ,e.GWZYM as e_JZGJBSJ_GWZYM--��λְҵ��
      ,e.ZYRKXD as e_JZGJBSJ_ZYRKXD--��Ҫ�ο�ѧ��

FROM dbo.EDU_ZXBG_05_01_WJXH AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.XHSPRID = d.ID /*����������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS e ON a.JBRID = e.ID /*������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dg ON d.GATQWM = dg.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS di ON d.JKZKM = di.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dj ON d.XYZJM = dj.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dk ON d.XXM = dk.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS eb ON e.XBM = eb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ec ON e.CSDM = ec.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ed ON e.MZM = ed.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ee ON e.GJDQM = ee.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ef ON e.SFZJLXM = ef.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS eg ON e.GATQWM = eg.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS eh ON e.ZZMMM = eh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ei ON e.JKZKM = ei.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ej ON e.XYZJM = ej.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ek ON e.XXM = ek.DM /*Ѫ����*/
GO
