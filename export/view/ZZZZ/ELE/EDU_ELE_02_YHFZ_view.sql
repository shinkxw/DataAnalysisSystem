
--�û������
CREATE VIEW [dbo].[VIEW_EDU_ELE_02_YHFZ_DISP]
AS
SELECT a.[ID]--����ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[APPID]--Ӧ��ID
      ,a.[YHID]--�û�ID
      ,a.[SJFZID]--�ϼ�����ID
      ,a.[FZMC]--��������
      ,a.[FZYHID]--�����û�ID�б�
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_APP_SCHOOLID--ѧУID
      ,c.NAME as c_APP_NAME--Ӧ������
      ,c.URL as c_APP_URL--��ַ
      ,c.AUTHIP as c_APP_AUTHIP--����IP
      ,c.SM as c_APP_SM--˵��
      ,c.DLFS as c_APP_DLFS--��¼��ʽ
      ,c.STATUS as c_APP_STATUS--Ӧ��״̬
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
      ,e.SCHOOLID as e_YHFZ_SCHOOLID--ѧУID
      ,e.APPID as e_YHFZ_APPID--Ӧ��ID
      ,e.YHID as e_YHFZ_YHID--�û�ID
      ,e.SJFZID as e_YHFZ_SJFZID--�ϼ�����ID
      ,e.FZMC as e_YHFZ_FZMC--��������
      ,e.FZYHID as e_YHFZ_FZYHID--�����û�ID�б�

FROM dbo.EDU_ELE_02_YHFZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*Ӧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YHID = d.LOGINNAME /*�û�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_02_YHFZ AS e ON a.SJFZID = e.ID /*�ϼ�����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ AND a.APPID = e.APPID /*Ӧ��ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/
GO
