
--�ɼ�������ʽ
CREATE VIEW [dbo].[VIEW_EDU_CFXT_01_A05_CJHDFS_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KSID]--����ID
      ,a.[PL]--��������
      ,a.[PLRID]--�������ֵ
      ,a.[PLSJ]--������Сֵ
      ,a.[JG]--���
      ,c.SCHOOLID as c_KS_SCHOOLID--������Ϣ ѧУ
      ,c.KSMC as c_KS_KSMC--������Ϣ ��������
      ,c.KSKMIDLB as c_KS_KSKMIDLB--������Ϣ ���Կ�ĿID�б�
      ,c.KSKMMCLB as c_KS_KSKMMCLB--������Ϣ ���Կ�Ŀ�����б�
      ,c.CFWZ as c_KS_CFWZ--������Ϣ �����ַ
      ,c.CFZT as c_KS_CFZT--������Ϣ ���״̬

FROM dbo.EDU_CFXT_01_A05_CJHDFS AS a LEFT OUTER JOIN
      dbo.EDU_CFXT_01_A02_KS AS c ON a.KSID = c.ID /*����ID*/
GO
