
--�¶ȿ��˵ȵڱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_10_A06_YDKHDD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[YF]--�·�
      ,a.[BJID]--�༶ID
      ,a.[DD]--�ȵ�
      ,a.[PBFZ]--���ȷ�ֵ
      ,a.[TJJSID]--��ӽ�ʦID
      ,a.[SSLID]--����¥ID
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���
      ,d.SCHOOLID as d_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,d.ZYXXID as d_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,d.ZZNJID as d_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,d.XZBMC as d_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,d.JBNY as d_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,d.BZRGH as d_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,d.JSBH as d_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,d.NANSRS as d_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,d.NVSRS as d_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,d.ZRS as d_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,d.BZXH as d_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,d.JXJH as d_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,d.JGH as d_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,d.XQDM as d_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,d.BZRID as d_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID
      ,d.PLSX as d_ZZBJ_PLSX--ѧУ�༶���ݱ� ����˳��
      ,d.ID as d_ZZBJ_ID--ѧУ�༶���ݱ� ��Record���
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
      ,e.PersonalCard1 as e_JZGJBSJ_PersonalCard1--��ְ��������������� ���˿�1
      ,e.PersonalCard2 as e_JZGJBSJ_PersonalCard2--��ְ��������������� ���˿�2
      ,e.PersonalCard3 as e_JZGJBSJ_PersonalCard3--��ְ��������������� ���˿�3
      ,f.SCHOOLID as f_JZWJBSJ_SCHOOLID--���������������� ѧУ��
      ,f.JZWH as f_JZWJBSJ_JZWH--���������������� �������
      ,f.JZWMC as f_JZWJBSJ_JZWMC--���������������� ����������
      ,f.SYZKM as f_JZWJBSJ_SYZKM--���������������� ʹ��״����
      ,[fb].MC as f_JZWJBSJ_SYZKM_MC--ʹ��״������� ����
      ,f.FWCQ as f_JZWJBSJ_FWCQ--���������������� ���ݲ�Ȩ
      ,[fc].MC as f_JZWJBSJ_FWCQ_MC--��Ȩ����� ����
      ,f.XQH as f_JZWJBSJ_XQH--���������������� У����
      ,f.JZWFLM as f_JZWJBSJ_JZWFLM--���������������� �����������
      ,[fd].MC as f_JZWJBSJ_JZWFLM_MC--������������� ����
      ,f.JZWJGM as f_JZWJBSJ_JZWJGM--���������������� ������ṹ��
      ,[fe].MC as f_JZWJBSJ_JZWJGM_MC--������ṹ����� ����
      ,f.JZWCS as f_JZWJBSJ_JZWCS--���������������� ���������
      ,f.JCNY as f_JZWJBSJ_JCNY--���������������� ��������
      ,f.JZWTZZE as f_JZWJBSJ_JZWTZZE--���������������� ������Ͷ���ܶ�
      ,f.JFLYM as f_JZWJBSJ_JFLYM--���������������� ������Դ��
      ,[ff].MC as f_JZWJBSJ_JFLYM_MC--������Դ����� ����
      ,f.ZJZMJ as f_JZWJBSJ_ZJZMJ--���������������� �ܽ������
      ,f.ZSYMJ as f_JZWJBSJ_ZSYMJ--���������������� ��ʹ�����
      ,f.KZSFLDM as f_JZWJBSJ_KZSFLDM--���������������� ��������Ҷ���
      ,[fg].JC as f_JZWJBSJ_KZSFLDM_JC--��������Ҷȴ��� ���
      ,[fg].MC as f_JZWJBSJ_KZSFLDM_MC--��������Ҷȴ��� ����
      ,f.KZSFBZM as f_JZWJBSJ_KZSFBZM--���������������� ���������׼��
      ,[fh].JC as f_JZWJBSJ_KZSFBZM_JC--���������׼���� ���
      ,[fh].MC as f_JZWJBSJ_KZSFBZM_MC--���������׼���� ����
      ,[fh].SM as f_JZWJBSJ_KZSFBZM_SM--���������׼���� ˵��
      ,f.JZWDZ as f_JZWJBSJ_JZWDZ--���������������� �������ַ
      ,f.JZWZKM as f_JZWJBSJ_JZWZKM--���������������� ������״����
      ,[fi].MC as f_JZWJBSJ_JZWZKM_MC--������״������� ����
      ,[fi].SM as f_JZWJBSJ_JZWZKM_SM--������״������� ˵��
      ,f.JZWTP as f_JZWJBSJ_JZWTP--���������������� ������ͼƬ
      ,f.JZWPMT as f_JZWJBSJ_JZWPMT--���������������� ������ƽ��ͼ
      ,f.XXDWCCM as f_JZWJBSJ_XXDWCCM--���������������� ѧУ��λ�����
      ,[fj].MC as f_JZWJBSJ_XXDWCCM_MC--ѧУ��λ��δ���� ����
      ,f.JZWWZZK as f_JZWJBSJ_JZWWZZK--���������������� ������λ��״��
      ,f.GHSPWH as f_JZWJBSJ_GHSPWH--���������������� �滮�����ĺ�
      ,f.ZHFZNL as f_JZWJBSJ_ZHFZNL--���������������� �ۺϷ�������
      ,f.GHSYNX as f_JZWJBSJ_GHSYNX--���������������� �滮ʹ������
      ,f.SFYYJBXCS as f_JZWJBSJ_SFYYJBXCS--���������������� �Ƿ���Ԥ�����մ�ʩ
      ,[fk].MC as f_JZWJBSJ_SFYYJBXCS_MC--�Ƿ��־����� ����
      ,f.SFKYYYJBNCS as f_JZWJBSJ_SFKYYYJBNCS--���������������� �Ƿ������Ӧ�����ѳ���
      ,[fl].MC as f_JZWJBSJ_SFKYYYJBNCS_MC--�Ƿ��־����� ����
      ,f.CQZH as f_JZWJBSJ_CQZH--���������������� ��Ȩ֤��
      ,f.JZWYTM as f_JZWJBSJ_JZWYTM--���������������� ��������;��
      ,[fm].MC as f_JZWJBSJ_JZWYTM_MC--��������;����� ����
      ,f.JZWZGD as f_JZWJBSJ_JZWZGD--���������������� �������ܸ߶�
      ,f.WFJDBM as f_JZWJBSJ_WFJDBM--���������������� Σ����������
      ,f.WFJDWH as f_JZWJBSJ_WFJDWH--���������������� Σ�������ĺ�
      ,f.WFJDRQ as f_JZWJBSJ_WFJDRQ--���������������� Σ����������
      ,f.GNFSM as f_JZWJBSJ_GNFSM--���������������� ��ů��ʽ��
      ,[fn].MC as f_JZWJBSJ_GNFSM_MC--��ů��ʽ����� ����
      ,f.JZWJCXSM as f_JZWJBSJ_JZWJCXSM--���������������� �����������ʽ��
      ,[fo].MC as f_JZWJBSJ_JZWJCXSM_MC--�����������ʽ����� ����
      ,f.JZWPMXSM as f_JZWJBSJ_JZWPMXSM--���������������� ������ƽ����ʽ��
      ,[fp].MC as f_JZWJBSJ_JZWPMXSM_MC--������ƽ����ʽ����� ����
      ,f.JZWLBXSM as f_JZWJBSJ_JZWLBXSM--���������������� ������¥����ʽ��
      ,[fq].MC as f_JZWJBSJ_JZWLBXSM_MC--������¥����ʽ����� ����
      ,f.SFYGZZ as f_JZWJBSJ_SFYGZZ--���������������� �Ƿ��й�����
      ,[fr].MC as f_JZWJBSJ_SFYGZZ_MC--�Ƿ��־����� ����
      ,f.QL as f_JZWJBSJ_QL--���������������� Ȧ��
      ,[fs].MC as f_JZWJBSJ_QL_MC--�Ƿ��־����� ����
      ,f.ZJAQGZWCRQ as f_JZWJBSJ_ZJAQGZWCRQ--���������������� �����ȫ�����������
      ,f.ZJAQGZHYJSYNX as f_JZWJBSJ_ZJAQGZHYJSYNX--���������������� �����ȫ�����Ԥ��ʹ������
      ,f.ZXLXM as f_JZWJBSJ_ZXLXM--���������������� ר������
      ,f.ZYZXTZBZMCM as f_JZWJBSJ_ZYZXTZBZMCM--���������������� ����ר��Ͷ�ʲ���������
      ,[ft].MC as f_JZWJBSJ_ZYZXTZBZMCM_MC--����ר��Ͷ�ʲ������ƴ���� ����
      ,f.WWJZDJM as f_JZWJBSJ_WWJZDJM--���������������� ���ｨ���ȼ���
      ,[fu].MC as f_JZWJBSJ_WWJZDJM_MC--���ｨ���ȼ������ ����
      ,f.JXJFZYF as f_JZWJBSJ_JXJFZYF--���������������� ��ѧ�������÷�
      ,f.QZJS as f_JZWJBSJ_QZJS--���������������� ���н���
      ,f.QZSYS as f_JZWJBSJ_QZSYS--���������������� ����ʵ����
      ,f.QZTSS as f_JZWJBSJ_QZTSS--���������������� ����ͼ����
      ,f.QZWJS as f_JZWJBSJ_QZWJS--���������������� ����΢����
      ,f.QZYYS as f_JZWJBSJ_QZYYS--���������������� ����������
      ,f.QZTYHDS as f_JZWJBSJ_QZTYHDS--���������������� �����������
      ,f.QZQTJFYF as f_JZWJBSJ_QZQTJFYF--���������������� ���������̸��÷�
      ,f.SHYF as f_JZWJBSJ_SHYF--���������������� �����÷�
      ,f.QZXSSS as f_JZWJBSJ_QZXSSS--���������������� ����ѧ������
      ,f.QZST as f_JZWJBSJ_QZST--���������������� ����ʳ��
      ,f.QZCS as f_JZWJBSJ_QZCS--���������������� ���в���
      ,f.QZGLF as f_JZWJBSJ_QZGLF--���������������� ���й�¯��(��ˮ��)
      ,f.QZYS as f_JZWJBSJ_QZYS--���������������� ����ԡ��
      ,f.QZJGSS as f_JZWJBSJ_QZJGSS--���������������� ���н̹�����
      ,f.QZQTSHYF as f_JZWJBSJ_QZQTSHYF--���������������� �������������÷�
      ,f.XZBGYF as f_JZWJBSJ_XZBGYF--���������������� �����칫�÷�
      ,f.QZJSBGS as f_JZWJBSJ_QZJSBGS--���������������� ���н�ְ���칫��
      ,f.QZWSBJS as f_JZWJBSJ_QZWSBJS--���������������� ��������������
      ,f.QZQTXZBGYF as f_JZWJBSJ_QZQTXZBGYF--���������������� �������������칫�÷�
      ,f.QTYF as f_JZWJBSJ_QTYF--���������������� �����÷�
      ,f.GLY as f_JZWJBSJ_GLY--���������������� ����Ա

