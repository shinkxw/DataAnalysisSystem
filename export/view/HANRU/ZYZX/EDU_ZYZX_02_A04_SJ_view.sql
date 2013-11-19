
--�Ծ��
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_02_A04_SJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KCH]--�γ�ID
      ,a.[SYFF]--���÷�Χ
      ,a.[SJMC]--�Ծ�����
      ,a.[NDXS]--�Ѷ�ϵ��
      ,a.[FZ]--��ֵ
      ,a.[NR]--����
      ,a.[SHZT]--���״̬
      ,a.[SCRID]--�ϴ���ID
      ,a.[SCSJ]--�ϴ�ʱ��
      ,a.[SHRID]--�����ID
      ,a.[SHSJ]--���ʱ��
      ,c.SCHOOLID as c_KC_SCHOOLID--�γ���������� ѧУID
      ,c.KCMC as c_KC_KCMC--�γ���������� �γ�����
      ,c.KCYWM as c_KC_KCYWM--�γ���������� �γ�Ӣ����
      ,c.KCBM as c_KC_KCBM--�γ���������� �γ̱���
      ,c.KCJS as c_KC_KCJS--�γ���������� �γ̽���
      ,c.XF as c_KC_XF--�γ���������� ѧ��
      ,c.ZXS as c_KC_ZXS--�γ���������� ��ѧʱ
      ,c.LLXS as c_KC_LLXS--�γ���������� ����ѧʱ
      ,c.SJXS as c_KC_SJXS--�γ���������� ʵ��ѧʱ
      ,c.QTXS as c_KC_QTXS--�γ���������� ����ѧʱ
      ,c.CKSM as c_KC_CKSM--�γ���������� �ο���Ŀ
      ,c.KKDW as c_KC_KKDW--�γ���������� ���ε�λ
      ,c.KSXS as c_KC_KSXS--�γ���������� ������ʽ
      ,[cb].MC as c_KC_KSXS_MC--������ʽ����� ����
      ,c.SKFSM as c_KC_SKFSM--�γ���������� �ڿη�ʽ��
      ,[cc].MC as c_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,c.KCFY as c_KC_KCFY--�γ���������� �γ̷���
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
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
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

FROM dbo.EDU_ZYZX_02_A04_SJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS c ON a.KCH = c.KCH /*�γ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SCRID = d.LOGINNAME /*�ϴ���ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SHRID = e.LOGINNAME /*�����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [cb] ON c.KSXS = [cb].DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [cc] ON c.SKFSM = [cc].DM /*�ڿη�ʽ��*/
GO
