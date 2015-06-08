
--�̵��굥��
CREATE VIEW [dbo].[VIEW_EDU_ZWXT_05_A07_PDXD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[PDID]--�̵�ID
      ,a.[XCID]--У��ID
      ,a.[XCSL]--У������
      ,a.[PDSS]--�̵�ʵ��
      ,a.[BZ]--��ע
      ,a.[BGYHID]--�����û�ID
      ,c.SCHOOLID as c_PD_SCHOOLID--�̵�� ѧУID
      ,c.PDMC as c_PD_PDMC--�̵�� �̵�����
      ,c.KSSJ as c_PD_KSSJ--�̵�� ��ʼʱ��
      ,c.JSSJ as c_PD_JSSJ--�̵�� ����ʱ��
      ,c.BZ as c_PD_BZ--�̵�� ��ע
      ,d.SCHOOLID as d_XC_SCHOOLID--У���� ѧУID
      ,d.XCLXID as d_XC_XCLXID--У���� У������ID
      ,d.XCMLID as d_XC_XCMLID--У���� У��Ŀ¼ID
      ,d.DQBGYHID as d_XC_DQBGYHID--У���� ��ǰ�����û�ID
      ,d.MC as d_XC_MC--У���� ����
      ,d.GG as d_XC_GG--У���� ���
      ,d.DJ as d_XC_DJ--У���� ����
      ,d.SL as d_XC_SL--У���� ����
      ,d.DW as d_XC_DW--У���� ��λ
      ,d.SCRQ as d_XC_SCRQ--У���� ��������
      ,d.RKSJ as d_XC_RKSJ--У���� ���ʱ��
      ,d.SCCJ as d_XC_SCCJ--У���� ��������
      ,d.DQZT as d_XC_DQZT--У���� ��ǰ״̬
      ,d.BZ as d_XC_BZ--У���� ��ע
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

FROM dbo.EDU_ZWXT_05_A07_PDXD AS a LEFT OUTER JOIN
      dbo.EDU_ZWXT_05_A06_PD AS c ON a.PDID = c.ID /*�̵�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZWXT_05_A03_XC AS d ON a.XCID = d.ID /*У��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.BGYHID = e.LOGINNAME /*�����û�ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/
GO
