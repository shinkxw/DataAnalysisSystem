
--�ľ��ű�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_33_A01_YJAP_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ZYKCPKJGID]--רҵ�γ��ſ����ID
      ,a.[TeacherID]--�ľ��ʦID
      ,a.[ExamID]--����ID
      ,a.[EXAMROOMID]--����ID
      ,a.[CCID]--����ID
      ,a.[ZYXXID]--רҵID
      ,a.[NJID]--�꼶ID
      ,a.[BJID]--�༶ID
      ,a.[KCQDID]--���Կ�ĿID
      ,a.[YJFS]--�ľ�ʽ
      ,c.SCHOOLID as c_ZYKCPKJG_SCHOOLID--רҵ�γ��ſ������ ѧУ
      ,c.ExamID as c_ZYKCPKJG_ExamID--רҵ�γ��ſ������ ����ID
      ,c.EXAMROOMID as c_ZYKCPKJG_EXAMROOMID--רҵ�γ��ſ������ ����ID
      ,c.CCID as c_ZYKCPKJG_CCID--רҵ�γ��ſ������ ����ID
      ,c.KCQDID as c_ZYKCPKJG_KCQDID--רҵ�γ��ſ������ ���Կ�ĿID
      ,c.ZYXXID as c_ZYKCPKJG_ZYXXID--רҵ�γ��ſ������ רҵID
      ,c.NJID as c_ZYKCPKJG_NJID--רҵ�γ��ſ������ �꼶ID
      ,c.BJID as c_ZYKCPKJG_BJID--רҵ�γ��ſ������ �༶ID
      ,c.CKRS as c_ZYKCPKJG_CKRS--רҵ�γ��ſ������ �ο�����
      ,c.SKRS as c_ZYKCPKJG_SKRS--רҵ�γ��ſ������ ʵ������
      ,c.ZJKLSID as c_ZYKCPKJG_ZJKLSID--רҵ�γ��ſ������ ���࿼��ʦID
      ,c.FJKLSID as c_ZYKCPKJG_FJKLSID--רҵ�γ��ſ������ ���࿼��ʦID
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,d.GH as d_JZGJBSJ_GH--��ְ��������������� ����
      ,d.XM as d_JZGJBSJ_XM--��ְ��������������� ����
      ,d.YWXM as d_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,d.XMPY as d_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,d.CYM as d_JZGJBSJ_CYM--��ְ��������������� ������
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[db].MC as d_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,d.SFZJH as d_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,d.CSRQ as d_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,d.XBM as d_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[dc].MC as d_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,d.MZM as d_JZGJBSJ_MZM--��ְ��������������� ������
      ,[dd].MZMC as d_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[dd].ZMDM as d_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,d.XXM as d_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[de].MC as d_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[de].JC as d_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,d.JKZKM as d_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[df].MC as d_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[df].SM as d_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,d.HYZTM as d_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[dg].MC as d_JZGJBSJ_HYZTM_MC--����״������ ����
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[dh].MC as d_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[dh].JC as d_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,d.GATQWM as d_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[di].MC as d_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[di].SM as d_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,d.JG as d_JZGJBSJ_JG--��ְ��������������� ����
      ,d.GJDQM as d_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[dj].GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[dj].EZMDM as d_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[dj].SZMDM as d_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,d.CSDXZQHM as d_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[dk].MC as d_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,d.XYZJM as d_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[dl].MC as d_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,d.JZGHKSZDXZQHM as d_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[dm].MC as d_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,d.HKLBM as d_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[dn].MC as d_JZGJBSJ_HKLBM_MC--���������� ����
      ,d.DQZZ as d_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,d.DQZZYZBM as d_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,d.CJGZNY as d_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,d.CJNY as d_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,d.LXNY as d_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,d.BZLBM as d_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[do].MC as d_JZGJBSJ_BZLBM_MC--����������� ����
      ,d.JZGLBM as d_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[dp].MC as d_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[dp].SM as d_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,d.GWLBM as d_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[dq].MC as d_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,d.SFJZJS as d_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[dr].MC as d_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,d.SFSSXJS as d_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[ds].MC as d_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,d.ZP as d_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,d.DQZTM as d_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[dt].MC as d_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,d.YDDH as d_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,d.GDDH as d_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,d.TXDZYZBM as d_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,d.TXDZ as d_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,d.DZXX as d_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,d.WLDZ as d_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,d.JSTXH as d_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,e.SCHOOLID as e_EXAM_SCHOOLID--���Ա� ѧУ
      ,e.Name as e_EXAM_Name--���Ա� ��������
      ,e.CJKSKMLM as e_EXAM_CJKSKMLM--���Ա� �μӿ��Կ�Ŀ�б�
      ,e.StartDate as e_EXAM_StartDate--���Ա� ��ʼ����
      ,e.EndDate as e_EXAM_EndDate--���Ա� ��ֹ����
      ,e.XqID as e_EXAM_XqID--���Ա� ѧ��ID
      ,e.DffsID as e_EXAM_DffsID--���Ա� �Ƿַ�ʽ
      ,f.SCHOOLID as f_EXAMROOM_SCHOOLID--������ ѧУ
      ,f.Name as f_EXAMROOM_Name--������ ��������
      ,f.RoomID as f_EXAMROOM_RoomID--������ ����ID
      ,f.ExamID as f_EXAMROOM_ExamID--������ ����ID
      ,f.StuCount as f_EXAMROOM_StuCount--������ ������������
      ,g.SCHOOLID as g_KSCC_SCHOOLID--���Գ��α� ѧУ
      ,g.ExamID as g_KSCC_ExamID--���Գ��α� ����ID
      ,g.Name as g_KSCC_Name--���Գ��α� ��������
      ,g.TypeID as g_KSCC_TypeID--���Գ��α� ����ʱ������
      ,g.ExamDate as g_KSCC_ExamDate--���Գ��α� ��������
      ,h.SCHOOLID as h_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,h.ZYDM as h_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,[hb].ZYMLLB as h_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,[hb].MC as h_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,h.ZYMC as h_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,h.ZYYWMC as h_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,h.XZ as h_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,h.ZYFXMC as h_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,h.ZYJC as h_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,h.JLNY as h_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,h.ZYJSS as h_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,h.KSJGH as h_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,h.ZXF as h_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,h.SSZYML as h_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,[hc].MC as h_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,h.ZYLB as h_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,i.SCHOOLID as i_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,i.NJMC as i_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,i.SSNF as i_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,i.NJZT as i_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,[ib].MC as i_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,j.SCHOOLID as j_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,j.ZYXXID as j_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,j.ZZNJID as j_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,j.XZBMC as j_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,j.JBNY as j_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,j.BZRGH as j_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,j.JSBH as j_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,j.NANSRS as j_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,j.NVSRS as j_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,j.ZRS as j_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,j.BZXH as j_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,j.JXJH as j_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,j.JGH as j_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,j.XQDM as j_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,j.BZRID as j_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID
      ,k.SCHOOLID as k_JXJHKCQD_SCHOOLID--��ѧ�ƻ��γ��嵥��������� ѧУID
      ,k.JXJHID as k_JXJHKCQD_JXJHID--��ѧ�ƻ��γ��嵥��������� ��ѧ�ƻ�ID
      ,k.KCH as k_JXJHKCQD_KCH--��ѧ�ƻ��γ��嵥��������� �γ̺�
      ,k.JHBH as k_JXJHKCQD_JHBH--��ѧ�ƻ��γ��嵥��������� �ƻ����
      ,k.XQID as k_JXJHKCQD_XQID--��ѧ�ƻ��γ��嵥��������� ѧ��ID
      ,k.KCMC as k_JXJHKCQD_KCMC--��ѧ�ƻ��γ��嵥��������� �γ�����
      ,k.YXKC as k_JXJHKCQD_YXKC--��ѧ�ƻ��γ��嵥��������� Ԥ�޿γ�
      ,k.SFHXKC as k_JXJHKCQD_SFHXKC--��ѧ�ƻ��γ��嵥��������� �Ƿ���ģ��Ǹɣ�
      ,[kb].MC as k_JXJHKCQD_SFHXKC_MC--�Ƿ��־����� ����
      ,k.KCFLM as k_JXJHKCQD_KCFLM--��ѧ�ƻ��γ��嵥��������� �γ̷�����
      ,[kc].MC as k_JXJHKCQD_KCFLM_MC--�γ̷������ ����
      ,k.KCSXM as k_JXJHKCQD_KCSXM--��ѧ�ƻ��γ��嵥��������� �γ�������
      ,[kd].MC as k_JXJHKCQD_KCSXM_MC--�γ����Դ���� ����
      ,[kd].SM as k_JXJHKCQD_KCSXM_SM--�γ����Դ���� ˵��
      ,k.ZXXQ as k_JXJHKCQD_ZXXQ--��ѧ�ƻ��γ��嵥��������� ִ��ѧ��
      ,k.ZKS as k_JXJHKCQD_ZKS--��ѧ�ƻ��γ��嵥��������� �ܿ�ʱ
      ,k.LLKS as k_JXJHKCQD_LLKS--��ѧ�ƻ��γ��嵥��������� ���ۿ�ʱ
      ,k.SJKS as k_JXJHKCQD_SJKS--��ѧ�ƻ��γ��嵥��������� ʵ����ʱ
      ,k.XF as k_JXJHKCQD_XF--��ѧ�ƻ��γ��嵥��������� ѧ��
      ,k.XFRDHGX as k_JXJHKCQD_XFRDHGX--��ѧ�ƻ��γ��嵥��������� ѧ���϶��ϸ���
      ,k.JXDG as k_JXJHKCQD_JXDG--��ѧ�ƻ��γ��嵥��������� ��ѧ���

