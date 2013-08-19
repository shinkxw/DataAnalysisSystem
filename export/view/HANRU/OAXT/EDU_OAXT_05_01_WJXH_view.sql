
--�ļ������������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_05_01_WJXH_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WJID]--�ļ�ID
      ,a.[XHSPRID]--����������ID
      ,a.[JBRID]--������ID
      ,a.[XHRQ]--��������
      ,a.[XHSPRGH]--���������˹���
      ,a.[XHSM]--����˵��
      ,a.[JBRGH]--�����˹���
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--����
      ,c.ZTC as c_WJJBSJ_ZTC--�����
      ,c.MJM as c_WJJBSJ_MJM--�ܼ���
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--����
      ,c.YS as c_WJJBSJ_YS--ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--˵��
      ,c.ZW as c_WJJBSJ_ZW--����
      ,c.FJ as c_WJJBSJ_FJ--����
      ,c.FWRQ as c_WJJBSJ_FWRQ--��������
      ,c.CSDW as c_WJJBSJ_CSDW--���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��
      ,e.SCHOOLID as e_USER_SCHOOLID--ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ID
      ,e.PWD as e_USER_PWD--����
      ,e.STATUS as e_USER_STATUS--�û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--�û����
      ,e.USERID as e_USER_USERID--�û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--�û���ɫ
      ,e.XM as e_USER_XM--����
      ,e.XB as e_USER_XB--�Ա�
      ,e.QQ as e_USER_QQ--QQ
      ,e.DZYJ as e_USER_DZYJ--�����ʼ�
      ,e.LXDH as e_USER_LXDH--��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_OAXT_05_01_WJXH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.XHSPRID = d.LOGINNAME /*����������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JBRID = e.LOGINNAME /*������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/
GO
