
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
      ,c.SCHOOLID as c_XWSXJDXX_SCHOOLID--У��ʵϰ������Ϣ��������� ѧУ��
      ,c.QYBH as c_XWSXJDXX_QYBH--У��ʵϰ������Ϣ��������� ��ҵ���
      ,c.JDHZHTBH as c_XWSXJDXX_JDHZHTBH--У��ʵϰ������Ϣ��������� ���غ�����ͬ���
      ,c.JDHZHTMC as c_XWSXJDXX_JDHZHTMC--У��ʵϰ������Ϣ��������� ���غ�����ͬ����
      ,c.JDLBM as c_XWSXJDXX_JDLBM--У��ʵϰ������Ϣ��������� ���������
      ,cb.MC as c_XWSXJDXX_JDLBM_MC--ʵϰ���������� ����
      ,c.DWMC as c_XWSXJDXX_DWMC--У��ʵϰ������Ϣ��������� ��λ����
      ,c.QYXZQ as c_XWSXJDXX_QYXZQ--У��ʵϰ������Ϣ��������� ��ҵ������
      ,cc.MC as c_XWSXJDXX_QYXZQ_MC--�л����񹲺͹������������� ����
      ,c.QYDZ as c_XWSXJDXX_QYDZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,c.QYXZ as c_XWSXJDXX_QYXZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,cd.MC as c_XWSXJDXX_QYXZ_MC--�������ͷ�������� ����
      ,c.FRDB as c_XWSXJDXX_FRDB--У��ʵϰ������Ϣ��������� ���˴���
      ,c.QYLXR as c_XWSXJDXX_QYLXR--У��ʵϰ������Ϣ��������� ��ҵ��ϵ��
      ,c.QYYZBM as c_XWSXJDXX_QYYZBM--У��ʵϰ������Ϣ��������� ��ҵ��������
      ,c.QYLXDH as c_XWSXJDXX_QYLXDH--У��ʵϰ������Ϣ��������� ��ҵ��ϵ�绰
      ,c.QYYYZZ as c_XWSXJDXX_QYYYZZ--У��ʵϰ������Ϣ��������� ��ҵӪҵִ��
      ,c.QYLX as c_XWSXJDXX_QYLX--У��ʵϰ������Ϣ��������� ��ҵ����
      ,c.QYRS as c_XWSXJDXX_QYRS--У��ʵϰ������Ϣ��������� ��ҵ����
      ,c.QYZCZJ as c_XWSXJDXX_QYZCZJ--У��ʵϰ������Ϣ��������� ��ҵע���ʽ�
      ,c.QYCZ as c_XWSXJDXX_QYCZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,c.QYFZR as c_XWSXJDXX_QYFZR--У��ʵϰ������Ϣ��������� ��ҵ������
      ,c.FZRZW as c_XWSXJDXX_FZRZW--У��ʵϰ������Ϣ��������� ������ְλ
      ,c.FZRLXDH as c_XWSXJDXX_FZRLXDH--У��ʵϰ������Ϣ��������� ��������ϵ�绰
      ,c.QYYXDZ as c_XWSXJDXX_QYYXDZ--У��ʵϰ������Ϣ��������� ��ҵ�����ַ
      ,c.QYQQ as c_XWSXJDXX_QYQQ--У��ʵϰ������Ϣ��������� ��ҵQQ
      ,c.QYMSN as c_XWSXJDXX_QYMSN--У��ʵϰ������Ϣ��������� ��ҵMSN
      ,c.QYWZ as c_XWSXJDXX_QYWZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,c.QYJJ as c_XWSXJDXX_QYJJ--У��ʵϰ������Ϣ��������� ��ҵ���
      ,c.SHZT as c_XWSXJDXX_SHZT--У��ʵϰ������Ϣ��������� ���״̬
      ,d.SCHOOLID as d_XXSXJH_SCHOOLID--ѧУʵϰ�ƻ��� ѧУID
      ,d.JHBT as d_XXSXJH_JHBT--ѧУʵϰ�ƻ��� �ƻ�����
      ,d.NJ as d_XXSXJH_NJ--ѧУʵϰ�ƻ��� �꼶
      ,d.BGXS as d_XXSXJH_BGXS--ѧУʵϰ�ƻ��� ������ʽ
      ,d.SFSX as d_XXSXJH_SFSX--ѧУʵϰ�ƻ��� �ƻ��Ƿ���Ч
      ,db.MC as d_XXSXJH_SFSX_MC--�ڿη�ʽ����� ����
      ,e.SCHOOLID as e_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,e.XH as e_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,e.XM as e_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,e.YWXM as e_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,e.XMPY as e_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,e.CYM as e_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,e.SFZJLXM as e_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,eb.MC as e_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,e.SFZJH as e_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,e.XBM as e_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,ec.MC as e_XSXX_XBM_MC--�˵��Ա���� ����
      ,e.XXM as e_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,ed.MC as e_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,ed.JC as e_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,e.CSRQ as e_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,e.CSDM as e_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,ee.MC as e_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,e.JG as e_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,e.MZM as e_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,ef.MZMC as e_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,ef.ZMDM as e_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,e.HYZKM as e_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,eg.MC as e_XSXX_HYZKM_MC--����״������ ����
      ,e.XYZJM as e_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,eh.MC as e_XSXX_XYZJM_MC--�ڽ��������� ����
      ,e.GATQWM as e_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,ei.MC as e_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,ei.SM as e_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,e.JKZKM as e_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,ej.MC as e_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,ej.SM as e_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,e.ZZMMM as e_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,ek.MC as e_XSXX_ZZMMM_MC--������ò���� ����
      ,ek.JC as e_XSXX_ZZMMM_JC--������ò���� ���
      ,e.HKSZDXZQHM as e_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,el.MC as e_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,e.HKLBM as e_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,em.MC as e_XSXX_HKLBM_MC--���������� ����
      ,e.SFSLDRK as e_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,en.MC as e_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,e.GJDQM as e_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,eo.GJDQMCJC as e_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,eo.EZMDM as e_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,eo.SZMDM as e_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,e.TC as e_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,e.XSLXDH as e_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,e.WLDZ as e_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,e.JSTXH as e_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,e.DZXX as e_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,e.ZP as e_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)

FROM dbo.EDU_ZZJX_07_A08_SXTS AS a LEFT OUTER JOIN
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
