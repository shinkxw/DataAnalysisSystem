
--��ְ�ſν����¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_38_A02_ZZPKJGJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[ZZXQID]--У��ID
      ,a.[XQID]--ѧ��ID
      ,a.[ZYXXID]--רҵID
      ,a.[NJID]--�꼶ID
      ,a.[JXBID]--��ѧ�༶ID
      ,a.[TEACHERID1]--������ʦID
      ,a.[TEACHERID2]--������ʦID
      ,a.[KCQDID]--�γ��嵥ID
      ,a.[KCH]--�γ̺�
      ,a.[CLASSROOM]--����ID
      ,a.[ZZBJID]--�����༶ID
      ,a.[WEEKDAY]--������ID
      ,a.[PERIOD]--ʱ��ID
      ,a.[SESSION]--�ڴ�ID
      ,c.SCHOOLID as c_ZZXQSJ_SCHOOLID--У�����ݱ� ѧУ��
      ,c.XQDM as c_ZZXQSJ_XQDM--У�����ݱ� У������
      ,c.XQMC as c_ZZXQSJ_XQMC--У�����ݱ� У������
      ,c.XQDZ as c_ZZXQSJ_XQDZ--У�����ݱ� У����ַ
      ,c.XQLXDH as c_ZZXQSJ_XQLXDH--У�����ݱ� У����ϵ�绰
      ,c.XQFZRH as c_ZZXQSJ_XQFZRH--У�����ݱ� У�������˺�
      ,c.DZYJ as c_ZZXQSJ_DZYJ--У�����ݱ� �����ʼ�
      ,c.XQYZBM as c_ZZXQSJ_XQYZBM--У�����ݱ� У����������
      ,c.XQSZDXZQHM as c_ZZXQSJ_XQSZDXZQHM--У�����ݱ� У�����ڵ�����������
      ,[cb].MC as c_ZZXQSJ_XQSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.XQMJ as c_ZZXQSJ_XQMJ--У�����ݱ� У�����
      ,c.XQJZMJ as c_ZZXQSJ_XQJZMJ--У�����ݱ� У���������
      ,c.XQJXKYSBZZ as c_ZZXQSJ_XQJXKYSBZZ--У�����ݱ� У����ѧ���������豸��ֵ
      ,c.XQGDZCZZ as c_ZZXQSJ_XQGDZCZZ--У�����ݱ� У���̶��ʲ���ֵ
      ,d.SCHOOLID as d_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,d.XNID as d_XQ_XNID--ѧ�����ݱ� ѧ��
      ,d.XQM as d_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[db].MC as d_XQ_XQM_MC--ѧ�ڴ���� ����
      ,d.XQMC as d_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,d.XQKSRQ as d_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,d.XQJSRQ as d_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,e.SCHOOLID as e_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,e.ZYDM as e_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,[eb].ZYMLLB as e_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,[eb].MC as e_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,e.ZYMC as e_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,e.ZYYWMC as e_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,e.XZ as e_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,e.ZYFXMC as e_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,e.ZYJC as e_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,e.JLNY as e_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,e.ZYJSS as e_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,e.KSJGH as e_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,e.ZXF as e_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,e.SSZYML as e_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,[ec].MC as e_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,e.ZYLB as e_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,f.SCHOOLID as f_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,f.NJMC as f_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,f.SSNF as f_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,f.NJZT as f_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,[fb].MC as f_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,g.SCHOOLID as g_ZZJXB_SCHOOLID--��ְ��ѧ��� ѧУ��
      ,g.ZZXQID as g_ZZJXB_ZZXQID--��ְ��ѧ��� У��ID
      ,g.XQID as g_ZZJXB_XQID--��ְ��ѧ��� ѧ��ID
      ,g.ZYXXID as g_ZZJXB_ZYXXID--��ְ��ѧ��� רҵID
      ,g.NJID as g_ZZJXB_NJID--��ְ��ѧ��� �꼶ID
      ,g.JXBMC as g_ZZJXB_JXBMC--��ְ��ѧ��� ��ѧ�༶����
      ,g.TEACHERID1 as g_ZZJXB_TEACHERID1--��ְ��ѧ��� ������ʦID
      ,g.TEACHERID2 as g_ZZJXB_TEACHERID2--��ְ��ѧ��� ������ʦID
      ,g.KCQDID as g_ZZJXB_KCQDID--��ְ��ѧ��� �γ��嵥ID
      ,g.KCH as g_ZZJXB_KCH--��ְ��ѧ��� �γ̺�
      ,g.CLASSROOM as g_ZZJXB_CLASSROOM--��ְ��ѧ��� ����ID
      ,g.ZDBJ as g_ZZJXB_ZDBJ--��ְ��ѧ��� ָ���༶
      ,g.ZDBJMC as g_ZZJXB_ZDBJMC--��ְ��ѧ��� ָ���༶����
      ,h.SCHOOLID as h_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,h.GH as h_JZGJBSJ_GH--��ְ��������������� ����
      ,h.XM as h_JZGJBSJ_XM--��ְ��������������� ����
      ,h.YWXM as h_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,h.XMPY as h_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,h.CYM as h_JZGJBSJ_CYM--��ְ��������������� ������
      ,h.SFZJLXM as h_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[hb].MC as h_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,h.SFZJH as h_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,h.CSRQ as h_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,h.XBM as h_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[hc].MC as h_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,h.MZM as h_JZGJBSJ_MZM--��ְ��������������� ������
      ,[hd].MZMC as h_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[hd].ZMDM as h_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,h.XXM as h_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[he].MC as h_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[he].JC as h_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,h.JKZKM as h_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[hf].MC as h_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[hf].SM as h_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,h.HYZTM as h_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[hg].MC as h_JZGJBSJ_HYZTM_MC--����״������ ����
      ,h.ZZMMM as h_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[hh].MC as h_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[hh].JC as h_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,h.GATQWM as h_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[hi].MC as h_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[hi].SM as h_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,h.JG as h_JZGJBSJ_JG--��ְ��������������� ����
      ,h.GJDQM as h_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[hj].GJDQMCJC as h_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[hj].EZMDM as h_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[hj].SZMDM as h_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,h.CSDXZQHM as h_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[hk].MC as h_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,h.XYZJM as h_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[hl].MC as h_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,h.JZGHKSZDXZQHM as h_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[hm].MC as h_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,h.HKLBM as h_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[hn].MC as h_JZGJBSJ_HKLBM_MC--���������� ����
      ,h.DQZZ as h_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,h.DQZZYZBM as h_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,h.CJGZNY as h_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,h.CJNY as h_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,h.LXNY as h_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,h.BZLBM as h_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[ho].MC as h_JZGJBSJ_BZLBM_MC--����������� ����
      ,h.JZGLBM as h_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[hp].MC as h_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[hp].SM as h_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,h.GWLBM as h_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[hq].MC as h_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,h.SFJZJS as h_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[hr].MC as h_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,h.SFSSXJS as h_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[hs].MC as h_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,h.ZP as h_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,h.DQZTM as h_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[ht].MC as h_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,h.YDDH as h_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,h.GDDH as h_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,h.TXDZYZBM as h_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,h.TXDZ as h_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,h.DZXX as h_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,h.WLDZ as h_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,h.JSTXH as h_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,i.SCHOOLID as i_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,i.GH as i_JZGJBSJ_GH--��ְ��������������� ����
      ,i.XM as i_JZGJBSJ_XM--��ְ��������������� ����
      ,i.YWXM as i_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,i.XMPY as i_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,i.CYM as i_JZGJBSJ_CYM--��ְ��������������� ������
      ,i.SFZJLXM as i_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[ib].MC as i_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,i.SFZJH as i_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,i.CSRQ as i_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,i.XBM as i_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[ic].MC as i_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,i.MZM as i_JZGJBSJ_MZM--��ְ��������������� ������
      ,[id].MZMC as i_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[id].ZMDM as i_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,i.XXM as i_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[ie].MC as i_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[ie].JC as i_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,i.JKZKM as i_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[if].MC as i_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[if].SM as i_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,i.HYZTM as i_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[ig].MC as i_JZGJBSJ_HYZTM_MC--����״������ ����
      ,i.ZZMMM as i_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[ih].MC as i_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[ih].JC as i_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,i.GATQWM as i_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[ii].MC as i_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[ii].SM as i_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,i.JG as i_JZGJBSJ_JG--��ְ��������������� ����
      ,i.GJDQM as i_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[ij].GJDQMCJC as i_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[ij].EZMDM as i_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[ij].SZMDM as i_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,i.CSDXZQHM as i_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[ik].MC as i_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,i.XYZJM as i_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[il].MC as i_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,i.JZGHKSZDXZQHM as i_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[im].MC as i_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,i.HKLBM as i_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[in].MC as i_JZGJBSJ_HKLBM_MC--���������� ����
      ,i.DQZZ as i_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,i.DQZZYZBM as i_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,i.CJGZNY as i_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,i.CJNY as i_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,i.LXNY as i_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,i.BZLBM as i_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[io].MC as i_JZGJBSJ_BZLBM_MC--����������� ����
      ,i.JZGLBM as i_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[ip].MC as i_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[ip].SM as i_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,i.GWLBM as i_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[iq].MC as i_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,i.SFJZJS as i_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[ir].MC as i_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,i.SFSSXJS as i_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[is].MC as i_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,i.ZP as i_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,i.DQZTM as i_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[it].MC as i_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,i.YDDH as i_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,i.GDDH as i_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,i.TXDZYZBM as i_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,i.TXDZ as i_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,i.DZXX as i_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,i.WLDZ as i_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,i.JSTXH as i_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,j.SCHOOLID as j_JXJHKCQD_SCHOOLID--��ѧ�ƻ��γ��嵥��������� ѧУID
      ,j.JXJHID as j_JXJHKCQD_JXJHID--��ѧ�ƻ��γ��嵥��������� ��ѧ�ƻ�ID
      ,j.KCH as j_JXJHKCQD_KCH--��ѧ�ƻ��γ��嵥��������� �γ̺�
      ,j.JHBH as j_JXJHKCQD_JHBH--��ѧ�ƻ��γ��嵥��������� �ƻ����
      ,j.XQID as j_JXJHKCQD_XQID--��ѧ�ƻ��γ��嵥��������� ѧ��ID
      ,j.KCMC as j_JXJHKCQD_KCMC--��ѧ�ƻ��γ��嵥��������� �γ�����
      ,j.YXKC as j_JXJHKCQD_YXKC--��ѧ�ƻ��γ��嵥��������� Ԥ�޿γ�
      ,j.SFHXKC as j_JXJHKCQD_SFHXKC--��ѧ�ƻ��γ��嵥��������� �Ƿ���ģ��Ǹɣ�
      ,[jb].MC as j_JXJHKCQD_SFHXKC_MC--�ڿη�ʽ����� ����
      ,j.KCFLM as j_JXJHKCQD_KCFLM--��ѧ�ƻ��γ��嵥��������� �γ̷�����
      ,[jc].MC as j_JXJHKCQD_KCFLM_MC--�γ̷������ ����
      ,j.KCSXM as j_JXJHKCQD_KCSXM--��ѧ�ƻ��γ��嵥��������� �γ�������
      ,[jd].MC as j_JXJHKCQD_KCSXM_MC--�γ����Դ���� ����
      ,[jd].SM as j_JXJHKCQD_KCSXM_SM--�γ����Դ���� ˵��
      ,j.ZXXQ as j_JXJHKCQD_ZXXQ--��ѧ�ƻ��γ��嵥��������� ִ��ѧ��
      ,j.ZKS as j_JXJHKCQD_ZKS--��ѧ�ƻ��γ��嵥��������� �ܿ�ʱ
      ,j.LLKS as j_JXJHKCQD_LLKS--��ѧ�ƻ��γ��嵥��������� ���ۿ�ʱ
      ,j.SJKS as j_JXJHKCQD_SJKS--��ѧ�ƻ��γ��嵥��������� ʵ����ʱ
      ,j.XF as j_JXJHKCQD_XF--��ѧ�ƻ��γ��嵥��������� ѧ��
      ,j.XFRDHGX as j_JXJHKCQD_XFRDHGX--��ѧ�ƻ��γ��嵥��������� ѧ���϶��ϸ���
      ,k.SCHOOLID as k_KC_SCHOOLID--�γ���������� ѧУID
      ,k.KCMC as k_KC_KCMC--�γ���������� �γ�����
      ,k.KCYWM as k_KC_KCYWM--�γ���������� �γ�Ӣ����
      ,k.KCBM as k_KC_KCBM--�γ���������� �γ̱���
      ,k.KCJS as k_KC_KCJS--�γ���������� �γ̽���
      ,k.XF as k_KC_XF--�γ���������� ѧ��
      ,k.ZXS as k_KC_ZXS--�γ���������� ��ѧʱ
      ,k.LLXS as k_KC_LLXS--�γ���������� ����ѧʱ
      ,k.SJXS as k_KC_SJXS--�γ���������� ʵ��ѧʱ
      ,k.QTXS as k_KC_QTXS--�γ���������� ����ѧʱ
      ,k.CKSM as k_KC_CKSM--�γ���������� �ο���Ŀ
      ,k.KKDW as k_KC_KKDW--�γ���������� ���ε�λ
      ,k.KSXS as k_KC_KSXS--�γ���������� ������ʽ
      ,[kb].MC as k_KC_KSXS_MC--������ʽ����� ����
      ,k.SKFSM as k_KC_SKFSM--�γ���������� �ڿη�ʽ��
      ,[kc].MC as k_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,k.KCFY as k_KC_KCFY--�γ���������� �γ̷���
      ,l.SCHOOLID as l_CLASSROOM_SCHOOLID--���ұ� ѧУ
      ,l.Name as l_CLASSROOM_Name--���ұ� ��������
      ,l.Place as l_CLASSROOM_Place--���ұ� �ص�
      ,l.Counts as l_CLASSROOM_Counts--���ұ� ��λ��
      ,m.SCHOOLID as m_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,m.ZYXXID as m_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,m.ZZNJID as m_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,m.XZBMC as m_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,m.JBNY as m_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,m.BZRGH as m_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,m.JSBH as m_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,m.NANSRS as m_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,m.NVSRS as m_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,m.ZRS as m_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,m.BZXH as m_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,m.JXJH as m_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,m.JGH as m_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,m.XQDM as m_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,m.BZRID as m_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID
      ,n.SCHOOLID as n_WEEKDAY_SCHOOLID--���� ѧУ��
      ,n.MC as n_WEEKDAY_MC--���� ����
      ,o.SCHOOLID as o_SD_SCHOOLID--ʱ�� ѧУ��
      ,o.MC as o_SD_MC--ʱ�� ����
      ,p.SCHOOLID as p_JC_SCHOOLID--�ڴ� ѧУ��
      ,p.SDID as p_JC_SDID--�ڴ� ����ʱ��ID
      ,p.MC as p_JC_MC--�ڴ� ����

