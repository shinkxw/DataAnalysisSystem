
--�����������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_08_A01_TKSQSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[JSID]--��ʦ
      ,a.[KCID]--�γ�
      ,a.[TKLXID]--��������ID
      ,a.[TKQQSZ]--����ǰ��ʼ��
      ,a.[TKQJSZ]--����ǰ������
      ,a.[TKQXQ]--����ǰ����
      ,a.[TKQSD]--����ǰʱ��
      ,a.[TKQJC]--����ǰ�ڴ�
      ,a.[TKHQSZ]--���κ���ʼ��
      ,a.[TKHJSZ]--���κ������
      ,a.[TKHXQ]--���κ�����
      ,a.[TKHSD]--���κ�ʱ��
      ,a.[TKHJC]--���κ�ڴ�
      ,a.[ZT]--��ǰ״̬
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,c.GH as c_JZGJBSJ_GH--��ְ��������������� ����
      ,c.XM as c_JZGJBSJ_XM--��ְ��������������� ����
      ,c.YWXM as c_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--��ְ��������������� ������
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,c.XBM as c_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,cc.MC as c_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,c.MZM as c_JZGJBSJ_MZM--��ְ��������������� ������
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.XXM as c_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,ce.MC as c_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,ce.JC as c_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.HYZTM as c_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--����״������ ����
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,c.GATQWM as c_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JG as c_JZGJBSJ_JG--��ְ��������������� ����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.XYZJM as c_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--���������� ����
      ,c.DQZZ as c_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,c.CJNY as c_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,c.LXNY as c_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,co.MC as c_JZGJBSJ_BZLBM_MC--����������� ����
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,c.GWLBM as c_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,c.ZP as c_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,c.YDDH as c_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,c.GDDH as c_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,c.TXDZYZBM as c_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,c.TXDZ as c_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,c.DZXX as c_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,c.WLDZ as c_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,c.JSTXH as c_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,d.SCHOOLID as d_KC_SCHOOLID--�γ���������� ѧУID
      ,d.KCMC as d_KC_KCMC--�γ���������� �γ�����
      ,d.KCYWM as d_KC_KCYWM--�γ���������� �γ�Ӣ����
      ,d.KCBM as d_KC_KCBM--�γ���������� �γ̱���
      ,d.KCJS as d_KC_KCJS--�γ���������� �γ̽���
      ,d.XF as d_KC_XF--�γ���������� ѧ��
      ,d.ZXS as d_KC_ZXS--�γ���������� ��ѧʱ
      ,d.LLXS as d_KC_LLXS--�γ���������� ����ѧʱ
      ,d.SJXS as d_KC_SJXS--�γ���������� ʵ��ѧʱ
      ,d.QTXS as d_KC_QTXS--�γ���������� ����ѧʱ
      ,d.CKSM as d_KC_CKSM--�γ���������� �ο���Ŀ
      ,d.KKDW as d_KC_KKDW--�γ���������� ���ε�λ
      ,d.KSXS as d_KC_KSXS--�γ���������� ������ʽ
      ,db.MC as d_KC_KSXS_MC--������ʽ����� ����
      ,d.SKFSM as d_KC_SKFSM--�γ���������� �ڿη�ʽ��
      ,dc.MC as d_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,d.KCFY as d_KC_KCFY--�γ���������� �γ̷���
      ,e.SCHOOLID as e_TKLX_SCHOOLID--�������ͱ� ѧУID
      ,e.LXMC as e_TKLX_LXMC--�������ͱ� ��������
      ,f.SCHOOLID as f_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,f.XLID as f_XLZ_XLID--У���ܱ� У��ID
      ,f.NAME as f_XLZ_NAME--У���ܱ� У��������
      ,f.STARTDAY as f_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,f.ENDDAY as f_XLZ_ENDDAY--У���ܱ� ��������
      ,f.ZJH as f_XLZ_ZJH--У���ܱ� �ܼƻ�
      ,g.SCHOOLID as g_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,g.XLID as g_XLZ_XLID--У���ܱ� У��ID
      ,g.NAME as g_XLZ_NAME--У���ܱ� У��������
      ,g.STARTDAY as g_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,g.ENDDAY as g_XLZ_ENDDAY--У���ܱ� ��������
      ,g.ZJH as g_XLZ_ZJH--У���ܱ� �ܼƻ�
      ,h.MC as h_XQ_MC--���ڴ��� ����
      ,i.MC as i_SD_MC--ʱ�δ��� ����
      ,j.MC as j_JC_MC--�ڴδ��� ����
      ,k.SCHOOLID as k_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,k.XLID as k_XLZ_XLID--У���ܱ� У��ID
      ,k.NAME as k_XLZ_NAME--У���ܱ� У��������
      ,k.STARTDAY as k_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,k.ENDDAY as k_XLZ_ENDDAY--У���ܱ� ��������
      ,k.ZJH as k_XLZ_ZJH--У���ܱ� �ܼƻ�
      ,l.SCHOOLID as l_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,l.XLID as l_XLZ_XLID--У���ܱ� У��ID
      ,l.NAME as l_XLZ_NAME--У���ܱ� У��������
      ,l.STARTDAY as l_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,l.ENDDAY as l_XLZ_ENDDAY--У���ܱ� ��������
      ,l.ZJH as l_XLZ_ZJH--У���ܱ� �ܼƻ�
      ,m.MC as m_XQ_MC--���ڴ��� ����
      ,n.MC as n_SD_MC--ʱ�δ��� ����
      ,o.MC as o_JC_MC--�ڴδ��� ����

FROM dbo.EDU_ZZJX_08_A01_TKSQSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*��ʦ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCID = d.KCH /*�γ�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_08_A02_TKLX AS e ON a.TKLXID = e.ID /*��������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS f ON a.TKQQSZ = f.ID /*����ǰ��ʼ��*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS g ON a.TKQJSZ = g.ID /*����ǰ������*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_XQ AS h ON a.TKQXQ = h.DM /*����ǰ����*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_SD AS i ON a.TKQSD = i.DM /*����ǰʱ��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_JC AS j ON a.TKQJC = j.DM /*����ǰ�ڴ�*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS k ON a.TKHQSZ = k.ID /*���κ���ʼ��*/ AND a.SCHOOLID = k.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS l ON a.TKHJSZ = l.ID /*���κ������*/ AND a.SCHOOLID = l.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_XQ AS m ON a.TKHXQ = m.DM /*���κ�����*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_SD AS n ON a.TKHSD = n.DM /*���κ�ʱ��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_JC AS o ON a.TKHJC = o.DM /*���κ�ڴ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ce ON c.XXM = ce.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cf ON c.JKZKM = cf.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZTM = cg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ch ON c.ZZMMM = ch.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS cj ON c.GJDQM = cj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ck ON c.CSDXZQHM = ck.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS cl ON c.XYZJM = cl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cm ON c.JZGHKSZDXZQHM = cm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cn ON c.HKLBM = cn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS co ON c.BZLBM = co.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS cp ON c.JZGLBM = cp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS cq ON c.GWLBM = cq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFJZJS = cr.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.SFSSXJS = cs.DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ct ON c.DQZTM = ct.DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS db ON d.KSXS = db.DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dc ON d.SKFSM = dc.DM /*�ڿη�ʽ��*/
GO
