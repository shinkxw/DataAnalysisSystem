
--Ӧ��ϵͳ�û���
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_USER_DISP]
AS
SELECT a.[LOGINNAME]--�û���
      ,a.[SCHOOLID]--ѧУID
      ,a.[APPID]--Ӧ��ID
      ,a.[PWD]--����
      ,a.[STATUS]--�û�״̬
      ,a.[USERTYPE]--�û����
      ,a.[USERID]--�û�ID
      ,a.[ROLEIDLst]--�û���ɫ
      ,a.[XM]--����
      ,a.[XB]--�Ա�
      ,a.[QQ]--QQ
      ,a.[DZYJ]--�����ʼ�
      ,a.[LXDH]--��ϵ�绰
      ,a.[ZJDLSJ]--���һ�ε�¼ʱ��
      ,a.[DLCGCS]--��¼�ɹ�����
      ,a.[YHCJSJ]--�û�����ʱ��
      ,a.[YHRY]--�û�����
      ,a.[YHJF]--�û�����
      ,a.[BMID]--����ID
      ,c.SCHOOLID as c_APP_SCHOOLID--Ӧ�ñ� ѧУID
      ,c.NAME as c_APP_NAME--Ӧ�ñ� Ӧ������
      ,c.URL as c_APP_URL--Ӧ�ñ� ��ַ
      ,c.AUTHIP as c_APP_AUTHIP--Ӧ�ñ� ����IP
      ,c.SM as c_APP_SM--Ӧ�ñ� ˵��
      ,c.DLFS as c_APP_DLFS--Ӧ�ñ� ��¼��ʽ
      ,c.STATUS as c_APP_STATUS--Ӧ�ñ� Ӧ��״̬
      ,c.TYPE as c_APP_TYPE--Ӧ�ñ� Ӧ�����
      ,c.DLCSLB as c_APP_DLCSLB--Ӧ�ñ� ��¼�����б�
      ,c.MNDLJS as c_APP_MNDLJS--Ӧ�ñ� ģ���¼JS
      ,c.SYDX as c_APP_SYDX--Ӧ�ñ� ʹ�ö���
      ,c.KJDX as c_APP_KJDX--Ӧ�ñ� �ɼ�����
      ,d.BMMC as d_BM_BMMC--������Ϣ�� ��������
      ,d.SXDWLB as d_BM_SXDWLB--������Ϣ�� ���޵�λ�б�
      ,d.SXDWMCLB as d_BM_SXDWMCLB--������Ϣ�� ���޵�λ�����б�

FROM dbo.EDU_ELE_01_USER AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*Ӧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_06_BM AS d ON a.BMID = d.ID /*����ID*/
GO
