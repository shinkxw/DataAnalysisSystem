
--���ı�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_33_A03_FW_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[GWID]--����ID
      ,a.[FZ]--��ע
      ,a.[SHRID]--�����ID
      ,a.[DXTZZT]--����֪ͨ״̬
      ,a.[SHPZ]--�����ע
      ,a.[GZID]--����ID
      ,a.[ZYCD]--��Ҫ�̶�
      ,a.[SFHF]--�Ƿ���Ҫ�ظ�
      ,a.[FSDW]--���͵�λ�����
      ,a.[FSZLY]--����������
      ,a.[FSRID]--������ID
      ,a.[BSZT]--����״̬
      ,a.[SHZT]--���״̬
      ,a.[FSZT]--����״̬
      ,a.[BJZT]--���״̬
      ,c.SCHOOLID as c_GWJCXX_SCHOOLID--���Ļ�����Ϣ�� ѧУ
      ,c.HTWZ as c_GWJCXX_HTWZ--���Ļ�����Ϣ�� ��ͷ����
      ,c.GWBT as c_GWJCXX_GWBT--���Ļ�����Ϣ�� ���ı���
      ,c.SJ as c_GWJCXX_SJ--���Ļ�����Ϣ�� ʱ��
      ,c.ZW as c_GWJCXX_ZW--���Ļ�����Ϣ�� ����
      ,c.BH as c_GWJCXX_BH--���Ļ�����Ϣ�� ���
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
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,e.SCHOOLID as e_GZ_SCHOOLID--������Ϣ�� ѧУ
      ,e.QZTPLJ as e_GZ_QZTPLJ--������Ϣ�� ǩ��ͼƬ·��
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

FROM dbo.EDU_OAXT_33_A03_FW AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_33_A01_GWJCXX AS c ON a.GWID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SHRID = d.LOGINNAME /*�����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_33_A02_GZ AS e ON a.GZID = e.ID /*����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.FSRID = f.LOGINNAME /*������ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/
GO
