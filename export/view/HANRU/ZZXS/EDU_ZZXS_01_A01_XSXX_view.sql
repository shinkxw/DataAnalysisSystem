
--ѧ����չ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_01_A01_XSXX_DISP]
AS
SELECT a.[XSXXID]--ѧ����Ϣ���ݱ�
      ,a.[SCHOOLID]--ѧУ��
      ,a.[ZYXXID]--רҵ������Ϣ
      ,a.[XNID]--ѧ��
      ,a.[ZZXQID]--ѧ�ڱ�
      ,a.[JTDZQH]--��ͥ��ַ������
      ,a.[JTXXDZ]--��ͥ��ϸ��ַ
      ,a.[HJXXDZ]--������ϸ��ַ
      ,a.[HJXZ]--�������ʴ���
      ,a.[BYJX]--���˾�ѵ
      ,a.[CSBZR]--����������
      ,a.[DRZW]--�����κ���ְ��
      ,a.[YYDR]--Ը�ⵣ�ΰ�ɲ�����ְ
      ,a.[BZ]--��ע
      ,a.[BYLX]--��ҵ������
      ,a.[XSLX]--ѧ������
      ,a.[SFZS]--�Ƿ�ס��
      ,a.[XSBMSJ]--ѧ������ʱ��
      ,a.[ZZNJID]--�꼶ID
      ,a.[ZZBJID]--�༶ID
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,b.XM as b_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,[bb].MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,b.XBM as b_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,[bc].MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.XXM as b_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,[bd].MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[bd].JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.CSRQ as b_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,[be].MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,b.MZM as b_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,[bf].MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[bf].ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,[bg].MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.XYZJM as b_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,[bh].MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,[bi].MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[bi].SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.JKZKM as b_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,[bj].MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[bj].SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,[bk].MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,[bk].JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,[bl].MC as b_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.HKLBM as b_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,[bm].MC as b_XSXX_HKLBM_MC--���������� ����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,[bn].MC as b_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,[bo].GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[bo].EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[bo].SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.TC as b_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,b.JSTXH as b_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,b.ZP as b_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,b.RXXQID as b_XSXX_RXXQID--ѧ����Ϣ���ݱ� ��ѧѧ��ID
      ,b.NFCKH as b_XSXX_NFCKH--ѧ����Ϣ���ݱ� NFC����
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,d.ZYDM as d_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,[db].ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,[db].MC as d_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,d.ZYMC as d_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,d.XZ as d_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,d.ZYJC as d_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,d.JLNY as d_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,d.ZYJSS as d_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,d.KSJGH as d_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,d.ZXF as d_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,d.SSZYML as d_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,[dc].MC as d_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,d.ZYLB as d_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,d.XXZ as d_ZYXX_XXZ--רҵ������Ϣ���ݱ� ��ѧ��
      ,d.XZXF as d_ZYXX_XZXF--רҵ������Ϣ���ݱ� ����ѧ��
      ,d.PYMB as d_ZYXX_PYMB--רҵ������Ϣ���ݱ� ����Ŀ��
      ,d.PYGG as d_ZYXX_PYGG--רҵ������Ϣ���ݱ� �������
      ,d.ZKS as d_ZYXX_ZKS--רҵ������Ϣ���ݱ� �ܿ�ʱ
      ,d.SFSY as d_ZYXX_SFSY--רҵ������Ϣ���ݱ� �Ƿ�ʹ��
      ,e.SCHOOLID as e_XN_SCHOOLID--ѧ��� ѧУ��
      ,e.XN as e_XN_XN--ѧ��� ѧ��
      ,f.SCHOOLID as f_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,f.XNID as f_XQ_XNID--ѧ�����ݱ� ѧ��
      ,f.XQM as f_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[fb].MC as f_XQ_XQM_MC--ѧ�ڴ���� ����
      ,f.XQMC as f_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,f.XQKSRQ as f_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,f.XQJSRQ as f_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,g.MC as g_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,h.MC as h_HJXZ_MC--�������ʴ��� ����
      ,i.MC as i_SFBZ_MC--�Ƿ��־����� ����
      ,j.MC as j_BYSLX_MC--��ҵ�����ʹ��� ����
      ,k.MC as k_XSLB_MC--ѧ��������� ����
      ,k.SM as k_XSLB_SM--ѧ��������� ˵��
      ,l.MC as l_SFBZ_MC--�Ƿ��־����� ����
      ,m.SCHOOLID as m_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,m.NJMC as m_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,m.SSNF as m_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,m.NJZT as m_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,[mb].MC as m_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,m.PLSX as m_ZZNJ_PLSX--ѧУ�꼶���ݱ� ����˳��
      ,n.SCHOOLID as n_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,n.ZYXXID as n_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,n.ZZNJID as n_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,n.XZBMC as n_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,n.JBNY as n_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,n.BZRGH as n_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,n.JSBH as n_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,n.NANSRS as n_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,n.NVSRS as n_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,n.ZRS as n_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,n.BZXH as n_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,n.JXJH as n_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,n.JGH as n_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,n.XQDM as n_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,n.BZRID as n_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID
      ,n.PLSX as n_ZZBJ_PLSX--ѧУ�༶���ݱ� ����˳��
      ,n.FullClassName as n_ZZBJ_FullClassName--ѧУ�༶���ݱ� �����༶����
      ,n.RecordID as n_ZZBJ_RecordID--ѧУ�༶���ݱ� ��¼ID

FROM dbo.EDU_ZZXS_01_A01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*רҵ������Ϣ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS e ON a.XNID = e.ID /*ѧ��*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS f ON a.ZZXQID = f.ID /*ѧ�ڱ�*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS g ON a.JTDZQH = g.DM /*��ͥ��ַ������*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_HJXZ AS h ON a.HJXZ = h.DM /*�������ʴ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS i ON a.BYJX = i.DM /*���˾�ѵ*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_BYSLX AS j ON a.BYLX = j.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS k ON a.XSLX = k.DM /*ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS l ON a.SFZS = l.DM /*�Ƿ�ס��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS m ON a.ZZNJID = m.NJDM /*�꼶ID*/ AND a.SCHOOLID = m.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS n ON a.ZZBJID = n.XZBDM /*�༶ID*/ AND a.SCHOOLID = n.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [bb] ON b.SFZJLXM = [bb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [bc] ON b.XBM = [bc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [bd] ON b.XXM = [bd].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [be] ON b.CSDM = [be].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [bf] ON b.MZM = [bf].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [bg] ON b.HYZKM = [bg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [bh] ON b.XYZJM = [bh].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [bi] ON b.GATQWM = [bi].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [bj] ON b.JKZKM = [bj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [bk] ON b.ZZMMM = [bk].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [bl] ON b.HKSZDXZQHM = [bl].DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [bm] ON b.HKLBM = [bm].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [bn] ON b.SFSLDRK = [bn].DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [bo] ON b.GJDQM = [bo].DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [db] ON d.ZYDM = [db].DM /*רҵ����*/ AND d.SSZYML = [db].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [dc] ON d.SSZYML = [dc].DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [fb] ON f.XQM = [fb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [mb] ON m.NJZT = [mb].DM /*�꼶״̬*/
GO
