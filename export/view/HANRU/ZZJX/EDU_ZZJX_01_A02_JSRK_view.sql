
--��ʦ�οα�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_A02_JSRK_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[KXH]--�����
      ,a.[JSID]--��ʦ��ID
      ,a.[KCH]--�γ̺�
      ,a.[JHBH]--�ƻ����
      ,a.[XQID]--ѧ��ID
      ,a.[JXDG]--��ѧ���
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--ѧУ��
      ,c.GH as c_JZGJBSJ_GH--����
      ,c.XM as c_JZGJBSJ_XM--����
      ,c.YWXM as c_JZGJBSJ_YWXM--Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--������
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--����֤��������
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--����֤����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��������
      ,c.XBM as c_JZGJBSJ_XBM--�Ա���
      ,cc.MC as c_JZGJBSJ_XBM_MC--����
      ,c.MZM as c_JZGJBSJ_MZM--������
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--��������
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,c.XXM as c_JZGJBSJ_XXM--Ѫ����
      ,ce.MC as c_JZGJBSJ_XXM_MC--����
      ,ce.JC as c_JZGJBSJ_XXM_JC--���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--����״����
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--����
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--˵��
      ,c.HYZTM as c_JZGJBSJ_HYZTM--����״̬��
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--����
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--������ò��
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--����
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--���
      ,c.GATQWM as c_JZGJBSJ_GATQWM--�۰�̨������
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--����
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--˵��
      ,c.JG as c_JZGJBSJ_JG--����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--����/������
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--����������������
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--����
      ,c.XYZJM as c_JZGJBSJ_XYZJM--�����ڽ���
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--����
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,c.HKLBM as c_JZGJBSJ_HKLBM--���������
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--����
      ,c.DQZZ as c_JZGJBSJ_DQZZ--��ǰסַ
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--�μӹ�������
      ,c.CJNY as c_JZGJBSJ_CJNY--�ӽ�����
      ,c.LXNY as c_JZGJBSJ_LXNY--��У����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--���������
      ,co.MC as c_JZGJBSJ_BZLBM_MC--����
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--��ְ�������
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--����
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--˵��
      ,c.GWLBM as c_JZGJBSJ_GWLBM--��λ�����
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--����
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--����
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--����
      ,c.ZP as c_JZGJBSJ_ZP--��Ƭ(·��)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--��ǰ״̬��
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--����
      ,c.YDDH as c_JZGJBSJ_YDDH--�ƶ��绰
      ,c.GDDH as c_JZGJBSJ_GDDH--�̶��绰
      ,c.TXDZYZBM as c_JZGJBSJ_TXDZYZBM--ͨ�ŵ�ַ��������
      ,c.TXDZ as c_JZGJBSJ_TXDZ--ͨ�ŵ�ַ
      ,c.DZXX as c_JZGJBSJ_DZXX--��������
      ,c.WLDZ as c_JZGJBSJ_WLDZ--�����ַ
      ,c.JSTXH as c_JZGJBSJ_JSTXH--��ʱͨѶ��
      ,d.SCHOOLID as d_KC_SCHOOLID--ѧУID
      ,d.KCMC as d_KC_KCMC--�γ�����
      ,d.KCYWM as d_KC_KCYWM--�γ�Ӣ����
      ,d.KCBM as d_KC_KCBM--�γ̱���
      ,d.KCJS as d_KC_KCJS--�γ̽���
      ,d.XF as d_KC_XF--ѧ��
      ,d.ZXS as d_KC_ZXS--��ѧʱ
      ,d.LLXS as d_KC_LLXS--����ѧʱ
      ,d.SJXS as d_KC_SJXS--ʵ��ѧʱ
      ,d.QTXS as d_KC_QTXS--����ѧʱ
      ,d.CKSM as d_KC_CKSM--�ο���Ŀ
      ,d.KKDW as d_KC_KKDW--���ε�λ
      ,d.KSXS as d_KC_KSXS--������ʽ
      ,db.MC as d_KC_KSXS_MC--����
      ,d.SKFSM as d_KC_SKFSM--�ڿη�ʽ��
      ,dc.MC as d_KC_SKFSM_MC--����
      ,d.KCFY as d_KC_KCFY--�γ̷���
      ,e.SCHOOLID as e_ZTJXJH_SCHOOLID--ѧУID
      ,e.JHNJ as e_ZTJXJH_JHNJ--�ƻ��꼶
      ,e.ZYXXID as e_ZTJXJH_ZYXXID--רҵ���
      ,e.JHZYMC as e_ZTJXJH_JHZYMC--�ƻ�רҵ����
      ,e.ZXFYQ as e_ZTJXJH_ZXFYQ--��ѧ��Ҫ��
      ,e.JLNY as e_ZTJXJH_JLNY--��������
      ,e.SYXZ as e_ZTJXJH_SYXZ--����ѧ��
      ,e.PYMB as e_ZTJXJH_PYMB--����Ŀ��
      ,e.SFKY as e_ZTJXJH_SFKY--�Ƿ����
      ,eb.MC as e_ZTJXJH_SFKY_MC--����
      ,e.FJ as e_ZTJXJH_FJ--����
      ,f.SCHOOLID as f_XQ_SCHOOLID--ѧУ��
      ,f.XNID as f_XQ_XNID--ѧ��
      ,f.XQM as f_XQ_XQM--ѧ����
      ,fb.MC as f_XQ_XQM_MC--����
      ,f.XQMC as f_XQ_XQMC--ѧ������
      ,f.XQKSRQ as f_XQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,f.XQJSRQ as f_XQ_XQJSRQ--ѧ�ڽ�������

FROM dbo.EDU_ZZJX_01_A02_JSRK AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*��ʦ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCH = d.KCH /*�γ̺�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS e ON a.JHBH = e.JHBH /*�ƻ����*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS f ON a.XQID = f.ID /*ѧ��ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*����֤��������*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SFBZ AS cs ON c.SFSSXJS = cs.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ct ON c.DQZTM = ct.DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS db ON d.KSXS = db.DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dc ON d.SKFSM = dc.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS eb ON e.SFKY = eb.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS fb ON f.XQM = fb.DM /*ѧ����*/
GO