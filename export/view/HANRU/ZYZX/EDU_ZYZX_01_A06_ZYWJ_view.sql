
--��Դ�ļ�
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A06_ZYWJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ZYMLID]--��ԴĿ¼
      ,a.[ZYBT]--��Դ����
      ,a.[SYDX]--���ö���
      ,a.[GJZ]--�ؼ���
      ,a.[JJ]--���
      ,a.[ZYLX]--��Դ����
      ,a.[SYXZ]--ʹ������
      ,a.[LY]--��Դ
      ,a.[YYZID]--ӵ����ID
      ,a.[ZYMC]--��Դ����
      ,a.[ZYDX]--��Դ��С
      ,a.[ZYLJ]--��Դ·��
      ,a.[WJLXID]--�ļ�����
      ,a.[ZYPJ]--��Դ����
      ,a.[SLT]--����ͼ
      ,a.[SCSJ]--�ϴ�ʱ��
      ,a.[LLRC]--����˴�
      ,a.[XZRC]--�����˴�
      ,a.[PLRC]--�����˴�
      ,a.[PFRC]--�����˴�
      ,a.[ZYZT]--��Դ״̬
      ,a.[SHZT]--���״̬
      ,a.[SHRID]--�����ID
      ,a.[SHSJ]--���ʱ��
      ,a.[ZYDXKB]--��Դ��С(KB)
      ,c.SCHOOLID as c_ZYML_SCHOOLID--��ԴĿ¼ ѧУ
      ,c.MLMC as c_ZYML_MLMC--��ԴĿ¼ Ŀ¼����
      ,c.FMLID as c_ZYML_FMLID--��ԴĿ¼ ��Ŀ¼ID
      ,c.PLSX as c_ZYML_PLSX--��ԴĿ¼ ����˳��
      ,c.SFSYZS as c_ZYML_SFSYZS--��ԴĿ¼ �Ƿ���ҳչʾ
      ,c.SFQY as c_ZYML_SFQY--��ԴĿ¼ �Ƿ�����
      ,c.URL as c_ZYML_URL--��ԴĿ¼ ��ַ
      ,c.FMLIDLB as c_ZYML_FMLIDLB--��ԴĿ¼ ��Ŀ¼ID�б�
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,'' as d_USER_PWD--Ӧ��ϵͳ�û��� ����
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
      ,e.SCHOOLID as e_WJLX_SCHOOLID--�ļ����� ѧУ
      ,e.LXMC as e_WJLX_LXMC--�ļ����� ��������
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

FROM dbo.EDU_ZYZX_01_A06_ZYWJ AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A01_ZYML AS c ON a.ZYMLID = c.ID /*��ԴĿ¼*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YYZID = d.LOGINNAME /*ӵ����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A03_WJLX AS e ON a.WJLXID = e.ID /*�ļ�����*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.SHRID = f.LOGINNAME /*�����ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/
GO
