
--��Դ�ļ�����
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A07_ZYWJXZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ZYWJID]--��Դ�ļ�ID
      ,a.[XZRID]--������ID
      ,a.[XZSJ]--����ʱ��
      ,c.SCHOOLID as c_ZYWJ_SCHOOLID--��Դ�ļ� ѧУ
      ,c.ZYMLID as c_ZYWJ_ZYMLID--��Դ�ļ� ��ԴĿ¼
      ,c.ZYBT as c_ZYWJ_ZYBT--��Դ�ļ� ��Դ����
      ,c.SYDX as c_ZYWJ_SYDX--��Դ�ļ� ���ö���
      ,c.GJZ as c_ZYWJ_GJZ--��Դ�ļ� �ؼ���
      ,c.JJ as c_ZYWJ_JJ--��Դ�ļ� ���
      ,c.ZYLX as c_ZYWJ_ZYLX--��Դ�ļ� ��Դ����
      ,c.SYXZ as c_ZYWJ_SYXZ--��Դ�ļ� ʹ������
      ,c.LY as c_ZYWJ_LY--��Դ�ļ� ��Դ
      ,c.YYZID as c_ZYWJ_YYZID--��Դ�ļ� ӵ����ID
      ,c.ZYMC as c_ZYWJ_ZYMC--��Դ�ļ� ��Դ����
      ,c.ZYDX as c_ZYWJ_ZYDX--��Դ�ļ� ��Դ��С
      ,c.ZYLJ as c_ZYWJ_ZYLJ--��Դ�ļ� ��Դ·��
      ,c.WJLXID as c_ZYWJ_WJLXID--��Դ�ļ� �ļ�����
      ,c.ZYPJ as c_ZYWJ_ZYPJ--��Դ�ļ� ��Դ����
      ,c.SLT as c_ZYWJ_SLT--��Դ�ļ� ����ͼ
      ,c.SCSJ as c_ZYWJ_SCSJ--��Դ�ļ� �ϴ�ʱ��
      ,c.LLRC as c_ZYWJ_LLRC--��Դ�ļ� ����˴�
      ,c.XZRC as c_ZYWJ_XZRC--��Դ�ļ� �����˴�
      ,c.PLRC as c_ZYWJ_PLRC--��Դ�ļ� �����˴�
      ,c.PFRC as c_ZYWJ_PFRC--��Դ�ļ� �����˴�
      ,c.ZYZT as c_ZYWJ_ZYZT--��Դ�ļ� ��Դ״̬
      ,c.SHZT as c_ZYWJ_SHZT--��Դ�ļ� ���״̬
      ,c.SHRID as c_ZYWJ_SHRID--��Դ�ļ� �����ID
      ,c.SHSJ as c_ZYWJ_SHSJ--��Դ�ļ� ���ʱ��
      ,c.ZYDXKB as c_ZYWJ_ZYDXKB--��Դ�ļ� ��Դ��С(KB)
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

FROM dbo.EDU_ZYZX_01_A07_ZYWJXZ AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A06_ZYWJ AS c ON a.ZYWJID = c.ID /*��Դ�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.XZRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
