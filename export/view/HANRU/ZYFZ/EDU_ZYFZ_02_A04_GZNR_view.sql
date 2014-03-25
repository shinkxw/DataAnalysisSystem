
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
      ,a.[NR]--����
      ,a.[FBRID]--������ID
      ,a.[FBSJ]--����ʱ��
      ,a.[LLL]--�����
      ,a.[XQID]--ѧ��ID
      ,a.[SHZT]--���״̬
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
      ,f.SCHOOLID as f_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,f.PWD as f_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,f.STATUS as f_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,f.USERTYPE as f_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,f.USERID as f_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,f.XM as f_USER_XM--Ӧ��ϵͳ�û��� ����
      ,f.XB as f_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,f.QQ as f_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,f.DZYJ as f_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,f.LXDH as f_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,f.ZJDLSJ as f_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,f.DLCGCS as f_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,f.YHCJSJ as f_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,f.YHRY as f_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,f.YHJF as f_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,g.SCHOOLID as g_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,g.XNID as g_XQ_XNID--ѧ�����ݱ� ѧ��
      ,g.XQM as g_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[gb].MC as g_XQ_XQM_MC--ѧ�ڴ���� ����
      ,g.XQMC as g_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,g.XQKSRQ as g_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,g.XQJSRQ as g_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������

FROM dbo.EDU_ZYFZ_02_A04_GZNR AS a LEFT OUTER JOIN
      dbo.EDU_ZYFZ_02_A02_GZNRLM AS c ON a.SSLMID = c.ID /*������ĿID*/ LEFT OUTER JOIN
      dbo.EDU_ZYFZ_01_A01_XK AS d ON a.SSXKID = d.ID /*����ѧ��ID*/ LEFT OUTER JOIN
      dbo.EDU_ZYFZ_01_A02_NJ AS e ON a.SSNJID = e.ID /*�����꼶ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.FBRID = f.LOGINNAME /*������ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS g ON a.XQID = g.ID /*ѧ��ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [gb] ON g.XQM = [gb].DM /*ѧ����*/
GO
