
--ʵϰת�ڱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A07_SXZG_DISP]
AS
SELECT a.[ID]--ʵϰת��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XSXXID]--����ѧ��ID
      ,a.[ZCGW]--ת����λID
      ,a.[ZCGWQY]--ת����λ��ҵID
      ,a.[ZRGW]--ת���λID
      ,a.[ZRGWQY]--ת���λ��ҵID
      ,a.[BZRSH]--���������
      ,a.[ZCQYSH]--ת����ҵ���
      ,a.[ZRQYSH]--ת����ҵ���
      ,a.[JYCSH]--��ҵ�����
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
      ,d.SCHOOLID as d_SXGW_SCHOOLID--ѧУID
      ,d.QYID as d_SXGW_QYID--��ҵID
      ,d.GWMC as d_SXGW_GWMC--��λ����
      ,d.QYMC as d_SXGW_QYMC--��ҵ����
      ,d.ZPKSSJ as d_SXGW_ZPKSSJ--��Ƹ��ʼʱ��
      ,d.ZPJSSJ as d_SXGW_ZPJSSJ--��Ƹ����ʱ��
      ,d.GZXS as d_SXGW_GZXS--������ʽ
      ,d.XBYQ as d_SXGW_XBYQ--�Ա�Ҫ��
      ,d.GWXC as d_SXGW_GWXC--��λн��
      ,d.WYYQ as d_SXGW_WYYQ--����Ҫ��
      ,d.GZDD as d_SXGW_GZDD--�����ص�
      ,d.JSJSP as d_SXGW_JSJSP--�����ˮƽ
      ,d.ZPRS as d_SXGW_ZPRS--��Ƹ����
      ,d.XLYQ as d_SXGW_XLYQ--ѧ��Ҫ��
      ,d.ZYYQ as d_SXGW_ZYYQ--רҵҪ��
      ,d.NLYQ as d_SXGW_NLYQ--����Ҫ��
      ,d.GWJJ as d_SXGW_GWJJ--��λ���
      ,d.JBQK as d_SXGW_JBQK--�������
      ,d.GZJY as d_SXGW_GZJY--��������
      ,d.SHZT as d_SXGW_SHZT--���״̬
      ,d.GWZT as d_SXGW_GWZT--��λ״̬
      ,e.SCHOOLID as e_XWSXJDXX_SCHOOLID--ѧУ��
      ,e.QYBH as e_XWSXJDXX_QYBH--��ҵ���
      ,e.JDHZHTBH as e_XWSXJDXX_JDHZHTBH--���غ�����ͬ���
      ,e.JDHZHTMC as e_XWSXJDXX_JDHZHTMC--���غ�����ͬ����
      ,e.JDLBM as e_XWSXJDXX_JDLBM--���������
      ,eb.MC as e_XWSXJDXX_JDLBM_MC--����
      ,e.DWMC as e_XWSXJDXX_DWMC--��λ����
      ,e.QYXZQ as e_XWSXJDXX_QYXZQ--��ҵ������
      ,ec.MC as e_XWSXJDXX_QYXZQ_MC--����
      ,e.QYDZ as e_XWSXJDXX_QYDZ--��ҵ��ַ
      ,e.QYXZ as e_XWSXJDXX_QYXZ--��ҵ����
      ,ed.MC as e_XWSXJDXX_QYXZ_MC--����
      ,e.FRDB as e_XWSXJDXX_FRDB--���˴���
      ,e.QYLXR as e_XWSXJDXX_QYLXR--��ҵ��ϵ��
      ,e.QYYZBM as e_XWSXJDXX_QYYZBM--��ҵ��������
      ,e.QYLXDH as e_XWSXJDXX_QYLXDH--��ҵ��ϵ�绰
      ,e.QYYYZZ as e_XWSXJDXX_QYYYZZ--��ҵӪҵִ��
      ,e.QYLX as e_XWSXJDXX_QYLX--��ҵ����
      ,e.QYRS as e_XWSXJDXX_QYRS--��ҵ����
      ,e.QYZCZJ as e_XWSXJDXX_QYZCZJ--��ҵע���ʽ�
      ,e.QYCZ as e_XWSXJDXX_QYCZ--��ҵ����
      ,e.QYFZR as e_XWSXJDXX_QYFZR--��ҵ������
      ,e.FZRZW as e_XWSXJDXX_FZRZW--������ְλ
      ,e.FZRLXDH as e_XWSXJDXX_FZRLXDH--��������ϵ�绰
      ,e.QYYXDZ as e_XWSXJDXX_QYYXDZ--��ҵ�����ַ
      ,e.QYQQ as e_XWSXJDXX_QYQQ--��ҵQQ
      ,e.QYMSN as e_XWSXJDXX_QYMSN--��ҵMSN
      ,e.QYWZ as e_XWSXJDXX_QYWZ--��ҵ��ַ
      ,e.QYJJ as e_XWSXJDXX_QYJJ--��ҵ���
      ,e.SHZT as e_XWSXJDXX_SHZT--���״̬
      ,f.SCHOOLID as f_SXGW_SCHOOLID--ѧУID
      ,f.QYID as f_SXGW_QYID--��ҵID
      ,f.GWMC as f_SXGW_GWMC--��λ����
      ,f.QYMC as f_SXGW_QYMC--��ҵ����
      ,f.ZPKSSJ as f_SXGW_ZPKSSJ--��Ƹ��ʼʱ��
      ,f.ZPJSSJ as f_SXGW_ZPJSSJ--��Ƹ����ʱ��
      ,f.GZXS as f_SXGW_GZXS--������ʽ
      ,f.XBYQ as f_SXGW_XBYQ--�Ա�Ҫ��
      ,f.GWXC as f_SXGW_GWXC--��λн��
      ,f.WYYQ as f_SXGW_WYYQ--����Ҫ��
      ,f.GZDD as f_SXGW_GZDD--�����ص�
      ,f.JSJSP as f_SXGW_JSJSP--�����ˮƽ
      ,f.ZPRS as f_SXGW_ZPRS--��Ƹ����
      ,f.XLYQ as f_SXGW_XLYQ--ѧ��Ҫ��
      ,f.ZYYQ as f_SXGW_ZYYQ--רҵҪ��
      ,f.NLYQ as f_SXGW_NLYQ--����Ҫ��
      ,f.GWJJ as f_SXGW_GWJJ--��λ���
      ,f.JBQK as f_SXGW_JBQK--�������
      ,f.GZJY as f_SXGW_GZJY--��������
      ,f.SHZT as f_SXGW_SHZT--���״̬
      ,f.GWZT as f_SXGW_GWZT--��λ״̬
      ,g.SCHOOLID as g_XWSXJDXX_SCHOOLID--ѧУ��
      ,g.QYBH as g_XWSXJDXX_QYBH--��ҵ���
      ,g.JDHZHTBH as g_XWSXJDXX_JDHZHTBH--���غ�����ͬ���
      ,g.JDHZHTMC as g_XWSXJDXX_JDHZHTMC--���غ�����ͬ����
      ,g.JDLBM as g_XWSXJDXX_JDLBM--���������
      ,gb.MC as g_XWSXJDXX_JDLBM_MC--����
      ,g.DWMC as g_XWSXJDXX_DWMC--��λ����
      ,g.QYXZQ as g_XWSXJDXX_QYXZQ--��ҵ������
      ,gc.MC as g_XWSXJDXX_QYXZQ_MC--����
      ,g.QYDZ as g_XWSXJDXX_QYDZ--��ҵ��ַ
      ,g.QYXZ as g_XWSXJDXX_QYXZ--��ҵ����
      ,gd.MC as g_XWSXJDXX_QYXZ_MC--����
      ,g.FRDB as g_XWSXJDXX_FRDB--���˴���
      ,g.QYLXR as g_XWSXJDXX_QYLXR--��ҵ��ϵ��
      ,g.QYYZBM as g_XWSXJDXX_QYYZBM--��ҵ��������
      ,g.QYLXDH as g_XWSXJDXX_QYLXDH--��ҵ��ϵ�绰
      ,g.QYYYZZ as g_XWSXJDXX_QYYYZZ--��ҵӪҵִ��
      ,g.QYLX as g_XWSXJDXX_QYLX--��ҵ����
      ,g.QYRS as g_XWSXJDXX_QYRS--��ҵ����
      ,g.QYZCZJ as g_XWSXJDXX_QYZCZJ--��ҵע���ʽ�
      ,g.QYCZ as g_XWSXJDXX_QYCZ--��ҵ����
      ,g.QYFZR as g_XWSXJDXX_QYFZR--��ҵ������
      ,g.FZRZW as g_XWSXJDXX_FZRZW--������ְλ
      ,g.FZRLXDH as g_XWSXJDXX_FZRLXDH--��������ϵ�绰
      ,g.QYYXDZ as g_XWSXJDXX_QYYXDZ--��ҵ�����ַ
      ,g.QYQQ as g_XWSXJDXX_QYQQ--��ҵQQ
      ,g.QYMSN as g_XWSXJDXX_QYMSN--��ҵMSN
      ,g.QYWZ as g_XWSXJDXX_QYWZ--��ҵ��ַ
      ,g.QYJJ as g_XWSXJDXX_QYJJ--��ҵ���
      ,g.SHZT as g_XWSXJDXX_SHZT--���״̬

FROM dbo.EDU_ZZJX_07_A07_SXZG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*����ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS d ON a.ZCGW = d.ID /*ת����λID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS e ON a.ZCGWQY = e.ID /*ת����λ��ҵID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS f ON a.ZRGW = f.ID /*ת���λID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS g ON a.ZRGWQY = g.ID /*ת���λ��ҵID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
      dbo.EDU_ZZ_SXJDLB AS eb ON e.JDLBM = eb.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ec ON e.QYXZQ = ec.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS ed ON e.QYXZ = ed.DM /*��ҵ����*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS gb ON g.JDLBM = gb.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gc ON g.QYXZQ = gc.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS gd ON g.QYXZ = gd.DM /*��ҵ����*/
GO