
--רҵ�γ��ſ������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_32_A02_ZYKCPKJG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ExamID]--����ID
      ,a.[EXAMROOMID]--����ID
      ,a.[CCID]--����ID
      ,a.[KCQDID]--���Կ�ĿID
      ,a.[ZYXXID]--רҵID
      ,a.[NJID]--�꼶ID
      ,a.[BJID]--�༶ID
      ,a.[CKRS]--�ο�����
      ,a.[SKRS]--ʵ������
      ,a.[ZJKLSID]--���࿼��ʦID
      ,a.[FJKLSID]--���࿼��ʦID
      ,c.SCHOOLID as c_EXAM_SCHOOLID--���Ա� ѧУ
      ,c.Name as c_EXAM_Name--���Ա� ��������
      ,c.CJKSKMLM as c_EXAM_CJKSKMLM--���Ա� �μӿ��Կ�Ŀ�б�
      ,c.StartDate as c_EXAM_StartDate--���Ա� ��ʼ����
      ,c.EndDate as c_EXAM_EndDate--���Ա� ��ֹ����
      ,c.XqID as c_EXAM_XqID--���Ա� ѧ��ID
      ,c.DffsID as c_EXAM_DffsID--���Ա� �Ƿַ�ʽ
      ,d.SCHOOLID as d_EXAMROOM_SCHOOLID--������ ѧУ
      ,d.Name as d_EXAMROOM_Name--������ ��������
      ,d.RoomID as d_EXAMROOM_RoomID--������ ����ID
      ,d.ExamID as d_EXAMROOM_ExamID--������ ����ID
      ,d.StuCount as d_EXAMROOM_StuCount--������ ������������
      ,e.SCHOOLID as e_KSCC_SCHOOLID--���Գ��α� ѧУ
      ,e.ExamID as e_KSCC_ExamID--���Գ��α� ����ID
      ,e.Name as e_KSCC_Name--���Գ��α� ��������
      ,e.TypeID as e_KSCC_TypeID--���Գ��α� ����ʱ������
      ,e.ExamDate as e_KSCC_ExamDate--���Գ��α� ��������
      ,f.SCHOOLID as f_JXJHKCQD_SCHOOLID--��ѧ�ƻ��γ��嵥��������� ѧУID
      ,f.JXJHID as f_JXJHKCQD_JXJHID--��ѧ�ƻ��γ��嵥��������� ��ѧ�ƻ�ID
      ,f.KCH as f_JXJHKCQD_KCH--��ѧ�ƻ��γ��嵥��������� �γ̺�
      ,f.JHBH as f_JXJHKCQD_JHBH--��ѧ�ƻ��γ��嵥��������� �ƻ����
      ,f.XQID as f_JXJHKCQD_XQID--��ѧ�ƻ��γ��嵥��������� ѧ��ID
      ,f.KCMC as f_JXJHKCQD_KCMC--��ѧ�ƻ��γ��嵥��������� �γ�����
      ,f.YXKC as f_JXJHKCQD_YXKC--��ѧ�ƻ��γ��嵥��������� Ԥ�޿γ�
      ,f.SFHXKC as f_JXJHKCQD_SFHXKC--��ѧ�ƻ��γ��嵥��������� �Ƿ���ģ��Ǹɣ�
      ,[fb].MC as f_JXJHKCQD_SFHXKC_MC--�Ƿ��־����� ����
      ,f.KCFLM as f_JXJHKCQD_KCFLM--��ѧ�ƻ��γ��嵥��������� �γ̷�����
      ,[fc].MC as f_JXJHKCQD_KCFLM_MC--�γ̷������ ����
      ,f.KCSXM as f_JXJHKCQD_KCSXM--��ѧ�ƻ��γ��嵥��������� �γ�������
      ,[fd].MC as f_JXJHKCQD_KCSXM_MC--�γ����Դ���� ����
      ,[fd].SM as f_JXJHKCQD_KCSXM_SM--�γ����Դ���� ˵��
      ,f.ZXXQ as f_JXJHKCQD_ZXXQ--��ѧ�ƻ��γ��嵥��������� ִ��ѧ��
      ,f.ZKS as f_JXJHKCQD_ZKS--��ѧ�ƻ��γ��嵥��������� �ܿ�ʱ
      ,f.LLKS as f_JXJHKCQD_LLKS--��ѧ�ƻ��γ��嵥��������� ���ۿ�ʱ
      ,f.SJKS as f_JXJHKCQD_SJKS--��ѧ�ƻ��γ��嵥��������� ʵ����ʱ
      ,f.XF as f_JXJHKCQD_XF--��ѧ�ƻ��γ��嵥��������� ѧ��
      ,f.XFRDHGX as f_JXJHKCQD_XFRDHGX--��ѧ�ƻ��γ��嵥��������� ѧ���϶��ϸ���
      ,f.JXDG as f_JXJHKCQD_JXDG--��ѧ�ƻ��γ��嵥��������� ��ѧ���
      ,g.SCHOOLID as g_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,g.ZYDM as g_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,[gb].ZYMLLB as g_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,[gb].MC as g_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,g.ZYMC as g_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,g.ZYYWMC as g_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,g.XZ as g_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,g.ZYFXMC as g_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,g.ZYJC as g_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,g.JLNY as g_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,g.ZYJSS as g_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,g.KSJGH as g_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,g.ZXF as g_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,g.SSZYML as g_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,[gc].MC as g_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,g.ZYLB as g_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,g.XXZ as g_ZYXX_XXZ--רҵ������Ϣ���ݱ� ��ѧ��
      ,g.XZXF as g_ZYXX_XZXF--רҵ������Ϣ���ݱ� ����ѧ��
      ,g.PYMB as g_ZYXX_PYMB--רҵ������Ϣ���ݱ� ����Ŀ��
      ,g.PYGG as g_ZYXX_PYGG--רҵ������Ϣ���ݱ� �������
      ,g.ZKS as g_ZYXX_ZKS--רҵ������Ϣ���ݱ� �ܿ�ʱ
      ,g.SFSY as g_ZYXX_SFSY--רҵ������Ϣ���ݱ� �Ƿ�ʹ��
      ,h.SCHOOLID as h_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,h.NJMC as h_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,h.SSNF as h_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,h.NJZT as h_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,[hb].MC as h_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,h.PLSX as h_ZZNJ_PLSX--ѧУ�꼶���ݱ� ����˳��
      ,i.SCHOOLID as i_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,i.ZYXXID as i_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,i.ZZNJID as i_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,i.XZBMC as i_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,i.JBNY as i_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,i.BZRGH as i_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,i.JSBH as i_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,i.NANSRS as i_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,i.NVSRS as i_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,i.ZRS as i_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,i.BZXH as i_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,i.JXJH as i_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,i.JGH as i_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,i.XQDM as i_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,i.BZRID as i_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID
      ,i.PLSX as i_ZZBJ_PLSX--ѧУ�༶���ݱ� ����˳��
      ,i.ID as i_ZZBJ_ID--ѧУ�༶���ݱ� ��Record���
      ,j.SCHOOLID as j_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,j.GH as j_JZGJBSJ_GH--��ְ��������������� ����
      ,j.XM as j_JZGJBSJ_XM--��ְ��������������� ����
      ,j.YWXM as j_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,j.XMPY as j_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,j.CYM as j_JZGJBSJ_CYM--��ְ��������������� ������
      ,j.SFZJLXM as j_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[jb].MC as j_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,j.SFZJH as j_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,j.CSRQ as j_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,j.XBM as j_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[jc].MC as j_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,j.MZM as j_JZGJBSJ_MZM--��ְ��������������� ������
      ,[jd].MZMC as j_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[jd].ZMDM as j_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,j.XXM as j_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[je].MC as j_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[je].JC as j_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,j.JKZKM as j_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[jf].MC as j_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[jf].SM as j_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,j.HYZTM as j_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[jg].MC as j_JZGJBSJ_HYZTM_MC--����״������ ����
      ,j.ZZMMM as j_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[jh].MC as j_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[jh].JC as j_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,j.GATQWM as j_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[ji].MC as j_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[ji].SM as j_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,j.JG as j_JZGJBSJ_JG--��ְ��������������� ����
      ,j.GJDQM as j_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[jj].GJDQMCJC as j_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[jj].EZMDM as j_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[jj].SZMDM as j_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,j.CSDXZQHM as j_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[jk].MC as j_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,j.XYZJM as j_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[jl].MC as j_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,j.JZGHKSZDXZQHM as j_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[jm].MC as j_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,j.HKLBM as j_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[jn].MC as j_JZGJBSJ_HKLBM_MC--���������� ����
      ,j.DQZZ as j_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,j.DQZZYZBM as j_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,j.CJGZNY as j_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,j.CJNY as j_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,j.LXNY as j_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,j.BZLBM as j_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[jo].MC as j_JZGJBSJ_BZLBM_MC--����������� ����
      ,j.JZGLBM as j_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[jp].MC as j_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[jp].SM as j_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,j.GWLBM as j_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[jq].MC as j_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,j.SFJZJS as j_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[jr].MC as j_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,j.SFSSXJS as j_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[js].MC as j_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,j.ZP as j_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,j.DQZTM as j_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[jt].MC as j_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,j.YDDH as j_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,j.GDDH as j_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,j.TXDZYZBM as j_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,j.TXDZ as j_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,j.DZXX as j_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,j.WLDZ as j_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,j.JSTXH as j_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,j.JSKQJS as j_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,j.TeacherGroupId as j_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����
      ,j.PersonalCard1 as j_JZGJBSJ_PersonalCard1--��ְ��������������� ���˿�1
      ,j.PersonalCard2 as j_JZGJBSJ_PersonalCard2--��ְ��������������� ���˿�2
      ,j.PersonalCard3 as j_JZGJBSJ_PersonalCard3--��ְ��������������� ���˿�3
      ,k.SCHOOLID as k_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,k.GH as k_JZGJBSJ_GH--��ְ��������������� ����
      ,k.XM as k_JZGJBSJ_XM--��ְ��������������� ����
      ,k.YWXM as k_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,k.XMPY as k_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,k.CYM as k_JZGJBSJ_CYM--��ְ��������������� ������
      ,k.SFZJLXM as k_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[kb].MC as k_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,k.SFZJH as k_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,k.CSRQ as k_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,k.XBM as k_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[kc].MC as k_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,k.MZM as k_JZGJBSJ_MZM--��ְ��������������� ������
      ,[kd].MZMC as k_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[kd].ZMDM as k_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,k.XXM as k_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[ke].MC as k_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[ke].JC as k_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,k.JKZKM as k_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[kf].MC as k_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[kf].SM as k_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,k.HYZTM as k_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[kg].MC as k_JZGJBSJ_HYZTM_MC--����״������ ����
      ,k.ZZMMM as k_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[kh].MC as k_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[kh].JC as k_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,k.GATQWM as k_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[ki].MC as k_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[ki].SM as k_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,k.JG as k_JZGJBSJ_JG--��ְ��������������� ����
      ,k.GJDQM as k_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[kj].GJDQMCJC as k_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[kj].EZMDM as k_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[kj].SZMDM as k_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,k.CSDXZQHM as k_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[kk].MC as k_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,k.XYZJM as k_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[kl].MC as k_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,k.JZGHKSZDXZQHM as k_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[km].MC as k_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,k.HKLBM as k_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[kn].MC as k_JZGJBSJ_HKLBM_MC--���������� ����
      ,k.DQZZ as k_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,k.DQZZYZBM as k_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,k.CJGZNY as k_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,k.CJNY as k_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,k.LXNY as k_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,k.BZLBM as k_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[ko].MC as k_JZGJBSJ_BZLBM_MC--����������� ����
      ,k.JZGLBM as k_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[kp].MC as k_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[kp].SM as k_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,k.GWLBM as k_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[kq].MC as k_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,k.SFJZJS as k_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[kr].MC as k_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,k.SFSSXJS as k_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[ks].MC as k_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,k.ZP as k_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,k.DQZTM as k_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[kt].MC as k_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,k.YDDH as k_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,k.GDDH as k_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,k.TXDZYZBM as k_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,k.TXDZ as k_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,k.DZXX as k_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,k.WLDZ as k_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,k.JSTXH as k_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,k.JSKQJS as k_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,k.TeacherGroupId as k_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����
      ,k.PersonalCard1 as k_JZGJBSJ_PersonalCard1--��ְ��������������� ���˿�1
      ,k.PersonalCard2 as k_JZGJBSJ_PersonalCard2--��ְ��������������� ���˿�2
      ,k.PersonalCard3 as k_JZGJBSJ_PersonalCard3--��ְ��������������� ���˿�3

