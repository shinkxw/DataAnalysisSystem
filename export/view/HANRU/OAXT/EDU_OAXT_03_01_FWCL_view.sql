
--���Ĵ��������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_03_01_FWCL_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WJID]--�ļ�ID
      ,a.[NGRID]--�����ID
      ,a.[QFRID]--ǩ����ID
      ,a.[DJRID]--�Ǽ���ID
      ,a.[DZRID]--������ID
      ,a.[JDRID]--У����ID
      ,a.[NGRGH]--����˹���
      ,a.[NGRQ]--�������
      ,a.[QFRGH]--ǩ���˹���
      ,a.[QFRQ]--ǩ������
      ,a.[FSFW]--���ͷ�Χ
      ,a.[FSFSM]--���ͷ�ʽ��
      ,a.[DJRGH]--�Ǽ��˹���
      ,a.[DJRQ]--�Ǽ�����
      ,a.[FWJS]--���ļ���
      ,a.[GWFWRQ]--���ķ�������
      ,a.[CLQK]--�������
      ,a.[DZRGH]--�����˹���
      ,a.[JDRGH]--У���˹���
      ,a.[FZFSM]--��װ��ʽ��
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
      ,f.SCHOOLID as f_USER_SCHOOLID--ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ID
      ,f.PWD as f_USER_PWD--����
      ,f.STATUS as f_USER_STATUS--�û�״̬
      ,f.USERTYPE as f_USER_USERTYPE--�û����
      ,f.USERID as f_USER_USERID--�û�ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--�û���ɫ
      ,f.XM as f_USER_XM--����
      ,f.XB as f_USER_XB--�Ա�
      ,f.QQ as f_USER_QQ--QQ
      ,f.DZYJ as f_USER_DZYJ--�����ʼ�
      ,f.LXDH as f_USER_LXDH--��ϵ�绰
      ,f.ZJDLSJ as f_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,f.DLCGCS as f_USER_DLCGCS--��¼�ɹ�����
      ,f.YHCJSJ as f_USER_YHCJSJ--�û�����ʱ��
      ,g.SCHOOLID as g_USER_SCHOOLID--ѧУID
      ,g.APPID as g_USER_APPID--Ӧ��ID
      ,g.PWD as g_USER_PWD--����
      ,g.STATUS as g_USER_STATUS--�û�״̬
      ,g.USERTYPE as g_USER_USERTYPE--�û����
      ,g.USERID as g_USER_USERID--�û�ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--�û���ɫ
      ,g.XM as g_USER_XM--����
      ,g.XB as g_USER_XB--�Ա�
      ,g.QQ as g_USER_QQ--QQ
      ,g.DZYJ as g_USER_DZYJ--�����ʼ�
      ,g.LXDH as g_USER_LXDH--��ϵ�绰
      ,g.ZJDLSJ as g_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,g.DLCGCS as g_USER_DLCGCS--��¼�ɹ�����
      ,g.YHCJSJ as g_USER_YHCJSJ--�û�����ʱ��
      ,h.SCHOOLID as h_USER_SCHOOLID--ѧУID
      ,h.APPID as h_USER_APPID--Ӧ��ID
      ,h.PWD as h_USER_PWD--����
      ,h.STATUS as h_USER_STATUS--�û�״̬
      ,h.USERTYPE as h_USER_USERTYPE--�û����
      ,h.USERID as h_USER_USERID--�û�ID
      ,h.ROLEIDLst as h_USER_ROLEIDLst--�û���ɫ
      ,h.XM as h_USER_XM--����
      ,h.XB as h_USER_XB--�Ա�
      ,h.QQ as h_USER_QQ--QQ
      ,h.DZYJ as h_USER_DZYJ--�����ʼ�
      ,h.LXDH as h_USER_LXDH--��ϵ�绰
      ,h.ZJDLSJ as h_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,h.DLCGCS as h_USER_DLCGCS--��¼�ɹ�����
      ,h.YHCJSJ as h_USER_YHCJSJ--�û�����ʱ��
      ,i.MC as i_FSFS_MC--����
      ,j.MC as j_GWFZFS_MC--����

FROM dbo.EDU_OAXT_03_01_FWCL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.NGRID = d.LOGINNAME /*�����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.QFRID = e.LOGINNAME /*ǩ����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.DJRID = f.LOGINNAME /*�Ǽ���ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.DZRID = g.LOGINNAME /*������ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS h ON a.JDRID = h.LOGINNAME /*У����ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_FSFS AS i ON a.FSFSM = i.DM /*���ͷ�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWFZFS AS j ON a.FZFSM = j.DM /*��װ��ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/
GO