FROM dbo.EDU_ZZFC_10_A06_YDKHDD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS d ON a.BJID = d.XZBDM /*�༶ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.TJJSID = e.ID /*��ӽ�ʦID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_02_01_JZWJBSJ AS f ON a.SSLID = f.ID /*����¥ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SYZK AS [fb] ON f.SYZKM = [fb].DM /*ʹ��״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS [fc] ON f.FWCQ = [fc].DM /*���ݲ�Ȩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS [fd] ON f.JZWFLM = [fd].DM /*�����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS [fe] ON f.JZWJGM = [fe].DM /*������ṹ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS [ff] ON f.JFLYM = [ff].DM /*������Դ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS [fg] ON f.KZSFLDM = [fg].DM /*��������Ҷ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS [fh] ON f.KZSFBZM = [fh].DM /*���������׼��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS [fi] ON f.JZWZKM = [fi].DM /*������״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS [fj] ON f.XXDWCCM = [fj].DM /*ѧУ��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fk] ON f.SFYYJBXCS = [fk].DM /*�Ƿ���Ԥ�����մ�ʩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fl] ON f.SFKYYYJBNCS = [fl].DM /*�Ƿ������Ӧ�����ѳ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS [fm] ON f.JZWYTM = [fm].DM /*��������;��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS [fn] ON f.GNFSM = [fn].DM /*��ů��ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS [fo] ON f.JZWJCXSM = [fo].DM /*�����������ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS [fp] ON f.JZWPMXSM = [fp].DM /*������ƽ����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS [fq] ON f.JZWLBXSM = [fq].DM /*������¥����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fr] ON f.SFYGZZ = [fr].DM /*�Ƿ��й�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fs] ON f.QL = [fs].DM /*Ȧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS [ft] ON f.ZYZXTZBZMCM = [ft].DM /*����ר��Ͷ�ʲ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS [fu] ON f.WWJZDJM = [fu].DM /*���ｨ���ȼ���*/
GO
