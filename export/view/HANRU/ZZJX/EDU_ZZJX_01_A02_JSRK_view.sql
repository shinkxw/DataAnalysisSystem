
--��ʦ�οα�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_A02_JSRK_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[KXH]--�����
      ,a.[JSID]--��ʦ��ID
      ,a.[KCH]--�γ̺�
      ,a.[JHBH]--�ƻ����
      ,a.[XQID]--ѧ��ID
      ,a.[JXDG]--��ѧ���
      ,a.[KCQDID]--�γ��嵥ID
      ,a.[SFZRLS]--�Ƿ�������ʦ
      ,a.[ZYXXID]--רҵID
      ,a.[NJID]--�꼶ID
      ,a.[BJID]--�༶ID
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,c.GH as c_JZGJBSJ_GH--��ְ��������������� ����
      ,c.XM as c_JZGJBSJ_XM--��ְ��������������� ����
      ,c.YWXM as c_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--��ְ��������������� ������
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[cb].MC as c_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,c.XBM as c_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[cc].MC as c_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,c.MZM as c_JZGJBSJ_MZM--��ְ��������������� ������
      ,[cd].MZMC as c_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[cd].ZMDM as c_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.XXM as c_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[ce].MC as c_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[ce].JC as c_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[cf].MC as c_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[cf].SM as c_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.HYZTM as c_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[cg].MC as c_JZGJBSJ_HYZTM_MC--����״������ ����
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[ch].MC as c_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[ch].JC as c_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,c.GATQWM as c_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[ci].MC as c_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[ci].SM as c_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JG as c_JZGJBSJ_JG--��ְ��������������� ����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[cj].GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[cj].EZMDM as c_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[cj].SZMDM as c_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[ck].MC as c_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.XYZJM as c_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[cl].MC as c_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[cm].MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[cn].MC as c_JZGJBSJ_HKLBM_MC--���������� ����
      ,c.DQZZ as c_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,c.CJNY as c_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,c.LXNY as c_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[co].MC as c_JZGJBSJ_BZLBM_MC--����������� ����
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[cp].MC as c_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[cp].SM as c_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,c.GWLBM as c_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[cq].MC as c_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[cr].MC as c_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[cs].MC as c_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,c.ZP as c_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[ct].MC as c_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,c.YDDH as c_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,c.GDDH as c_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,c.TXDZYZBM as c_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,c.TXDZ as c_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,c.DZXX as c_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,c.WLDZ as c_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,c.JSTXH as c_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,c.JSKQJS as c_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,c.FullTeacherName as c_JZGJBSJ_FullTeacherName--��ְ��������������� ������ʦ����
      ,c.RecordID as c_JZGJBSJ_RecordID--��ְ��������������� ��¼ID
      ,c.TeacherGroupId as c_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����
      ,d.SCHOOLID as d_KC_SCHOOLID--�γ���������� ѧУID
      ,d.KCMC as d_KC_KCMC--�γ���������� �γ�����
      ,d.KCYWM as d_KC_KCYWM--�γ���������� �γ�Ӣ����
      ,d.KCBM as d_KC_KCBM--�γ���������� �γ̱���
      ,d.KCJS as d_KC_KCJS--�γ���������� �γ̽���
      ,d.XF as d_KC_XF--�γ���������� ѧ��
      ,d.ZXS as d_KC_ZXS--�γ���������� ��ѧʱ
      ,d.LLXS as d_KC_LLXS--�γ���������� ����ѧʱ
      ,d.SJXS as d_KC_SJXS--�γ���������� ʵ��ѧʱ
      ,d.QTXS as d_KC_QTXS--�γ���������� ����ѧʱ
      ,d.CKSM as d_KC_CKSM--�γ���������� �ο���Ŀ
      ,d.KKDW as d_KC_KKDW--�γ���������� ���ε�λ
      ,d.KSXS as d_KC_KSXS--�γ���������� ������ʽ
      ,[db].MC as d_KC_KSXS_MC--������ʽ����� ����
      ,d.SKFSM as d_KC_SKFSM--�γ���������� �ڿη�ʽ��
      ,[dc].MC as d_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,d.KCFY as d_KC_KCFY--�γ���������� �γ̷���
      ,e.SCHOOLID as e_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,e.XNID as e_XQ_XNID--ѧ�����ݱ� ѧ��
      ,e.XQM as e_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[eb].MC as e_XQ_XQM_MC--ѧ�ڴ���� ����
      ,e.XQMC as e_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,e.XQKSRQ as e_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,e.XQJSRQ as e_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,e.BaseProjectInfoID as e_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���
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
      ,g.MC as g_SFBZ_MC--�Ƿ��־����� ����
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
      ,h.XXZ as h_ZYXX_XXZ--רҵ������Ϣ���ݱ� ��ѧ��
      ,h.XZXF as h_ZYXX_XZXF--רҵ������Ϣ���ݱ� ����ѧ��
      ,h.PYMB as h_ZYXX_PYMB--רҵ������Ϣ���ݱ� ����Ŀ��
      ,h.PYGG as h_ZYXX_PYGG--רҵ������Ϣ���ݱ� �������
      ,h.ZKS as h_ZYXX_ZKS--רҵ������Ϣ���ݱ� �ܿ�ʱ
      ,h.SFSY as h_ZYXX_SFSY--רҵ������Ϣ���ݱ� �Ƿ�ʹ��
      ,i.SCHOOLID as i_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,i.NJMC as i_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,i.SSNF as i_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,i.NJZT as i_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,[ib].MC as i_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,i.PLSX as i_ZZNJ_PLSX--ѧУ�꼶���ݱ� ����˳��
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
      ,j.PLSX as j_ZZBJ_PLSX--ѧУ�༶���ݱ� ����˳��
      ,j.FullClassName as j_ZZBJ_FullClassName--ѧУ�༶���ݱ� �����༶����
      ,j.RecordID as j_ZZBJ_RecordID--ѧУ�༶���ݱ� ��¼ID
      ,j.ClassGroupId as j_ZZBJ_ClassGroupId--ѧУ�༶���ݱ� ��ClassGroup�����

