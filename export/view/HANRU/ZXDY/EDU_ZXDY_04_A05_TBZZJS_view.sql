
--�ر�ֵ�ܽ�ʦ��
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A05_TBZZJS_DISP]
AS
SELECT a.[ID]--�ر�ֵ�ܽ�ʦ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[JSLX]--��ʦ����
      ,a.[JSID]--��ʦID
      ,a.[YXRQ]--��Ч����
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ��
      ,c.XQM as c_XQ_XQM--ѧ����
      ,cb.MC as c_XQ_XQM_MC--����
      ,c.XQMC as c_XQ_XQMC--ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�ڽ�������
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

FROM dbo.EDU_ZXDY_04_A05_TBZZJS AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JSID = d.LOGINNAME /*��ʦID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/
GO
