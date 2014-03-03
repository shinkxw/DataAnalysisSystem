
--�ʲ��̵���ϸ��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A12_ZCPDMX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[AID]--����ID
      ,a.[PID]--�̵��ID
      ,a.[PUserID]--�̵���ID
      ,a.[Storesum]--�����
      ,a.[RealSum]--ʵ����
      ,a.[Name]--�ʲ�����
      ,a.[AllCount]--�ʲ�����
      ,a.[Remark]--��ע
      ,a.[BorrowCount]--��������
      ,c.SCHOOLID as c_ZCKC_SCHOOLID--�ʲ����� ѧУ
      ,c.TypeID as c_ZCKC_TypeID--�ʲ����� �ʲ�Ŀ¼��ID
      ,c.ClassID as c_ZCKC_ClassID--�ʲ����� �ʲ������ID
      ,c.Name as c_ZCKC_Name--�ʲ����� �ʲ�����
      ,c.Info as c_ZCKC_Info--�ʲ����� �ʲ����
      ,c.Productdate as c_ZCKC_Productdate--�ʲ����� ����ʱ��
      ,c.Price as c_ZCKC_Price--�ʲ����� ����
      ,c.SumCount as c_ZCKC_SumCount--�ʲ����� ����
      ,c.Merchant as c_ZCKC_Merchant--�ʲ����� ��Ӧ��
      ,c.Vender as c_ZCKC_Vender--�ʲ����� ����
      ,c.Remark as c_ZCKC_Remark--�ʲ����� ��ע
      ,c.AllCount as c_ZCKC_AllCount--�ʲ����� �ʲ�����
      ,c.RKL as c_ZCKC_RKL--�ʲ����� �����
      ,d.SCHOOLID as d_ZCPD_SCHOOLID--�ʲ��̵�� ѧУ
      ,d.Title as d_ZCPD_Title--�ʲ��̵�� �̵�����
      ,d.PanDate as d_ZCPD_PanDate--�ʲ��̵�� �̵�����
      ,d.PanTypeIDs as d_ZCPD_PanTypeIDs--�ʲ��̵�� �̵�Ŀ¼ID�б�
      ,d.Remark as d_ZCPD_Remark--�ʲ��̵�� ��ע
      ,d.Statu as d_ZCPD_Statu--�ʲ��̵�� ״̬
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
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

FROM dbo.EDU_OAXT_15_A12_ZCPDMX AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A11_ZCPD AS d ON a.PID = d.ID /*�̵��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.PUserID = e.LOGINNAME /*�̵���ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/
GO
