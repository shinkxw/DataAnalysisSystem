
--��Դ�ļ�����
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A07_ZYWJPJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ZYWJID]--��Դ�ļ�ID
      ,a.[PF]--����
      ,a.[PL]--����
      ,a.[PJRID]--������ID
      ,a.[PJSJ]--����ʱ��
      ,c.SCHOOLID as c_ZYWJ_SCHOOLID--��Դ�ļ� ѧУ
      ,c.ZYFLID as c_ZYWJ_ZYFLID--��Դ�ļ� ��Դ����
      ,c.ZYMLID as c_ZYWJ_ZYMLID--��Դ�ļ� ��ԴĿ¼
      ,c.ZYBT as c_ZYWJ_ZYBT--��Դ�ļ� ��Դ����
      ,c.BZ as c_ZYWJ_BZ--��Դ�ļ� ��ע
      ,c.GJZ as c_ZYWJ_GJZ--��Դ�ļ� �ؼ���
      ,c.YYZID as c_ZYWJ_YYZID--��Դ�ļ� ӵ����ID
      ,c.ZYLLLX as c_ZYWJ_ZYLLLX--��Դ�ļ� ��Դ�������
      ,c.WJLXID as c_ZYWJ_WJLXID--��Դ�ļ� �ļ�����
      ,c.ZYNR as c_ZYWJ_ZYNR--��Դ�ļ� ��Դ����
      ,c.FJMC as c_ZYWJ_FJMC--��Դ�ļ� ��������
      ,c.FJDX as c_ZYWJ_FJDX--��Դ�ļ� ������С
      ,c.FJLJ as c_ZYWJ_FJLJ--��Դ�ļ� ����·��
      ,c.ZYZT as c_ZYWJ_ZYZT--��Դ�ļ� ��Դ״̬
      ,c.ZYPJ as c_ZYWJ_ZYPJ--��Դ�ļ� ��Դ����
      ,c.SCSJ as c_ZYWJ_SCSJ--��Դ�ļ� �ϴ�ʱ��
      ,c.SYNJ as c_ZYWJ_SYNJ--��Դ�ļ� �����꼶
      ,c.SYXK as c_ZYWJ_SYXK--��Դ�ļ� ����ѧ��
      ,c.LLRC as c_ZYWJ_LLRC--��Դ�ļ� ����˴�
      ,c.SHZT as c_ZYWJ_SHZT--��Դ�ļ� ���״̬
      ,c.SHRID as c_ZYWJ_SHRID--��Դ�ļ� �����ID
      ,c.SHSJ as c_ZYWJ_SHSJ--��Դ�ļ� ���ʱ��
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

FROM dbo.EDU_ZYZX_01_A07_ZYWJPJ AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A06_ZYWJ AS c ON a.ZYWJID = c.ID /*��Դ�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.PJRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
