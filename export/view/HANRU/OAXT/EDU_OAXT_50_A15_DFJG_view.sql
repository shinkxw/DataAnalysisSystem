
--��ֽ����
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A15_DFJG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XMID]--��ĿID
      ,a.[DFDLID]--��ִ���ID
      ,a.[DFJDID]--��ֽڵ�ID
      ,a.[DFPCID]--�������ID
      ,a.[XQID]--ѧ��ID
      ,a.[BDFDXBM]--����ֶ������
      ,a.[BDFDXMC]--����ֶ�������
      ,a.[DFXXID]--���ѡ��ID
      ,a.[WBZ]--�ı�ֵ
      ,a.[FZ]--��ֵ
      ,a.[DFYHID]--����û�ID
      ,a.[CKSJ]--�ο�ʱ��
      ,a.[TJSJ]--���ʱ��
      ,a.[SHZT]--���״̬
      ,a.[SHJLID]--��˼�¼ID
      ,a.[CKSJMC]--�ο�ʱ������
      ,c.SCHOOLID as c_DFXM_SCHOOLID--�����Ŀ�� ѧУID
      ,c.XMMC as c_DFXM_XMMC--�����Ŀ�� ��Ŀ����
      ,c.APPID as c_DFXM_APPID--�����Ŀ�� ����Ӧ��ID
      ,d.SCHOOLID as d_DFDL_SCHOOLID--��ִ���� ѧУID
      ,d.XMID as d_DFDL_XMID--��ִ���� ��ĿID
      ,d.GJDID as d_DFDL_GJDID--��ִ���� ���ڵ�ID
      ,d.DFDXZID as d_DFDL_DFDXZID--��ִ���� ��ֶ�����ID
      ,d.SFXYSH as d_DFDL_SFXYSH--��ִ���� �Ƿ���Ҫ���
      ,d.SHFS as d_DFDL_SHFS--��ִ���� ��˷�ʽ
      ,d.SFKQ as d_DFDL_SFKQ--��ִ���� �Ƿ���
      ,e.SCHOOLID as e_DFJD_SCHOOLID--��ֽڵ�� ѧУID
      ,e.XMID as e_DFJD_XMID--��ֽڵ�� ��ĿID
      ,e.DLID as e_DFJD_DLID--��ֽڵ�� ����ID
      ,e.FJDID as e_DFJD_FJDID--��ֽڵ�� ���ڵ�ID
      ,e.SFDFX as e_DFJD_SFDFX--��ֽڵ�� �Ƿ�����
      ,e.JDMC as e_DFJD_JDMC--��ֽڵ�� �ڵ�����
      ,e.SFJCSJSZ as e_DFJD_SFJCSJSZ--��ֽڵ�� �Ƿ�̳��ϼ�����
      ,e.DFDXJDBMJH as e_DFJD_DFDXJDBMJH--��ֽڵ�� ��ֶ���ڵ���뼯��
      ,e.DFJSLBIDLB as e_DFJD_DFJSLBIDLB--��ֽڵ�� ��ֽ�ɫ���ID�б�
      ,e.SHJSLBIDLB as e_DFJD_SHJSLBIDLB--��ֽڵ�� ��˽�ɫ���ID�б�
      ,e.DFFSID as e_DFJD_DFFSID--��ֽڵ�� ��ַ�ʽID
      ,e.DFDXCJ as e_DFJD_DFDXCJ--��ֽڵ�� ��ֶ���㼶
      ,e.DFPC as e_DFJD_DFPC--��ֽڵ�� ���Ƶ��
      ,e.DFZB as e_DFJD_DFZB--��ֽڵ�� ���ָ��
      ,e.DFDXJDMCLB as e_DFJD_DFDXJDMCLB--��ֽڵ�� ��ֶ���ڵ������б�
      ,e.DFJSLBMCLB as e_DFJD_DFJSLBMCLB--��ֽڵ�� ��ֽ�ɫ��������б�
      ,e.SHJSLBMCLB as e_DFJD_SHJSLBMCLB--��ֽڵ�� ��˽�ɫ��������б�
      ,e.DFDXCJMC as e_DFJD_DFDXCJMC--��ֽڵ�� ��ֶ���㼶����
      ,e.CKJSLBIDLB as e_DFJD_CKJSLBIDLB--��ֽڵ�� �鿴��ɫ���ID�б�
      ,e.CKJSLBMCLB as e_DFJD_CKJSLBMCLB--��ֽڵ�� �鿴��ɫ��������б�
      ,e.SFPLDF as e_DFJD_SFPLDF--��ֽڵ�� �Ƿ��������
      ,e.XQKBFDW as e_DFJD_XQKBFDW--��ֽڵ�� ��ǰ�ɲ��ֵ�λ
      ,e.XHYDFDW as e_DFJD_XHYDFDW--��ֽڵ�� ���Ԥ��ֵ�λ
      ,f.SCHOOLID as f_DFPC_SCHOOLID--������α� ѧУID
      ,f.XMID as f_DFPC_XMID--������α� ��ĿID
      ,f.DFDLID as f_DFPC_DFDLID--������α� ��ִ���ID
      ,f.DFJDID as f_DFPC_DFJDID--������α� ��ֽڵ�ID
      ,f.XQID as f_DFPC_XQID--������α� ѧ��ID
      ,f.DFPCMC as f_DFPC_DFPCMC--������α� �����������
      ,f.CKSJ as f_DFPC_CKSJ--������α� �ο�ʱ��
      ,f.TJSJ as f_DFPC_TJSJ--������α� ���ʱ��
      ,g.SCHOOLID as g_DFXX_SCHOOLID--���ѡ��� ѧУID
      ,g.XMID as g_DFXX_XMID--���ѡ��� ��ĿID
      ,g.DFFSID as g_DFXX_DFFSID--���ѡ��� ��ַ�ʽID
      ,g.XXMC as g_DFXX_XXMC--���ѡ��� ѡ������
      ,g.XXFZ as g_DFXX_XXFZ--���ѡ��� ѡ���ֵ
      ,g.PLSX as g_DFXX_PLSX--���ѡ��� ����˳��
      ,h.SCHOOLID as h_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,h.APPID as h_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,'' as h_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,h.STATUS as h_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,h.USERTYPE as h_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,h.USERID as h_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,h.ROLEIDLst as h_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,h.XM as h_USER_XM--Ӧ��ϵͳ�û��� ����
      ,h.XB as h_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,h.QQ as h_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,h.DZYJ as h_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,h.LXDH as h_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,h.ZJDLSJ as h_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,h.DLCGCS as h_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,h.YHCJSJ as h_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,h.YHRY as h_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,h.YHJF as h_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,i.SCHOOLID as i_SHJL_SCHOOLID--��˼�¼�� ѧУID
      ,i.XMID as i_SHJL_XMID--��˼�¼�� ��ĿID
      ,i.SHJDID as i_SHJL_SHJDID--��˼�¼�� ��˽ڵ�ID
      ,i.DFJGID as i_SHJL_DFJGID--��˼�¼�� ��ֽ��ID
      ,i.SHJG as i_SHJL_SHJG--��˼�¼�� ��˽��
      ,i.SHYHID as i_SHJL_SHYHID--��˼�¼�� ����û�ID
      ,i.SHSJ as i_SHJL_SHSJ--��˼�¼�� ���ʱ��
      ,i.BZ as i_SHJL_BZ--��˼�¼�� ��ע

FROM dbo.EDU_OAXT_50_A15_DFJG AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*��ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A11_DFDL AS d ON a.DFDLID = d.ID /*��ִ���ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ AND a.XMID = d.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS e ON a.DFJDID = e.ID /*��ֽڵ�ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ AND a.XMID = e.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A19_DFPC AS f ON a.DFPCID = f.ID /*�������ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ AND a.XMID = f.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A14_DFXX AS g ON a.DFXXID = g.ID /*���ѡ��ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ AND a.XMID = g.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS h ON a.DFYHID = h.LOGINNAME /*����û�ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A18_SHJL AS i ON a.SHJLID = i.ID /*��˼�¼ID*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУID*/ AND a.XMID = i.XMID /*��ĿID*/
GO
