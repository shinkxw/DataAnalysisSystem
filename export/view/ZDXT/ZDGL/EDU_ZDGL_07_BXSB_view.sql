
--�����豸��
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_07_BXSB_DISP]
AS
SELECT a.[ID]--���
      ,a.[SBXHID]--�豸�ͺ�ID
      ,a.[SXDWID]--���޵�λID
      ,a.[SXDWMC]--���޵�λ����
      ,a.[SNM]--S/N��
      ,a.[SCRQ]--��������
      ,a.[SBLXMC]--�豸��������
      ,a.[SCCJMC]--������������
      ,a.[SBXHMC]--�豸�ͺ�����
      ,a.[BXZT]--����״̬
      ,a.[BXHTID]--���޺�ͬID
      ,a.[SBZT]--�豸״̬
      ,a.[WXZT]--ά��״̬
      ,a.[RKSJ]--���ʱ��
      ,a.[RKCZYHID]--�������û�
      ,a.[FXM]--������
      ,a.[WXJSSJ]--ά�޽���ʱ��
      ,a.[WXJSDJYHID]--ά�޽����Ǽ��û�
      ,b.SBLXID as b_SBXH_SBLXID--�豸�ͺ����ñ� �豸����ID
      ,b.SCCJID as b_SBXH_SCCJID--�豸�ͺ����ñ� ��������ID
      ,b.XHMC as b_SBXH_XHMC--�豸�ͺ����ñ� �ͺ�����
      ,b.WLMS as b_SBXH_WLMS--�豸�ͺ����ñ� ��������
      ,b.XHMCPY as b_SBXH_XHMCPY--�豸�ͺ����ñ� �ͺ�����ƴ��
      ,c.QHM as c_SXDW_QHM--���޵�λ��Ϣ�� ������
      ,[cb].MC as c_SXDW_QHM_MC--�л����񹲺͹������������� ����
      ,c.SSSJQHM as c_SXDW_SSSJQHM--���޵�λ��Ϣ�� �����м�������
      ,c.DWMC as c_SXDW_DWMC--���޵�λ��Ϣ�� ��λ����
      ,c.DWMCPY as c_SXDW_DWMCPY--���޵�λ��Ϣ�� ��λ����ƴ��
      ,d.HTMC as d_BXHT_HTMC--���޺�ͬ�� ��ͬ����
      ,d.WXSX as d_BXHT_WXSX--���޺�ͬ�� ά��ʱ��
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
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,e.BMID as e_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,f.SCHOOLID as f_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,f.PWD as f_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,f.STATUS as f_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,f.USERTYPE as f_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,f.USERID as f_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,f.XM as f_USER_XM--Ӧ��ϵͳ�û��� ����
      ,f.XB as f_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,f.QQ as f_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,f.DZYJ as f_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,f.LXDH as f_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,f.ZJDLSJ as f_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,f.DLCGCS as f_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,f.YHCJSJ as f_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,f.YHRY as f_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,f.YHJF as f_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,f.BMID as f_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_ZDGL_07_BXSB AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_03_SBXH AS b ON a.SBXHID = b.ID /*�豸�ͺ�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_04_SXDW AS c ON a.SXDWID = c.ID /*���޵�λID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_05_BXHT AS d ON a.BXHTID = d.ID /*���޺�ͬID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.RKCZYHID = e.LOGINNAME /*�������û�*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.WXJSDJYHID = f.LOGINNAME /*ά�޽����Ǽ��û�*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cb] ON c.QHM = [cb].DM /*������*/
GO
