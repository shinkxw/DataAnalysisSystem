
--�༶�������
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_03_01_BJ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[BH]--���
      ,a.[NJ]--�꼶��
      ,a.[BJ]--�༶����
      ,a.[JBNY]--��������
      ,a.[BZRGH]--�����ι���
      ,a.[BZXH]--�೤ѧ��
      ,a.[BJRYCH]--�༶�����ƺ�
      ,a.[XZ]--ѧ��
      ,a.[BJLXM]--�༶������
      ,a.[WLLX]--��������
      ,a.[BYRQ]--��ҵ����
      ,a.[SFSSMZSYJXB]--�Ƿ���������˫���ѧ��
      ,a.[SYJXMSM]--˫���ѧģʽ��
      ,a.[BZRID]--������ID
      ,a.[ZT]--״̬
      ,a.[PLSX]--����˳��
      ,a.[BJLBID]--�༶���ID
      ,a.[FBZRID]--��������ID
      ,c.SCHOOLID as c_NJ_SCHOOLID--�꼶������� ѧУ��
      ,c.NJMC as c_NJ_NJMC--�꼶������� �꼶����
      ,c.ZT as c_NJ_ZT--�꼶������� ״̬
      ,c.PLSX as c_NJ_PLSX--�꼶������� ����˳��
      ,d.MC as d_ZXXBJLX_MC--��Сѧ�༶���ʹ���� ����
      ,e.MC as e_SFBZ_MC--�Ƿ��־����� ����
      ,f.MC as f_SSMZSYJXMS_MC--��������˫���ѧģʽ����� ����
      ,f.SM as f_SSMZSYJXMS_SM--��������˫���ѧģʽ����� ˵��
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,g.GH as g_JZGJBSJ_GH--��ְ��������������� ����
      ,g.XM as g_JZGJBSJ_XM--��ְ��������������� ����
      ,g.YWXM as g_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,g.XMPY as g_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,g.CYM as g_JZGJBSJ_CYM--��ְ��������������� ������
      ,g.XBM as g_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[gb].MC as g_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,g.CSRQ as g_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,g.CSDM as g_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,[gc].MC as g_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,g.JG as g_JZGJBSJ_JG--��ְ��������������� ����
      ,g.MZM as g_JZGJBSJ_MZM--��ְ��������������� ������
      ,[gd].MZMC as g_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[gd].ZMDM as g_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,g.GJDQM as g_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[ge].GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[ge].EZMDM as g_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[ge].SZMDM as g_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[gf].MC as g_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,g.SFZJH as g_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,g.HYZKM as g_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,[gg].MC as g_JZGJBSJ_HYZKM_MC--����״������ ����
      ,g.GATQWM as g_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[gh].MC as g_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[gh].SM as g_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[gi].MC as g_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[gi].JC as g_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,g.JKZKM as g_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[gj].MC as g_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[gj].SM as g_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,g.XYZJM as g_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[gk].MC as g_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,g.XXM as g_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[gl].MC as g_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[gl].JC as g_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,g.ZP as g_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,g.SFZJYXQ as g_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,g.JGH as g_JZGJBSJ_JGH--��ְ��������������� ������
      ,g.JTZZ as g_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,g.XZZ as g_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,g.HKSZD as g_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,g.HKXZM as g_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,[gm].MC as g_JZGJBSJ_HKXZM_MC--���������� ����
      ,g.XLM as g_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,[gn].MC as g_JZGJBSJ_XLM_MC--ѧ������ ����
      ,g.GZNY as g_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,g.LXNY as g_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,g.CJNY as g_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,g.BZLBM as g_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[go].MC as g_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,g.DABH as g_JZGJBSJ_DABH--��ְ��������������� �������
      ,g.DAWB as g_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,g.TXDZ as g_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,g.LXDH as g_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,g.YZBM as g_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,g.DZXX as g_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,g.ZYDZ as g_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,g.TC as g_JZGJBSJ_TC--��ְ��������������� �س�
      ,g.GWZYM as g_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,[gp].MC as g_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,g.ZYRKXD as g_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,[gq].MC as g_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,g.JZGLXID as g_JZGJBSJ_JZGLXID--��ְ��������������� ��ְ������ID
      ,g.XQ as g_JZGJBSJ_XQ--��ְ��������������� У��
      ,g.ZGZC as g_JZGJBSJ_ZGZC--��ְ��������������� ���ְ��
      ,g.PDSJ as g_JZGJBSJ_PDSJ--��ְ��������������� ����ʱ��
      ,g.XPZC as g_JZGJBSJ_XPZC--��ְ��������������� ��Ʒְ��
      ,g.PDESJ as g_JZGJBSJ_PDESJ--��ְ��������������� Ƹ��ʱ��
      ,g.RBXQDW as g_JZGJBSJ_RBXQDW--��ְ��������������� �뱾Уǰ��λ
      ,g.ZZZT as g_JZGJBSJ_ZZZT--��ְ��������������� ��ְ״̬
      ,g.SZBM as g_JZGJBSJ_SZBM--��ְ��������������� ���ڲ���
      ,g.XZZW as g_JZGJBSJ_XZZW--��ְ��������������� ����ְ��
      ,g.DH as g_JZGJBSJ_DH--��ְ��������������� �̺�
      ,g.PTHDJ as g_JZGJBSJ_PTHDJ--��ְ��������������� ��ͨ���ȼ�
      ,g.JSZH as g_JZGJBSJ_JSZH--��ְ��������������� ��ʦ֤��
      ,g.JSJDJ as g_JZGJBSJ_JSJDJ--��ְ��������������� ������ȼ�
      ,g.GGJSDJ as g_JZGJBSJ_GGJSDJ--��ְ��������������� �Ǹɽ�ʦ�ȼ�
      ,g.RJXK as g_JZGJBSJ_RJXK--��ְ��������������� �ν�ѧ��
      ,g.SFRSDL as g_JZGJBSJ_SFRSDL--��ְ��������������� �Ƿ����´���
      ,g.NDKH as g_JZGJBSJ_NDKH--��ְ��������������� ��ȿ���
      ,g.XXJL as g_JZGJBSJ_XXJL--��ְ��������������� ѧϰ����
      ,g.GZJL as g_JZGJBSJ_GZJL--��ְ��������������� ��������
      ,g.JYQK as g_JZGJBSJ_JYQK--��ְ��������������� �������
      ,g.GZYLJCQK as g_JZGJBSJ_GZYLJCQK--��ְ��������������� ���������������
      ,g.JTZYCY as g_JZGJBSJ_JTZYCY--��ְ��������������� ��ͥ��Ҫ��Ա
      ,g.BZ as g_JZGJBSJ_BZ--��ְ��������������� ��ע
      ,g.DYXLCD as g_JZGJBSJ_DYXLCD--��ְ��������������� ��һѧ���̶�
      ,g.DYXLFS as g_JZGJBSJ_DYXLFS--��ְ��������������� ��һѧ����ʽ
      ,g.DYXLXZ as g_JZGJBSJ_DYXLXZ--��ְ��������������� ��һѧ��ѧ��
      ,g.DYXLXW as g_JZGJBSJ_DYXLXW--��ְ��������������� ��һѧ��ѧλ
      ,g.DYXLBYSJ as g_JZGJBSJ_DYXLBYSJ--��ְ��������������� ��һѧ����ҵʱ��
      ,g.DYXLBYXX as g_JZGJBSJ_DYXLBYXX--��ְ��������������� ��һѧ����ҵѧУ
      ,g.DYXLZY as g_JZGJBSJ_DYXLZY--��ְ��������������� ��һѧ��רҵ
      ,g.ZGXLCD as g_JZGJBSJ_ZGXLCD--��ְ��������������� ���ѧ���̶�
      ,g.ZGXLFS as g_JZGJBSJ_ZGXLFS--��ְ��������������� ���ѧ����ʽ
      ,g.ZGXLXZ as g_JZGJBSJ_ZGXLXZ--��ְ��������������� ���ѧ��ѧ��
      ,g.ZGXLXW as g_JZGJBSJ_ZGXLXW--��ְ��������������� ���ѧ��ѧλ
      ,g.ZGXLBYSJ as g_JZGJBSJ_ZGXLBYSJ--��ְ��������������� ���ѧ����ҵʱ��
      ,g.ZGXLBYXX as g_JZGJBSJ_ZGXLBYXX--��ְ��������������� ���ѧ����ҵѧУ
      ,g.ZGXLZY as g_JZGJBSJ_ZGXLZY--��ְ��������������� ���ѧ��רҵ
      ,h.SCHOOLID as h_BJLB_SCHOOLID--�༶���� ѧУ
      ,h.LBMC as h_BJLB_LBMC--�༶���� �������
      ,i.SCHOOLID as i_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,i.GH as i_JZGJBSJ_GH--��ְ��������������� ����
      ,i.XM as i_JZGJBSJ_XM--��ְ��������������� ����
      ,i.YWXM as i_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,i.XMPY as i_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,i.CYM as i_JZGJBSJ_CYM--��ְ��������������� ������
      ,i.XBM as i_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[ib].MC as i_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,i.CSRQ as i_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,i.CSDM as i_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,[ic].MC as i_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,i.JG as i_JZGJBSJ_JG--��ְ��������������� ����
      ,i.MZM as i_JZGJBSJ_MZM--��ְ��������������� ������
      ,[id].MZMC as i_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[id].ZMDM as i_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,i.GJDQM as i_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[ie].GJDQMCJC as i_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[ie].EZMDM as i_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[ie].SZMDM as i_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,i.SFZJLXM as i_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[if].MC as i_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,i.SFZJH as i_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,i.HYZKM as i_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,[ig].MC as i_JZGJBSJ_HYZKM_MC--����״������ ����
      ,i.GATQWM as i_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[ih].MC as i_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[ih].SM as i_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,i.ZZMMM as i_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[ii].MC as i_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[ii].JC as i_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,i.JKZKM as i_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[ij].MC as i_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[ij].SM as i_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,i.XYZJM as i_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[ik].MC as i_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,i.XXM as i_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[il].MC as i_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[il].JC as i_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,i.ZP as i_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,i.SFZJYXQ as i_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,i.JGH as i_JZGJBSJ_JGH--��ְ��������������� ������
      ,i.JTZZ as i_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,i.XZZ as i_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,i.HKSZD as i_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,i.HKXZM as i_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,[im].MC as i_JZGJBSJ_HKXZM_MC--���������� ����
      ,i.XLM as i_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,[in].MC as i_JZGJBSJ_XLM_MC--ѧ������ ����
      ,i.GZNY as i_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,i.LXNY as i_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,i.CJNY as i_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,i.BZLBM as i_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[io].MC as i_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,i.DABH as i_JZGJBSJ_DABH--��ְ��������������� �������
      ,i.DAWB as i_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,i.TXDZ as i_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,i.LXDH as i_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,i.YZBM as i_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,i.DZXX as i_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,i.ZYDZ as i_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,i.TC as i_JZGJBSJ_TC--��ְ��������������� �س�
      ,i.GWZYM as i_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,[ip].MC as i_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,i.ZYRKXD as i_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,[iq].MC as i_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,i.JZGLXID as i_JZGJBSJ_JZGLXID--��ְ��������������� ��ְ������ID
      ,i.XQ as i_JZGJBSJ_XQ--��ְ��������������� У��
      ,i.ZGZC as i_JZGJBSJ_ZGZC--��ְ��������������� ���ְ��
      ,i.PDSJ as i_JZGJBSJ_PDSJ--��ְ��������������� ����ʱ��
      ,i.XPZC as i_JZGJBSJ_XPZC--��ְ��������������� ��Ʒְ��
      ,i.PDESJ as i_JZGJBSJ_PDESJ--��ְ��������������� Ƹ��ʱ��
      ,i.RBXQDW as i_JZGJBSJ_RBXQDW--��ְ��������������� �뱾Уǰ��λ
      ,i.ZZZT as i_JZGJBSJ_ZZZT--��ְ��������������� ��ְ״̬
      ,i.SZBM as i_JZGJBSJ_SZBM--��ְ��������������� ���ڲ���
      ,i.XZZW as i_JZGJBSJ_XZZW--��ְ��������������� ����ְ��
      ,i.DH as i_JZGJBSJ_DH--��ְ��������������� �̺�
      ,i.PTHDJ as i_JZGJBSJ_PTHDJ--��ְ��������������� ��ͨ���ȼ�
      ,i.JSZH as i_JZGJBSJ_JSZH--��ְ��������������� ��ʦ֤��
      ,i.JSJDJ as i_JZGJBSJ_JSJDJ--��ְ��������������� ������ȼ�
      ,i.GGJSDJ as i_JZGJBSJ_GGJSDJ--��ְ��������������� �Ǹɽ�ʦ�ȼ�
      ,i.RJXK as i_JZGJBSJ_RJXK--��ְ��������������� �ν�ѧ��
      ,i.SFRSDL as i_JZGJBSJ_SFRSDL--��ְ��������������� �Ƿ����´���
      ,i.NDKH as i_JZGJBSJ_NDKH--��ְ��������������� ��ȿ���
      ,i.XXJL as i_JZGJBSJ_XXJL--��ְ��������������� ѧϰ����
      ,i.GZJL as i_JZGJBSJ_GZJL--��ְ��������������� ��������
      ,i.JYQK as i_JZGJBSJ_JYQK--��ְ��������������� �������
      ,i.GZYLJCQK as i_JZGJBSJ_GZYLJCQK--��ְ��������������� ���������������
      ,i.JTZYCY as i_JZGJBSJ_JTZYCY--��ְ��������������� ��ͥ��Ҫ��Ա
      ,i.BZ as i_JZGJBSJ_BZ--��ְ��������������� ��ע
      ,i.DYXLCD as i_JZGJBSJ_DYXLCD--��ְ��������������� ��һѧ���̶�
      ,i.DYXLFS as i_JZGJBSJ_DYXLFS--��ְ��������������� ��һѧ����ʽ
      ,i.DYXLXZ as i_JZGJBSJ_DYXLXZ--��ְ��������������� ��һѧ��ѧ��
      ,i.DYXLXW as i_JZGJBSJ_DYXLXW--��ְ��������������� ��һѧ��ѧλ
      ,i.DYXLBYSJ as i_JZGJBSJ_DYXLBYSJ--��ְ��������������� ��һѧ����ҵʱ��
      ,i.DYXLBYXX as i_JZGJBSJ_DYXLBYXX--��ְ��������������� ��һѧ����ҵѧУ
      ,i.DYXLZY as i_JZGJBSJ_DYXLZY--��ְ��������������� ��һѧ��רҵ
      ,i.ZGXLCD as i_JZGJBSJ_ZGXLCD--��ְ��������������� ���ѧ���̶�
      ,i.ZGXLFS as i_JZGJBSJ_ZGXLFS--��ְ��������������� ���ѧ����ʽ
      ,i.ZGXLXZ as i_JZGJBSJ_ZGXLXZ--��ְ��������������� ���ѧ��ѧ��
      ,i.ZGXLXW as i_JZGJBSJ_ZGXLXW--��ְ��������������� ���ѧ��ѧλ
      ,i.ZGXLBYSJ as i_JZGJBSJ_ZGXLBYSJ--��ְ��������������� ���ѧ����ҵʱ��
      ,i.ZGXLBYXX as i_JZGJBSJ_ZGXLBYXX--��ְ��������������� ���ѧ����ҵѧУ
      ,i.ZGXLZY as i_JZGJBSJ_ZGXLZY--��ְ��������������� ���ѧ��רҵ

