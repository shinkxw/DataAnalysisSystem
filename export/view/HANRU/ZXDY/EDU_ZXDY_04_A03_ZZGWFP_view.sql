
--ֵ�ܸ�λ�����
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A03_ZZGWFP_DISP]
AS
SELECT a.[ID]--ֵ�ܸ�λ�����ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[ZCID]--�ܴ�ID
      ,a.[GZR]--������
      ,a.[GWID]--��λID
      ,a.[JSID]--��ʦID
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
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--ѧУID
      ,d.XQID as d_ZZZC_XQID--ѧ��ID
      ,d.ZCM as d_ZZZC_ZCM--�ܴ���
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--��ʼ����
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--��������
      ,e.SCHOOLID as e_ZZGW_SCHOOLID--ѧУID
      ,e.XQID as e_ZZGW_XQID--ѧ��ID
      ,e.GWGZNR as e_ZZGW_GWGZNR--��λ��������
      ,f.SCHOOLID as f_USER_SCHOOLID--ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ID
      ,f.PWD as f_USER_PWD--����
      ,f.STATUS as f_USER_STATUS--�û�״̬
      ,f.USERTYPE as f_USER_USERTYPE--�û����
      ,f.USERID as f_USER_USERID--�û�ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--�û���ɫ
      ,f.XM as f_USER_XM--����
      ,f.XB as f_USER_XB--�Ա�
      ,f.QQ as f_USER_QQ--QQ
      ,f.DZYJ as f_USER_DZYJ--�����ʼ�
      ,f.LXDH as f_USER_LXDH--��ϵ�绰
      ,f.ZJDLSJ as f_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,f.DLCGCS as f_USER_DLCGCS--��¼�ɹ�����
      ,f.YHCJSJ as f_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_ZXDY_04_A03_ZZGWFP AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*�ܴ�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A01_ZZGW AS e ON a.GWID = e.ID /*��λID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.JSID = f.LOGINNAME /*��ʦID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/
GO
