
--�ݿ���Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_JPXT_04_02_JKKM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[CLXHMC]--��Ŀ����
      ,a.[CLXHID]--�����ͺ�ID
      ,a.[KSSX]--����˳��
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_CLXH_SCHOOLID--�����ͺ����ݱ� ѧУID
      ,c.CLXHMC as c_CLXH_CLXHMC--�����ͺ����ݱ� �����ͺ�����
      ,c.BZ as c_CLXH_BZ--�����ͺ����ݱ� ��ע

FROM dbo.EDU_JPXT_04_02_JKKM AS a LEFT OUTER JOIN
      dbo.EDU_JPXT_05_01_CLXH AS c ON a.CLXHID = c.ID /*�����ͺ�ID*/
GO
