
--�������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZYFZ_02_A04_GZNR_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[BT]--����
      ,a.[GJC]--�ؼ���
      ,a.[SSLMID]--������ĿID
      ,a.[SSXKID]--����ѧ��ID
      ,a.[SSNJID]--�����꼶ID
      ,a.[SFGK]--�Ƿ񹫿�
      ,a.[NR]--����
      ,a.[FBRID]--������ID
      ,a.[FBSJ]--����ʱ��
      ,a.[LLL]--�����
      ,c.SCHOOLID as c_GZNRLM_SCHOOLID--����������Ŀ�� ѧУ
      ,c.LMMC as c_GZNRLM_LMMC--����������Ŀ�� ��Ŀ����
      ,c.LMLBID as c_GZNRLM_LMLBID--����������Ŀ�� ��Ŀ���ID
      ,c.SYMBID as c_GZNRLM_SYMBID--����������Ŀ�� ʹ��ģ��ID
      ,c.PLFS as c_GZNRLM_PLFS--����������Ŀ�� ���з�ʽ
      ,c.PLSX as c_GZNRLM_PLSX--����������Ŀ�� ����˳��
      ,c.NMLLLM as c_GZNRLM_NMLLLM--����������Ŀ�� ���������Ŀ
      ,d.SCHOOLID as d_XK_SCHOOLID--ѧ�Ʊ� ѧУ
      ,d.XKMC as d_XK_XKMC--ѧ�Ʊ� ѧ������
      ,e.SCHOOLID as e_NJ_SCHOOLID--�꼶�� ѧУ
      ,e.NJMC as e_NJ_NJMC--�꼶�� �꼶����
      ,f.MC as f_SFBZ_MC--�Ƿ��־����� ����
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
      ,g.YHRY as g_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,g.YHJF as g_USER_YHJF--Ӧ��ϵͳ�û��� �û�����

FROM dbo.EDU_ZYFZ_02_A04_GZNR AS a LEFT OUTER JOIN
      dbo.EDU_ZYFZ_02_A02_GZNRLM AS c ON a.SSLMID = c.ID /*������ĿID*/ LEFT OUTER JOIN
      dbo.EDU_ZYFZ_01_A01_XK AS d ON a.SSXKID = d.ID /*����ѧ��ID*/ LEFT OUTER JOIN
      dbo.EDU_ZYFZ_01_A02_NJ AS e ON a.SSNJID = e.ID /*�����꼶ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFGK = f.DM /*�Ƿ񹫿�*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.FBRID = g.LOGINNAME /*������ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/
GO
