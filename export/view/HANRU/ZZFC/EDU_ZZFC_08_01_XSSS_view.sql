
--ѧ�������������
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_08_01_XSSS_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[ID]--����ID
      ,a.[SSLID]--����¥ID
      ,a.[SSLBM]--����¥���
      ,a.[FJBM]--������
      ,a.[RZXB]--��ס�Ա�
      ,a.[SFKY]--�Ƿ����
      ,a.[KZRS]--��ס����
      ,a.[WLDK]--����˿�
      ,a.[AZDSJ]--��װ���ӻ�
      ,a.[DHDK]--�绰�˿�
      ,a.[DHHM]--�绰����
      ,a.[SBDS]--ˮ�����
      ,a.[DBDS]--������
      ,a.[SSBZ]--���ᱸע
      ,a.[SZLZ]--����¥��
      ,a.[SSM]--������
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_JZWJBSJ_SCHOOLID--ѧУ��
      ,c.JZWH as c_JZWJBSJ_JZWH--�������
      ,c.JZWMC as c_JZWJBSJ_JZWMC--����������
      ,c.SYZKM as c_JZWJBSJ_SYZKM--ʹ��״����
      ,cb.MC as c_JZWJBSJ_SYZKM_MC--����
      ,c.FWCQ as c_JZWJBSJ_FWCQ--���ݲ�Ȩ
      ,cc.MC as c_JZWJBSJ_FWCQ_MC--����
      ,c.XQH as c_JZWJBSJ_XQH--У����
      ,c.JZWFLM as c_JZWJBSJ_JZWFLM--�����������
      ,cd.MC as c_JZWJBSJ_JZWFLM_MC--����
      ,c.JZWJGM as c_JZWJBSJ_JZWJGM--������ṹ��
      ,ce.MC as c_JZWJBSJ_JZWJGM_MC--����
      ,c.JZWCS as c_JZWJBSJ_JZWCS--���������
      ,c.JCNY as c_JZWJBSJ_JCNY--��������
      ,c.JZWTZZE as c_JZWJBSJ_JZWTZZE--������Ͷ���ܶ�
      ,c.JFLYM as c_JZWJBSJ_JFLYM--������Դ��
      ,cf.MC as c_JZWJBSJ_JFLYM_MC--����
      ,c.ZJZMJ as c_JZWJBSJ_ZJZMJ--�ܽ������
      ,c.ZSYMJ as c_JZWJBSJ_ZSYMJ--��ʹ�����
      ,c.KZSFLDM as c_JZWJBSJ_KZSFLDM--��������Ҷ���
      ,cg.JC as c_JZWJBSJ_KZSFLDM_JC--���
      ,cg.MC as c_JZWJBSJ_KZSFLDM_MC--����
      ,c.KZSFBZM as c_JZWJBSJ_KZSFBZM--���������׼��
      ,ch.JC as c_JZWJBSJ_KZSFBZM_JC--���
      ,ch.MC as c_JZWJBSJ_KZSFBZM_MC--����
      ,ch.SM as c_JZWJBSJ_KZSFBZM_SM--˵��
      ,c.JZWDZ as c_JZWJBSJ_JZWDZ--�������ַ
      ,c.JZWZKM as c_JZWJBSJ_JZWZKM--������״����
      ,ci.MC as c_JZWJBSJ_JZWZKM_MC--����
      ,ci.SM as c_JZWJBSJ_JZWZKM_SM--˵��
      ,c.JZWTP as c_JZWJBSJ_JZWTP--������ͼƬ
      ,c.JZWPMT as c_JZWJBSJ_JZWPMT--������ƽ��ͼ
      ,c.XXDWCCM as c_JZWJBSJ_XXDWCCM--ѧУ��λ�����
      ,cj.MC as c_JZWJBSJ_XXDWCCM_MC--����
      ,c.JZWWZZK as c_JZWJBSJ_JZWWZZK--������λ��״��
      ,c.GHSPWH as c_JZWJBSJ_GHSPWH--�滮�����ĺ�
      ,c.ZHFZNL as c_JZWJBSJ_ZHFZNL--�ۺϷ�������
      ,c.GHSYNX as c_JZWJBSJ_GHSYNX--�滮ʹ������
      ,c.SFYYJBXCS as c_JZWJBSJ_SFYYJBXCS--�Ƿ���Ԥ�����մ�ʩ
      ,ck.MC as c_JZWJBSJ_SFYYJBXCS_MC--����
      ,c.SFKYYYJBNCS as c_JZWJBSJ_SFKYYYJBNCS--�Ƿ������Ӧ�����ѳ���
      ,cl.MC as c_JZWJBSJ_SFKYYYJBNCS_MC--����
      ,c.CQZH as c_JZWJBSJ_CQZH--��Ȩ֤��
      ,c.JZWYTM as c_JZWJBSJ_JZWYTM--��������;��
      ,cm.MC as c_JZWJBSJ_JZWYTM_MC--����
      ,c.JZWZGD as c_JZWJBSJ_JZWZGD--�������ܸ߶�
      ,c.WFJDBM as c_JZWJBSJ_WFJDBM--Σ����������
      ,c.WFJDWH as c_JZWJBSJ_WFJDWH--Σ�������ĺ�
      ,c.WFJDRQ as c_JZWJBSJ_WFJDRQ--Σ����������
      ,c.GNFSM as c_JZWJBSJ_GNFSM--��ů��ʽ��
      ,cn.MC as c_JZWJBSJ_GNFSM_MC--����
      ,c.JZWJCXSM as c_JZWJBSJ_JZWJCXSM--�����������ʽ��
      ,co.MC as c_JZWJBSJ_JZWJCXSM_MC--����
      ,c.JZWPMXSM as c_JZWJBSJ_JZWPMXSM--������ƽ����ʽ��
      ,cp.MC as c_JZWJBSJ_JZWPMXSM_MC--����
      ,c.JZWLBXSM as c_JZWJBSJ_JZWLBXSM--������¥����ʽ��
      ,cq.MC as c_JZWJBSJ_JZWLBXSM_MC--����
      ,c.SFYGZZ as c_JZWJBSJ_SFYGZZ--�Ƿ��й�����
      ,cr.MC as c_JZWJBSJ_SFYGZZ_MC--����
      ,c.QL as c_JZWJBSJ_QL--Ȧ��
      ,cs.MC as c_JZWJBSJ_QL_MC--����
      ,c.ZJAQGZWCRQ as c_JZWJBSJ_ZJAQGZWCRQ--�����ȫ�����������
      ,c.ZJAQGZHYJSYNX as c_JZWJBSJ_ZJAQGZHYJSYNX--�����ȫ�����Ԥ��ʹ������
      ,c.ZXLXM as c_JZWJBSJ_ZXLXM--ר������
      ,c.ZYZXTZBZMCM as c_JZWJBSJ_ZYZXTZBZMCM--����ר��Ͷ�ʲ���������
      ,ct.MC as c_JZWJBSJ_ZYZXTZBZMCM_MC--����
      ,c.WWJZDJM as c_JZWJBSJ_WWJZDJM--���ｨ���ȼ���
      ,cu.MC as c_JZWJBSJ_WWJZDJM_MC--����
      ,c.JXJFZYF as c_JZWJBSJ_JXJFZYF--��ѧ�������÷�
      ,c.QZJS as c_JZWJBSJ_QZJS--���н���
      ,c.QZSYS as c_JZWJBSJ_QZSYS--����ʵ����
      ,c.QZTSS as c_JZWJBSJ_QZTSS--����ͼ����
      ,c.QZWJS as c_JZWJBSJ_QZWJS--����΢����
      ,c.QZYYS as c_JZWJBSJ_QZYYS--����������
      ,c.QZTYHDS as c_JZWJBSJ_QZTYHDS--�����������
      ,c.QZQTJFYF as c_JZWJBSJ_QZQTJFYF--���������̸��÷�
      ,c.SHYF as c_JZWJBSJ_SHYF--�����÷�
      ,c.QZXSSS as c_JZWJBSJ_QZXSSS--����ѧ������
      ,c.QZST as c_JZWJBSJ_QZST--����ʳ��
      ,c.QZCS as c_JZWJBSJ_QZCS--���в���
      ,c.QZGLF as c_JZWJBSJ_QZGLF--���й�¯��(��ˮ��)
      ,c.QZYS as c_JZWJBSJ_QZYS--����ԡ��
      ,c.QZJGSS as c_JZWJBSJ_QZJGSS--���н̹�����
      ,c.QZQTSHYF as c_JZWJBSJ_QZQTSHYF--�������������÷�
      ,c.XZBGYF as c_JZWJBSJ_XZBGYF--�����칫�÷�
      ,c.QZJSBGS as c_JZWJBSJ_QZJSBGS--���н�ְ���칫��
      ,c.QZWSBJS as c_JZWJBSJ_QZWSBJS--��������������
      ,c.QZQTXZBGYF as c_JZWJBSJ_QZQTXZBGYF--�������������칫�÷�
      ,c.QTYF as c_JZWJBSJ_QTYF--�����÷�
      ,d.MC as d_RDXB_MC--����
      ,e.MC as e_SFBZ_MC--����
      ,f.MC as f_SFBZ_MC--����

