
--ʵ���������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_26_A03_SYSSQ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[SYSID]--ʵ����ID
      ,a.[LCSLID]--����ʵ��ID
      ,a.[SYQC]--ʵ������
      ,a.[SYMC]--ʵ������
      ,a.[KM]--��Ŀ
      ,a.[BJ]--�༶
      ,a.[KSSJ]--��ʼʱ��
      ,a.[JSSJ]--����ʱ��
      ,a.[SQSJ]--����ʱ��
      ,a.[SQZT]--����״̬
      ,a.[SQRID]--������ID
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_SYSSJ_SCHOOLID--ʵ�������ݱ� ѧУ
      ,c.MC as c_SYSSJ_MC--ʵ�������ݱ� ����
      ,c.DD as c_SYSSJ_DD--ʵ�������ݱ� �ص�
      ,c.FZR as c_SYSSJ_FZR--ʵ�������ݱ� ������
      ,d.SCHOOLID as d_LCSL_SCHOOLID--����ʵ���� ѧУ
      ,d.LCMBID as d_LCSL_LCMBID--����ʵ���� ����ģ��ID
      ,d.SQRID as d_LCSL_SQRID--����ʵ���� ������ID
      ,d.SPRID as d_LCSL_SPRID--����ʵ���� ������ID
      ,d.SQSJ as d_LCSL_SQSJ--����ʵ���� ����ʱ��
      ,d.DQBZID as d_LCSL_DQBZID--����ʵ���� ��ǰ����ID
      ,d.DQBZZXZT as d_LCSL_DQBZZXZT--����ʵ���� ��ǰ����ִ��״̬
      ,d.YXQ as d_LCSL_YXQ--����ʵ���� ��Ч��
      ,d.SLZT as d_LCSL_SLZT--����ʵ���� ʵ��״̬
      ,d.FJ as d_LCSL_FJ--����ʵ���� ����
      ,d.BZ as d_LCSL_BZ--����ʵ���� ��ע
      ,d.LXID as d_LCSL_LXID--����ʵ���� ����ID
      ,d.LXMC as d_LCSL_LXMC--����ʵ���� ��������
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
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

FROM dbo.EDU_OAXT_26_A03_SYSSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_26_A01_SYSSJ AS c ON a.SYSID = c.ID /*ʵ����ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS d ON a.LCSLID = d.ID /*����ʵ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SQRID = e.LOGINNAME /*������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/
GO
