
--֪ͨ�Ķ���¼
CREATE VIEW [dbo].[VIEW_EDU_OAXT_10_A02_TZYDJL_DISP]
AS
SELECT a.[ID]--֪ͨ�Ķ���¼ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[TZID]--֪ͨID
      ,a.[BTZRID]--��֪ͨ��ID
      ,a.[YDRQ]--�Ķ�����
      ,a.[SFYD]--�Ƿ����Ķ�
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.MenhuURL as b_SCHOOL_MenhuURL--ѧУ���ñ� �Ż�url
      ,b.MenhuWebid as b_SCHOOL_MenhuWebid--ѧУ���ñ� �Ż�webid
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--ѧУ���ñ� Ȩ���б�
      ,c.SCHOOLID as c_TZ_SCHOOLID--֪ͨ���ݱ� ѧУID
      ,c.FSRID as c_TZ_FSRID--֪ͨ���ݱ� ������ID
      ,c.FSRLB as c_TZ_FSRLB--֪ͨ���ݱ� ���������
      ,c.BT as c_TZ_BT--֪ͨ���ݱ� ����
      ,c.NR as c_TZ_NR--֪ͨ���ݱ� ����
      ,c.FJ as c_TZ_FJ--֪ͨ���ݱ� ����
      ,c.TJRQ as c_TZ_TJRQ--֪ͨ���ݱ� �������
      ,c.JSRS as c_TZ_JSRS--֪ͨ���ݱ� ��������
      ,c.JSRIDLB as c_TZ_JSRIDLB--֪ͨ���ݱ� ������ID�б�
      ,c.JSRMZLB as c_TZ_JSRMZLB--֪ͨ���ݱ� �����������б�
      ,c.YYDRIDLB as c_TZ_YYDRIDLB--֪ͨ���ݱ� ���Ķ���ID�б�
      ,c.YYDRMZLB as c_TZ_YYDRMZLB--֪ͨ���ݱ� ���Ķ��������б�
      ,c.FSZT as c_TZ_FSZT--֪ͨ���ݱ� ����״̬
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,e.MC as e_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_OAXT_10_A02_TZYDJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_10_A01_TZ AS c ON a.TZID = c.ID /*֪ͨID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.BTZRID = d.LOGINNAME /*��֪ͨ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFYD = e.DM /*�Ƿ����Ķ�*/
GO
