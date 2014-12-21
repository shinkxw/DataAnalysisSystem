
--����������
CREATE VIEW [dbo].[VIEW_EDU_ZYFZ_02_A06_GRRY_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[RYMC]--��������
      ,a.[RYJBID]--��������ID
      ,a.[SSXNID]--����ѧ��ID
      ,a.[SJDW]--�ڽ���λ
      ,a.[SJSJ]--�ڽ�ʱ��
      ,a.[HJRID]--����ID
      ,a.[NR]--����
      ,a.[BZ]--��ע
      ,a.[TJSJ]--���ʱ��
      ,a.[SHZT]--���״̬
      ,c.SCHOOLID as c_RYJB_SCHOOLID--��������� ѧУ
      ,c.RYJBMC as c_RYJB_RYJBMC--��������� ������������
      ,d.SCHOOLID as d_XN_SCHOOLID--ѧ��� ѧУ��
      ,d.XN as d_XN_XN--ѧ��� ѧ��
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

FROM dbo.EDU_ZYFZ_02_A06_GRRY AS a LEFT OUTER JOIN
      dbo.EDU_ZYFZ_01_A03_RYJB AS c ON a.RYJBID = c.ID /*��������ID*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS d ON a.SSXNID = d.ID /*����ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.HJRID = e.LOGINNAME /*����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/
GO
