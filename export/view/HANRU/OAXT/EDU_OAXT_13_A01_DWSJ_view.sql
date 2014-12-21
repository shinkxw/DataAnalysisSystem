
--��λ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_13_A01_DWSJ_DISP]
AS
SELECT a.[ID]--��λID
      ,a.[SCHOOLID]--ѧУID
      ,a.[SJDWID]--�ϼ���λID
      ,a.[DWFZRID]--��λ������ID
      ,a.[DWMC]--��λ����
      ,a.[DWCYIDLB]--��λ��ԱID�б�
      ,c.SCHOOLID as c_DWSJ_SCHOOLID--��λ���ݱ� ѧУID
      ,c.SJDWID as c_DWSJ_SJDWID--��λ���ݱ� �ϼ���λID
      ,c.DWFZRID as c_DWSJ_DWFZRID--��λ���ݱ� ��λ������ID
      ,c.DWMC as c_DWSJ_DWMC--��λ���ݱ� ��λ����
      ,c.DWCYIDLB as c_DWSJ_DWCYIDLB--��λ���ݱ� ��λ��ԱID�б�
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

FROM dbo.EDU_OAXT_13_A01_DWSJ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_13_A01_DWSJ AS c ON a.SJDWID = c.ID /*�ϼ���λID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.DWFZRID = d.LOGINNAME /*��λ������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/
GO