FROM dbo.EDU_ZZJX_33_A01_YJAP AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A02_ZYKCPKJG AS c ON a.ZYKCPKJGID = c.ID /*רҵ�γ��ſ����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS d ON a.TeacherID = d.ID /*�ľ��ʦID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A01_EXAM AS e ON a.ExamID = e.ID /*����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_30_A02_EXAMROOM AS f ON a.EXAMROOMID = f.ID /*����ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_31_A02_KSCC AS g ON a.CCID = g.ID /*����ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS h ON a.ZYXXID = h.ZYBH /*רҵID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS i ON a.NJID = i.NJDM /*�꼶ID*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS j ON a.BJID = j.XZBDM /*�༶ID*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS k ON a.KCQDID = k.ID /*���Կ�ĿID*/ AND a.SCHOOLID = k.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [db] ON d.SFZJLXM = [db].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [dc] ON d.XBM = [dc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [dd] ON d.MZM = [dd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [de] ON d.XXM = [de].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [df] ON d.JKZKM = [df].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [dg] ON d.HYZTM = [dg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [dh] ON d.ZZMMM = [dh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [di] ON d.GATQWM = [di].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [dj] ON d.GJDQM = [dj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dk] ON d.CSDXZQHM = [dk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [dl] ON d.XYZJM = [dl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dm] ON d.JZGHKSZDXZQHM = [dm].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [dn] ON d.HKLBM = [dn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [do] ON d.BZLBM = [do].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [dp] ON d.JZGLBM = [dp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [dq] ON d.GWLBM = [dq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dr] ON d.SFJZJS = [dr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ds] ON d.SFSSXJS = [ds].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [dt] ON d.DQZTM = [dt].DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [hb] ON h.ZYDM = [hb].DM /*רҵ����*/ AND h.SSZYML = [hb].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [hc] ON h.SSZYML = [hc].DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ib] ON i.NJZT = [ib].DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [kb] ON k.SFHXKC = [kb].DM /*�Ƿ���ģ��Ǹɣ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [kc] ON k.KCFLM = [kc].DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [kd] ON k.KCSXM = [kd].DM /*�γ�������*/
GO
