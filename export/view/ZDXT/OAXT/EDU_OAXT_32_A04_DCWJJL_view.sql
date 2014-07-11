
--�ʾ�����¼��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_32_A04_DCWJJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[YHID]--�û�ID
      ,a.[WJID]--�����ʾ�ID
      ,a.[TMID]--������ĿID
      ,a.[XXID]--ѡ��ID
      ,a.[XXFZ]--ѡ���ֵ
      ,a.[TJZT]--�ύ״̬
      ,c.SCHOOLID as c_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,c.PWD as c_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,c.STATUS as c_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,c.USERID as c_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,c.XM as c_USER_XM--Ӧ��ϵͳ�û��� ����
      ,c.XB as c_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,c.QQ as c_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,c.DZYJ as c_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,c.LXDH as c_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,c.YHRY as c_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,c.YHJF as c_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,c.BMID as c_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,d.SCHOOLID as d_DCWJ_SCHOOLID--�����ʾ����ݱ� ѧУ
      ,d.Title as d_DCWJ_Title--�����ʾ����ݱ� �ʾ�����
      ,d.Users as d_DCWJ_Users--�����ʾ����ݱ� ��ѡ��Ա
      ,d.StartTime as d_DCWJ_StartTime--�����ʾ����ݱ� ��ʼʱ��
      ,d.EndTime as d_DCWJ_EndTime--�����ʾ����ݱ� ����ʱ��
      ,d.IsStart as d_DCWJ_IsStart--�����ʾ����ݱ� �Ƿ���
      ,d.JJ as d_DCWJ_JJ--�����ʾ����ݱ� ���
      ,e.SCHOOLID as e_DCWJTM_SCHOOLID--�����ʾ���Ŀ�� ѧУ
      ,e.WJID as e_DCWJTM_WJID--�����ʾ���Ŀ�� �����ʾ�
      ,e.TypeID as e_DCWJTM_TypeID--�����ʾ���Ŀ�� ��Ŀ����
      ,e.Title as e_DCWJTM_Title--�����ʾ���Ŀ�� ��Ŀ
      ,e.SSDL as e_DCWJTM_SSDL--�����ʾ���Ŀ�� ��������
      ,f.SCHOOLID as f_DCWJTMXX_SCHOOLID--�ʾ���Ŀѡ��� ѧУ
      ,f.TMID as f_DCWJTMXX_TMID--�ʾ���Ŀѡ��� ������Ŀ
      ,f.WJID as f_DCWJTMXX_WJID--�ʾ���Ŀѡ��� �����ʾ�
      ,f.SelectItem as f_DCWJTMXX_SelectItem--�ʾ���Ŀѡ��� ѡ��
      ,f.XXFZ as f_DCWJTMXX_XXFZ--�ʾ���Ŀѡ��� ѡ���ֵ

FROM dbo.EDU_OAXT_32_A04_DCWJJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*�û�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A01_DCWJ AS d ON a.WJID = d.ID /*�����ʾ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A02_DCWJTM AS e ON a.TMID = e.ID /*������ĿID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A03_DCWJTMXX AS f ON a.XXID = f.ID /*ѡ��ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/
GO
