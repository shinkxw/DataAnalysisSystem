
--�ļ������������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_06_01_WJJQ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WJID]--�ļ�ID
      ,a.[JYSPRID]--����������ID
      ,a.[JYJBRID]--���ľ�����ID
      ,a.[JYR]--������
      ,a.[JYRQ]--��������
      ,a.[JYSPRGH]--���������˹���
      ,a.[JYJBRGH]--���ľ����˹���
      ,a.[JYYY]--����ԭ��
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

FROM dbo.EDU_OAXT_06_01_WJJQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JYSPRID = d.LOGINNAME /*����������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JYJBRID = e.LOGINNAME /*���ľ�����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/
GO
