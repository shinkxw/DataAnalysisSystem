
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
      ,d.SCHOOLID as d_XWSXJDXX_SCHOOLID--У��ʵϰ������Ϣ��������� ѧУ��
      ,d.QYBH as d_XWSXJDXX_QYBH--У��ʵϰ������Ϣ��������� ��ҵ���
      ,d.JDHZHTBH as d_XWSXJDXX_JDHZHTBH--У��ʵϰ������Ϣ��������� ���غ�����ͬ���
      ,d.JDHZHTMC as d_XWSXJDXX_JDHZHTMC--У��ʵϰ������Ϣ��������� ���غ�����ͬ����
      ,d.JDLBM as d_XWSXJDXX_JDLBM--У��ʵϰ������Ϣ��������� ���������
      ,db.MC as d_XWSXJDXX_JDLBM_MC--ʵϰ���������� ����
      ,d.DWMC as d_XWSXJDXX_DWMC--У��ʵϰ������Ϣ��������� ��λ����
      ,d.QYXZQ as d_XWSXJDXX_QYXZQ--У��ʵϰ������Ϣ��������� ��ҵ������
      ,dc.MC as d_XWSXJDXX_QYXZQ_MC--�л����񹲺͹������������� ����
      ,d.QYDZ as d_XWSXJDXX_QYDZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,d.QYXZ as d_XWSXJDXX_QYXZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,dd.MC as d_XWSXJDXX_QYXZ_MC--�������ͷ�������� ����
      ,d.FRDB as d_XWSXJDXX_FRDB--У��ʵϰ������Ϣ��������� ���˴���
      ,d.QYLXR as d_XWSXJDXX_QYLXR--У��ʵϰ������Ϣ��������� ��ҵ��ϵ��
      ,d.QYYZBM as d_XWSXJDXX_QYYZBM--У��ʵϰ������Ϣ��������� ��ҵ��������
      ,d.QYLXDH as d_XWSXJDXX_QYLXDH--У��ʵϰ������Ϣ��������� ��ҵ��ϵ�绰
      ,d.QYYYZZ as d_XWSXJDXX_QYYYZZ--У��ʵϰ������Ϣ��������� ��ҵӪҵִ��
      ,d.QYLX as d_XWSXJDXX_QYLX--У��ʵϰ������Ϣ��������� ��ҵ����
      ,d.QYRS as d_XWSXJDXX_QYRS--У��ʵϰ������Ϣ��������� ��ҵ����
      ,d.QYZCZJ as d_XWSXJDXX_QYZCZJ--У��ʵϰ������Ϣ��������� ��ҵע���ʽ�
      ,d.QYCZ as d_XWSXJDXX_QYCZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,d.QYFZR as d_XWSXJDXX_QYFZR--У��ʵϰ������Ϣ��������� ��ҵ������
      ,d.FZRZW as d_XWSXJDXX_FZRZW--У��ʵϰ������Ϣ��������� ������ְλ
      ,d.FZRLXDH as d_XWSXJDXX_FZRLXDH--У��ʵϰ������Ϣ��������� ��������ϵ�绰
      ,d.QYYXDZ as d_XWSXJDXX_QYYXDZ--У��ʵϰ������Ϣ��������� ��ҵ�����ַ
      ,d.QYQQ as d_XWSXJDXX_QYQQ--У��ʵϰ������Ϣ��������� ��ҵQQ
      ,d.QYMSN as d_XWSXJDXX_QYMSN--У��ʵϰ������Ϣ��������� ��ҵMSN
      ,d.QYWZ as d_XWSXJDXX_QYWZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,d.QYJJ as d_XWSXJDXX_QYJJ--У��ʵϰ������Ϣ��������� ��ҵ���
      ,d.SHZT as d_XWSXJDXX_SHZT--У��ʵϰ������Ϣ��������� ���״̬
      ,e.SCHOOLID as e_SXGW_SCHOOLID--ʵϰ��λ�� ѧУID
      ,e.QYID as e_SXGW_QYID--ʵϰ��λ�� ��ҵID
      ,e.GWMC as e_SXGW_GWMC--ʵϰ��λ�� ��λ����
      ,e.QYMC as e_SXGW_QYMC--ʵϰ��λ�� ��ҵ����
      ,e.ZPKSSJ as e_SXGW_ZPKSSJ--ʵϰ��λ�� ��Ƹ��ʼʱ��
      ,e.ZPJSSJ as e_SXGW_ZPJSSJ--ʵϰ��λ�� ��Ƹ����ʱ��
      ,e.GZXS as e_SXGW_GZXS--ʵϰ��λ�� ������ʽ
      ,e.XBYQ as e_SXGW_XBYQ--ʵϰ��λ�� �Ա�Ҫ��
      ,e.GWXC as e_SXGW_GWXC--ʵϰ��λ�� ��λн��
      ,e.WYYQ as e_SXGW_WYYQ--ʵϰ��λ�� ����Ҫ��
      ,e.GZDD as e_SXGW_GZDD--ʵϰ��λ�� �����ص�
      ,e.JSJSP as e_SXGW_JSJSP--ʵϰ��λ�� �����ˮƽ
      ,e.ZPRS as e_SXGW_ZPRS--ʵϰ��λ�� ��Ƹ����
      ,e.XLYQ as e_SXGW_XLYQ--ʵϰ��λ�� ѧ��Ҫ��
      ,e.ZYYQ as e_SXGW_ZYYQ--ʵϰ��λ�� רҵҪ��
      ,e.NLYQ as e_SXGW_NLYQ--ʵϰ��λ�� ����Ҫ��
      ,e.GWJJ as e_SXGW_GWJJ--ʵϰ��λ�� ��λ���
      ,e.JBQK as e_SXGW_JBQK--ʵϰ��λ�� �������
      ,e.GZJY as e_SXGW_GZJY--ʵϰ��λ�� ��������
      ,e.SHZT as e_SXGW_SHZT--ʵϰ��λ�� ���״̬
      ,e.GWZT as e_SXGW_GWZT--ʵϰ��λ�� ��λ״̬
      ,f.MC as f_SFBZ_MC--�Ƿ��־����� ����
      ,g.MC as g_SFBZ_MC--�Ƿ��־����� ����
      ,h.MC as h_HJXZ_MC--�������ʴ��� ����

FROM dbo.EDU_ZZJX_07_03_XSXWSXQK AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����ϢID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS d ON a.QYID = d.ID /*��ҵ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS e ON a.GWID = e.ID /*��λ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFGMSXZRBX = f.DM /*�Ƿ���ʵϰ���α���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS g ON a.SFSDGSX = g.DM /*�Ƿ��Ƕ���ʵϰ*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_HJXZ AS h ON a.XSHJXZM = h.DM /*ѧ������������*/ LEFT OUTER JOIN
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
      dbo.EDU_ZZ_SXJDLB AS db ON d.JDLBM = db.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.QYXZQ = dc.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS dd ON d.QYXZ = dd.DM /*��ҵ����*/
GO
