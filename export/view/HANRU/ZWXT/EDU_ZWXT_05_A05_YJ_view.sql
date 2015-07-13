
--�ƽ���
CREATE VIEW [dbo].[VIEW_EDU_ZWXT_05_A05_YJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XCID]--У��ID
      ,a.[SQYHID]--�����û�ID
      ,a.[JSYHID]--�����û�ID
      ,a.[SHYHID]--����û�ID
      ,a.[SQSJ]--����ʱ��
      ,a.[SHSJ]--���ʱ��
      ,a.[JSSJ]--����ʱ��
      ,a.[YJZT]--�ƽ�״̬
      ,c.SCHOOLID as c_XC_SCHOOLID--У���� ѧУID
      ,c.XCLXID as c_XC_XCLXID--У���� У������ID
      ,c.XCMLID as c_XC_XCMLID--У���� У��Ŀ¼ID
      ,c.DQBGYHID as c_XC_DQBGYHID--У���� ��ǰ�����û�ID
      ,c.MC as c_XC_MC--У���� ����
      ,c.GG as c_XC_GG--У���� ���
      ,c.DJ as c_XC_DJ--У���� ����
      ,c.SL as c_XC_SL--У���� ����
      ,c.DW as c_XC_DW--У���� ��λ
      ,c.SCRQ as c_XC_SCRQ--У���� ��������
      ,c.RKSJ as c_XC_RKSJ--У���� ���ʱ��
      ,c.SCCJ as c_XC_SCCJ--У���� ��������
      ,c.DQZT as c_XC_DQZT--У���� ��ǰ״̬
      ,c.BZ as c_XC_BZ--У���� ��ע
      ,c.XCBH as c_XC_XCBH--У���� У�����
      ,c.CFDD as c_XC_CFDD--У���� ��ŵص�
      ,c.ZXRQ as c_XC_ZXRQ--У���� ע������
      ,c.BYL as c_XC_BYL--У���� ������
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
      ,f.SCHOOLID as f_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,'' as f_USER_PWD--Ӧ��ϵͳ�û��� ����
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
      ,f.YHRY as f_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,f.YHJF as f_USER_YHJF--Ӧ��ϵͳ�û��� �û�����

FROM dbo.EDU_ZWXT_05_A05_YJ AS a LEFT OUTER JOIN
      dbo.EDU_ZWXT_05_A03_XC AS c ON a.XCID = c.ID /*У��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SQYHID = d.LOGINNAME /*�����û�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JSYHID = e.LOGINNAME /*�����û�ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.SHYHID = f.LOGINNAME /*����û�ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/
GO
