
--ѧ�����̿��������
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_20_A07_XSPJKPJG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KPTMID]--������ĿID
      ,a.[KPBJID]--�����༶ID
      ,a.[JZGJBSJID]--��ְ��ID
      ,a.[IP]--IP��ַ
      ,a.[FZ]--��ֵ
      ,c.SCHOOLID as c_XSPJTM_SCHOOLID--ѧ��������Ŀ�� ѧУ
      ,c.DFFSID as c_XSPJTM_DFFSID--ѧ��������Ŀ�� ��ַ�ʽID
      ,c.PJXM as c_XSPJTM_PJXM--ѧ��������Ŀ�� ������Ŀ
      ,c.PJZB as c_XSPJTM_PJZB--ѧ��������Ŀ�� ����ָ��
      ,c.ZT as c_XSPJTM_ZT--ѧ��������Ŀ�� ״̬
      ,d.SCHOOLID as d_XSPJKPBJ_SCHOOLID--ѧ�����̿����༶�� ѧУ
      ,d.KPID as d_XSPJKPBJ_KPID--ѧ�����̿����༶�� ����ID
      ,d.BJMC as d_XSPJKPBJ_BJMC--ѧ�����̿����༶�� �༶����
      ,d.BPJGIDLB as d_XSPJKPBJ_BPJGIDLB--ѧ�����̿����༶�� �����̹�ID�б�
      ,d.BPJGXMLB as d_XSPJKPBJ_BPJGXMLB--ѧ�����̿����༶�� �����̹������б�
      ,d.DYKCMCLB as d_XSPJKPBJ_DYKCMCLB--ѧ�����̿����༶�� ��Ӧ�γ������б�
      ,d.YPRS as d_XSPJKPBJ_YPRS--ѧ�����̿����༶�� Ӧ������
      ,d.SBM as d_XSPJKPBJ_SBM--ѧ�����̿����༶�� ʶ����
      ,d.KQSJ as d_XSPJKPBJ_KQSJ--ѧ�����̿����༶�� ����ʱ��
      ,d.ZDGBSJ as d_XSPJKPBJ_ZDGBSJ--ѧ�����̿����༶�� �Զ��ر�ʱ��
      ,d.ZT as d_XSPJKPBJ_ZT--ѧ�����̿����༶�� ״̬
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

FROM dbo.EDU_ZXJZ_20_A07_XSPJKPJG AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_20_A03_XSPJTM AS c ON a.KPTMID = c.ID /*������ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_20_A06_XSPJKPBJ AS d ON a.KPBJID = d.ID /*�����༶ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS e ON a.JZGJBSJID = e.ID /*��ְ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_RKXD AS [eq] ON e.ZYRKXD = [eq].DM /*��Ҫ�ο�ѧ��*/
GO
