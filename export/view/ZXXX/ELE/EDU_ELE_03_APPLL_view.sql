
--Ӧ��������
CREATE VIEW [dbo].[VIEW_EDU_ELE_03_APPLL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[APPID]--Ӧ��ID
      ,a.[YHID]--�����û�
      ,a.[CZSJ]--����ʱ��
      ,a.[CZYY]--����Ӧ��
      ,a.[CZBM]--��������
      ,a.[CZXX]--������Ϣ
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_USER_SCHOOLID--ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ID
      ,c.PWD as c_USER_PWD--����
      ,c.STATUS as c_USER_STATUS--�û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--�û����
      ,c.USERID as c_USER_USERID--�û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--�û���ɫ
      ,c.XM as c_USER_XM--����
      ,c.XB as c_USER_XB--�Ա�
      ,c.QQ as c_USER_QQ--QQ
      ,c.DZYJ as c_USER_DZYJ--�����ʼ�
      ,c.LXDH as c_USER_LXDH--��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_ELE_03_APPLL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*�����û�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO
