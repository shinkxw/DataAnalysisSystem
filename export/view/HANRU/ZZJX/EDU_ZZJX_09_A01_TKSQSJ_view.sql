
--�����������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_09_A01_TKSQSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[JSID]--��ʦ
      ,a.[KCID]--�γ�
      ,a.[TKLXID]--��������ID
      ,a.[TKQQSZ]--����ǰ��ʼ��
      ,a.[TKQJSZ]--����ǰ������
      ,a.[TKQXQ]--����ǰ����
      ,a.[TKQSD]--����ǰʱ��
      ,a.[TKQJC]--����ǰ�ڴ�
      ,a.[TKHQSZ]--���κ���ʼ��
      ,a.[TKHJSZ]--���κ������
      ,a.[TKHXQ]--���κ�����
      ,a.[TKHSD]--���κ�ʱ��
      ,a.[TKHJC]--���κ�ڴ�
      ,a.[ZT]--��ǰ״̬
      ,a.[BZ]--��ע
      ,a.[SQSJ]--����ʱ��
      ,a.[JSJSID]--���ս�ʦID
      ,a.[TKBJID]--���ΰ༶ID
      ,a.[KCMC]--�γ�����
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
      ,c.TeacherGroupId as c_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����
      ,c.PersonalCard1 as c_JZGJBSJ_PersonalCard1--��ְ��������������� ���˿�1
      ,c.PersonalCard2 as c_JZGJBSJ_PersonalCard2--��ְ��������������� ���˿�2
      ,c.PersonalCard3 as c_JZGJBSJ_PersonalCard3--��ְ��������������� ���˿�3
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
      ,e.MC as e_TKLX_MC--�������ʹ��� ��������
      ,f.SCHOOLID as f_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,f.XLID as f_XLZ_XLID--У���ܱ� У��ID
      ,f.NAME as f_XLZ_NAME--У���ܱ� У��������
      ,f.STARTDAY as f_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,f.ENDDAY as f_XLZ_ENDDAY--У���ܱ� ��������
      ,f.ZJH as f_XLZ_ZJH--У���ܱ� �ܼƻ�
      ,g.SCHOOLID as g_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,g.XLID as g_XLZ_XLID--У���ܱ� У��ID
      ,g.NAME as g_XLZ_NAME--У���ܱ� У��������
      ,g.STARTDAY as g_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,g.ENDDAY as g_XLZ_ENDDAY--У���ܱ� ��������
      ,g.ZJH as g_XLZ_ZJH--У���ܱ� �ܼƻ�
      ,h.SCHOOLID as h_WEEKDAY_SCHOOLID--���� ѧУ��
      ,h.MC as h_WEEKDAY_MC--���� ����
      ,i.SCHOOLID as i_SD_SCHOOLID--ʱ�� ѧУ��
      ,i.MC as i_SD_MC--ʱ�� ����
      ,j.SCHOOLID as j_JC_SCHOOLID--�ڴ� ѧУ��
      ,j.SDID as j_JC_SDID--�ڴ� ����ʱ��ID
      ,j.MC as j_JC_MC--�ڴ� ����
      ,j.KSXS as j_JC_KSXS--�ڴ� ��ʼСʱ
      ,j.KSFZ as j_JC_KSFZ--�ڴ� ��ʼ����
      ,j.JSXS as j_JC_JSXS--�ڴ� ����Сʱ
      ,j.JSFZ as j_JC_JSFZ--�ڴ� ��������
      ,k.SCHOOLID as k_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,k.XLID as k_XLZ_XLID--У���ܱ� У��ID
      ,k.NAME as k_XLZ_NAME--У���ܱ� У��������
      ,k.STARTDAY as k_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,k.ENDDAY as k_XLZ_ENDDAY--У���ܱ� ��������
      ,k.ZJH as k_XLZ_ZJH--У���ܱ� �ܼƻ�
      ,l.SCHOOLID as l_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,l.XLID as l_XLZ_XLID--У���ܱ� У��ID
      ,l.NAME as l_XLZ_NAME--У���ܱ� У��������
      ,l.STARTDAY as l_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,l.ENDDAY as l_XLZ_ENDDAY--У���ܱ� ��������
      ,l.ZJH as l_XLZ_ZJH--У���ܱ� �ܼƻ�
      ,m.SCHOOLID as m_WEEKDAY_SCHOOLID--���� ѧУ��
      ,m.MC as m_WEEKDAY_MC--���� ����
      ,n.SCHOOLID as n_SD_SCHOOLID--ʱ�� ѧУ��
      ,n.MC as n_SD_MC--ʱ�� ����
      ,o.SCHOOLID as o_JC_SCHOOLID--�ڴ� ѧУ��
      ,o.SDID as o_JC_SDID--�ڴ� ����ʱ��ID
      ,o.MC as o_JC_MC--�ڴ� ����
      ,o.KSXS as o_JC_KSXS--�ڴ� ��ʼСʱ
      ,o.KSFZ as o_JC_KSFZ--�ڴ� ��ʼ����
      ,o.JSXS as o_JC_JSXS--�ڴ� ����Сʱ
      ,o.JSFZ as o_JC_JSFZ--�ڴ� ��������
      ,p.SCHOOLID as p_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,p.GH as p_JZGJBSJ_GH--��ְ��������������� ����
      ,p.XM as p_JZGJBSJ_XM--��ְ��������������� ����
      ,p.YWXM as p_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,p.XMPY as p_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,p.CYM as p_JZGJBSJ_CYM--��ְ��������������� ������
      ,p.SFZJLXM as p_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[pb].MC as p_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,p.SFZJH as p_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,p.CSRQ as p_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,p.XBM as p_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[pc].MC as p_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,p.MZM as p_JZGJBSJ_MZM--��ְ��������������� ������
      ,[pd].MZMC as p_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[pd].ZMDM as p_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,p.XXM as p_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[pe].MC as p_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[pe].JC as p_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,p.JKZKM as p_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[pf].MC as p_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[pf].SM as p_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,p.HYZTM as p_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[pg].MC as p_JZGJBSJ_HYZTM_MC--����״������ ����
      ,p.ZZMMM as p_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[ph].MC as p_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[ph].JC as p_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,p.GATQWM as p_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[pi].MC as p_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[pi].SM as p_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,p.JG as p_JZGJBSJ_JG--��ְ��������������� ����
      ,p.GJDQM as p_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[pj].GJDQMCJC as p_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[pj].EZMDM as p_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[pj].SZMDM as p_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,p.CSDXZQHM as p_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[pk].MC as p_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,p.XYZJM as p_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[pl].MC as p_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,p.JZGHKSZDXZQHM as p_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[pm].MC as p_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,p.HKLBM as p_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[pn].MC as p_JZGJBSJ_HKLBM_MC--���������� ����
      ,p.DQZZ as p_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,p.DQZZYZBM as p_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,p.CJGZNY as p_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,p.CJNY as p_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,p.LXNY as p_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,p.BZLBM as p_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[po].MC as p_JZGJBSJ_BZLBM_MC--����������� ����
      ,p.JZGLBM as p_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[pp].MC as p_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[pp].SM as p_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,p.GWLBM as p_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[pq].MC as p_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,p.SFJZJS as p_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[pr].MC as p_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,p.SFSSXJS as p_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[ps].MC as p_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,p.ZP as p_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,p.DQZTM as p_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[pt].MC as p_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,p.YDDH as p_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,p.GDDH as p_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,p.TXDZYZBM as p_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,p.TXDZ as p_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,p.DZXX as p_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,p.WLDZ as p_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,p.JSTXH as p_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,p.JSKQJS as p_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,p.TeacherGroupId as p_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����
      ,p.PersonalCard1 as p_JZGJBSJ_PersonalCard1--��ְ��������������� ���˿�1
      ,p.PersonalCard2 as p_JZGJBSJ_PersonalCard2--��ְ��������������� ���˿�2
      ,p.PersonalCard3 as p_JZGJBSJ_PersonalCard3--��ְ��������������� ���˿�3
      ,q.SCHOOLID as q_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,q.ZYXXID as q_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,q.ZZNJID as q_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,q.XZBMC as q_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,q.JBNY as q_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,q.BZRGH as q_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,q.JSBH as q_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,q.NANSRS as q_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,q.NVSRS as q_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,q.ZRS as q_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,q.BZXH as q_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,q.JXJH as q_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,q.JGH as q_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,q.XQDM as q_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,q.BZRID as q_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID
      ,q.PLSX as q_ZZBJ_PLSX--ѧУ�༶���ݱ� ����˳��
      ,q.ID as q_ZZBJ_ID--ѧУ�༶���ݱ� ��Record���

