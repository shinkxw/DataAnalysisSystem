
--ʵϰͶ�߱�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A08_SXTS_DISP]
AS
SELECT a.[ID]--ʵϰͶ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[QYID]--��ҵID
      ,a.[SXJHID]--ʵϰ�ƻ�ID
      ,a.[XSXXID]--Ͷ��ѧ��ID
      ,a.[TSSJ]--Ͷ��ʱ��
      ,a.[TSYY]--Ͷ��ԭ��
      ,a.[TSJG]--Ͷ�߽��
      ,a.[QYJY]--��ҵ����
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_XWSXJDXX_SCHOOLID--ѧУ��
      ,c.QYBH as c_XWSXJDXX_QYBH--��ҵ���
      ,c.JDHZHTBH as c_XWSXJDXX_JDHZHTBH--���غ�����ͬ���
      ,c.JDHZHTMC as c_XWSXJDXX_JDHZHTMC--���غ�����ͬ����
      ,c.JDLBM as c_XWSXJDXX_JDLBM--���������
      ,cb.MC as c_XWSXJDXX_JDLBM_MC--����
      ,c.DWMC as c_XWSXJDXX_DWMC--��λ����
      ,c.QYXZQ as c_XWSXJDXX_QYXZQ--��ҵ������
      ,cc.MC as c_XWSXJDXX_QYXZQ_MC--����
      ,c.QYDZ as c_XWSXJDXX_QYDZ--��ҵ��ַ
      ,c.QYXZ as c_XWSXJDXX_QYXZ--��ҵ����
      ,cd.MC as c_XWSXJDXX_QYXZ_MC--����
      ,c.FRDB as c_XWSXJDXX_FRDB--���˴���
      ,c.QYLXR as c_XWSXJDXX_QYLXR--��ҵ��ϵ��
      ,c.QYYZBM as c_XWSXJDXX_QYYZBM--��ҵ��������
      ,c.QYLXDH as c_XWSXJDXX_QYLXDH--��ҵ��ϵ�绰
      ,c.QYYYZZ as c_XWSXJDXX_QYYYZZ--��ҵӪҵִ��
      ,c.QYLX as c_XWSXJDXX_QYLX--��ҵ����
      ,c.QYRS as c_XWSXJDXX_QYRS--��ҵ����
      ,c.QYZCZJ as c_XWSXJDXX_QYZCZJ--��ҵע���ʽ�
      ,c.QYCZ as c_XWSXJDXX_QYCZ--��ҵ����
      ,c.QYFZR as c_XWSXJDXX_QYFZR--��ҵ������
      ,c.FZRZW as c_XWSXJDXX_FZRZW--������ְλ
      ,c.FZRLXDH as c_XWSXJDXX_FZRLXDH--��������ϵ�绰
      ,c.QYYXDZ as c_XWSXJDXX_QYYXDZ--��ҵ�����ַ
      ,c.QYQQ as c_XWSXJDXX_QYQQ--��ҵQQ
      ,c.QYMSN as c_XWSXJDXX_QYMSN--��ҵMSN
      ,c.QYWZ as c_XWSXJDXX_QYWZ--��ҵ��ַ
      ,c.QYJJ as c_XWSXJDXX_QYJJ--��ҵ���
      ,c.SHZT as c_XWSXJDXX_SHZT--���״̬
      ,d.SCHOOLID as d_XXSXJH_SCHOOLID--ѧУID
      ,d.JHBT as d_XXSXJH_JHBT--�ƻ�����
      ,d.NJ as d_XXSXJH_NJ--�꼶
      ,d.BGXS as d_XXSXJH_BGXS--������ʽ
      ,d.SFSX as d_XXSXJH_SFSX--�ƻ��Ƿ���Ч
      ,db.MC as d_XXSXJH_SFSX_MC--����
      ,e.SCHOOLID as e_XSXX_SCHOOLID--ѧУ��
      ,e.XH as e_XSXX_XH--ѧ��
      ,e.XM as e_XSXX_XM--����
      ,e.YWXM as e_XSXX_YWXM--Ӣ������
      ,e.XMPY as e_XSXX_XMPY--����ƴ��
      ,e.CYM as e_XSXX_CYM--������
      ,e.SFZJLXM as e_XSXX_SFZJLXM--���֤��������
      ,eb.MC as e_XSXX_SFZJLXM_MC--����
      ,e.SFZJH as e_XSXX_SFZJH--���֤����
      ,e.XBM as e_XSXX_XBM--�Ա���
      ,ec.MC as e_XSXX_XBM_MC--����
      ,e.XXM as e_XSXX_XXM--Ѫ����
      ,ed.MC as e_XSXX_XXM_MC--����
      ,ed.JC as e_XSXX_XXM_JC--���
      ,e.CSRQ as e_XSXX_CSRQ--��������
      ,e.CSDM as e_XSXX_CSDM--��������
      ,ee.MC as e_XSXX_CSDM_MC--����
      ,e.JG as e_XSXX_JG--����
      ,e.MZM as e_XSXX_MZM--������
      ,ef.MZMC as e_XSXX_MZM_MZMC--��������
      ,ef.ZMDM as e_XSXX_MZM_ZMDM--��ĸ����
      ,e.HYZKM as e_XSXX_HYZKM--����״����
      ,eg.MC as e_XSXX_HYZKM_MC--����
      ,e.XYZJM as e_XSXX_XYZJM--�����ڽ���
      ,eh.MC as e_XSXX_XYZJM_MC--����
      ,e.GATQWM as e_XSXX_GATQWM--�۰�̨������
      ,ei.MC as e_XSXX_GATQWM_MC--����
      ,ei.SM as e_XSXX_GATQWM_SM--˵��
      ,e.JKZKM as e_XSXX_JKZKM--����״����
      ,ej.MC as e_XSXX_JKZKM_MC--����
      ,ej.SM as e_XSXX_JKZKM_SM--˵��
      ,e.ZZMMM as e_XSXX_ZZMMM--������ò��
      ,ek.MC as e_XSXX_ZZMMM_MC--����
      ,ek.JC as e_XSXX_ZZMMM_JC--���
      ,e.HKSZDXZQHM as e_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,el.MC as e_XSXX_HKSZDXZQHM_MC--����
      ,e.HKLBM as e_XSXX_HKLBM--���������
      ,em.MC as e_XSXX_HKLBM_MC--����
      ,e.SFSLDRK as e_XSXX_SFSLDRK--�Ƿ��������˿�
      ,en.MC as e_XSXX_SFSLDRK_MC--����
      ,e.GJDQM as e_XSXX_GJDQM--����/����
      ,eo.GJDQMCJC as e_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,eo.EZMDM as e_XSXX_GJDQM_EZMDM--����ĸ����
      ,eo.SZMDM as e_XSXX_GJDQM_SZMDM--����ĸ����
      ,e.TC as e_XSXX_TC--�س�
      ,e.XSLXDH as e_XSXX_XSLXDH--ѧ����ϵ�绰
      ,e.WLDZ as e_XSXX_WLDZ--�����ַ
      ,e.JSTXH as e_XSXX_JSTXH--��ʱͨѶ��
      ,e.DZXX as e_XSXX_DZXX--��������
      ,e.ZP as e_XSXX_ZP--��Ƭ(·��)

FROM dbo.EDU_ZZJX_07_A08_SXTS AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS c ON a.QYID = c.ID /*��ҵID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS d ON a.SXJHID = d.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS e ON a.XSXXID = e.ID /*Ͷ��ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS cb ON c.JDLBM = cb.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.QYXZQ = cc.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS cd ON c.QYXZ = cd.DM /*��ҵ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFSX = db.DM /*�ƻ��Ƿ���Ч*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS eb ON e.SFZJLXM = eb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS ec ON e.XBM = ec.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ed ON e.XXM = ed.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ee ON e.CSDM = ee.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ef ON e.MZM = ef.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS eg ON e.HYZKM = eg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS eh ON e.XYZJM = eh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ei ON e.GATQWM = ei.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ej ON e.JKZKM = ej.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ek ON e.ZZMMM = ek.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS el ON e.HKSZDXZQHM = el.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS em ON e.HKLBM = em.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS en ON e.SFSLDRK = en.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS eo ON e.GJDQM = eo.DM /*����/����*/
GO
