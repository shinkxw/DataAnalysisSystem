
--���ſ��б�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_36_A04_XPKLB_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[JSQJXXID]--��ʦ�����Ϣ��ID
      ,a.[PKJGJLID]--�ſν����¼��ID
      ,a.[RQ]--����
      ,a.[CLZT]--����״̬
      ,a.[XPKJSID]--���ſν�ʦID
      ,a.[TJJSID]--�Ƽ���ʦID
      ,a.[DKJSID]--���ν�ʦID
      ,a.[DKLXID]--��������ID
      ,a.[PKSJ]--�ſ�ʱ��
      ,a.[QRSJ]--ȷ��ʱ��
      ,a.[PKRID]--�ſ���ID
      ,c.SCHOOLID as c_JSQJXX_SCHOOLID--��ʦ�����Ϣ�� ѧУ
      ,c.QJJSID as c_JSQJXX_QJJSID--��ʦ�����Ϣ�� ��ٽ�ʦID
      ,c.JSQJLXID as c_JSQJXX_JSQJLXID--��ʦ�����Ϣ�� ��ʦ�������ID
      ,c.QJKSSJ as c_JSQJXX_QJKSSJ--��ʦ�����Ϣ�� ��ٿ�ʼʱ��
      ,c.QJJSSJ as c_JSQJXX_QJJSSJ--��ʦ�����Ϣ�� ��ٽ���ʱ��
      ,c.CLZT as c_JSQJXX_CLZT--��ʦ�����Ϣ�� ����״̬
      ,c.KCCLFS as c_JSQJXX_KCCLFS--��ʦ�����Ϣ�� �γ̴���ʽ
      ,c.QJYY as c_JSQJXX_QJYY--��ʦ�����Ϣ�� ���ԭ��
      ,c.SQSJ as c_JSQJXX_SQSJ--��ʦ�����Ϣ�� ����ʱ��
      ,c.BZ as c_JSQJXX_BZ--��ʦ�����Ϣ�� ��ע
      ,c.SHRID as c_JSQJXX_SHRID--��ʦ�����Ϣ�� �����ID
      ,d.SCHOOLID as d_PKJGJL_SCHOOLID--�ſν����¼�� ѧУ��
      ,d.XQID as d_PKJGJL_XQID--�ſν����¼�� ѧ��ID
      ,d.TEACHERID as d_PKJGJL_TEACHERID--�ſν����¼�� ��ʦ
      ,d.TEACHERNAME as d_PKJGJL_TEACHERNAME--�ſν����¼�� ��ʦ
      ,d.COURSEID as d_PKJGJL_COURSEID--�ſν����¼�� �γ�
      ,d.COURSENAME as d_PKJGJL_COURSENAME--�ſν����¼�� �γ�
      ,d.CLASSID as d_PKJGJL_CLASSID--�ſν����¼�� �༶
      ,d.CLASSNAME as d_PKJGJL_CLASSNAME--�ſν����¼�� �༶
      ,d.WEEKDAY as d_PKJGJL_WEEKDAY--�ſν����¼�� ������
      ,d.WEEKDAYNAME as d_PKJGJL_WEEKDAYNAME--�ſν����¼�� ����������
      ,d.PERIOD as d_PKJGJL_PERIOD--�ſν����¼�� ʱ��
      ,d.PERIODNAME as d_PKJGJL_PERIODNAME--�ſν����¼�� ʱ������
      ,d.SESSION as d_PKJGJL_SESSION--�ſν����¼�� �ڴ�
      ,d.SESSIONNAME as d_PKJGJL_SESSIONNAME--�ſν����¼�� �ڴ�����
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,e.GH as e_JZGJBSJ_GH--��ְ��������������� ����
      ,e.XM as e_JZGJBSJ_XM--��ְ��������������� ����
      ,e.YWXM as e_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,e.XMPY as e_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,e.CYM as e_JZGJBSJ_CYM--��ְ��������������� ������
      ,e.XBM as e_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[eb].MC as e_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,e.CSRQ as e_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,e.CSDM as e_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,[ec].MC as e_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,e.JG as e_JZGJBSJ_JG--��ְ��������������� ����
      ,e.MZM as e_JZGJBSJ_MZM--��ְ��������������� ������
      ,[ed].MZMC as e_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[ed].ZMDM as e_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,e.GJDQM as e_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[ee].GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[ee].EZMDM as e_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[ee].SZMDM as e_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[ef].MC as e_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,e.SFZJH as e_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,e.HYZKM as e_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,[eg].MC as e_JZGJBSJ_HYZKM_MC--����״������ ����
      ,e.GATQWM as e_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[eh].MC as e_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[eh].SM as e_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[ei].MC as e_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[ei].JC as e_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,e.JKZKM as e_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[ej].MC as e_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[ej].SM as e_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,e.XYZJM as e_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[ek].MC as e_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,e.XXM as e_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[el].MC as e_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[el].JC as e_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,e.ZP as e_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,e.SFZJYXQ as e_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,e.JGH as e_JZGJBSJ_JGH--��ְ��������������� ������
      ,e.JTZZ as e_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,e.XZZ as e_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,e.HKSZD as e_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,e.HKXZM as e_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,[em].MC as e_JZGJBSJ_HKXZM_MC--���������� ����
      ,e.XLM as e_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,[en].MC as e_JZGJBSJ_XLM_MC--ѧ������ ����
      ,e.GZNY as e_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,e.LXNY as e_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,e.CJNY as e_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,e.BZLBM as e_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[eo].MC as e_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,e.DABH as e_JZGJBSJ_DABH--��ְ��������������� �������
      ,e.DAWB as e_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,e.TXDZ as e_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,e.LXDH as e_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,e.YZBM as e_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,e.DZXX as e_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,e.ZYDZ as e_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,e.TC as e_JZGJBSJ_TC--��ְ��������������� �س�
      ,e.GWZYM as e_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,[ep].MC as e_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,e.ZYRKXD as e_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,[eq].MC as e_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,e.JZGLXID as e_JZGJBSJ_JZGLXID--��ְ��������������� ��ְ������ID
      ,e.XQ as e_JZGJBSJ_XQ--��ְ��������������� У��
      ,e.ZGZC as e_JZGJBSJ_ZGZC--��ְ��������������� ���ְ��
      ,e.PDSJ as e_JZGJBSJ_PDSJ--��ְ��������������� ����ʱ��
      ,e.XPZC as e_JZGJBSJ_XPZC--��ְ��������������� ��Ʒְ��
      ,e.PDESJ as e_JZGJBSJ_PDESJ--��ְ��������������� Ƹ��ʱ��
      ,e.RBXQDW as e_JZGJBSJ_RBXQDW--��ְ��������������� �뱾Уǰ��λ
      ,e.ZZZT as e_JZGJBSJ_ZZZT--��ְ��������������� ��ְ״̬
      ,e.SZBM as e_JZGJBSJ_SZBM--��ְ��������������� ���ڲ���
      ,e.XZZW as e_JZGJBSJ_XZZW--��ְ��������������� ����ְ��
      ,e.DH as e_JZGJBSJ_DH--��ְ��������������� �̺�
      ,e.PTHDJ as e_JZGJBSJ_PTHDJ--��ְ��������������� ��ͨ���ȼ�
      ,e.JSZH as e_JZGJBSJ_JSZH--��ְ��������������� ��ʦ֤��
      ,e.JSJDJ as e_JZGJBSJ_JSJDJ--��ְ��������������� ������ȼ�
      ,e.GGJSDJ as e_JZGJBSJ_GGJSDJ--��ְ��������������� �Ǹɽ�ʦ�ȼ�
      ,e.RJXK as e_JZGJBSJ_RJXK--��ְ��������������� �ν�ѧ��
      ,e.SFRSDL as e_JZGJBSJ_SFRSDL--��ְ��������������� �Ƿ����´���
      ,e.NDKH as e_JZGJBSJ_NDKH--��ְ��������������� ��ȿ���
      ,e.XXJL as e_JZGJBSJ_XXJL--��ְ��������������� ѧϰ����
      ,e.GZJL as e_JZGJBSJ_GZJL--��ְ��������������� ��������
      ,e.JYQK as e_JZGJBSJ_JYQK--��ְ��������������� �������
      ,e.GZYLJCQK as e_JZGJBSJ_GZYLJCQK--��ְ��������������� ���������������
      ,e.JTZYCY as e_JZGJBSJ_JTZYCY--��ְ��������������� ��ͥ��Ҫ��Ա
      ,e.BZ as e_JZGJBSJ_BZ--��ְ��������������� ��ע
      ,e.DYXLCD as e_JZGJBSJ_DYXLCD--��ְ��������������� ��һѧ���̶�
      ,e.DYXLFS as e_JZGJBSJ_DYXLFS--��ְ��������������� ��һѧ����ʽ
      ,e.DYXLXZ as e_JZGJBSJ_DYXLXZ--��ְ��������������� ��һѧ��ѧ��
      ,e.DYXLXW as e_JZGJBSJ_DYXLXW--��ְ��������������� ��һѧ��ѧλ
      ,e.DYXLBYSJ as e_JZGJBSJ_DYXLBYSJ--��ְ��������������� ��һѧ����ҵʱ��
      ,e.DYXLBYXX as e_JZGJBSJ_DYXLBYXX--��ְ��������������� ��һѧ����ҵѧУ
      ,e.DYXLZY as e_JZGJBSJ_DYXLZY--��ְ��������������� ��һѧ��רҵ
      ,e.ZGXLCD as e_JZGJBSJ_ZGXLCD--��ְ��������������� ���ѧ���̶�
      ,e.ZGXLFS as e_JZGJBSJ_ZGXLFS--��ְ��������������� ���ѧ����ʽ
      ,e.ZGXLXZ as e_JZGJBSJ_ZGXLXZ--��ְ��������������� ���ѧ��ѧ��
      ,e.ZGXLXW as e_JZGJBSJ_ZGXLXW--��ְ��������������� ���ѧ��ѧλ
      ,e.ZGXLBYSJ as e_JZGJBSJ_ZGXLBYSJ--��ְ��������������� ���ѧ����ҵʱ��
      ,e.ZGXLBYXX as e_JZGJBSJ_ZGXLBYXX--��ְ��������������� ���ѧ����ҵѧУ
      ,e.ZGXLZY as e_JZGJBSJ_ZGXLZY--��ְ��������������� ���ѧ��רҵ
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,f.GH as f_JZGJBSJ_GH--��ְ��������������� ����
      ,f.XM as f_JZGJBSJ_XM--��ְ��������������� ����
      ,f.YWXM as f_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,f.XMPY as f_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,f.CYM as f_JZGJBSJ_CYM--��ְ��������������� ������
      ,f.XBM as f_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[fb].MC as f_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,f.CSRQ as f_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,f.CSDM as f_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,[fc].MC as f_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,f.JG as f_JZGJBSJ_JG--��ְ��������������� ����
      ,f.MZM as f_JZGJBSJ_MZM--��ְ��������������� ������
      ,[fd].MZMC as f_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[fd].ZMDM as f_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.GJDQM as f_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[fe].GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[fe].EZMDM as f_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[fe].SZMDM as f_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[ff].MC as f_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,f.SFZJH as f_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,f.HYZKM as f_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,[fg].MC as f_JZGJBSJ_HYZKM_MC--����״������ ����
      ,f.GATQWM as f_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[fh].MC as f_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[fh].SM as f_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[fi].MC as f_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[fi].JC as f_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,f.JKZKM as f_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[fj].MC as f_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[fj].SM as f_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,f.XYZJM as f_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[fk].MC as f_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,f.XXM as f_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[fl].MC as f_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[fl].JC as f_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,f.ZP as f_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,f.JGH as f_JZGJBSJ_JGH--��ְ��������������� ������
      ,f.JTZZ as f_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,f.XZZ as f_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,f.HKSZD as f_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,f.HKXZM as f_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,[fm].MC as f_JZGJBSJ_HKXZM_MC--���������� ����
      ,f.XLM as f_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,[fn].MC as f_JZGJBSJ_XLM_MC--ѧ������ ����
      ,f.GZNY as f_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,f.LXNY as f_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,f.CJNY as f_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,f.BZLBM as f_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[fo].MC as f_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,f.DABH as f_JZGJBSJ_DABH--��ְ��������������� �������
      ,f.DAWB as f_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,f.TXDZ as f_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,f.LXDH as f_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,f.YZBM as f_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,f.DZXX as f_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,f.TC as f_JZGJBSJ_TC--��ְ��������������� �س�
      ,f.GWZYM as f_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,[fp].MC as f_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,[fq].MC as f_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,f.JZGLXID as f_JZGJBSJ_JZGLXID--��ְ��������������� ��ְ������ID
      ,f.XQ as f_JZGJBSJ_XQ--��ְ��������������� У��
      ,f.ZGZC as f_JZGJBSJ_ZGZC--��ְ��������������� ���ְ��
      ,f.PDSJ as f_JZGJBSJ_PDSJ--��ְ��������������� ����ʱ��
      ,f.XPZC as f_JZGJBSJ_XPZC--��ְ��������������� ��Ʒְ��
      ,f.PDESJ as f_JZGJBSJ_PDESJ--��ְ��������������� Ƹ��ʱ��
      ,f.RBXQDW as f_JZGJBSJ_RBXQDW--��ְ��������������� �뱾Уǰ��λ
      ,f.ZZZT as f_JZGJBSJ_ZZZT--��ְ��������������� ��ְ״̬
      ,f.SZBM as f_JZGJBSJ_SZBM--��ְ��������������� ���ڲ���
      ,f.XZZW as f_JZGJBSJ_XZZW--��ְ��������������� ����ְ��
      ,f.DH as f_JZGJBSJ_DH--��ְ��������������� �̺�
      ,f.PTHDJ as f_JZGJBSJ_PTHDJ--��ְ��������������� ��ͨ���ȼ�
      ,f.JSZH as f_JZGJBSJ_JSZH--��ְ��������������� ��ʦ֤��
      ,f.JSJDJ as f_JZGJBSJ_JSJDJ--��ְ��������������� ������ȼ�
      ,f.GGJSDJ as f_JZGJBSJ_GGJSDJ--��ְ��������������� �Ǹɽ�ʦ�ȼ�
      ,f.RJXK as f_JZGJBSJ_RJXK--��ְ��������������� �ν�ѧ��
      ,f.SFRSDL as f_JZGJBSJ_SFRSDL--��ְ��������������� �Ƿ����´���
      ,f.NDKH as f_JZGJBSJ_NDKH--��ְ��������������� ��ȿ���
      ,f.XXJL as f_JZGJBSJ_XXJL--��ְ��������������� ѧϰ����
      ,f.GZJL as f_JZGJBSJ_GZJL--��ְ��������������� ��������
      ,f.JYQK as f_JZGJBSJ_JYQK--��ְ��������������� �������
      ,f.GZYLJCQK as f_JZGJBSJ_GZYLJCQK--��ְ��������������� ���������������
      ,f.JTZYCY as f_JZGJBSJ_JTZYCY--��ְ��������������� ��ͥ��Ҫ��Ա
      ,f.BZ as f_JZGJBSJ_BZ--��ְ��������������� ��ע
      ,f.DYXLCD as f_JZGJBSJ_DYXLCD--��ְ��������������� ��һѧ���̶�
      ,f.DYXLFS as f_JZGJBSJ_DYXLFS--��ְ��������������� ��һѧ����ʽ
      ,f.DYXLXZ as f_JZGJBSJ_DYXLXZ--��ְ��������������� ��һѧ��ѧ��
      ,f.DYXLXW as f_JZGJBSJ_DYXLXW--��ְ��������������� ��һѧ��ѧλ
      ,f.DYXLBYSJ as f_JZGJBSJ_DYXLBYSJ--��ְ��������������� ��һѧ����ҵʱ��
      ,f.DYXLBYXX as f_JZGJBSJ_DYXLBYXX--��ְ��������������� ��һѧ����ҵѧУ
      ,f.DYXLZY as f_JZGJBSJ_DYXLZY--��ְ��������������� ��һѧ��רҵ
      ,f.ZGXLCD as f_JZGJBSJ_ZGXLCD--��ְ��������������� ���ѧ���̶�
      ,f.ZGXLFS as f_JZGJBSJ_ZGXLFS--��ְ��������������� ���ѧ����ʽ
      ,f.ZGXLXZ as f_JZGJBSJ_ZGXLXZ--��ְ��������������� ���ѧ��ѧ��
      ,f.ZGXLXW as f_JZGJBSJ_ZGXLXW--��ְ��������������� ���ѧ��ѧλ
      ,f.ZGXLBYSJ as f_JZGJBSJ_ZGXLBYSJ--��ְ��������������� ���ѧ����ҵʱ��
      ,f.ZGXLBYXX as f_JZGJBSJ_ZGXLBYXX--��ְ��������������� ���ѧ����ҵѧУ
      ,f.ZGXLZY as f_JZGJBSJ_ZGXLZY--��ְ��������������� ���ѧ��רҵ
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
      ,h.SCHOOLID as h_DKLX_SCHOOLID--�������ͱ� ѧУ
      ,h.LXMC as h_DKLX_LXMC--�������ͱ� ��������
      ,h.BZ as h_DKLX_BZ--�������ͱ� ��ע
      ,i.SCHOOLID as i_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,i.APPID as i_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,'' as i_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,i.STATUS as i_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,i.USERTYPE as i_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,i.USERID as i_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,i.ROLEIDLst as i_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,i.XM as i_USER_XM--Ӧ��ϵͳ�û��� ����
      ,i.XB as i_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,i.QQ as i_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,i.DZYJ as i_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,i.LXDH as i_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,i.ZJDLSJ as i_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,i.DLCGCS as i_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,i.YHCJSJ as i_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,i.YHRY as i_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,i.YHJF as i_USER_YHJF--Ӧ��ϵͳ�û��� �û�����

