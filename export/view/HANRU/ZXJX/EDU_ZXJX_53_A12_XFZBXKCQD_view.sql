
--ѧ���Ʊ��޿γ��嵥��
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A12_XFZBXKCQD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[JXJHID]--��ѧ�ƻ�ID
      ,a.[KCID]--�γ�ID
      ,a.[XS]--ѧ��
      ,c.SCHOOLID as c_XFZXQJXJH_SCHOOLID--ѧ����ѧ�ڽ�ѧ�ƻ��� ѧУID
      ,c.XQID as c_XFZXQJXJH_XQID--ѧ����ѧ�ڽ�ѧ�ƻ��� ѧ��ID
      ,c.NJID as c_XFZXQJXJH_NJID--ѧ����ѧ�ڽ�ѧ�ƻ��� �꼶ID
      ,c.BJLBID as c_XFZXQJXJH_BJLBID--ѧ����ѧ�ڽ�ѧ�ƻ��� �༶���ID
      ,c.BJID as c_XFZXQJXJH_BJID--ѧ����ѧ�ڽ�ѧ�ƻ��� �༶ID
      ,d.SCHOOLID as d_XFZKC_SCHOOLID--ѧ���ƿγ̱� ѧУID
      ,d.KCH as d_XFZKC_KCH--ѧ���ƿγ̱� �γ̺�
      ,d.KCLB as d_XFZKC_KCLB--ѧ���ƿγ̱� �γ����
      ,d.SSKM as d_XFZKC_SSKM--ѧ���ƿγ̱� ������Ŀ
      ,d.KCMC as d_XFZKC_KCMC--ѧ���ƿγ̱� �γ�����
      ,d.SFBX as d_XFZKC_SFBX--ѧ���ƿγ̱� �Ƿ����
      ,d.SFSY as d_XFZKC_SFSY--ѧ���ƿγ̱� �Ƿ�ʹ��
      ,d.PLSX as d_XFZKC_PLSX--ѧ���ƿγ̱� ����˳��

FROM dbo.EDU_ZXJX_53_A12_XFZBXKCQD AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A11_XFZXQJXJH AS c ON a.JXJHID = c.ID /*��ѧ�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A01_XFZKC AS d ON a.KCID = d.ID /*�γ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/
GO
