
--��Դ�ļ�
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A06_ZYWJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ZYFLID]--��Դ����
      ,a.[ZYMLID]--��ԴĿ¼
      ,a.[ZYBT]--��Դ����
      ,a.[BZ]--��ע
      ,a.[GJZ]--�ؼ���
      ,a.[YYZID]--ӵ����ID
      ,a.[ZYLLLX]--��Դ�������
      ,a.[WJLXID]--�ļ�����
      ,a.[ZYNR]--��Դ����
      ,a.[FJMC]--��������
      ,a.[FJDX]--������С
      ,a.[FJLJ]--����·��
      ,a.[ZYZT]--��Դ״̬
      ,a.[ZYPJ]--��Դ����
      ,a.[SCSJ]--�ϴ�ʱ��
      ,a.[SYNJ]--�����꼶
      ,a.[SYXK]--����ѧ��
      ,a.[LLRC]--����˴�
      ,a.[SHZT]--���״̬
      ,a.[SHRID]--�����ID
      ,a.[SHSJ]--���ʱ��
      ,c.SCHOOLID as c_ZYFL_SCHOOLID--��Դ���� ѧУ
      ,c.FLMC as c_ZYFL_FLMC--��Դ���� ��������
      ,c.FFLID as c_ZYFL_FFLID--��Դ���� ������ID
      ,c.PLSX as c_ZYFL_PLSX--��Դ���� ����˳��
      ,c.SFSYZS as c_ZYFL_SFSYZS--��Դ���� �Ƿ���ҳչʾ
      ,c.SFQY as c_ZYFL_SFQY--��Դ���� �Ƿ�����
      ,d.SCHOOLID as d_ZYML_SCHOOLID--��ԴĿ¼ ѧУ
      ,d.MLMC as d_ZYML_MLMC--��ԴĿ¼ Ŀ¼����
      ,d.FMLID as d_ZYML_FMLID--��ԴĿ¼ ��Ŀ¼ID
      ,d.PLSX as d_ZYML_PLSX--��ԴĿ¼ ����˳��
      ,d.YYZID as d_ZYML_YYZID--��ԴĿ¼ ӵ����ID
      ,d.WJLXIDLB as d_ZYML_WJLXIDLB--��ԴĿ¼ �ϴ��ļ�����ID�б�
      ,d.FWQX as d_ZYML_FWQX--��ԴĿ¼ ����Ȩ��
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,e.STATUS as e_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,e.USERID as e_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,e.XM as e_USER_XM--Ӧ��ϵͳ�û��� ����
      ,e.XB as e_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,e.QQ as e_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,e.DZYJ as e_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,e.LXDH as e_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,f.SCHOOLID as f_WJLX_SCHOOLID--�ļ����� ѧУ
      ,f.LXMC as f_WJLX_LXMC--�ļ����� ��������
      ,g.SCHOOLID as g_KCK_SCHOOLID--�γ̿�� ѧУ
      ,g.KCDM as g_KCK_KCDM--�γ̿�� �γ̴���
      ,g.KCMC as g_KCK_KCMC--�γ̿�� �γ�����
      ,h.SCHOOLID as h_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,h.APPID as h_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,h.PWD as h_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,h.STATUS as h_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,h.USERTYPE as h_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,h.USERID as h_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,h.ROLEIDLst as h_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,h.XM as h_USER_XM--Ӧ��ϵͳ�û��� ����
      ,h.XB as h_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,h.QQ as h_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,h.DZYJ as h_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,h.LXDH as h_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,h.ZJDLSJ as h_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,h.DLCGCS as h_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,h.YHCJSJ as h_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��

FROM dbo.EDU_ZYZX_01_A06_ZYWJ AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A01_ZYFL AS c ON a.ZYFLID = c.ID /*��Դ����*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A02_ZYML AS d ON a.ZYMLID = d.ID /*��ԴĿ¼*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.YYZID = e.LOGINNAME /*ӵ����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A03_WJLX AS f ON a.WJLXID = f.ID /*�ļ�����*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZYZX_03_A01_KCK AS g ON a.SYXK = g.ID /*����ѧ��*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS h ON a.SHRID = h.LOGINNAME /*�����ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ*/
GO
