
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--ѧУ���ñ� Ȩ���б�
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,c.XM as c_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,c.XBM as c_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,cc.MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.XXM as c_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,cd.JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.CSRQ as c_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,ce.MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,c.MZM as c_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,cf.MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.XYZJM as c_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,ci.SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JKZKM as c_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,cj.SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,ck.JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,cm.MC as c_XSXX_HKLBM_MC--���������� ����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.TC as c_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,c.JSTXH as c_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,c.ZP as c_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.SCHOOLID as d_SXGW_SCHOOLID--ʵϰ��λ�� ѧУID
      ,d.QYID as d_SXGW_QYID--ʵϰ��λ�� ��ҵID
      ,d.GWMC as d_SXGW_GWMC--ʵϰ��λ�� ��λ����
      ,d.QYMC as d_SXGW_QYMC--ʵϰ��λ�� ��ҵ����
      ,d.ZPKSSJ as d_SXGW_ZPKSSJ--ʵϰ��λ�� ��Ƹ��ʼʱ��
      ,d.ZPJSSJ as d_SXGW_ZPJSSJ--ʵϰ��λ�� ��Ƹ����ʱ��
      ,d.GZXS as d_SXGW_GZXS--ʵϰ��λ�� ������ʽ
      ,d.XBYQ as d_SXGW_XBYQ--ʵϰ��λ�� �Ա�Ҫ��
      ,d.GWXC as d_SXGW_GWXC--ʵϰ��λ�� ��λн��
      ,d.WYYQ as d_SXGW_WYYQ--ʵϰ��λ�� ����Ҫ��
      ,d.GZDD as d_SXGW_GZDD--ʵϰ��λ�� �����ص�
      ,d.JSJSP as d_SXGW_JSJSP--ʵϰ��λ�� �����ˮƽ
      ,d.ZPRS as d_SXGW_ZPRS--ʵϰ��λ�� ��Ƹ����
      ,d.XLYQ as d_SXGW_XLYQ--ʵϰ��λ�� ѧ��Ҫ��
      ,d.ZYYQ as d_SXGW_ZYYQ--ʵϰ��λ�� רҵҪ��
      ,d.NLYQ as d_SXGW_NLYQ--ʵϰ��λ�� ����Ҫ��
      ,d.GWJJ as d_SXGW_GWJJ--ʵϰ��λ�� ��λ���
      ,d.JBQK as d_SXGW_JBQK--ʵϰ��λ�� �������
      ,d.GZJY as d_SXGW_GZJY--ʵϰ��λ�� ��������
      ,d.SHZT as d_SXGW_SHZT--ʵϰ��λ�� ���״̬
      ,d.GWZT as d_SXGW_GWZT--ʵϰ��λ�� ��λ״̬
      ,e.SCHOOLID as e_XWSXJDXX_SCHOOLID--У��ʵϰ������Ϣ��������� ѧУ��
      ,e.QYBH as e_XWSXJDXX_QYBH--У��ʵϰ������Ϣ��������� ��ҵ���
      ,e.JDHZHTBH as e_XWSXJDXX_JDHZHTBH--У��ʵϰ������Ϣ��������� ���غ�����ͬ���
      ,e.JDHZHTMC as e_XWSXJDXX_JDHZHTMC--У��ʵϰ������Ϣ��������� ���غ�����ͬ����
      ,e.JDLBM as e_XWSXJDXX_JDLBM--У��ʵϰ������Ϣ��������� ���������
      ,eb.MC as e_XWSXJDXX_JDLBM_MC--ʵϰ���������� ����
      ,e.DWMC as e_XWSXJDXX_DWMC--У��ʵϰ������Ϣ��������� ��λ����
      ,e.QYXZQ as e_XWSXJDXX_QYXZQ--У��ʵϰ������Ϣ��������� ��ҵ������
      ,ec.MC as e_XWSXJDXX_QYXZQ_MC--�л����񹲺͹������������� ����
      ,e.QYDZ as e_XWSXJDXX_QYDZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,e.QYXZ as e_XWSXJDXX_QYXZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,ed.MC as e_XWSXJDXX_QYXZ_MC--�������ͷ�������� ����
      ,e.FRDB as e_XWSXJDXX_FRDB--У��ʵϰ������Ϣ��������� ���˴���
      ,e.QYLXR as e_XWSXJDXX_QYLXR--У��ʵϰ������Ϣ��������� ��ҵ��ϵ��
      ,e.QYYZBM as e_XWSXJDXX_QYYZBM--У��ʵϰ������Ϣ��������� ��ҵ��������
      ,e.QYLXDH as e_XWSXJDXX_QYLXDH--У��ʵϰ������Ϣ��������� ��ҵ��ϵ�绰
      ,e.QYYYZZ as e_XWSXJDXX_QYYYZZ--У��ʵϰ������Ϣ��������� ��ҵӪҵִ��
      ,e.QYLX as e_XWSXJDXX_QYLX--У��ʵϰ������Ϣ��������� ��ҵ����
      ,e.QYRS as e_XWSXJDXX_QYRS--У��ʵϰ������Ϣ��������� ��ҵ����
      ,e.QYZCZJ as e_XWSXJDXX_QYZCZJ--У��ʵϰ������Ϣ��������� ��ҵע���ʽ�
      ,e.QYCZ as e_XWSXJDXX_QYCZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,e.QYFZR as e_XWSXJDXX_QYFZR--У��ʵϰ������Ϣ��������� ��ҵ������
      ,e.FZRZW as e_XWSXJDXX_FZRZW--У��ʵϰ������Ϣ��������� ������ְλ
      ,e.FZRLXDH as e_XWSXJDXX_FZRLXDH--У��ʵϰ������Ϣ��������� ��������ϵ�绰
      ,e.QYYXDZ as e_XWSXJDXX_QYYXDZ--У��ʵϰ������Ϣ��������� ��ҵ�����ַ
      ,e.QYQQ as e_XWSXJDXX_QYQQ--У��ʵϰ������Ϣ��������� ��ҵQQ
      ,e.QYMSN as e_XWSXJDXX_QYMSN--У��ʵϰ������Ϣ��������� ��ҵMSN
      ,e.QYWZ as e_XWSXJDXX_QYWZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,e.QYJJ as e_XWSXJDXX_QYJJ--У��ʵϰ������Ϣ��������� ��ҵ���
      ,e.SHZT as e_XWSXJDXX_SHZT--У��ʵϰ������Ϣ��������� ���״̬
      ,f.SCHOOLID as f_SXGW_SCHOOLID--ʵϰ��λ�� ѧУID
      ,f.QYID as f_SXGW_QYID--ʵϰ��λ�� ��ҵID
      ,f.GWMC as f_SXGW_GWMC--ʵϰ��λ�� ��λ����
      ,f.QYMC as f_SXGW_QYMC--ʵϰ��λ�� ��ҵ����
      ,f.ZPKSSJ as f_SXGW_ZPKSSJ--ʵϰ��λ�� ��Ƹ��ʼʱ��
      ,f.ZPJSSJ as f_SXGW_ZPJSSJ--ʵϰ��λ�� ��Ƹ����ʱ��
      ,f.GZXS as f_SXGW_GZXS--ʵϰ��λ�� ������ʽ
      ,f.XBYQ as f_SXGW_XBYQ--ʵϰ��λ�� �Ա�Ҫ��
      ,f.GWXC as f_SXGW_GWXC--ʵϰ��λ�� ��λн��
      ,f.WYYQ as f_SXGW_WYYQ--ʵϰ��λ�� ����Ҫ��
      ,f.GZDD as f_SXGW_GZDD--ʵϰ��λ�� �����ص�
      ,f.JSJSP as f_SXGW_JSJSP--ʵϰ��λ�� �����ˮƽ
      ,f.ZPRS as f_SXGW_ZPRS--ʵϰ��λ�� ��Ƹ����
      ,f.XLYQ as f_SXGW_XLYQ--ʵϰ��λ�� ѧ��Ҫ��
      ,f.ZYYQ as f_SXGW_ZYYQ--ʵϰ��λ�� רҵҪ��
      ,f.NLYQ as f_SXGW_NLYQ--ʵϰ��λ�� ����Ҫ��
      ,f.GWJJ as f_SXGW_GWJJ--ʵϰ��λ�� ��λ���
      ,f.JBQK as f_SXGW_JBQK--ʵϰ��λ�� �������
      ,f.GZJY as f_SXGW_GZJY--ʵϰ��λ�� ��������
      ,f.SHZT as f_SXGW_SHZT--ʵϰ��λ�� ���״̬
      ,f.GWZT as f_SXGW_GWZT--ʵϰ��λ�� ��λ״̬
      ,g.SCHOOLID as g_XWSXJDXX_SCHOOLID--У��ʵϰ������Ϣ��������� ѧУ��
      ,g.QYBH as g_XWSXJDXX_QYBH--У��ʵϰ������Ϣ��������� ��ҵ���
      ,g.JDHZHTBH as g_XWSXJDXX_JDHZHTBH--У��ʵϰ������Ϣ��������� ���غ�����ͬ���
      ,g.JDHZHTMC as g_XWSXJDXX_JDHZHTMC--У��ʵϰ������Ϣ��������� ���غ�����ͬ����
      ,g.JDLBM as g_XWSXJDXX_JDLBM--У��ʵϰ������Ϣ��������� ���������
      ,gb.MC as g_XWSXJDXX_JDLBM_MC--ʵϰ���������� ����
      ,g.DWMC as g_XWSXJDXX_DWMC--У��ʵϰ������Ϣ��������� ��λ����
      ,g.QYXZQ as g_XWSXJDXX_QYXZQ--У��ʵϰ������Ϣ��������� ��ҵ������
      ,gc.MC as g_XWSXJDXX_QYXZQ_MC--�л����񹲺͹������������� ����
      ,g.QYDZ as g_XWSXJDXX_QYDZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,g.QYXZ as g_XWSXJDXX_QYXZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,gd.MC as g_XWSXJDXX_QYXZ_MC--�������ͷ�������� ����
      ,g.FRDB as g_XWSXJDXX_FRDB--У��ʵϰ������Ϣ��������� ���˴���
      ,g.QYLXR as g_XWSXJDXX_QYLXR--У��ʵϰ������Ϣ��������� ��ҵ��ϵ��
      ,g.QYYZBM as g_XWSXJDXX_QYYZBM--У��ʵϰ������Ϣ��������� ��ҵ��������
      ,g.QYLXDH as g_XWSXJDXX_QYLXDH--У��ʵϰ������Ϣ��������� ��ҵ��ϵ�绰
      ,g.QYYYZZ as g_XWSXJDXX_QYYYZZ--У��ʵϰ������Ϣ��������� ��ҵӪҵִ��
      ,g.QYLX as g_XWSXJDXX_QYLX--У��ʵϰ������Ϣ��������� ��ҵ����
      ,g.QYRS as g_XWSXJDXX_QYRS--У��ʵϰ������Ϣ��������� ��ҵ����
      ,g.QYZCZJ as g_XWSXJDXX_QYZCZJ--У��ʵϰ������Ϣ��������� ��ҵע���ʽ�
      ,g.QYCZ as g_XWSXJDXX_QYCZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,g.QYFZR as g_XWSXJDXX_QYFZR--У��ʵϰ������Ϣ��������� ��ҵ������
      ,g.FZRZW as g_XWSXJDXX_FZRZW--У��ʵϰ������Ϣ��������� ������ְλ
      ,g.FZRLXDH as g_XWSXJDXX_FZRLXDH--У��ʵϰ������Ϣ��������� ��������ϵ�绰
      ,g.QYYXDZ as g_XWSXJDXX_QYYXDZ--У��ʵϰ������Ϣ��������� ��ҵ�����ַ
      ,g.QYQQ as g_XWSXJDXX_QYQQ--У��ʵϰ������Ϣ��������� ��ҵQQ
      ,g.QYMSN as g_XWSXJDXX_QYMSN--У��ʵϰ������Ϣ��������� ��ҵMSN
      ,g.QYWZ as g_XWSXJDXX_QYWZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,g.QYJJ as g_XWSXJDXX_QYJJ--У��ʵϰ������Ϣ��������� ��ҵ���
      ,g.SHZT as g_XWSXJDXX_SHZT--У��ʵϰ������Ϣ��������� ���״̬

FROM dbo.EDU_ZZJX_07_A07_SXZG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*����ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS d ON a.ZCGW = d.ID /*ת����λID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS e ON a.ZCGWQY = e.ID /*ת����λ��ҵID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS f ON a.ZRGW = f.ID /*ת���λID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS g ON a.ZRGWQY = g.ID /*ת���λ��ҵID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*���֤��������*/ LEFT OUTER JOIN
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
