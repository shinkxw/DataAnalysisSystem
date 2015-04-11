
--��ֽ����
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A15_DFJG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XMID]--��ĿID
      ,a.[DFJDID]--��ֽڵ�ID
      ,a.[DFXXID]--���ѡ��ID
      ,a.[WBZ]--�ı�ֵ
      ,a.[FZ]--��ֵ
      ,a.[DFYHID]--����û�ID
      ,a.[DFSJ]--���ʱ��
      ,c.SCHOOLID as c_DFXM_SCHOOLID--�����Ŀ�� ѧУID
      ,c.XMMC as c_DFXM_XMMC--�����Ŀ�� ��Ŀ����
      ,c.APPID as c_DFXM_APPID--�����Ŀ�� ����Ӧ��ID
      ,d.SCHOOLID as d_DFJD_SCHOOLID--��ֽڵ�� ѧУID
      ,d.XMID as d_DFJD_XMID--��ֽڵ�� ��ĿID
      ,d.DLID as d_DFJD_DLID--��ֽڵ�� ����ID
      ,d.FJDID as d_DFJD_FJDID--��ֽڵ�� ���ڵ�ID
      ,d.SFDFX as d_DFJD_SFDFX--��ֽڵ�� �Ƿ�����
      ,d.JDMC as d_DFJD_JDMC--��ֽڵ�� �ڵ�����
      ,d.SFJCSJSZ as d_DFJD_SFJCSJSZ--��ֽڵ�� �Ƿ�̳��ϼ�����
      ,d.DFDXJDBMJH as d_DFJD_DFDXJDBMJH--��ֽڵ�� ��ֶ���ڵ���뼯��
      ,d.DFJSLBIDLB as d_DFJD_DFJSLBIDLB--��ֽڵ�� ��ֽ�ɫ���ID�б�
      ,d.SHJSLBIDLB as d_DFJD_SHJSLBIDLB--��ֽڵ�� ��˽�ɫ���ID�б�
      ,d.DFFSID as d_DFJD_DFFSID--��ֽڵ�� ��ַ�ʽID
      ,d.DFDXCJ as d_DFJD_DFDXCJ--��ֽڵ�� ��ֶ���㼶
      ,d.DFPC as d_DFJD_DFPC--��ֽڵ�� ���Ƶ��
      ,d.DFZB as d_DFJD_DFZB--��ֽڵ�� ���ָ��
      ,e.SCHOOLID as e_DFXX_SCHOOLID--���ѡ��� ѧУID
      ,e.XMID as e_DFXX_XMID--���ѡ��� ��ĿID
      ,e.DFFSID as e_DFXX_DFFSID--���ѡ��� ��ַ�ʽID
      ,e.XXMC as e_DFXX_XXMC--���ѡ��� ѡ������
      ,e.XXFZ as e_DFXX_XXFZ--���ѡ��� ѡ���ֵ
      ,e.PLSX as e_DFXX_PLSX--���ѡ��� ����˳��
      ,f.SCHOOLID as f_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,'' as f_USER_PWD--Ӧ��ϵͳ�û��� ����
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

FROM dbo.EDU_OAXT_50_A15_DFJG AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*��ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS d ON a.DFJDID = d.ID /*��ֽڵ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ AND a.XMID = d.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A14_DFXX AS e ON a.DFXXID = e.ID /*���ѡ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ AND a.XMID = e.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.DFYHID = f.LOGINNAME /*����û�ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/
GO
