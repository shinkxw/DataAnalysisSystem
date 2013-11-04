
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
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--ֵ���ܴα� ѧУID
      ,d.XQID as d_ZZZC_XQID--ֵ���ܴα� ѧ��ID
      ,d.ZCM as d_ZZZC_ZCM--ֵ���ܴα� �ܴ���
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--ֵ���ܴα� ��ʼ����
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--ֵ���ܴα� ��������
      ,e.SCHOOLID as e_BJ_SCHOOLID--�༶������� ѧУ��
      ,e.NJ as e_BJ_NJ--�༶������� �꼶��
      ,e.BJ as e_BJ_BJ--�༶������� �༶����
      ,e.JBNY as e_BJ_JBNY--�༶������� ��������
      ,e.BZRGH as e_BJ_BZRGH--�༶������� �����ι���
      ,e.BZXH as e_BJ_BZXH--�༶������� �೤ѧ��
      ,e.BJRYCH as e_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,e.XZ as e_BJ_XZ--�༶������� ѧ��
      ,e.BJLXM as e_BJ_BJLXM--�༶������� �༶������
      ,[eb].MC as e_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,e.WLLX as e_BJ_WLLX--�༶������� ��������
      ,e.BYRQ as e_BJ_BYRQ--�༶������� ��ҵ����
      ,e.SFSSMZSYJXB as e_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,[ec].MC as e_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,e.SYJXMSM as e_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,[ed].MC as e_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,[ed].SM as e_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,e.BZRID as e_BJ_BZRID--�༶������� ������ID
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

FROM dbo.EDU_ZXDY_04_A02_ZZRYAP AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*�ܴ�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS e ON a.ZZBJ = e.BH /*ֵ�ܰ༶���*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.ZZID = f.LOGINNAME /*�鳤ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [eb] ON e.BJLXM = [eb].DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ec] ON e.SFSSMZSYJXB = [ec].DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [ed] ON e.SYJXMSM = [ed].DM /*˫���ѧģʽ��*/
GO