FROM dbo.EDU_ZXJX_36_A04_XPKLB AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_36_A03_JSQJXX AS c ON a.JSQJXXID = c.ID /*��ʦ�����Ϣ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_04_PKJGJL AS d ON a.PKJGJLID = d.ID /*�ſν����¼��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS e ON a.XPKJSID = e.ID /*���ſν�ʦID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.TJJSID = f.ID /*�Ƽ���ʦID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS g ON a.DKJSID = g.ID /*���ν�ʦID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_36_A02_DKLX AS h ON a.DKLXID = h.ID /*��������ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS i ON a.PKRID = i.LOGINNAME /*�ſ���ID*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [eb] ON e.XBM = [eb].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ec] ON e.CSDM = [ec].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ed] ON e.MZM = [ed].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ee] ON e.GJDQM = [ee].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ef] ON e.SFZJLXM = [ef].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [eg] ON e.HYZKM = [eg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [eh] ON e.GATQWM = [eh].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ei] ON e.ZZMMM = [ei].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ej] ON e.JKZKM = [ej].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ek] ON e.XYZJM = [ek].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [el] ON e.XXM = [el].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [em] ON e.HKXZM = [em].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [en] ON e.XLM = [en].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [eo] ON e.BZLBM = [eo].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [ep] ON e.GWZYM = [ep].DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [eq] ON e.ZYRKXD = [eq].DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [fb] ON f.XBM = [fb].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fc] ON f.CSDM = [fc].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [fd] ON f.MZM = [fd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [fe] ON f.GJDQM = [fe].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ff] ON f.SFZJLXM = [ff].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [fg] ON f.HYZKM = [fg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [fh] ON f.GATQWM = [fh].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [fi] ON f.ZZMMM = [fi].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [fj] ON f.JKZKM = [fj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [fk] ON f.XYZJM = [fk].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [fl] ON f.XXM = [fl].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [fm] ON f.HKXZM = [fm].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [fn] ON f.XLM = [fn].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [fo] ON f.BZLBM = [fo].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [fp] ON f.GWZYM = [fp].DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [fq] ON f.ZYRKXD = [fq].DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_RKXD AS [gq] ON g.ZYRKXD = [gq].DM /*��Ҫ�ο�ѧ��*/
GO
