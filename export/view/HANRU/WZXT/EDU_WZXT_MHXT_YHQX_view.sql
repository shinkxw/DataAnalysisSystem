
--�û�Ȩ�ޱ�
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_YHQX_DISP]
AS
SELECT a.[ID]--Ȩ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[WEBID]--��վID
      ,a.[LOGINNAME]--�û���
      ,a.[LX]--����
      ,a.[JSIDLST]--��ɫID�б�
      ,a.[JSNAMELST]--��ɫ�����б�
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,c.URL as c_WZPZ_URL--��վ���� ������ַ
      ,c.YS as c_WZPZ_YS--��վ���� ҳ��
      ,c.YW as c_WZPZ_YW--��վ���� ҳβ
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

FROM dbo.EDU_WZXT_MHXT_YHQX AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.LOGINNAME = d.LOGINNAME /*�û���*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/
GO
