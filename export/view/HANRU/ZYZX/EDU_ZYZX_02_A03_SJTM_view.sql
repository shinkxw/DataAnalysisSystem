
--�Ծ���Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_02_A03_SJTM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KCKID]--�γ̿�ID
      ,a.[ZSDID]--֪ʶ��ID
      ,a.[LXID]--����ID
      ,a.[TM]--��Ŀ
      ,a.[NDXS]--�Ѷ�ϵ��
      ,a.[FZ]--��ֵ
      ,a.[SHZT]--���״̬
      ,a.[SCRID]--�ϴ���ID
      ,a.[SCSJ]--�ϴ�ʱ��
      ,a.[SHRID]--�����ID
      ,a.[SHSJ]--���ʱ��
      ,c.SCHOOLID as c_KCK_SCHOOLID--�γ̿�� ѧУ
      ,c.KCDM as c_KCK_KCDM--�γ̿�� �γ̴���
      ,c.KCMC as c_KCK_KCMC--�γ̿�� �γ�����
      ,d.SCHOOLID as d_SJZSD_SCHOOLID--�Ծ�֪ʶ��� ѧУ
      ,d.KCKID as d_SJZSD_KCKID--�Ծ�֪ʶ��� �γ̿�ID
      ,d.ZSDMC as d_SJZSD_ZSDMC--�Ծ�֪ʶ��� ֪ʶ������
      ,e.SCHOOLID as e_SJLX_SCHOOLID--�������ͱ� ѧУ
      ,e.LXMC as e_SJLX_LXMC--�������ͱ� ��������
      ,f.SCHOOLID as f_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
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
      ,g.SCHOOLID as g_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,g.APPID as g_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
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

FROM dbo.EDU_ZYZX_02_A03_SJTM AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_03_A01_KCK AS c ON a.KCKID = c.ID /*�γ̿�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZYZX_02_A02_SJZSD AS d ON a.ZSDID = d.ID /*֪ʶ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZYZX_02_A01_SJLX AS e ON a.LXID = e.ID /*����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.SCRID = f.LOGINNAME /*�ϴ���ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.SHRID = g.LOGINNAME /*�����ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/
GO
