
--�������۰༶���ּ�¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_25_A03_DYPJBJPFJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[ZCID]--�ܴ�ID
      ,a.[JSID]--��ʦID
      ,a.[BJID]--�༶ID
      ,a.[DLID]--����ID
      ,a.[XLID]--С��ID
      ,a.[SJ]--ʱ��
      ,a.[FZ]--��ֵ
      ,a.[BZ]--��ע
      ,a.[ZT]--״̬
      ,a.[TJSJ]--���ʱ��
      ,a.[XFZT]--����״̬
      ,a.[XFSQJSID]--���������ʦID
      ,a.[XFSQSJ]--��������ʱ��
      ,a.[XFLY]--��������
      ,a.[XFCLJG]--���ִ�����
      ,a.[XFCLJSID]--���ִ����ʦID
      ,a.[XFCLSJ]--���ִ���ʱ��
      ,a.[CLYJ]--�������
      ,a.[SCZT]--ɾ��״̬
      ,a.[SCJSID]--ɾ����ʦID
      ,a.[SCSJ]--ɾ��ʱ��
      ,a.[GLXSPFJLID]--����ѧ�����ּ�¼ID
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���
      ,d.SCHOOLID as d_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,d.XLID as d_XLZ_XLID--У���ܱ� У��ID
      ,d.NAME as d_XLZ_NAME--У���ܱ� У��������
      ,d.STARTDAY as d_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,d.ENDDAY as d_XLZ_ENDDAY--У���ܱ� ��������
      ,d.ZJH as d_XLZ_ZJH--У���ܱ� �ܼƻ�
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,e.GH as e_JZGJBSJ_GH--��ְ��������������� ����
      ,e.XM as e_JZGJBSJ_XM--��ְ��������������� ����
      ,e.YWXM as e_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,e.XMPY as e_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,e.CYM as e_JZGJBSJ_CYM--��ְ��������������� ������
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[eb].MC as e_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,e.SFZJH as e_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,e.CSRQ as e_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,e.XBM as e_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[ec].MC as e_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,e.MZM as e_JZGJBSJ_MZM--��ְ��������������� ������
      ,[ed].MZMC as e_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[ed].ZMDM as e_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,e.XXM as e_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[ee].MC as e_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[ee].JC as e_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,e.JKZKM as e_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[ef].MC as e_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[ef].SM as e_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,e.HYZTM as e_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[eg].MC as e_JZGJBSJ_HYZTM_MC--����״������ ����
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[eh].MC as e_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[eh].JC as e_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,e.GATQWM as e_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[ei].MC as e_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[ei].SM as e_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,e.JG as e_JZGJBSJ_JG--��ְ��������������� ����
      ,e.GJDQM as e_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[ej].GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[ej].EZMDM as e_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[ej].SZMDM as e_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,e.CSDXZQHM as e_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[ek].MC as e_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,e.XYZJM as e_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[el].MC as e_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,e.JZGHKSZDXZQHM as e_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[em].MC as e_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,e.HKLBM as e_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[en].MC as e_JZGJBSJ_HKLBM_MC--���������� ����
      ,e.DQZZ as e_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,e.DQZZYZBM as e_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,e.CJGZNY as e_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,e.CJNY as e_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,e.LXNY as e_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,e.BZLBM as e_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[eo].MC as e_JZGJBSJ_BZLBM_MC--����������� ����
      ,e.JZGLBM as e_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[ep].MC as e_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[ep].SM as e_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,e.GWLBM as e_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[eq].MC as e_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,e.SFJZJS as e_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[er].MC as e_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,e.SFSSXJS as e_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[es].MC as e_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,e.ZP as e_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,e.DQZTM as e_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[et].MC as e_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,e.YDDH as e_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,e.GDDH as e_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,e.TXDZYZBM as e_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,e.TXDZ as e_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,e.DZXX as e_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,e.WLDZ as e_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,e.JSTXH as e_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,e.JSKQJS as e_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,e.TeacherGroupId as e_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����
      ,f.SCHOOLID as f_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,f.ZYXXID as f_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,f.ZZNJID as f_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,f.XZBMC as f_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,f.JBNY as f_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,f.BZRGH as f_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,f.JSBH as f_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,f.NANSRS as f_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,f.NVSRS as f_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,f.ZRS as f_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,f.BZXH as f_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,f.JXJH as f_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,f.JGH as f_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,f.XQDM as f_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,f.BZRID as f_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID
      ,f.PLSX as f_ZZBJ_PLSX--ѧУ�༶���ݱ� ����˳��
      ,f.ID as f_ZZBJ_ID--ѧУ�༶���ݱ� ��Record���
      ,g.SCHOOLID as g_DYPJDL_SCHOOLID--�������۴���� ѧУ
      ,g.PFDXLX as g_DYPJDL_PFDXLX--�������۴���� ���ֶ�������
      ,g.MC as g_DYPJDL_MC--�������۴���� ����
      ,g.PLSX as g_DYPJDL_PLSX--�������۴���� ����˳��
      ,h.SCHOOLID as h_DYPJXL_SCHOOLID--��������С��� ѧУ
      ,h.PFDXLX as h_DYPJXL_PFDXLX--��������С��� ���ֶ�������
      ,h.DLID as h_DYPJXL_DLID--��������С��� ����ID
      ,h.MC as h_DYPJXL_MC--��������С��� ����
      ,h.MRFZ as h_DYPJXL_MRFZ--��������С��� Ĭ�Ϸ�ֵ
      ,h.NFXGFZ as h_DYPJXL_NFXGFZ--��������С��� �ܷ��޸ķ�ֵ
      ,h.FZSX as h_DYPJXL_FZSX--��������С��� ��ֵ����
      ,h.FZXX as h_DYPJXL_FZXX--��������С��� ��ֵ����
      ,h.PLSX as h_DYPJXL_PLSX--��������С��� ����˳��
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
      ,i.JSKQJS as i_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,i.TeacherGroupId as i_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����
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
      ,l.SCHOOLID as l_DYPJXSPFJL_SCHOOLID--��������ѧ�����ּ�¼�� ѧУ
      ,l.XQID as l_DYPJXSPFJL_XQID--��������ѧ�����ּ�¼�� ѧ��ID
      ,l.ZCID as l_DYPJXSPFJL_ZCID--��������ѧ�����ּ�¼�� �ܴ�ID
      ,l.JSID as l_DYPJXSPFJL_JSID--��������ѧ�����ּ�¼�� ��ʦID
      ,l.BJID as l_DYPJXSPFJL_BJID--��������ѧ�����ּ�¼�� �༶ID
      ,l.XSID as l_DYPJXSPFJL_XSID--��������ѧ�����ּ�¼�� ѧ��ID
      ,l.DLID as l_DYPJXSPFJL_DLID--��������ѧ�����ּ�¼�� ����ID
      ,l.XLID as l_DYPJXSPFJL_XLID--��������ѧ�����ּ�¼�� С��ID
      ,l.SJ as l_DYPJXSPFJL_SJ--��������ѧ�����ּ�¼�� ʱ��
      ,l.FZ as l_DYPJXSPFJL_FZ--��������ѧ�����ּ�¼�� ��ֵ
      ,l.BZ as l_DYPJXSPFJL_BZ--��������ѧ�����ּ�¼�� ��ע
      ,l.ZT as l_DYPJXSPFJL_ZT--��������ѧ�����ּ�¼�� ״̬
      ,l.TJSJ as l_DYPJXSPFJL_TJSJ--��������ѧ�����ּ�¼�� ���ʱ��
      ,l.SCZT as l_DYPJXSPFJL_SCZT--��������ѧ�����ּ�¼�� ɾ��״̬
      ,l.SCJSID as l_DYPJXSPFJL_SCJSID--��������ѧ�����ּ�¼�� ɾ����ʦID
      ,l.SCSJ as l_DYPJXSPFJL_SCSJ--��������ѧ�����ּ�¼�� ɾ��ʱ��

