
--���޵���Ϣ��
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_10_FXDXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[FXDH]--���޵���
      ,a.[CJYHID]--�����û�
      ,a.[CJSJ]--����ʱ��
      ,a.[FXSJ]--����ʱ��
      ,a.[QRSJ]--ȷ��ʱ��
      ,a.[ZT]--״̬
      ,b.SCHOOLID as b_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,b.APPID as b_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,b.PWD as b_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,b.STATUS as b_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,b.USERTYPE as b_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,b.USERID as b_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,b.ROLEIDLst as b_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,b.XM as b_USER_XM--Ӧ��ϵͳ�û��� ����
      ,b.XB as b_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,b.QQ as b_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,b.DZYJ as b_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,b.LXDH as b_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,b.ZJDLSJ as b_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,b.DLCGCS as b_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,b.YHCJSJ as b_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,b.YHRY as b_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,b.YHJF as b_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,b.BMID as b_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_ZDGL_10_FXDXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS b ON a.CJYHID = b.LOGINNAME /*�����û�*/
GO
