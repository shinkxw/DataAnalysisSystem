
--��ʦ���ͼ�¼��
CREATE VIEW [dbo].[VIEW_EDU_ZWXT_01_A02_JSDCJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[CPID]--��ƷID
      ,a.[DCSJ]--����ʱ��
      ,a.[DCRID]--������ID
      ,a.[SDSL]--��������
      ,c.SCHOOLID as c_JSDCCP_SCHOOLID--��ʦ���Ͳ�Ʒ�� ѧУ
      ,c.MC as c_JSDCCP_MC--��ʦ���Ͳ�Ʒ�� ����
      ,c.JG as c_JSDCCP_JG--��ʦ���Ͳ�Ʒ�� �۸�
      ,c.ZL as c_JSDCCP_ZL--��ʦ���Ͳ�Ʒ�� ����
      ,c.TP as c_JSDCCP_TP--��ʦ���Ͳ�Ʒ�� ͼƬ
      ,c.JS as c_JSDCCP_JS--��ʦ���Ͳ�Ʒ�� ����
      ,c.GYSL as c_JSDCCP_GYSL--��ʦ���Ͳ�Ʒ�� ��Ӧ����
      ,c.SFKQ as c_JSDCCP_SFKQ--��ʦ���Ͳ�Ʒ�� �Ƿ���
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

FROM dbo.EDU_ZWXT_01_A02_JSDCJL AS a LEFT OUTER JOIN
      dbo.EDU_ZWXT_01_A01_JSDCCP AS c ON a.CPID = c.ID /*��ƷID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.DCRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
