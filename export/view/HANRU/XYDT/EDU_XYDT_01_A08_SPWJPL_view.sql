
--��Ƶ�ļ�����
CREATE VIEW [dbo].[VIEW_EDU_XYDT_01_A08_SPWJPL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[SPWJID]--��Ƶ�ļ�ID
      ,a.[PL]--����
      ,a.[PLRID]--������ID
      ,a.[PLSJ]--����ʱ��
      ,c.SCHOOLID as c_SPWJ_SCHOOLID--��Ƶ�ļ� ѧУ
      ,c.SPMLID as c_SPWJ_SPMLID--��Ƶ�ļ� ��ƵĿ¼ID
      ,c.ZYBT as c_SPWJ_ZYBT--��Ƶ�ļ� ��Ƶ����
      ,c.GJZ as c_SPWJ_GJZ--��Ƶ�ļ� �ؼ���
      ,c.SYXZ as c_SPWJ_SYXZ--��Ƶ�ļ� ʹ������
      ,c.LY as c_SPWJ_LY--��Ƶ�ļ� ��Դ
      ,c.WBSPLJ as c_SPWJ_WBSPLJ--��Ƶ�ļ� �ⲿ��Ƶ����
      ,c.YYZID as c_SPWJ_YYZID--��Ƶ�ļ� ӵ����ID
      ,c.SPMC as c_SPWJ_SPMC--��Ƶ�ļ� ��Ƶ����
      ,c.SPDX as c_SPWJ_SPDX--��Ƶ�ļ� ��Ƶ��С
      ,c.SPLJ as c_SPWJ_SPLJ--��Ƶ�ļ� ��Ƶ·��
      ,c.SPLXID as c_SPWJ_SPLXID--��Ƶ�ļ� ��Ƶ����ID
      ,c.SPPJ as c_SPWJ_SPPJ--��Ƶ�ļ� ��Ƶ����
      ,c.SLT as c_SPWJ_SLT--��Ƶ�ļ� ����ͼ
      ,c.SCSJ as c_SPWJ_SCSJ--��Ƶ�ļ� �ϴ�ʱ��
      ,c.LLRC as c_SPWJ_LLRC--��Ƶ�ļ� ����˴�
      ,c.XZRC as c_SPWJ_XZRC--��Ƶ�ļ� �����˴�
      ,c.PLRC as c_SPWJ_PLRC--��Ƶ�ļ� �����˴�
      ,c.PFRC as c_SPWJ_PFRC--��Ƶ�ļ� �����˴�
      ,c.SHZT as c_SPWJ_SHZT--��Ƶ�ļ� ���״̬
      ,c.SHRID as c_SPWJ_SHRID--��Ƶ�ļ� �����ID
      ,c.SHSJ as c_SPWJ_SHSJ--��Ƶ�ļ� ���ʱ��
      ,c.ZYDXKB as c_SPWJ_ZYDXKB--��Ƶ�ļ� ��Դ��С(KB)
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

FROM dbo.EDU_XYDT_01_A08_SPWJPL AS a LEFT OUTER JOIN
      dbo.EDU_XYDT_01_A06_SPWJ AS c ON a.SPWJID = c.ID /*��Ƶ�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.PLRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
