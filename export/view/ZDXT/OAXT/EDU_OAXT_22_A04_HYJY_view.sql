
--�����Ҫ��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_22_A04_HYJY_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[HYID]--����ID
      ,a.[HYJYNR]--�����Ҫ����
      ,a.[JLRID]--��¼��
      ,a.[JLSJ]--��¼ʱ��
      ,c.SCHOOLID as c_HYSQ_SCHOOLID--��������� ѧУ
      ,c.LCSLID as c_HYSQ_LCSLID--��������� ����ʵ��ID
      ,c.HYMC as c_HYSQ_HYMC--��������� ��������
      ,c.HYNR as c_HYSQ_HYNR--��������� ��������
      ,c.ZCRID as c_HYSQ_ZCRID--��������� ������
      ,c.JLRID as c_HYSQ_JLRID--��������� ��¼��
      ,c.HYJB as c_HYSQ_HYJB--��������� ���鼶��
      ,c.HYDDID as c_HYSQ_HYDDID--��������� ����ص�ID
      ,c.HYDZ as c_HYSQ_HYDZ--��������� �����ַ
      ,c.YHRYIDLB as c_HYSQ_YHRYIDLB--��������� �����ԱID�б�
      ,c.YHRYXMLB as c_HYSQ_YHRYXMLB--��������� �����Ա�����б�
      ,c.KSSJ as c_HYSQ_KSSJ--��������� ��ʼʱ��
      ,c.JSSJ as c_HYSQ_JSSJ--��������� ����ʱ��
      ,c.SQSJ as c_HYSQ_SQSJ--��������� ����ʱ��
      ,c.SQZT as c_HYSQ_SQZT--��������� ����״̬
      ,c.SQRID as c_HYSQ_SQRID--��������� ������ID
      ,c.BZ as c_HYSQ_BZ--��������� ��ע
      ,c.FJ as c_HYSQ_FJ--��������� ����
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
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_22_A04_HYJY AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_22_A02_HYSQ AS c ON a.HYID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JLRID = d.LOGINNAME /*��¼��*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