FROM dbo.EDU_ZZFC_08_01_XSSS AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_02_01_JZWJBSJ AS c ON a.SSLID = c.ID /*����¥ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS d ON a.RZXB = d.DM /*��ס�Ա�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFKY = e.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.AZDSJ = f.DM /*��װ���ӻ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS cb ON c.SYZKM = cb.DM /*ʹ��״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS cc ON c.FWCQ = cc.DM /*���ݲ�Ȩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS cd ON c.JZWFLM = cd.DM /*�����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS ce ON c.JZWJGM = ce.DM /*������ṹ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS cf ON c.JFLYM = cf.DM /*������Դ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS cg ON c.KZSFLDM = cg.DM /*��������Ҷ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS ch ON c.KZSFBZM = ch.DM /*���������׼��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS ci ON c.JZWZKM = ci.DM /*������״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS cj ON c.XXDWCCM = cj.DM /*ѧУ��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ck ON c.SFYYJBXCS = ck.DM /*�Ƿ���Ԥ�����մ�ʩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cl ON c.SFKYYYJBNCS = cl.DM /*�Ƿ������Ӧ�����ѳ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS cm ON c.JZWYTM = cm.DM /*��������;��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS cn ON c.GNFSM = cn.DM /*��ů��ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS co ON c.JZWJCXSM = co.DM /*�����������ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS cp ON c.JZWPMXSM = cp.DM /*������ƽ����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS cq ON c.JZWLBXSM = cq.DM /*������¥����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFYGZZ = cr.DM /*�Ƿ��й�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.QL = cs.DM /*Ȧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS ct ON c.ZYZXTZBZMCM = ct.DM /*����ר��Ͷ�ʲ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS cu ON c.WWJZDJM = cu.DM /*���ｨ���ȼ���*/
GO
