
--ѧ���ſ������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_32_A03_XSPKJG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KCPKID]--רҵ�γ��ſ����ID
      ,a.[ExamID]--����ID
      ,a.[EXAMROOMID]--����ID
      ,a.[CCID]--����ID
      ,a.[KCQDID]--���Կ�ĿID
      ,a.[StudentID]--ѧ��
      ,a.[SeatID]--��λ��
      ,a.[AdmissionID]--׼��֤��
      ,c.SCHOOLID as c_ZYKCPKJG_SCHOOLID--רҵ�γ��ſ������ ѧУ
      ,c.ExamID as c_ZYKCPKJG_ExamID--רҵ�γ��ſ������ ����ID
      ,c.EXAMROOMID as c_ZYKCPKJG_EXAMROOMID--רҵ�γ��ſ������ ����ID
      ,c.CCID as c_ZYKCPKJG_CCID--רҵ�γ��ſ������ ����ID
      ,c.KCQDID as c_ZYKCPKJG_KCQDID--רҵ�γ��ſ������ ���Կ�ĿID
      ,d.SCHOOLID as d_EXAM_SCHOOLID--���Ա� ѧУ
      ,d.Name as d_EXAM_Name--���Ա� ��������
      ,d.CJKSKMLM as d_EXAM_CJKSKMLM--���Ա� �μӿ��Կ�Ŀ�б�
      ,d.StartDate as d_EXAM_StartDate--���Ա� ��ʼ����
      ,d.EndDate as d_EXAM_EndDate--���Ա� ��ֹ����
      ,d.XqID as d_EXAM_XqID--���Ա� ѧ��ID
      ,d.DffsID as d_EXAM_DffsID--���Ա� �Ƿַ�ʽ
      ,e.SCHOOLID as e_EXAMROOM_SCHOOLID--������ ѧУ
      ,e.Name as e_EXAMROOM_Name--������ ��������
      ,e.RoomID as e_EXAMROOM_RoomID--������ ����ID
      ,e.ExamID as e_EXAMROOM_ExamID--������ ����ID
      ,e.StuCount as e_EXAMROOM_StuCount--������ ������������
      ,f.SCHOOLID as f_KSCC_SCHOOLID--���Գ��α� ѧУ
      ,f.ExamID as f_KSCC_ExamID--���Գ��α� ����ID
      ,f.Name as f_KSCC_Name--���Գ��α� ��������
      ,f.TypeID as f_KSCC_TypeID--���Գ��α� ����ʱ������
      ,f.ExamDate as f_KSCC_ExamDate--���Գ��α� ��������
      ,g.SCHOOLID as g_JXJHKCQD_SCHOOLID--��ѧ�ƻ��γ��嵥��������� ѧУID
      ,g.JXJHID as g_JXJHKCQD_JXJHID--��ѧ�ƻ��γ��嵥��������� ��ѧ�ƻ�ID
      ,g.KCH as g_JXJHKCQD_KCH--��ѧ�ƻ��γ��嵥��������� �γ̺�
      ,g.JHBH as g_JXJHKCQD_JHBH--��ѧ�ƻ��γ��嵥��������� �ƻ����
      ,g.XQID as g_JXJHKCQD_XQID--��ѧ�ƻ��γ��嵥��������� ѧ��ID
      ,g.KCMC as g_JXJHKCQD_KCMC--��ѧ�ƻ��γ��嵥��������� �γ�����
      ,g.YXKC as g_JXJHKCQD_YXKC--��ѧ�ƻ��γ��嵥��������� Ԥ�޿γ�
      ,g.SFHXKC as g_JXJHKCQD_SFHXKC--��ѧ�ƻ��γ��嵥��������� �Ƿ���ģ��Ǹɣ�
      ,gb.MC as g_JXJHKCQD_SFHXKC_MC--�ڿη�ʽ����� ����
      ,g.KCFLM as g_JXJHKCQD_KCFLM--��ѧ�ƻ��γ��嵥��������� �γ̷�����
      ,gc.MC as g_JXJHKCQD_KCFLM_MC--�γ̷������ ����
      ,g.KCSXM as g_JXJHKCQD_KCSXM--��ѧ�ƻ��γ��嵥��������� �γ�������
      ,gd.MC as g_JXJHKCQD_KCSXM_MC--�γ����Դ���� ����
      ,gd.SM as g_JXJHKCQD_KCSXM_SM--�γ����Դ���� ˵��
      ,g.ZXXQ as g_JXJHKCQD_ZXXQ--��ѧ�ƻ��γ��嵥��������� ִ��ѧ��
      ,g.ZKS as g_JXJHKCQD_ZKS--��ѧ�ƻ��γ��嵥��������� �ܿ�ʱ
      ,g.LLKS as g_JXJHKCQD_LLKS--��ѧ�ƻ��γ��嵥��������� ���ۿ�ʱ
      ,g.SJKS as g_JXJHKCQD_SJKS--��ѧ�ƻ��γ��嵥��������� ʵ����ʱ
      ,h.SCHOOLID as h_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,h.XH as h_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,h.XM as h_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,h.YWXM as h_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,h.XMPY as h_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,h.CYM as h_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,h.SFZJLXM as h_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,hb.MC as h_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,h.SFZJH as h_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,h.XBM as h_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,hc.MC as h_XSXX_XBM_MC--�˵��Ա���� ����
      ,h.XXM as h_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,hd.MC as h_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,hd.JC as h_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,h.CSRQ as h_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,h.CSDM as h_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,he.MC as h_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,h.JG as h_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,h.MZM as h_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,hf.MZMC as h_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,hf.ZMDM as h_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,h.HYZKM as h_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,hg.MC as h_XSXX_HYZKM_MC--����״������ ����
      ,h.XYZJM as h_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,hh.MC as h_XSXX_XYZJM_MC--�ڽ��������� ����
      ,h.GATQWM as h_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,hi.MC as h_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,hi.SM as h_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,h.JKZKM as h_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,hj.MC as h_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,hj.SM as h_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,h.ZZMMM as h_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,hk.MC as h_XSXX_ZZMMM_MC--������ò���� ����
      ,hk.JC as h_XSXX_ZZMMM_JC--������ò���� ���
      ,h.HKSZDXZQHM as h_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,hl.MC as h_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,h.HKLBM as h_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,hm.MC as h_XSXX_HKLBM_MC--���������� ����
      ,h.SFSLDRK as h_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,hn.MC as h_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,h.GJDQM as h_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,ho.GJDQMCJC as h_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,ho.EZMDM as h_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,ho.SZMDM as h_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,h.TC as h_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,h.XSLXDH as h_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,h.WLDZ as h_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,h.JSTXH as h_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,h.DZXX as h_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,h.ZP as h_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)

