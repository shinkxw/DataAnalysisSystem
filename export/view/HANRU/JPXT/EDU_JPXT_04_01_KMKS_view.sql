
--��Ŀ���Ա�
CREATE VIEW [dbo].[VIEW_EDU_JPXT_04_01_KMKS_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[KMID]--��ĿID
      ,a.[KSSJ]--����ʱ��
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_JKKM_SCHOOLID--�ݿ���Ŀ�� ѧУID
      ,c.CLXHMC as c_JKKM_CLXHMC--�ݿ���Ŀ�� ��Ŀ����
      ,c.CLXHID as c_JKKM_CLXHID--�ݿ���Ŀ�� �����ͺ�ID
      ,c.KSSX as c_JKKM_KSSX--�ݿ���Ŀ�� ����˳��
      ,c.BZ as c_JKKM_BZ--�ݿ���Ŀ�� ��ע

FROM dbo.EDU_JPXT_04_01_KMKS AS a LEFT OUTER JOIN
      dbo.EDU_JPXT_04_02_JKKM AS c ON a.KMID = c.ID /*��ĿID*/
GO
