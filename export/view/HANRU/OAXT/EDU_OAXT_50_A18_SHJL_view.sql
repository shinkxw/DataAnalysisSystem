
--��˼�¼��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A18_SHJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XMID]--��ĿID
      ,a.[SHJDID]--��˽ڵ�ID
      ,a.[DFJGID]--��ֽ��ID
      ,a.[SHJG]--��˽��
      ,a.[SHYHID]--����û�ID
      ,a.[SHSJ]--���ʱ��
      ,a.[BZ]--��ע
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
      ,d.DFDXJDMCLB as d_DFJD_DFDXJDMCLB--��ֽڵ�� ��ֶ���ڵ������б�
      ,d.DFJSLBMCLB as d_DFJD_DFJSLBMCLB--��ֽڵ�� ��ֽ�ɫ��������б�
      ,d.SHJSLBMCLB as d_DFJD_SHJSLBMCLB--��ֽڵ�� ��˽�ɫ��������б�
      ,d.DFDXCJMC as d_DFJD_DFDXCJMC--��ֽڵ�� ��ֶ���㼶����
      ,d.CKJSLBIDLB as d_DFJD_CKJSLBIDLB--��ֽڵ�� �鿴��ɫ���ID�б�
      ,d.CKJSLBMCLB as d_DFJD_CKJSLBMCLB--��ֽڵ�� �鿴��ɫ��������б�
      ,e.SCHOOLID as e_DFJG_SCHOOLID--��ֽ���� ѧУID
      ,e.XMID as e_DFJG_XMID--��ֽ���� ��ĿID
      ,e.DFDLID as e_DFJG_DFDLID--��ֽ���� ��ִ���ID
      ,e.DFJDID as e_DFJG_DFJDID--��ֽ���� ��ֽڵ�ID
      ,e.DFPCID as e_DFJG_DFPCID--��ֽ���� �������ID
      ,e.XQID as e_DFJG_XQID--��ֽ���� ѧ��ID
      ,e.BDFDXBM as e_DFJG_BDFDXBM--��ֽ���� ����ֶ������
      ,e.BDFDXMC as e_DFJG_BDFDXMC--��ֽ���� ����ֶ�������
      ,e.DFXXID as e_DFJG_DFXXID--��ֽ���� ���ѡ��ID
      ,e.WBZ as e_DFJG_WBZ--��ֽ���� �ı�ֵ
      ,e.FZ as e_DFJG_FZ--��ֽ���� ��ֵ
      ,e.DFYHID as e_DFJG_DFYHID--��ֽ���� ����û�ID
      ,e.CKSJ as e_DFJG_CKSJ--��ֽ���� �ο�ʱ��
      ,e.TJSJ as e_DFJG_TJSJ--��ֽ���� ���ʱ��
      ,e.SHZT as e_DFJG_SHZT--��ֽ���� ���״̬
      ,e.SHJLID as e_DFJG_SHJLID--��ֽ���� ��˼�¼ID
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

FROM dbo.EDU_OAXT_50_A18_SHJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*��ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS d ON a.SHJDID = d.ID /*��˽ڵ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ AND a.XMID = d.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A15_DFJG AS e ON a.DFJGID = e.ID /*��ֽ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ AND a.XMID = e.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.SHYHID = f.LOGINNAME /*����û�ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/
GO