FROM dbo.EDU_ZXXX_03_01_BJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS c ON a.NJ = c.NJ /*�꼶��*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS d ON a.BJLXM = d.DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFSSMZSYJXB = e.DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS f ON a.SYJXMSM = f.DM /*˫���ѧģʽ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS g ON a.BZRID = g.ID /*������ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_A01_BJLB AS h ON a.BJLBID = h.ID /*�༶���ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS i ON a.FBZRID = i.ID /*��������ID*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [gb] ON g.XBM = [gb].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [gc] ON g.CSDM = [gc].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [gd] ON g.MZM = [gd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ge] ON g.GJDQM = [ge].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [gf] ON g.SFZJLXM = [gf].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [gg] ON g.HYZKM = [gg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [gh] ON g.GATQWM = [gh].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [gi] ON g.ZZMMM = [gi].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [gj] ON g.JKZKM = [gj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [gk] ON g.XYZJM = [gk].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [gl] ON g.XXM = [gl].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [gm] ON g.HKXZM = [gm].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [gn] ON g.XLM = [gn].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [go] ON g.BZLBM = [go].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [gp] ON g.GWZYM = [gp].DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [gq] ON g.ZYRKXD = [gq].DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ib] ON i.XBM = [ib].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ic] ON i.CSDM = [ic].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [id] ON i.MZM = [id].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ie] ON i.GJDQM = [ie].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [if] ON i.SFZJLXM = [if].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [ig] ON i.HYZKM = [ig].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ih] ON i.GATQWM = [ih].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ii] ON i.ZZMMM = [ii].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ij] ON i.JKZKM = [ij].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ik] ON i.XYZJM = [ik].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [il] ON i.XXM = [il].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [im] ON i.HKXZM = [im].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [in] ON i.XLM = [in].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [io] ON i.BZLBM = [io].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [ip] ON i.GWZYM = [ip].DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [iq] ON i.ZYRKXD = [iq].DM /*��Ҫ�ο�ѧ��*/
GO
