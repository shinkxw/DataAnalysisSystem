
--��������
CREATE VIEW [dbo].[VIEW_EDU_KTGL_05_A01_KTNR_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KTJBID]--���⼶��ID
      ,a.[KTMC]--��������
      ,a.[KTFZRID]--���⸺����
      ,a.[KTFZRQQ]--���⸺����QQ
      ,a.[KTFZRDH]--���⸺���˵绰
      ,a.[CYRYMD]--������Ա����
      ,a.[YJFA]--�о�����
      ,a.[YJCG]--�о��ɹ�
      ,a.[JTBG]--���ⱨ��
      ,c.SCHOOLID as c_KTJB_SCHOOLID--���⼶�� ѧУ
      ,c.JBMC as c_KTJB_JBMC--���⼶�� ��������
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

FROM dbo.EDU_KTGL_05_A01_KTNR AS a LEFT OUTER JOIN
      dbo.EDU_KTGL_01_A03_KTJB AS c ON a.KTJBID = c.ID /*���⼶��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.KTFZRID = d.LOGINNAME /*���⸺����*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
