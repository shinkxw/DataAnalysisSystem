
--ֵ����Ա���ű�
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A02_ZZRYAP_DISP]
AS
SELECT a.[ID]--ֵ����Ա���ű�ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[ZCID]--�ܴ�ID
      ,a.[KSRQ]--��ʼ����
      ,a.[JSRQ]--��������
      ,a.[ZZBJ]--ֵ�ܰ༶���
      ,a.[ZZID]--�鳤ID
      ,a.[ZYIDLB]--��ԱID�б�
      ,a.[ZYMCLB]--��Ա�����б�
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
      ,e.SCHOOLID as e_BJ_SCHOOLID--ѧУ��
      ,e.NJ as e_BJ_NJ--�꼶��
      ,e.BJ as e_BJ_BJ--�༶����
      ,e.JBNY as e_BJ_JBNY--��������
      ,e.BZRGH as e_BJ_BZRGH--�����ι���
      ,e.BZXH as e_BJ_BZXH--�೤ѧ��
      ,e.BJRYCH as e_BJ_BJRYCH--�༶�����ƺ�
      ,e.XZ as e_BJ_XZ--ѧ��
      ,e.BJLXM as e_BJ_BJLXM--�༶������
      ,eb.MC as e_BJ_BJLXM_MC--����
      ,e.WLLX as e_BJ_WLLX--��������
      ,e.BYRQ as e_BJ_BYRQ--��ҵ����
      ,e.SFSSMZSYJXB as e_BJ_SFSSMZSYJXB--�Ƿ���������˫���ѧ��
      ,ec.MC as e_BJ_SFSSMZSYJXB_MC--����
      ,e.SYJXMSM as e_BJ_SYJXMSM--˫���ѧģʽ��
      ,ed.MC as e_BJ_SYJXMSM_MC--����
      ,ed.SM as e_BJ_SYJXMSM_SM--˵��
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

FROM dbo.EDU_ZXDY_04_A02_ZZRYAP AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*�ܴ�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS e ON a.ZZBJ = e.BH /*ֵ�ܰ༶���*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.ZZID = f.LOGINNAME /*�鳤ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS eb ON e.BJLXM = eb.DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ec ON e.SFSSMZSYJXB = ec.DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS ed ON e.SYJXMSM = ed.DM /*˫���ѧģʽ��*/
GO
