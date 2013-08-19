
--�ʼ����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_11_A01_YJ_DISP]
AS
SELECT a.[ID]--�ʼ�ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[YYZID]--ӵ����ID
      ,a.[FSRID]--������ID
      ,a.[JSRID]--������ID
      ,a.[FSRMC]--����������
      ,a.[JSRMC]--����������
      ,a.[JSRIDLB]--������ID�б�
      ,a.[JSRMCLB]--�����������б�
      ,a.[BT]--����
      ,a.[NR]--����
      ,a.[FJ]--����
      ,a.[FSSJ]--����ʱ��
      ,a.[SFYD]--�Ƿ����Ķ�
      ,a.[YJLX]--�ʼ�����
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_USER_SCHOOLID--ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ID
      ,c.PWD as c_USER_PWD--����
      ,c.STATUS as c_USER_STATUS--�û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--�û����
      ,c.USERID as c_USER_USERID--�û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--�û���ɫ
      ,c.XM as c_USER_XM--����
      ,c.XB as c_USER_XB--�Ա�
      ,c.QQ as c_USER_QQ--QQ
      ,c.DZYJ as c_USER_DZYJ--�����ʼ�
      ,c.LXDH as c_USER_LXDH--��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--�û�����ʱ��
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��
      ,e.SCHOOLID as e_USER_SCHOOLID--ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ID
      ,e.PWD as e_USER_PWD--����
      ,e.STATUS as e_USER_STATUS--�û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--�û����
      ,e.USERID as e_USER_USERID--�û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--�û���ɫ
      ,e.XM as e_USER_XM--����
      ,e.XB as e_USER_XB--�Ա�
      ,e.QQ as e_USER_QQ--QQ
      ,e.DZYJ as e_USER_DZYJ--�����ʼ�
      ,e.LXDH as e_USER_LXDH--��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--�û�����ʱ��
      ,f.MC as f_SFBZ_MC--����

FROM dbo.EDU_OAXT_11_A01_YJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YYZID = c.LOGINNAME /*ӵ����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.FSRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JSRID = e.LOGINNAME /*������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFYD = f.DM /*�Ƿ����Ķ�*/
GO
