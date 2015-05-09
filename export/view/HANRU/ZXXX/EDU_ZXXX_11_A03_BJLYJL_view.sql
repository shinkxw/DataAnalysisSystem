
--�༶���ü�¼��
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_11_A03_BJLYJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[BJID]--�༶ID
      ,a.[ZCID]--�ʲ�ID
      ,a.[LYR]--������
      ,a.[LYSL]--��������
      ,a.[LYSJ]--����ʱ��
      ,a.[SHZT]--���״̬
      ,a.[SHYHID]--����û�ID
      ,c.SCHOOLID as c_BJ_SCHOOLID--�༶������� ѧУ��
      ,c.NJ as c_BJ_NJ--�༶������� �꼶��
      ,c.BJ as c_BJ_BJ--�༶������� �༶����
      ,c.JBNY as c_BJ_JBNY--�༶������� ��������
      ,c.BZRGH as c_BJ_BZRGH--�༶������� �����ι���
      ,c.BZXH as c_BJ_BZXH--�༶������� �೤ѧ��
      ,c.BJRYCH as c_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,c.XZ as c_BJ_XZ--�༶������� ѧ��
      ,c.BJLXM as c_BJ_BJLXM--�༶������� �༶������
      ,[cb].MC as c_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,c.WLLX as c_BJ_WLLX--�༶������� ��������
      ,c.BYRQ as c_BJ_BYRQ--�༶������� ��ҵ����
      ,c.SFSSMZSYJXB as c_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,[cc].MC as c_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,c.SYJXMSM as c_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,[cd].MC as c_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,[cd].SM as c_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,c.BZRID as c_BJ_BZRID--�༶������� ������ID
      ,c.ZT as c_BJ_ZT--�༶������� ״̬
      ,c.PLSX as c_BJ_PLSX--�༶������� ����˳��
      ,c.BJLBID as c_BJ_BJLBID--�༶������� �༶���ID
      ,d.SCHOOLID as d_RKJL_SCHOOLID--����¼�� ѧУ
      ,d.ZCM as d_RKJL_ZCM--����¼�� �ʲ���
      ,d.SL as d_RKJL_SL--����¼�� ����
      ,d.DJ as d_RKJL_DJ--����¼�� ����
      ,d.RKSJ as d_RKJL_RKSJ--����¼�� ���ʱ��
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,'' as e_USER_PWD--Ӧ��ϵͳ�û��� ����
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
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����

FROM dbo.EDU_ZXXX_11_A03_BJLYJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS c ON a.BJID = c.BH /*�༶ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_11_A01_RKJL AS d ON a.ZCID = d.ID /*�ʲ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SHYHID = e.LOGINNAME /*����û�ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [cb] ON c.BJLXM = [cb].DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFSSMZSYJXB = [cc].DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [cd] ON c.SYJXMSM = [cd].DM /*˫���ѧģʽ��*/
GO