FROM dbo.EDU_ZZJX_32_A02_ZYKCPKJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A01_EXAM AS c ON a.ExamID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_30_A02_EXAMROOM AS d ON a.EXAMROOMID = d.ID /*����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_31_A02_KSCC AS e ON a.CCID = e.ID /*����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS f ON a.KCQDID = f.ID /*���Կ�ĿID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS g ON a.ZYXXID = g.ZYBH /*רҵID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS h ON a.NJID = h.NJDM /*�꼶ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS i ON a.BJID = i.XZBDM /*�༶ID*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS j ON a.ZJKLSID = j.ID /*���࿼��ʦID*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS k ON a.FJKLSID = k.ID /*���࿼��ʦID*/ AND a.SCHOOLID = k.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.SFHXKC = [fb].DM /*�Ƿ���ģ��Ǹɣ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [fc] ON f.KCFLM = [fc].DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [fd] ON f.KCSXM = [fd].DM /*�γ�������*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [gb] ON g.ZYDM = [gb].DM /*רҵ����*/ AND g.SSZYML = [gb].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [gc] ON g.SSZYML = [gc].DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hb] ON h.NJZT = [hb].DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [jb] ON j.SFZJLXM = [jb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [jc] ON j.XBM = [jc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [jd] ON j.MZM = [jd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [je] ON j.XXM = [je].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [jf] ON j.JKZKM = [jf].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [jg] ON j.HYZTM = [jg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [jh] ON j.ZZMMM = [jh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ji] ON j.GATQWM = [ji].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [jj] ON j.GJDQM = [jj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [jk] ON j.CSDXZQHM = [jk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [jl] ON j.XYZJM = [jl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [jm] ON j.JZGHKSZDXZQHM = [jm].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [jn] ON j.HKLBM = [jn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [jo] ON j.BZLBM = [jo].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [jp] ON j.JZGLBM = [jp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [jq] ON j.GWLBM = [jq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [jr] ON j.SFJZJS = [jr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [js] ON j.SFSSXJS = [js].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [jt] ON j.DQZTM = [jt].DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [kb] ON k.SFZJLXM = [kb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [kc] ON k.XBM = [kc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [kd] ON k.MZM = [kd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ke] ON k.XXM = [ke].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [kf] ON k.JKZKM = [kf].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [kg] ON k.HYZTM = [kg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [kh] ON k.ZZMMM = [kh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ki] ON k.GATQWM = [ki].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [kj] ON k.GJDQM = [kj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [kk] ON k.CSDXZQHM = [kk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [kl] ON k.XYZJM = [kl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [km] ON k.JZGHKSZDXZQHM = [km].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [kn] ON k.HKLBM = [kn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [ko] ON k.BZLBM = [ko].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [kp] ON k.JZGLBM = [kp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [kq] ON k.GWLBM = [kq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [kr] ON k.SFJZJS = [kr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ks] ON k.SFSSXJS = [ks].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [kt] ON k.DQZTM = [kt].DM /*��ǰ״̬��*/
GO
