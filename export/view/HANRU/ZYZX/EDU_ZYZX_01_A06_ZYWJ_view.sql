
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
      ,g.SCHOOLID as g_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,g.APPID as g_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,g.PWD as g_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,g.STATUS as g_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,g.USERTYPE as g_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,g.USERID as g_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,g.XM as g_USER_XM--Ӧ��ϵͳ�û��� ����
      ,g.XB as g_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,g.QQ as g_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,g.DZYJ as g_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,g.LXDH as g_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,g.ZJDLSJ as g_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,g.DLCGCS as g_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,g.YHCJSJ as g_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��

FROM dbo.EDU_ZYZX_01_A06_ZYWJ AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A01_ZYFL AS c ON a.ZYFLID = c.ID /*��Դ����*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A02_ZYML AS d ON a.ZYMLID = d.ID /*��ԴĿ¼*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.YYZID = e.LOGINNAME /*ӵ����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A03_WJLX AS f ON a.WJLXID = f.ID /*�ļ�����*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.SHRID = g.LOGINNAME /*�����ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/
GO
