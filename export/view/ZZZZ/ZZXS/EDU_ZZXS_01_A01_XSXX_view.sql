
--ѧ����չ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_01_A01_XSXX_DISP]
AS
SELECT a.[XSXXID]--ѧ����Ϣ���ݱ�
      ,a.[SCHOOLID]--ѧУ��
      ,a.[ZYXXID]--רҵ������Ϣ
      ,a.[XNID]--ѧ��
      ,a.[ZZXQID]--ѧ�ڱ�
      ,a.[JTDZQH]--��ͥ��ַ������
      ,a.[JTXXDZ]--��ͥ��ϸ��ַ
      ,a.[HJXXDZ]--������ϸ��ַ
      ,a.[HJXZ]--�������ʴ���
      ,a.[BYJX]--���˾�ѵ
      ,a.[CSBZR]--����������
      ,a.[DRZW]--�����κ���ְ��
      ,a.[YYDR]--Ը�ⵣ�ΰ�ɲ�����ְ
      ,a.[BZ]--��ע
      ,a.[BYLX]--��ҵ������
      ,a.[XSLX]--ѧ������
      ,a.[SFZS]--�Ƿ�ס��
      ,a.[XSBMSJ]--ѧ������ʱ��
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bc.MC as b_XSXX_XBM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--����
      ,bd.JC as b_XSXX_XXM_JC--���
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,be.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bf.MZMC as b_XSXX_MZM_MZMC--��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--����
      ,bi.SM as b_XSXX_GATQWM_SM--˵��
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--����
      ,bk.JC as b_XSXX_ZZMMM_JC--���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--����
      ,b.HKLBM as b_XSXX_HKLBM--���������
      ,bm.MC as b_XSXX_HKLBM_MC--����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--�Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--����
      ,b.GJDQM as b_XSXX_GJDQM--����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.TC as b_XSXX_TC--�س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--�����ַ
      ,b.JSTXH as b_XSXX_JSTXH--��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZP as b_XSXX_ZP--��Ƭ(·��)
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
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--ѧУ��
      ,d.ZYDM as d_ZYXX_ZYDM--רҵ����
      ,db.ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--רҵĿ¼���
      ,db.MC as d_ZYXX_ZYDM_MC--����
      ,d.ZYMC as d_ZYXX_ZYMC--רҵ����
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--רҵӢ������
      ,d.XZ as d_ZYXX_XZ--ѧ��
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--רҵ��������
      ,d.ZYJC as d_ZYXX_ZYJC--רҵ���
      ,d.JLNY as d_ZYXX_JLNY--��������
      ,d.ZYJSS as d_ZYXX_ZYJSS--רҵ��ʦ��
      ,d.KSJGH as d_ZYXX_KSJGH--���������
      ,d.ZXF as d_ZYXX_ZXF--��ѧ��
      ,d.SSZYML as d_ZYXX_SSZYML--����רҵĿ¼
      ,dc.MC as d_ZYXX_SSZYML_MC--����
      ,d.ZYLB as d_ZYXX_ZYLB--רҵ�������
      ,e.SCHOOLID as e_XN_SCHOOLID--ѧУ��
      ,e.XN as e_XN_XN--ѧ��
      ,f.SchoolID as f_ZZXQ_SchoolID--ѧУ��
      ,f.XNID as f_ZZXQ_XNID--ѧ��
      ,f.XQM as f_ZZXQ_XQM--ѧ����
      ,fb.MC as f_ZZXQ_XQM_MC--����
      ,f.XQMC as f_ZZXQ_XQMC--ѧ������
      ,f.XQKSRQ as f_ZZXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,f.XQJSRQ as f_ZZXQ_XQJSRQ--ѧ�ڽ�������
      ,g.MC as g_ZHRMGHGXZQH_MC--����
      ,h.MC as h_HJXZ_MC--����
      ,i.MC as i_SFBZ_MC--����
      ,j.MC as j_BYSLX_MC--����
      ,k.MC as k_XSLB_MC--����
      ,k.SM as k_XSLB_SM--˵��
      ,l.MC as l_SFBZ_MC--����

FROM dbo.EDU_ZZXS_01_A01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*רҵ������Ϣ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS e ON a.XNID = e.ID /*ѧ��*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_03_ZZXQ AS f ON a.ZZXQID = f.ID /*ѧ�ڱ�*/ AND a.SCHOOLID = f.SchoolID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS g ON a.JTDZQH = g.DM /*��ͥ��ַ������*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_HJXZ AS h ON a.HJXZ = h.DM /*�������ʴ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS i ON a.BYJX = i.DM /*���˾�ѵ*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_BYSLX AS j ON a.BYLX = j.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS k ON a.XSLX = k.DM /*ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS l ON a.SFZS = l.DM /*�Ƿ�ס��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*ѧУ��������*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS db ON d.ZYDM = db.DM /*רҵ����*/ AND d.SSZYML = db.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS dc ON d.SSZYML = dc.DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS fb ON f.XQM = fb.DM /*ѧ����*/
GO