FROM dbo.EDU_ZZXS_25_A03_DYPJBJPFJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS d ON a.ZCID = d.ID /*�ܴ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.JSID = e.ID /*��ʦID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS f ON a.BJID = f.XZBDM /*�༶ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A01_DYPJDL AS g ON a.DLID = g.ID /*����ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A02_DYPJXL AS h ON a.XLID = h.ID /*С��ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS i ON a.XFSQJSID = i.ID /*���������ʦID*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS j ON a.XFCLJSID = j.ID /*���ִ����ʦID*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS k ON a.SCJSID = k.ID /*ɾ����ʦID*/ AND a.SCHOOLID = k.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A04_DYPJXSPFJL AS l ON a.GLXSPFJLID = l.ID /*����ѧ�����ּ�¼ID*/ AND a.SCHOOLID = l.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [eb] ON e.SFZJLXM = [eb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ec] ON e.XBM = [ec].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ed] ON e.MZM = [ed].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ee] ON e.XXM = [ee].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ef] ON e.JKZKM = [ef].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [eg] ON e.HYZTM = [eg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [eh] ON e.ZZMMM = [eh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ei] ON e.GATQWM = [ei].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ej] ON e.GJDQM = [ej].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ek] ON e.CSDXZQHM = [ek].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [el] ON e.XYZJM = [el].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [em] ON e.JZGHKSZDXZQHM = [em].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [en] ON e.HKLBM = [en].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [eo] ON e.BZLBM = [eo].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [ep] ON e.JZGLBM = [ep].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [eq] ON e.GWLBM = [eq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [er] ON e.SFJZJS = [er].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [es] ON e.SFSSXJS = [es].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [et] ON e.DQZTM = [et].DM /*��ǰ״̬��*/ LEFT OUTER JOIN
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
