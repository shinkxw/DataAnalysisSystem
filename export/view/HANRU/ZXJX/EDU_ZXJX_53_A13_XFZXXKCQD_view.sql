
--ѧ������ѡ�γ��嵥��
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A13_XFZXXKCQD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[JXJHID]--��ѧ�ƻ�ID
      ,a.[KCIDLB]--�γ�ID�б�
      ,a.[KCMCLB]--�γ������б�
      ,a.[XXMS]--��ѡ����
      ,a.[XF]--ѧ��
      ,c.SCHOOLID as c_XFZXQJXJH_SCHOOLID--ѧ����ѧ�ڽ�ѧ�ƻ��� ѧУID
      ,c.XQID as c_XFZXQJXJH_XQID--ѧ����ѧ�ڽ�ѧ�ƻ��� ѧ��ID
      ,c.NJID as c_XFZXQJXJH_NJID--ѧ����ѧ�ڽ�ѧ�ƻ��� �꼶ID
      ,c.BJLBID as c_XFZXQJXJH_BJLBID--ѧ����ѧ�ڽ�ѧ�ƻ��� �༶���ID
      ,c.BJID as c_XFZXQJXJH_BJID--ѧ����ѧ�ڽ�ѧ�ƻ��� �༶ID
      ,c.KCLX as c_XFZXQJXJH_KCLX--ѧ����ѧ�ڽ�ѧ�ƻ��� �γ�����

FROM dbo.EDU_ZXJX_53_A13_XFZXXKCQD AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A11_XFZXQJXJH AS c ON a.JXJHID = c.ID /*��ѧ�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO
