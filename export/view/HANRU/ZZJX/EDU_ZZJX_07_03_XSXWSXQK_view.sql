
--ѧ��У��ʵϰ������������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_03_XSXWSXQK_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[ID]--ʵϰ�����ID
      ,a.[XSXXID]--ѧ����ϢID
      ,a.[QYID]--��ҵ��ID
      ,a.[GWID]--��λ��ID
      ,a.[SXQSRQ]--��ѵ��ʼ����
      ,a.[SXJSRQ]--��ѵ��������
      ,a.[QYBH]--��ҵ���
      ,a.[SXGWMC]--��ѵ��λ����
      ,a.[SXDS]--ʵѵ��ʦ
      ,a.[SFGMSXZRBX]--�Ƿ���ʵϰ���α���
      ,a.[BXFZFZ]--���շ�֧����
      ,a.[SXXC]--ʵϰн��
      ,a.[SFSDGSX]--�Ƿ��Ƕ���ʵϰ
      ,a.[XSHJXZM]--ѧ������������
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��
      ,c.XM as c_XSXX_XM--����
      ,c.YWXM as c_XSXX_YWXM--Ӣ������
      ,c.XMPY as c_XSXX_XMPY--����ƴ��
      ,c.CYM as c_XSXX_CYM--������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--����֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--����
      ,c.SFZJH as c_XSXX_SFZJH--����֤����
      ,c.XBM as c_XSXX_XBM--�Ա���
      ,cc.MC as c_XSXX_XBM_MC--����
      ,c.XXM as c_XSXX_XXM--Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--����
      ,cd.JC as c_XSXX_XXM_JC--���
      ,c.CSRQ as c_XSXX_CSRQ--��������
      ,c.CSDM as c_XSXX_CSDM--��������
      ,ce.MC as c_XSXX_CSDM_MC--����
      ,c.JG as c_XSXX_JG--����
      ,c.MZM as c_XSXX_MZM--������
      ,cf.MZMC as c_XSXX_MZM_MZMC--��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����
      ,c.XYZJM as c_XSXX_XYZJM--�����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--����
      ,c.GATQWM as c_XSXX_GATQWM--�۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--����
      ,ci.SM as c_XSXX_GATQWM_SM--˵��
      ,c.JKZKM as c_XSXX_JKZKM--����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����
      ,cj.SM as c_XSXX_JKZKM_SM--˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--����
      ,ck.JC as c_XSXX_ZZMMM_JC--���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--����
      ,c.HKLBM as c_XSXX_HKLBM--���������
      ,cm.MC as c_XSXX_HKLBM_MC--����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--�Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--����
      ,c.GJDQM as c_XSXX_GJDQM--����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--����ĸ����
      ,c.TC as c_XSXX_TC--�س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--�����ַ
      ,c.JSTXH as c_XSXX_JSTXH--��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--��������
      ,c.ZP as c_XSXX_ZP--��Ƭ(·��)
      ,d.SCHOOLID as d_XWSXJDXX_SCHOOLID--ѧУ��
      ,d.QYBH as d_XWSXJDXX_QYBH--��ҵ���
      ,d.JDHZHTBH as d_XWSXJDXX_JDHZHTBH--���غ�����ͬ���
      ,d.JDHZHTMC as d_XWSXJDXX_JDHZHTMC--���غ�����ͬ����
      ,d.JDLBM as d_XWSXJDXX_JDLBM--���������
      ,db.MC as d_XWSXJDXX_JDLBM_MC--����
      ,d.DWMC as d_XWSXJDXX_DWMC--��λ����
      ,d.QYXZQ as d_XWSXJDXX_QYXZQ--��ҵ������
      ,dc.MC as d_XWSXJDXX_QYXZQ_MC--����
      ,d.QYDZ as d_XWSXJDXX_QYDZ--��ҵ��ַ
      ,d.QYXZ as d_XWSXJDXX_QYXZ--��ҵ����
      ,dd.MC as d_XWSXJDXX_QYXZ_MC--����
      ,d.FRDB as d_XWSXJDXX_FRDB--���˴���
      ,d.QYLXR as d_XWSXJDXX_QYLXR--��ҵ��ϵ��
      ,d.QYYZBM as d_XWSXJDXX_QYYZBM--��ҵ��������
      ,d.QYLXDH as d_XWSXJDXX_QYLXDH--��ҵ��ϵ�绰
      ,d.QYYYZZ as d_XWSXJDXX_QYYYZZ--��ҵӪҵִ��
      ,d.QYLX as d_XWSXJDXX_QYLX--��ҵ����
      ,d.QYRS as d_XWSXJDXX_QYRS--��ҵ����
      ,d.QYZCZJ as d_XWSXJDXX_QYZCZJ--��ҵע���ʽ�
      ,d.QYCZ as d_XWSXJDXX_QYCZ--��ҵ����
      ,d.QYFZR as d_XWSXJDXX_QYFZR--��ҵ������
      ,d.FZRZW as d_XWSXJDXX_FZRZW--������ְλ
      ,d.FZRLXDH as d_XWSXJDXX_FZRLXDH--��������ϵ�绰
      ,d.QYYXDZ as d_XWSXJDXX_QYYXDZ--��ҵ�����ַ
      ,d.QYQQ as d_XWSXJDXX_QYQQ--��ҵQQ
      ,d.QYMSN as d_XWSXJDXX_QYMSN--��ҵMSN
      ,d.QYWZ as d_XWSXJDXX_QYWZ--��ҵ��ַ
      ,d.QYJJ as d_XWSXJDXX_QYJJ--��ҵ���
      ,d.SHZT as d_XWSXJDXX_SHZT--���״̬
      ,e.SCHOOLID as e_SXGW_SCHOOLID--ѧУID
      ,e.QYID as e_SXGW_QYID--��ҵID
      ,e.GWMC as e_SXGW_GWMC--��λ����
      ,e.QYMC as e_SXGW_QYMC--��ҵ����
      ,e.ZPKSSJ as e_SXGW_ZPKSSJ--��Ƹ��ʼʱ��
      ,e.ZPJSSJ as e_SXGW_ZPJSSJ--��Ƹ����ʱ��
      ,e.GZXS as e_SXGW_GZXS--������ʽ
      ,e.XBYQ as e_SXGW_XBYQ--�Ա�Ҫ��
      ,e.GWXC as e_SXGW_GWXC--��λн��
      ,e.WYYQ as e_SXGW_WYYQ--����Ҫ��
      ,e.GZDD as e_SXGW_GZDD--�����ص�
      ,e.JSJSP as e_SXGW_JSJSP--�����ˮƽ
      ,e.ZPRS as e_SXGW_ZPRS--��Ƹ����
      ,e.XLYQ as e_SXGW_XLYQ--ѧ��Ҫ��
      ,e.ZYYQ as e_SXGW_ZYYQ--רҵҪ��
      ,e.NLYQ as e_SXGW_NLYQ--����Ҫ��
      ,e.GWJJ as e_SXGW_GWJJ--��λ���
      ,e.JBQK as e_SXGW_JBQK--�������
      ,e.GZJY as e_SXGW_GZJY--��������
      ,e.SHZT as e_SXGW_SHZT--���״̬
      ,e.GWZT as e_SXGW_GWZT--��λ״̬
      ,f.MC as f_SFBZ_MC--����
      ,g.MC as g_SFBZ_MC--����
      ,h.MC as h_HJXZ_MC--����

FROM dbo.EDU_ZZJX_07_03_XSXWSXQK AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����ϢID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS d ON a.QYID = d.ID /*��ҵ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS e ON a.GWID = e.ID /*��λ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFGMSXZRBX = f.DM /*�Ƿ���ʵϰ���α���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS g ON a.SFSDGSX = g.DM /*�Ƿ��Ƕ���ʵϰ*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_HJXZ AS h ON a.XSHJXZM = h.DM /*ѧ������������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*����֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS db ON d.JDLBM = db.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.QYXZQ = dc.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS dd ON d.QYXZ = dd.DM /*��ҵ����*/
GO