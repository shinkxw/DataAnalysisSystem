
--���ῼ�˽����
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_10_A02_SSKHJG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[BJID]--�༶ID
      ,a.[QSID]--����ID
      ,a.[KHXMID]--������ĿID
      ,a.[KHSJ]--����ʱ��
      ,a.[KHFZ]--���˷�ֵ
      ,a.[TJJSID]--��ӽ�ʦID
      ,c.SCHOOLID as c_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,c.ZYXXID as c_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,c.ZZNJID as c_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,c.XZBMC as c_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,c.JBNY as c_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,c.BZRGH as c_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,c.JSBH as c_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,c.NANSRS as c_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,c.NVSRS as c_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,c.ZRS as c_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,c.BZXH as c_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,c.JXJH as c_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,c.JGH as c_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,c.XQDM as c_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,c.BZRID as c_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID
      ,d.SCHOOLID as d_XSSS_SCHOOLID--ѧ������������� ѧУ��
      ,d.SSLID as d_XSSS_SSLID--ѧ������������� ����¥ID
      ,d.SSLBM as d_XSSS_SSLBM--ѧ������������� ����¥���
      ,d.FJBM as d_XSSS_FJBM--ѧ������������� ������
      ,d.RZXB as d_XSSS_RZXB--ѧ������������� ��ס�Ա�
      ,db.MC as d_XSSS_RZXB_MC--�˵��Ա���� ����
      ,d.SFKY as d_XSSS_SFKY--ѧ������������� �Ƿ����
      ,dc.MC as d_XSSS_SFKY_MC--�Ƿ��־����� ����
      ,d.KZRS as d_XSSS_KZRS--ѧ������������� ��ס����
      ,d.WLDK as d_XSSS_WLDK--ѧ������������� ����˿�
      ,d.AZDSJ as d_XSSS_AZDSJ--ѧ������������� ��װ���ӻ�
      ,dd.MC as d_XSSS_AZDSJ_MC--�Ƿ��־����� ����
      ,d.DHDK as d_XSSS_DHDK--ѧ������������� �绰�˿�
      ,d.DHHM as d_XSSS_DHHM--ѧ������������� �绰����
      ,d.SBDS as d_XSSS_SBDS--ѧ������������� ˮ�����
      ,d.DBDS as d_XSSS_DBDS--ѧ������������� ������
      ,d.SSBZ as d_XSSS_SSBZ--ѧ������������� ���ᱸע
      ,d.SZLZ as d_XSSS_SZLZ--ѧ������������� ����¥��
      ,d.SSM as d_XSSS_SSM--ѧ������������� ������
      ,e.SCHOOLID as e_SSKHXM_SCHOOLID--���ῼ����Ŀ�� ѧУ
      ,e.LX as e_SSKHXM_LX--���ῼ����Ŀ�� ����
      ,e.XMMC as e_SSKHXM_XMMC--���ῼ����Ŀ�� ��Ŀ����
      ,e.SFYXPB as e_SSKHXM_SFYXPB--���ῼ����Ŀ�� �Ƿ�Ӱ������
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,f.GH as f_JZGJBSJ_GH--��ְ��������������� ����
      ,f.XM as f_JZGJBSJ_XM--��ְ��������������� ����
      ,f.YWXM as f_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,f.XMPY as f_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,f.CYM as f_JZGJBSJ_CYM--��ְ��������������� ������
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,fb.MC as f_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,f.SFZJH as f_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,f.CSRQ as f_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,f.XBM as f_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,fc.MC as f_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,f.MZM as f_JZGJBSJ_MZM--��ְ��������������� ������
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.XXM as f_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,fe.MC as f_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,fe.JC as f_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,f.JKZKM as f_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,ff.MC as f_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,ff.SM as f_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,f.HYZTM as f_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,fg.MC as f_JZGJBSJ_HYZTM_MC--����״������ ����
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,fh.MC as f_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,fh.JC as f_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,f.GATQWM as f_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,fi.MC as f_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,fi.SM as f_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,f.JG as f_JZGJBSJ_JG--��ְ��������������� ����
      ,f.GJDQM as f_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,fj.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,fj.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,fj.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,f.CSDXZQHM as f_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,fk.MC as f_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,f.XYZJM as f_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,fl.MC as f_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,f.JZGHKSZDXZQHM as f_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,fm.MC as f_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,f.HKLBM as f_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,fn.MC as f_JZGJBSJ_HKLBM_MC--���������� ����
      ,f.DQZZ as f_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,f.DQZZYZBM as f_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,f.CJGZNY as f_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,f.CJNY as f_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,f.LXNY as f_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,f.BZLBM as f_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,fo.MC as f_JZGJBSJ_BZLBM_MC--����������� ����
      ,f.JZGLBM as f_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,fp.MC as f_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,fp.SM as f_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,f.GWLBM as f_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,fq.MC as f_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,f.SFJZJS as f_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,fr.MC as f_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,f.SFSSXJS as f_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,fs.MC as f_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,f.ZP as f_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,f.DQZTM as f_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,ft.MC as f_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,f.YDDH as f_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,f.GDDH as f_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,f.TXDZYZBM as f_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,f.TXDZ as f_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,f.DZXX as f_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,f.WLDZ as f_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,f.JSTXH as f_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��

FROM dbo.EDU_ZZFC_10_A02_SSKHJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS c ON a.BJID = c.XZBDM /*�༶ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_08_01_XSSS AS d ON a.QSID = d.ID /*����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_10_A01_SSKHXM AS e ON a.KHXMID = e.ID /*������ĿID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS f ON a.TJJSID = f.ID /*��ӽ�ʦID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.RZXB = db.DM /*��ס�Ա�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dc ON d.SFKY = dc.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dd ON d.AZDSJ = dd.DM /*��װ���ӻ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS fb ON f.SFZJLXM = fb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fc ON f.XBM = fc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fe ON f.XXM = fe.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ff ON f.JKZKM = ff.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS fg ON f.HYZTM = fg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fh ON f.ZZMMM = fh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fi ON f.GATQWM = fi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fj ON f.GJDQM = fj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fk ON f.CSDXZQHM = fk.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fl ON f.XYZJM = fl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fm ON f.JZGHKSZDXZQHM = fm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS fn ON f.HKLBM = fn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS fo ON f.BZLBM = fo.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS fp ON f.JZGLBM = fp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS fq ON f.GWLBM = fq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fr ON f.SFJZJS = fr.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fs ON f.SFSSXJS = fs.DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ft ON f.DQZTM = ft.DM /*��ǰ״̬��*/
GO
