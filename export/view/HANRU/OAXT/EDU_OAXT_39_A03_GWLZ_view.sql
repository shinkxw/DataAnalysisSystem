
--������ת��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_39_A03_GWLZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[SWBID]--���ı�ID
      ,a.[XFRID]--�·���ID
      ,a.[JSRID]--������ID
      ,a.[XFSJ]--�·�ʱ��
      ,a.[QSZT]--ǩ��״̬
      ,a.[QSSJ]--ǩ��ʱ��
      ,a.[DXTZZT]--����֪ͨ״̬
      ,a.[CLZT]--����״̬
      ,a.[CLJG]--������
      ,a.[FJ]--����
      ,a.[SCZT]--ɾ��״̬
      ,a.[SHZT]--�ջ�״̬
      ,c.SCHOOLID as c_SWB_SCHOOLID--���ı� ѧУ
      ,c.LBID as c_SWB_LBID--���ı� ���ID
      ,c.LWDW as c_SWB_LWDW--���ı� ���ĵ�λ
      ,c.LWRQ as c_SWB_LWRQ--���ı� ��������
      ,c.LWWH as c_SWB_LWWH--���ı� �����ĺ�
      ,c.WJBT as c_SWB_WJBT--���ı� �ļ�����
      ,c.WJNR as c_SWB_WJNR--���ı� �ļ�����
      ,c.PSYJ as c_SWB_PSYJ--���ı� ��ʾ���
      ,c.SFSH as c_SWB_SFSH--���ı� �Ƿ��ջ�
      ,[cb].MC as c_SWB_SFSH_MC--�Ƿ��־����� ����
      ,c.XFWDLX as c_SWB_XFWDLX--���ı� �·��ĵ�����
      ,c.SBWH as c_SWB_SBWH--���ı� �ձ��ĺ�
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

FROM dbo.EDU_OAXT_39_A03_GWLZ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_39_A02_SWB AS c ON a.SWBID = c.ID /*���ı�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.XFRID = d.LOGINNAME /*�·���ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JSRID = e.LOGINNAME /*������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFSH = [cb].DM /*�Ƿ��ջ�*/
GO
