
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
      ,a.[SFGK]--�Ƿ񹫿�
      ,a.[HJRID]--����ID
      ,a.[NR]--����
      ,a.[BZ]--��ע
      ,a.[TJSJ]--���ʱ��
      ,c.SCHOOLID as c_RYJB_SCHOOLID--��������� ѧУ
      ,c.RYJBMC as c_RYJB_RYJBMC--��������� ������������
      ,d.SCHOOLID as d_XN_SCHOOLID--ѧ��� ѧУ��
      ,d.XN as d_XN_XN--ѧ��� ѧ��
      ,e.MC as e_SFBZ_MC--�Ƿ��־����� ����
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
      ,f.YHRY as f_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,f.YHJF as f_USER_YHJF--Ӧ��ϵͳ�û��� �û�����

FROM dbo.EDU_ZYFZ_02_A06_GRRY AS a LEFT OUTER JOIN
      dbo.EDU_ZYFZ_01_A03_RYJB AS c ON a.RYJBID = c.ID /*��������ID*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS d ON a.SSXNID = d.ID /*����ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFGK = e.DM /*�Ƿ񹫿�*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.HJRID = f.LOGINNAME /*����ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/
GO