FROM dbo.EDU_ZZJX_38_A02_ZZPKJGJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_02_01_ZZXQSJ AS c ON a.ZZXQID = c.ID /*У��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS e ON a.ZYXXID = e.ZYBH /*רҵID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS f ON a.NJID = f.NJDM /*�꼶ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_38_A01_ZZJXB AS g ON a.JXBID = g.ID /*��ѧ�༶ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS h ON a.TEACHERID1 = h.ID /*������ʦID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS i ON a.TEACHERID2 = i.ID /*������ʦID*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS j ON a.KCQDID = j.ID /*�γ��嵥ID*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS k ON a.KCH = k.KCH /*�γ̺�*/ AND a.SCHOOLID = k.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_30_A01_CLASSROOM AS l ON a.CLASSROOM = l.ID /*����ID*/ AND a.SCHOOLID = l.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS m ON a.ZZBJID = m.XZBDM /*�����༶ID*/ AND a.SCHOOLID = m.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_WEEKDAY AS n ON a.WEEKDAY = n.ID /*������ID*/ AND a.SCHOOLID = n.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_SD AS o ON a.PERIOD = o.ID /*ʱ��ID*/ AND a.SCHOOLID = o.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_JC AS p ON a.SESSION = p.ID /*�ڴ�ID*/ AND a.SCHOOLID = p.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cb] ON c.XQSZDXZQHM = [cb].DM /*У�����ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [eb] ON e.ZYDM = [eb].DM /*רҵ����*/ AND e.SSZYML = [eb].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [ec] ON e.SSZYML = [ec].DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.NJZT = [fb].DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [hb] ON h.SFZJLXM = [hb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [hc] ON h.XBM = [hc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [hd] ON h.MZM = [hd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [he] ON h.XXM = [he].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [hf] ON h.JKZKM = [hf].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [hg] ON h.HYZTM = [hg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [hh] ON h.ZZMMM = [hh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [hi] ON h.GATQWM = [hi].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [hj] ON h.GJDQM = [hj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [hk] ON h.CSDXZQHM = [hk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [hl] ON h.XYZJM = [hl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [hm] ON h.JZGHKSZDXZQHM = [hm].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [hn] ON h.HKLBM = [hn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [ho] ON h.BZLBM = [ho].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [hp] ON h.JZGLBM = [hp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [hq] ON h.GWLBM = [hq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hr] ON h.SFJZJS = [hr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hs] ON h.SFSSXJS = [hs].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [ht] ON h.DQZTM = [ht].DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ib] ON i.SFZJLXM = [ib].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ic] ON i.XBM = [ic].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [id] ON i.MZM = [id].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ie] ON i.XXM = [ie].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [if] ON i.JKZKM = [if].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [ig] ON i.HYZTM = [ig].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ih] ON i.ZZMMM = [ih].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ii] ON i.GATQWM = [ii].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ij] ON i.GJDQM = [ij].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ik] ON i.CSDXZQHM = [ik].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [il] ON i.XYZJM = [il].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [im] ON i.JZGHKSZDXZQHM = [im].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [in] ON i.HKLBM = [in].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [io] ON i.BZLBM = [io].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [ip] ON i.JZGLBM = [ip].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [iq] ON i.GWLBM = [iq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ir] ON i.SFJZJS = [ir].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [is] ON i.SFSSXJS = [is].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [it] ON i.DQZTM = [it].DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [jb] ON j.SFHXKC = [jb].DM /*�Ƿ���ģ��Ǹɣ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [jc] ON j.KCFLM = [jc].DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [jd] ON j.KCSXM = [jd].DM /*�γ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [kb] ON k.KSXS = [kb].DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [kc] ON k.SKFSM = [kc].DM /*�ڿη�ʽ��*/
GO