FROM dbo.EDU_ZZJX_32_A03_XSPKJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A02_ZYKCPKJG AS c ON a.KCPKID = c.ID /*רҵ�γ��ſ����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A01_EXAM AS d ON a.ExamID = d.ID /*����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_30_A02_EXAMROOM AS e ON a.EXAMROOMID = e.ID /*����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_31_A02_KSCC AS f ON a.CCID = f.ID /*����ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS g ON a.KCQDID = g.ID /*���Կ�ĿID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS h ON a.StudentID = h.ID /*ѧ��*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS gb ON g.SFHXKC = gb.DM /*�Ƿ���ģ��Ǹɣ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS gc ON g.KCFLM = gc.DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS gd ON g.KCSXM = gd.DM /*�γ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS hb ON h.SFZJLXM = hb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS hc ON h.XBM = hc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS hd ON h.XXM = hd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS he ON h.CSDM = he.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS hf ON h.MZM = hf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS hg ON h.HYZKM = hg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS hh ON h.XYZJM = hh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS hi ON h.GATQWM = hi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS hj ON h.JKZKM = hj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS hk ON h.ZZMMM = hk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS hl ON h.HKSZDXZQHM = hl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS hm ON h.HKLBM = hm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS hn ON h.SFSLDRK = hn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ho ON h.GJDQM = ho.DM /*����/����*/
GO