FROM dbo.EDU_ZZJX_01_A02_JSRK AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*��ʦ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCH = d.KCH /*�γ̺�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS f ON a.KCQDID = f.ID /*�γ��嵥ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS g ON a.SFZRLS = g.DM /*�Ƿ�������ʦ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS h ON a.ZYXXID = h.ZYBH /*רҵID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS i ON a.NJID = i.NJDM /*�꼶ID*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS j ON a.BJID = j.XZBDM /*�༶ID*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cb] ON c.SFZJLXM = [cb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cc] ON c.XBM = [cc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cd] ON c.MZM = [cd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ce] ON c.XXM = [ce].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cf] ON c.JKZKM = [cf].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZTM = [cg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ch] ON c.ZZMMM = [ch].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ci] ON c.GATQWM = [ci].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [cj] ON c.GJDQM = [cj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ck] ON c.CSDXZQHM = [ck].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [cl] ON c.XYZJM = [cl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cm] ON c.JZGHKSZDXZQHM = [cm].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [cn] ON c.HKLBM = [cn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [co] ON c.BZLBM = [co].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [cp] ON c.JZGLBM = [cp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [cq] ON c.GWLBM = [cq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cr] ON c.SFJZJS = [cr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cs] ON c.SFSSXJS = [cs].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [ct] ON c.DQZTM = [ct].DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [db] ON d.KSXS = [db].DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [dc] ON d.SKFSM = [dc].DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [eb] ON e.XQM = [eb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.SFHXKC = [fb].DM /*�Ƿ���ģ��Ǹɣ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [fc] ON f.KCFLM = [fc].DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [fd] ON f.KCSXM = [fd].DM /*�γ�������*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [hb] ON h.ZYDM = [hb].DM /*רҵ����*/ AND h.SSZYML = [hb].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [hc] ON h.SSZYML = [hc].DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ib] ON i.NJZT = [ib].DM /*�꼶״̬*/
GO
