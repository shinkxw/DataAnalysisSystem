
--��ԴĿ¼
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A02_ZYML_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[MLMC]--Ŀ¼����
      ,a.[FMLID]--��Ŀ¼ID
      ,a.[PLSX]--����˳��
      ,a.[YYZID]--ӵ����ID
      ,a.[WJLXIDLB]--�ϴ��ļ�����ID�б�
      ,a.[FWQX]--����Ȩ��
      ,c.SCHOOLID as c_ZYML_SCHOOLID--��ԴĿ¼ ѧУ
      ,c.MLMC as c_ZYML_MLMC--��ԴĿ¼ Ŀ¼����
      ,c.FMLID as c_ZYML_FMLID--��ԴĿ¼ ��Ŀ¼ID
      ,c.PLSX as c_ZYML_PLSX--��ԴĿ¼ ����˳��
      ,c.YYZID as c_ZYML_YYZID--��ԴĿ¼ ӵ����ID
      ,c.WJLXIDLB as c_ZYML_WJLXIDLB--��ԴĿ¼ �ϴ��ļ�����ID�б�
      ,c.FWQX as c_ZYML_FWQX--��ԴĿ¼ ����Ȩ��
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

FROM dbo.EDU_ZYZX_01_A02_ZYML AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A02_ZYML AS c ON a.FMLID = c.ID /*��Ŀ¼ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YYZID = d.LOGINNAME /*ӵ����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