FROM dbo.EDU_ZZJX_09_A01_TKSQSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*��ʦ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCID = d.KCH /*�γ�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_TKLX AS e ON a.TKLXID = e.DM /*��������ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS f ON a.TKQQSZ = f.ID /*����ǰ��ʼ��*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS g ON a.TKQJSZ = g.ID /*����ǰ������*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_WEEKDAY AS h ON a.TKQXQ = h.ID /*����ǰ����*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_SD AS i ON a.TKQSD = i.ID /*����ǰʱ��*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_JC AS j ON a.TKQJC = j.ID /*����ǰ�ڴ�*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS k ON a.TKHQSZ = k.ID /*���κ���ʼ��*/ AND a.SCHOOLID = k.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS l ON a.TKHJSZ = l.ID /*���κ������*/ AND a.SCHOOLID = l.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_WEEKDAY AS m ON a.TKHXQ = m.ID /*���κ�����*/ AND a.SCHOOLID = m.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_SD AS n ON a.TKHSD = n.ID /*���κ�ʱ��*/ AND a.SCHOOLID = n.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_JC AS o ON a.TKHJC = o.ID /*���κ�ڴ�*/ AND a.SCHOOLID = o.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS p ON a.JSJSID = p.ID /*���ս�ʦID*/ AND a.SCHOOLID = p.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS q ON a.TKBJID = q.XZBDM /*���ΰ༶ID*/ AND a.SCHOOLID = q.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SFZJLX AS [pb] ON p.SFZJLXM = [pb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [pc] ON p.XBM = [pc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [pd] ON p.MZM = [pd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [pe] ON p.XXM = [pe].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [pf] ON p.JKZKM = [pf].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [pg] ON p.HYZTM = [pg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ph] ON p.ZZMMM = [ph].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [pi] ON p.GATQWM = [pi].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [pj] ON p.GJDQM = [pj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [pk] ON p.CSDXZQHM = [pk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [pl] ON p.XYZJM = [pl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [pm] ON p.JZGHKSZDXZQHM = [pm].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [pn] ON p.HKLBM = [pn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [po] ON p.BZLBM = [po].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [pp] ON p.JZGLBM = [pp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [pq] ON p.GWLBM = [pq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [pr] ON p.SFJZJS = [pr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ps] ON p.SFSSXJS = [ps].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [pt] ON p.DQZTM = [pt].DM /*��ǰ״̬��*/
GO
