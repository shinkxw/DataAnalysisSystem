
--���������������
CREATE VIEW [dbo].[VIEW_EDU_JPXT_01_04_JLCJYQK_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[JLCID]--������ID
      ,a.[JYNR]--��������
      ,a.[JYSJ]--����ʱ��
      ,a.[WCSJ]--���ʱ��
      ,a.[JYJG]--������
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_JLCSJ_SCHOOLID--���������ݱ� ѧУID
      ,c.GMSJ as c_JLCSJ_GMSJ--���������ݱ� ����ʱ��
      ,c.CLXHID as c_JLCSJ_CLXHID--���������ݱ� �����ͺ�ID
      ,c.PP as c_JLCSJ_PP--���������ݱ� Ʒ��
      ,c.CPH as c_JLCSJ_CPH--���������ݱ� ���ƺ�
      ,c.FDJH as c_JLCSJ_FDJH--���������ݱ� ��������
      ,c.CJH as c_JLCSJ_CJH--���������ݱ� ���ܺ�
      ,c.BFSJ as c_JLCSJ_BFSJ--���������ݱ� ����ʱ��
      ,c.EBRQ as c_JLCSJ_EBRQ--���������ݱ� ��������
      ,c.DQZT as c_JLCSJ_DQZT--���������ݱ� ��ǰ״̬
      ,c.DQJLYID as c_JLCSJ_DQJLYID--���������ݱ� ��ǰ����ԱID
      ,c.BZ as c_JLCSJ_BZ--���������ݱ� ��ע

FROM dbo.EDU_JPXT_01_04_JLCJYQK AS a LEFT OUTER JOIN
      dbo.EDU_JPXT_01_01_JLCSJ AS c ON a.JLCID = c.ID /*������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO
