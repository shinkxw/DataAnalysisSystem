
--����ʵϰ�Ż�����
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_23_A04_DGSXMHWZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[LMID]--��ĿID
      ,a.[BT]--����
      ,a.[FBR]--������
      ,a.[ZZ]--����
      ,a.[ZZBM]--���߲���
      ,a.[FBSJ]--����ʱ��
      ,a.[ZY]--ժҪ
      ,a.[NR]--����
      ,a.[TP]--ͼƬ
      ,a.[DJL]--�����
      ,a.[SHZT]--���״̬
      ,a.[SHRID]--�����ID
      ,a.[SHR]--�����
      ,a.[SHSJ]--���ʱ��
      ,a.[ZDYXJ]--�ö����ȼ�
      ,c.SCHOOLID as c_DGSXMHLM_SCHOOLID--����ʵϰ�Ż���Ŀ ѧУ
      ,c.LMMC as c_DGSXMHLM_LMMC--����ʵϰ�Ż���Ŀ ��Ŀ����
      ,c.LMLJ as c_DGSXMHLM_LMLJ--����ʵϰ�Ż���Ŀ ��Ŀ����
      ,c.CJ as c_DGSXMHLM_CJ--����ʵϰ�Ż���Ŀ �㼶
      ,c.FLMID as c_DGSXMHLM_FLMID--����ʵϰ�Ż���Ŀ ����ĿID
      ,c.SFQY as c_DGSXMHLM_SFQY--����ʵϰ�Ż���Ŀ �Ƿ�����
      ,c.PLSX as c_DGSXMHLM_PLSX--����ʵϰ�Ż���Ŀ ����˳��
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

FROM dbo.EDU_ZZJX_23_A04_DGSXMHWZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_23_A03_DGSXMHLM AS c ON a.LMID = c.ID /*��ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SHRID = d.LOGINNAME /*�����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
