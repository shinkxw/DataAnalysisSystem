
--��ְ�ſν����¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_38_A02_ZZPKJGJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[ZZXQID]--У��ID
      ,a.[XQID]--ѧ��ID
      ,a.[ZYXXID]--רҵID
      ,a.[NJID]--�꼶ID
      ,a.[JXBID]--��ѧ�༶ID
      ,a.[KCQDID]--�γ��嵥ID
      ,a.[KCH]--�γ̺�
      ,a.[CLASSROOM]--����ID
      ,a.[ZZBJID]--�����༶ID
      ,a.[WEEKDAY]--������ID
      ,a.[PERIOD]--ʱ��ID
      ,a.[SESSION]--�ڴ�ID
      ,c.SCHOOLID as c_ZZXQSJ_SCHOOLID--У�����ݱ� ѧУ��
      ,c.XQDM as c_ZZXQSJ_XQDM--У�����ݱ� У������
      ,c.XQMC as c_ZZXQSJ_XQMC--У�����ݱ� У������
      ,c.XQDZ as c_ZZXQSJ_XQDZ--У�����ݱ� У����ַ
      ,c.XQLXDH as c_ZZXQSJ_XQLXDH--У�����ݱ� У����ϵ�绰
      ,c.XQFZRH as c_ZZXQSJ_XQFZRH--У�����ݱ� У�������˺�
      ,c.DZYJ as c_ZZXQSJ_DZYJ--У�����ݱ� �����ʼ�
      ,c.XQYZBM as c_ZZXQSJ_XQYZBM--У�����ݱ� У����������
      ,c.XQSZDXZQHM as c_ZZXQSJ_XQSZDXZQHM--У�����ݱ� У�����ڵ�����������
      ,[cb].MC as c_ZZXQSJ_XQSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.XQMJ as c_ZZXQSJ_XQMJ--У�����ݱ� У�����
      ,c.XQJZMJ as c_ZZXQSJ_XQJZMJ--У�����ݱ� У���������
      ,c.XQJXKYSBZZ as c_ZZXQSJ_XQJXKYSBZZ--У�����ݱ� У����ѧ���������豸��ֵ
      ,c.XQGDZCZZ as c_ZZXQSJ_XQGDZCZZ--У�����ݱ� У���̶��ʲ���ֵ
      ,d.SCHOOLID as d_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,d.XNID as d_XQ_XNID--ѧ�����ݱ� ѧ��
      ,d.XQM as d_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[db].MC as d_XQ_XQM_MC--ѧ�ڴ���� ����
      ,d.XQMC as d_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,d.XQKSRQ as d_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,d.XQJSRQ as d_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,e.SCHOOLID as e_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,e.ZYDM as e_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,[eb].ZYMLLB as e_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,[eb].MC as e_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,e.ZYMC as e_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,e.ZYYWMC as e_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,e.XZ as e_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,e.ZYFXMC as e_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,e.ZYJC as e_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,e.JLNY as e_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,e.ZYJSS as e_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,e.KSJGH as e_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,e.ZXF as e_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,e.SSZYML as e_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,[ec].MC as e_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,e.ZYLB as e_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,f.SCHOOLID as f_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,f.NJMC as f_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,f.SSNF as f_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,f.NJZT as f_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,[fb].MC as f_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,g.SCHOOLID as g_ZZJXB_SCHOOLID--��ְ��ѧ��� ѧУ��
      ,g.ZZXQID as g_ZZJXB_ZZXQID--��ְ��ѧ��� У��ID
      ,g.XQID as g_ZZJXB_XQID--��ְ��ѧ��� ѧ��ID
      ,g.ZYXXID as g_ZZJXB_ZYXXID--��ְ��ѧ��� רҵID
      ,g.NJID as g_ZZJXB_NJID--��ְ��ѧ��� �꼶ID
      ,g.JXBMC as g_ZZJXB_JXBMC--��ְ��ѧ��� ��ѧ�༶����
      ,g.TEACHERID1 as g_ZZJXB_TEACHERID1--��ְ��ѧ��� ������ʦID
      ,g.TEACHERID2 as g_ZZJXB_TEACHERID2--��ְ��ѧ��� ������ʦID
      ,g.KCQDID as g_ZZJXB_KCQDID--��ְ��ѧ��� �γ��嵥ID
      ,g.KCH as g_ZZJXB_KCH--��ְ��ѧ��� �γ̺�
      ,g.CLASSROOM as g_ZZJXB_CLASSROOM--��ְ��ѧ��� ����ID
      ,g.ZDBJ as g_ZZJXB_ZDBJ--��ְ��ѧ��� ָ���༶
      ,g.ZDBJMC as g_ZZJXB_ZDBJMC--��ְ��ѧ��� ָ���༶����
      ,g.RS as g_ZZJXB_RS--��ְ��ѧ��� ����
      ,g.T1NAME as g_ZZJXB_T1NAME--��ְ��ѧ��� ������ʦ����
      ,g.T2NAME as g_ZZJXB_T2NAME--��ְ��ѧ��� ������ʦ����
      ,g.SKFS as g_ZZJXB_SKFS--��ְ��ѧ��� �ڿη�ʽ
      ,h.SCHOOLID as h_JXJHKCQD_SCHOOLID--��ѧ�ƻ��γ��嵥��������� ѧУID
      ,h.JXJHID as h_JXJHKCQD_JXJHID--��ѧ�ƻ��γ��嵥��������� ��ѧ�ƻ�ID
      ,h.KCH as h_JXJHKCQD_KCH--��ѧ�ƻ��γ��嵥��������� �γ̺�
      ,h.JHBH as h_JXJHKCQD_JHBH--��ѧ�ƻ��γ��嵥��������� �ƻ����
      ,h.XQID as h_JXJHKCQD_XQID--��ѧ�ƻ��γ��嵥��������� ѧ��ID
      ,h.KCMC as h_JXJHKCQD_KCMC--��ѧ�ƻ��γ��嵥��������� �γ�����
      ,h.YXKC as h_JXJHKCQD_YXKC--��ѧ�ƻ��γ��嵥��������� Ԥ�޿γ�
      ,h.SFHXKC as h_JXJHKCQD_SFHXKC--��ѧ�ƻ��γ��嵥��������� �Ƿ���ģ��Ǹɣ�
      ,[hb].MC as h_JXJHKCQD_SFHXKC_MC--�Ƿ��־����� ����
      ,h.KCFLM as h_JXJHKCQD_KCFLM--��ѧ�ƻ��γ��嵥��������� �γ̷�����
      ,[hc].MC as h_JXJHKCQD_KCFLM_MC--�γ̷������ ����
      ,h.KCSXM as h_JXJHKCQD_KCSXM--��ѧ�ƻ��γ��嵥��������� �γ�������
      ,[hd].MC as h_JXJHKCQD_KCSXM_MC--�γ����Դ���� ����
      ,[hd].SM as h_JXJHKCQD_KCSXM_SM--�γ����Դ���� ˵��
      ,h.ZXXQ as h_JXJHKCQD_ZXXQ--��ѧ�ƻ��γ��嵥��������� ִ��ѧ��
      ,h.ZKS as h_JXJHKCQD_ZKS--��ѧ�ƻ��γ��嵥��������� �ܿ�ʱ
      ,h.LLKS as h_JXJHKCQD_LLKS--��ѧ�ƻ��γ��嵥��������� ���ۿ�ʱ
      ,h.SJKS as h_JXJHKCQD_SJKS--��ѧ�ƻ��γ��嵥��������� ʵ����ʱ
      ,h.XF as h_JXJHKCQD_XF--��ѧ�ƻ��γ��嵥��������� ѧ��
      ,h.XFRDHGX as h_JXJHKCQD_XFRDHGX--��ѧ�ƻ��γ��嵥��������� ѧ���϶��ϸ���
      ,h.JXDG as h_JXJHKCQD_JXDG--��ѧ�ƻ��γ��嵥��������� ��ѧ���
      ,i.SCHOOLID as i_KC_SCHOOLID--�γ���������� ѧУID
      ,i.KCMC as i_KC_KCMC--�γ���������� �γ�����
      ,i.KCYWM as i_KC_KCYWM--�γ���������� �γ�Ӣ����
      ,i.KCBM as i_KC_KCBM--�γ���������� �γ̱���
      ,i.KCJS as i_KC_KCJS--�γ���������� �γ̽���
      ,i.XF as i_KC_XF--�γ���������� ѧ��
      ,i.ZXS as i_KC_ZXS--�γ���������� ��ѧʱ
      ,i.LLXS as i_KC_LLXS--�γ���������� ����ѧʱ
      ,i.SJXS as i_KC_SJXS--�γ���������� ʵ��ѧʱ
      ,i.QTXS as i_KC_QTXS--�γ���������� ����ѧʱ
      ,i.CKSM as i_KC_CKSM--�γ���������� �ο���Ŀ
      ,i.KKDW as i_KC_KKDW--�γ���������� ���ε�λ
      ,i.KSXS as i_KC_KSXS--�γ���������� ������ʽ
      ,[ib].MC as i_KC_KSXS_MC--������ʽ����� ����
      ,i.SKFSM as i_KC_SKFSM--�γ���������� �ڿη�ʽ��
      ,[ic].MC as i_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,i.KCFY as i_KC_KCFY--�γ���������� �γ̷���
      ,j.SCHOOLID as j_CLASSROOM_SCHOOLID--���ұ� ѧУ
      ,j.Name as j_CLASSROOM_Name--���ұ� ��������
      ,j.Place as j_CLASSROOM_Place--���ұ� �ص�
      ,j.Counts as j_CLASSROOM_Counts--���ұ� ��λ��
      ,k.SCHOOLID as k_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,k.ZYXXID as k_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,k.ZZNJID as k_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,k.XZBMC as k_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,k.JBNY as k_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,k.BZRGH as k_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,k.JSBH as k_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,k.NANSRS as k_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,k.NVSRS as k_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,k.ZRS as k_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,k.BZXH as k_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,k.JXJH as k_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,k.JGH as k_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,k.XQDM as k_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,k.BZRID as k_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID
      ,l.SCHOOLID as l_WEEKDAY_SCHOOLID--���� ѧУ��
      ,l.MC as l_WEEKDAY_MC--���� ����
      ,m.SCHOOLID as m_SD_SCHOOLID--ʱ�� ѧУ��
      ,m.MC as m_SD_MC--ʱ�� ����
      ,n.SCHOOLID as n_JC_SCHOOLID--�ڴ� ѧУ��
      ,n.SDID as n_JC_SDID--�ڴ� ����ʱ��ID
      ,n.MC as n_JC_MC--�ڴ� ����

FROM dbo.EDU_ZZJX_38_A02_ZZPKJGJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_02_01_ZZXQSJ AS c ON a.ZZXQID = c.ID /*У��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS e ON a.ZYXXID = e.ZYBH /*רҵID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS f ON a.NJID = f.NJDM /*�꼶ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_38_A01_ZZJXB AS g ON a.JXBID = g.ID /*��ѧ�༶ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS h ON a.KCQDID = h.ID /*�γ��嵥ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS i ON a.KCH = i.KCH /*�γ̺�*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_30_A01_CLASSROOM AS j ON a.CLASSROOM = j.ID /*����ID*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS k ON a.ZZBJID = k.XZBDM /*�����༶ID*/ AND a.SCHOOLID = k.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_WEEKDAY AS l ON a.WEEKDAY = l.ID /*������ID*/ AND a.SCHOOLID = l.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_SD AS m ON a.PERIOD = m.ID /*ʱ��ID*/ AND a.SCHOOLID = m.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_JC AS n ON a.SESSION = n.ID /*�ڴ�ID*/ AND a.SCHOOLID = n.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cb] ON c.XQSZDXZQHM = [cb].DM /*У�����ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [eb] ON e.ZYDM = [eb].DM /*רҵ����*/ AND e.SSZYML = [eb].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [ec] ON e.SSZYML = [ec].DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.NJZT = [fb].DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hb] ON h.SFHXKC = [hb].DM /*�Ƿ���ģ��Ǹɣ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [hc] ON h.KCFLM = [hc].DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [hd] ON h.KCSXM = [hd].DM /*�γ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [ib] ON i.KSXS = [ib].DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [ic] ON i.SKFSM = [ic].DM /*�ڿη�ʽ��*/
GO
