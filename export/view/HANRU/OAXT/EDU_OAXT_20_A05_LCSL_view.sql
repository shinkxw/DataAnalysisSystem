
--����ʵ����
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A05_LCSL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[LCMBID]--����ģ��ID
      ,a.[SQRID]--������ID
      ,a.[SPRID]--������ID
      ,a.[SQSJ]--����ʱ��
      ,a.[DQBZID]--��ǰ����ID
      ,a.[DQBZZXZT]--��ǰ����ִ��״̬
      ,a.[YXQ]--��Ч��
      ,a.[SLZT]--ʵ��״̬
      ,a.[FJ]--����
      ,a.[BZ]--��ע
      ,a.[LXID]--����ID
      ,a.[LXMC]--��������
      ,c.SCHOOLID as c_LCMB_SCHOOLID--����ģ��� ѧУ
      ,c.MBLXID as c_LCMB_MBLXID--����ģ��� ģ������ID
      ,c.MBMC as c_LCMB_MBMC--����ģ��� ģ������
      ,c.BDID as c_LCMB_BDID--����ģ��� ��ID
      ,c.QSBZID as c_LCMB_QSBZID--����ģ��� ��ʼ����ID
      ,c.JSBZID as c_LCMB_JSBZID--����ģ��� ��������ID
      ,c.TJSJ as c_LCMB_TJSJ--����ģ��� ���ʱ��
      ,c.BZ as c_LCMB_BZ--����ģ��� ��ע
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
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
      ,f.SCHOOLID as f_LCBZ_SCHOOLID--���̲���� ѧУ
      ,f.BZMC as f_LCBZ_BZMC--���̲���� ��������
      ,f.LCMBID as f_LCBZ_LCMBID--���̲���� ����ģ��ID
      ,f.SPRIDLB as f_LCBZ_SPRIDLB--���̲���� ������ID�б�
      ,f.SPRMCLB as f_LCBZ_SPRMCLB--���̲���� �����������б�
      ,f.SYBZID as f_LCBZ_SYBZID--���̲���� ��һ����ID
      ,f.XYBZID as f_LCBZ_XYBZID--���̲���� ��һ����ID
      ,f.BZ as f_LCBZ_BZ--���̲���� ��ע

FROM dbo.EDU_OAXT_20_A05_LCSL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A03_LCMB AS c ON a.LCMBID = c.ID /*����ģ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SQRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SPRID = e.LOGINNAME /*������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS f ON a.DQBZID = f.ID /*��ǰ����ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/
GO
