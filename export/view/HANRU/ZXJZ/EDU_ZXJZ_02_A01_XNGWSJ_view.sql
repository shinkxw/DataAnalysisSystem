
--У�ڸ�λ���������
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_02_A01_XNGWSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[GWID]--��λ��ID
      ,a.[JZGJBSJID]--��ְ���������������
      ,a.[GWQSNY]--��λ��ʼ����
      ,a.[GWJSNY]--��λ��������
      ,a.[SFZG]--�Ƿ��ڸ�
      ,a.[ZWMC]--ְ������
      ,a.[JGH]--������
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_JGGW_SCHOOLID--ѧУID
      ,c.JGH as c_JGGW_JGH--������
      ,c.GWBH as c_JGGW_GWBH--��λ���
      ,c.GWMC as c_JGGW_GWMC--��λ����
      ,c.GWSM as c_JGGW_GWSM--��λ˵��
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
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--����֤��������
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--����
      ,d.SFZJH as d_JZGJBSJ_SFZJH--����֤����
      ,d.HYZKM as d_JZGJBSJ_HYZKM--����״����
      ,dg.MC as d_JZGJBSJ_HYZKM_MC--����
      ,d.GATQWM as d_JZGJBSJ_GATQWM--�۰�̨������
      ,dh.MC as d_JZGJBSJ_GATQWM_MC--����
      ,dh.SM as d_JZGJBSJ_GATQWM_SM--˵��
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--������ò��
      ,di.MC as d_JZGJBSJ_ZZMMM_MC--����
      ,di.JC as d_JZGJBSJ_ZZMMM_JC--���
      ,d.JKZKM as d_JZGJBSJ_JKZKM--����״����
      ,dj.MC as d_JZGJBSJ_JKZKM_MC--����
      ,dj.SM as d_JZGJBSJ_JKZKM_SM--˵��
      ,d.XYZJM as d_JZGJBSJ_XYZJM--�����ڽ���
      ,dk.MC as d_JZGJBSJ_XYZJM_MC--����
      ,d.XXM as d_JZGJBSJ_XXM--Ѫ����
      ,dl.MC as d_JZGJBSJ_XXM_MC--����
      ,dl.JC as d_JZGJBSJ_XXM_JC--���
      ,d.ZP as d_JZGJBSJ_ZP--��Ƭ
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--����֤����Ч��
      ,d.JGH as d_JZGJBSJ_JGH--������
      ,d.JTZZ as d_JZGJBSJ_JTZZ--��ͥסַ
      ,d.XZZ as d_JZGJBSJ_XZZ--��סַ
      ,d.HKSZD as d_JZGJBSJ_HKSZD--�������ڵ�
      ,d.HKXZM as d_JZGJBSJ_HKXZM--����������
      ,dm.MC as d_JZGJBSJ_HKXZM_MC--����
      ,d.XLM as d_JZGJBSJ_XLM--ѧ����
      ,dn.MC as d_JZGJBSJ_XLM_MC--����
      ,d.GZNY as d_JZGJBSJ_GZNY--�μӹ�������
      ,d.LXNY as d_JZGJBSJ_LXNY--��У����
      ,d.CJNY as d_JZGJBSJ_CJNY--�ӽ�����
      ,d.BZLBM as d_JZGJBSJ_BZLBM--���������
      ,do.MC as d_JZGJBSJ_BZLBM_MC--����
      ,d.DABH as d_JZGJBSJ_DABH--�������
      ,d.DAWB as d_JZGJBSJ_DAWB--�����ı�
      ,d.TXDZ as d_JZGJBSJ_TXDZ--ͨ�ŵ�ַ
      ,d.LXDH as d_JZGJBSJ_LXDH--��ϵ�绰
      ,d.YZBM as d_JZGJBSJ_YZBM--��������
      ,d.DZXX as d_JZGJBSJ_DZXX--��������
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--��ҳ��ַ
      ,d.TC as d_JZGJBSJ_TC--�س�
      ,d.GWZYM as d_JZGJBSJ_GWZYM--��λְҵ��
      ,dp.MC as d_JZGJBSJ_GWZYM_MC--����
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--��Ҫ�ο�ѧ��
      ,dq.MC as d_JZGJBSJ_ZYRKXD_MC--����
      ,e.MC as e_SFBZ_MC--����
      ,f.SCHOOLID as f_JG_SCHOOLID--ѧУ��
      ,f.LSJGH as f_JG_LSJGH--����������
      ,f.JGMC as f_JG_JGMC--��������
      ,f.JGJC as f_JG_JGJC--�������
      ,f.FZRGH as f_JG_FZRGH--�����˹���

FROM dbo.EDU_ZXJZ_02_A01_XNGWSJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_A01_JGGW AS c ON a.GWID = c.ID /*��λ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.JZGJBSJID = d.ID /*��ְ���������������*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFZG = e.DM /*�Ƿ��ڸ�*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS f ON a.JGH = f.JGH /*������*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*����֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZKM = dg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dh ON d.GATQWM = dh.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS di ON d.ZZMMM = di.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS dj ON d.JKZKM = dj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dk ON d.XYZJM = dk.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dl ON d.XXM = dl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dm ON d.HKXZM = dm.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS dn ON d.XLM = dn.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS do ON d.BZLBM = do.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS dp ON d.GWZYM = dp.DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS dq ON d.ZYRKXD = dq.DM /*��Ҫ�ο�ѧ��*/
GO