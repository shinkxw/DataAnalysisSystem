
--���̽����
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_50_A15_PJJG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[PJID]--����ID
      ,a.[JXBID]--��ѧ��ID
      ,a.[XSID]--ѧ��ID
      ,a.[TMID]--��ĿID
      ,a.[FZ]--��ֵ
      ,a.[PJJSID]--���۽�ʦID
      ,c.SCHOOLID as c_XKXSPJ_SCHOOLID--ѡ��ѧ�����̱� ѧУ
      ,c.PJMC as c_XKXSPJ_PJMC--ѡ��ѧ�����̱� ��������
      ,c.KSSJ as c_XKXSPJ_KSSJ--ѡ��ѧ�����̱� ��ʼʱ��
      ,c.JSSJ as c_XKXSPJ_JSSJ--ѡ��ѧ�����̱� ����ʱ��
      ,d.SCHOOLID as d_JXBSJ_SCHOOLID--��ѧ�����ݱ� ѧУ
      ,d.XXKCLBID as d_JXBSJ_XXKCLBID--��ѧ�����ݱ� ѡ�޿γ����ID
      ,d.KCMC as d_JXBSJ_KCMC--��ѧ�����ݱ� �γ�����
      ,d.KCJS as d_JXBSJ_KCJS--��ѧ�����ݱ� �γ̽���
      ,d.JXJH as d_JXBSJ_JXJH--��ѧ�����ݱ� ��ѧ�ƻ�
      ,d.ZKS as d_JXBSJ_ZKS--��ѧ�����ݱ� �ܿ�ʱ
      ,d.XF as d_JXBSJ_XF--��ѧ�����ݱ� ѧ��
      ,d.XQID as d_JXBSJ_XQID--��ѧ�����ݱ� ѧ��ID
      ,d.NJID as d_JXBSJ_NJID--��ѧ�����ݱ� �꼶ID�б�
      ,d.NJMCLB as d_JXBSJ_NJMCLB--��ѧ�����ݱ� �꼶�����б�
      ,d.DQZT as d_JXBSJ_DQZT--��ѧ�����ݱ� ��ǰ״̬
      ,d.KKJSID as d_JXBSJ_KKJSID--��ѧ�����ݱ� ���ν�ʦID
      ,d.SKSJID as d_JXBSJ_SKSJID--��ѧ�����ݱ� �Ͽ�ʱ��ID
      ,d.SKDD as d_JXBSJ_SKDD--��ѧ�����ݱ� �Ͽεص�
      ,d.BJKRNRS as d_JXBSJ_BJKRNRS--��ѧ�����ݱ� �༶����������
      ,d.ZDKBRS as d_JXBSJ_ZDKBRS--��ѧ�����ݱ� ��Ϳ�������
      ,d.BJIDLB as d_JXBSJ_BJIDLB--��ѧ�����ݱ� �༶ID�б�
      ,d.BJMCLB as d_JXBSJ_BJMCLB--��ѧ�����ݱ� �༶�����б�
      ,d.QTJSIDLB as d_JXBSJ_QTJSIDLB--��ѧ�����ݱ� ������ʦID�б�
      ,d.QTJSMCLB as d_JXBSJ_QTJSMCLB--��ѧ�����ݱ� ������ʦ�����б�
      ,d.WEEKKS as d_JXBSJ_WEEKKS--��ѧ�����ݱ� �ܿ�ʱ
      ,d.SKZCIDLB as d_JXBSJ_SKZCIDLB--��ѧ�����ݱ� �Ͽ��ܴ�ID�б�
      ,d.SKZCMCLB as d_JXBSJ_SKZCMCLB--��ѧ�����ݱ� �Ͽ��ܴ������б�
      ,d.KCSLT as d_JXBSJ_KCSLT--��ѧ�����ݱ� �γ�����ͼ
      ,d.DJL as d_JXBSJ_DJL--��ѧ�����ݱ� �����
      ,d.SBZT as d_JXBSJ_SBZT--��ѧ�����ݱ� �ϱ�״̬
      ,d.KGZT as d_JXBSJ_KGZT--��ѧ�����ݱ� ����״̬
      ,d.SFXXK as d_JXBSJ_SFXXK--��ѧ�����ݱ� �Ƿ���ѡ��
      ,e.SCHOOLID as e_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,e.XH as e_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,e.XM as e_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,e.YWXM as e_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,e.XMPY as e_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,e.CYM as e_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,e.SFZJLXM as e_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,[eb].MC as e_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,e.SFZJH as e_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,e.XBM as e_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,[ec].MC as e_XSXX_XBM_MC--�˵��Ա���� ����
      ,e.XXM as e_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,[ed].MC as e_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[ed].JC as e_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,e.CSRQ as e_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,e.CSDM as e_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,[ee].MC as e_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,e.JG as e_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,e.MZM as e_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,[ef].MZMC as e_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[ef].ZMDM as e_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,e.HYZKM as e_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,[eg].MC as e_XSXX_HYZKM_MC--����״������ ����
      ,e.XYZJM as e_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,[eh].MC as e_XSXX_XYZJM_MC--�ڽ��������� ����
      ,e.GATQWM as e_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,[ei].MC as e_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[ei].SM as e_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,e.JKZKM as e_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,[ej].MC as e_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[ej].SM as e_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,e.ZZMMM as e_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,[ek].MC as e_XSXX_ZZMMM_MC--������ò���� ����
      ,[ek].JC as e_XSXX_ZZMMM_JC--������ò���� ���
      ,e.HKSZDXZQHM as e_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,[el].MC as e_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,e.HKLBM as e_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,[em].MC as e_XSXX_HKLBM_MC--���������� ����
      ,e.SFSLDRK as e_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,[en].MC as e_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,e.GJDQM as e_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,[eo].GJDQMCJC as e_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[eo].EZMDM as e_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[eo].SZMDM as e_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,e.TC as e_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,e.XSLXDH as e_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,e.WLDZ as e_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,e.JSTXH as e_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,e.DZXX as e_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,e.ZP as e_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,e.RXXQID as e_XSXX_RXXQID--ѧ����Ϣ���ݱ� ��ѧѧ��ID
      ,e.NFCKH as e_XSXX_NFCKH--ѧ����Ϣ���ݱ� NFC����
      ,f.SCHOOLID as f_PJTM_SCHOOLID--������Ŀ�� ѧУ
      ,f.PJID as f_PJTM_PJID--������Ŀ�� ����ID
      ,f.PFFSID as f_PJTM_PFFSID--������Ŀ�� ���ַ�ʽID
      ,f.TMMC as f_PJTM_TMMC--������Ŀ�� ��Ŀ����
      ,f.PJZB as f_PJTM_PJZB--������Ŀ�� ����ָ��

FROM dbo.EDU_ZZJX_50_A15_PJJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_50_A11_XKXSPJ AS c ON a.PJID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_50_A03_JXBSJ AS d ON a.JXBID = d.ID /*��ѧ��ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS e ON a.XSID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_50_A14_PJTM AS f ON a.TMID = f.ID /*��ĿID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [eb] ON e.SFZJLXM = [eb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ec] ON e.XBM = [ec].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ed] ON e.XXM = [ed].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ee] ON e.CSDM = [ee].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ef] ON e.MZM = [ef].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [eg] ON e.HYZKM = [eg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [eh] ON e.XYZJM = [eh].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ei] ON e.GATQWM = [ei].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ej] ON e.JKZKM = [ej].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ek] ON e.ZZMMM = [ek].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [el] ON e.HKSZDXZQHM = [el].DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [em] ON e.HKLBM = [em].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [en] ON e.SFSLDRK = [en].DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [eo] ON e.GJDQM = [eo].DM /*����/����*/
GO
