
--�����ļ�
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_04_A03_ZLWJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ZYMLID]--��ԴĿ¼ID
      ,a.[BT]--����
      ,a.[SCSJ]--�ϴ�ʱ��
      ,a.[JJ]--���
      ,a.[WJM]--�ļ���
      ,a.[SCYHID]--�ϴ��û�ID
      ,a.[ZLWJDX]--�����ļ���С
      ,a.[ZLWJDXKB]--�����ļ���С(KB)
      ,c.SCHOOLID as c_ZLWJML_SCHOOLID--�����ļ�Ŀ¼ ѧУ
      ,c.MLMC as c_ZLWJML_MLMC--�����ļ�Ŀ¼ Ŀ¼����
      ,c.FMLID as c_ZLWJML_FMLID--�����ļ�Ŀ¼ ��Ŀ¼ID
      ,c.PLSX as c_ZLWJML_PLSX--�����ļ�Ŀ¼ ����˳��
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
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����

FROM dbo.EDU_ZYZX_04_A03_ZLWJ AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_04_A01_ZLWJML AS c ON a.ZYMLID = c.ID /*��ԴĿ¼ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SCYHID = d.LOGINNAME /*�ϴ��û�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
