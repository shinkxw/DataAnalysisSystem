
--У����
CREATE VIEW [dbo].[VIEW_EDU_ZWXT_05_A03_XC_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XCLXID]--У������ID
      ,a.[XCMLID]--У��Ŀ¼ID
      ,a.[DQBGYHID]--��ǰ�����û�ID
      ,a.[MC]--����
      ,a.[GG]--���
      ,a.[DJ]--����
      ,a.[SL]--����
      ,a.[DW]--��λ
      ,a.[SCRQ]--��������
      ,a.[RKSJ]--���ʱ��
      ,a.[SCCJ]--��������
      ,a.[DQZT]--��ǰ״̬
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_XCLX_SCHOOLID--У�����ͱ� ѧУID
      ,c.LXMC as c_XCLX_LXMC--У�����ͱ� ��������
      ,d.SCHOOLID as d_XCML_SCHOOLID--У��Ŀ¼�� ѧУID
      ,d.MLMC as d_XCML_MLMC--У��Ŀ¼�� Ŀ¼����
      ,d.FMLID as d_XCML_FMLID--У��Ŀ¼�� ��Ŀ¼ID
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,'' as e_USER_PWD--Ӧ��ϵͳ�û��� ����
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

FROM dbo.EDU_ZWXT_05_A03_XC AS a LEFT OUTER JOIN
      dbo.EDU_ZWXT_05_A01_XCLX AS c ON a.XCLXID = c.ID /*У������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZWXT_05_A02_XCML AS d ON a.XCMLID = d.ID /*У��Ŀ¼ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.DQBGYHID = e.LOGINNAME /*��ǰ�����û�ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/
GO
