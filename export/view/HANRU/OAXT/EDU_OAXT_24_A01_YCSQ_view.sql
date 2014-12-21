
--�ó������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_24_A01_YCSQ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[LCSLID]--����ʵ��ID
      ,a.[YCYY]--�ó�ԭ��
      ,a.[WCRS]--�������
      ,a.[KSSJ]--��ʼʱ��
      ,a.[SYTS]--ʹ������
      ,a.[SQSJ]--����ʱ��
      ,a.[SQRID]--������ID
      ,a.[SQZT]--����״̬
      ,a.[BZ]--��ע
      ,a.[SQCLID]--���복��ID
      ,a.[JSSJ]--����ʱ��
      ,c.SCHOOLID as c_LCSL_SCHOOLID--����ʵ���� ѧУ
      ,c.LCMBID as c_LCSL_LCMBID--����ʵ���� ����ģ��ID
      ,c.SQRID as c_LCSL_SQRID--����ʵ���� ������ID
      ,c.SPRID as c_LCSL_SPRID--����ʵ���� ������ID
      ,c.SQSJ as c_LCSL_SQSJ--����ʵ���� ����ʱ��
      ,c.DQBZID as c_LCSL_DQBZID--����ʵ���� ��ǰ����ID
      ,c.DQBZZXZT as c_LCSL_DQBZZXZT--����ʵ���� ��ǰ����ִ��״̬
      ,c.YXQ as c_LCSL_YXQ--����ʵ���� ��Ч��
      ,c.SLZT as c_LCSL_SLZT--����ʵ���� ʵ��״̬
      ,c.FJ as c_LCSL_FJ--����ʵ���� ����
      ,c.BZ as c_LCSL_BZ--����ʵ���� ��ע
      ,c.LXID as c_LCSL_LXID--����ʵ���� ����ID
      ,c.LXMC as c_LCSL_LXMC--����ʵ���� ��������
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,'' as d_USER_PWD--Ӧ��ϵͳ�û��� ����
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
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,e.SCHOOLID as e_CLSJ_SCHOOLID--�������ݱ� ѧУ
      ,e.CLMC as e_CLSJ_CLMC--�������ݱ� ��������
      ,e.CLPP as e_CLSJ_CLPP--�������ݱ� ����Ʒ��
      ,e.CLCPH as e_CLSJ_CLCPH--�������ݱ� �������ƺ�
      ,e.ZDRNRS as e_CLSJ_ZDRNRS--�������ݱ� ����������
      ,e.CLZT as e_CLSJ_CLZT--�������ݱ� ����״̬
      ,e.BZ as e_CLSJ_BZ--�������ݱ� ��ע

FROM dbo.EDU_OAXT_24_A01_YCSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*����ʵ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SQRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_24_A03_CLSJ AS e ON a.SQCLID = e.ID /*���복��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/
GO
