
--��Դ�ļ�Ȩ��
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A05_ZYWJQX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ZYWJID]--��Դ�ļ�ID
      ,a.[YHLX]--�û�����
      ,a.[QXLB]--Ȩ���б�
      ,c.SCHOOLID as c_ZYWJ_SCHOOLID--��Դ�ļ� ѧУ
      ,c.ZYFLID as c_ZYWJ_ZYFLID--��Դ�ļ� ��Դ����
      ,c.ZYMLID as c_ZYWJ_ZYMLID--��Դ�ļ� ��ԴĿ¼
      ,c.ZYBT as c_ZYWJ_ZYBT--��Դ�ļ� ��Դ����
      ,c.BZ as c_ZYWJ_BZ--��Դ�ļ� ��ע
      ,c.GJZ as c_ZYWJ_GJZ--��Դ�ļ� �ؼ���
      ,c.YYZID as c_ZYWJ_YYZID--��Դ�ļ� ӵ����ID
      ,c.ZYLLLX as c_ZYWJ_ZYLLLX--��Դ�ļ� ��Դ�������
      ,c.WJLXID as c_ZYWJ_WJLXID--��Դ�ļ� �ļ�����
      ,c.ZYNR as c_ZYWJ_ZYNR--��Դ�ļ� ��Դ����
      ,c.FJMC as c_ZYWJ_FJMC--��Դ�ļ� ��������
      ,c.FJDX as c_ZYWJ_FJDX--��Դ�ļ� ������С
      ,c.FJLJ as c_ZYWJ_FJLJ--��Դ�ļ� ����·��
      ,c.ZYZT as c_ZYWJ_ZYZT--��Դ�ļ� ��Դ״̬
      ,c.ZYPJ as c_ZYWJ_ZYPJ--��Դ�ļ� ��Դ����
      ,c.SCSJ as c_ZYWJ_SCSJ--��Դ�ļ� �ϴ�ʱ��
      ,c.SYNJ as c_ZYWJ_SYNJ--��Դ�ļ� �����꼶
      ,c.SYXK as c_ZYWJ_SYXK--��Դ�ļ� ����ѧ��
      ,c.LLRC as c_ZYWJ_LLRC--��Դ�ļ� ����˴�
      ,c.SHZT as c_ZYWJ_SHZT--��Դ�ļ� ���״̬
      ,c.SHRID as c_ZYWJ_SHRID--��Դ�ļ� �����ID
      ,c.SHSJ as c_ZYWJ_SHSJ--��Դ�ļ� ���ʱ��

FROM dbo.EDU_ZYZX_01_A05_ZYWJQX AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A06_ZYWJ AS c ON a.ZYWJID = c.ID /*��Դ�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
