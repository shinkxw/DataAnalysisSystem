
--�꼶��ѧ�ƻ���
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_55_A08_NJJXJH_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[ZYID]--רҵID
      ,a.[NJID]--�꼶ID
      ,a.[ZYKCKID]--רҵ�γ̿�ID
      ,a.[XF]--ѧ��
      ,a.[KS]--��ʱ
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
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
      ,e.SCHOOLID as e_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,e.NJMC as e_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,e.SSNF as e_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,e.NJZT as e_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,[eb].MC as e_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,e.PLSX as e_ZZNJ_PLSX--ѧУ�꼶���ݱ� ����˳��
      ,f.SCHOOLID as f_ZYKCK_SCHOOLID--רҵ�γ̿�� ѧУ
      ,f.ZYID as f_ZYKCK_ZYID--רҵ�γ̿�� רҵID
      ,f.FZXXID as f_ZYKCK_FZXXID--רҵ�γ̿�� ������ϢID
      ,f.KCPFLXID as f_ZYKCK_KCPFLXID--רҵ�γ̿�� �γ���������ID
      ,f.KCBH as f_ZYKCK_KCBH--רҵ�γ̿�� �γ�����
      ,f.ZXF as f_ZYKCK_ZXF--רҵ�γ̿�� ��ѧ��
      ,f.ZXS as f_ZYKCK_ZXS--רҵ�γ̿�� ��ѧʱ
      ,f.KKDW as f_ZYKCK_KKDW--רҵ�γ̿�� ���ε�λ
      ,f.KSXS as f_ZYKCK_KSXS--רҵ�γ̿�� ������ʽ
      ,f.SKFSM as f_ZYKCK_SKFSM--רҵ�γ̿�� �ڿη�ʽ��
      ,f.JXDG as f_ZYKCK_JXDG--רҵ�γ̿�� ��ѧ���
      ,f.SFSY as f_ZYKCK_SFSY--רҵ�γ̿�� �Ƿ�ʹ��

FROM dbo.EDU_ZZJX_55_A08_NJJXJH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYID = d.ZYBH /*רҵID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS e ON a.NJID = e.NJDM /*�꼶ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A04_ZYKCK AS f ON a.ZYKCKID = f.ID /*רҵ�γ̿�ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [db] ON d.ZYDM = [db].DM /*רҵ����*/ AND d.SSZYML = [db].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [dc] ON d.SSZYML = [dc].DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [eb] ON e.NJZT = [eb].DM /*�꼶״̬*/
GO
