
--�ļ������������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_04_01_WJQT_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WJID]--�ļ�ID
      ,a.[JBRID]--������ID
      ,a.[QTRQ]--��������
      ,a.[QTFW]--���˷�Χ
      ,a.[QTSM]--����˵��
      ,a.[JBRGH]--�����˹���
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--ѧУ���ñ� Ȩ���б�
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--�ļ������������ ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ������������ �ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ������������ �ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--�ļ������������ ����
      ,c.ZTC as c_WJJBSJ_ZTC--�ļ������������ �����
      ,c.MJM as c_WJJBSJ_MJM--�ļ������������ �ܼ���
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
      ,c.ZW as c_WJJBSJ_ZW--�ļ������������ ����
      ,c.FJ as c_WJJBSJ_FJ--�ļ������������ ����
      ,c.FWRQ as c_WJJBSJ_FWRQ--�ļ������������ ��������
      ,c.CSDW as c_WJJBSJ_CSDW--�ļ������������ ���͵�λ
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

FROM dbo.EDU_OAXT_04_01_WJQT AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JBRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/
GO
