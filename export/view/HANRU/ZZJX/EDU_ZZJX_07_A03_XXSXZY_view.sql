
--ѧУʵϰ��/�±�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A03_XXSXZY_DISP]
AS
SELECT a.[ID]--ʵϰ��/��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[SXJHID]--ʵϰ�ƻ�ID
      ,a.[SXJDID]--ʵϰ�׶�ID
      ,a.[MC]--����
      ,a.[KSSJ]--��ʼʱ��
      ,a.[JSSJ]--����ʱ��
      ,a.[LX]--����
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--ѧУID
      ,c.JHBT as c_XXSXJH_JHBT--�ƻ�����
      ,c.NJ as c_XXSXJH_NJ--�꼶
      ,c.BGXS as c_XXSXJH_BGXS--������ʽ
      ,c.SFSX as c_XXSXJH_SFSX--�ƻ��Ƿ���Ч
      ,cb.MC as c_XXSXJH_SFSX_MC--����
      ,d.SCHOOLID as d_XXSXJD_SCHOOLID--ѧУID
      ,d.SXJHID as d_XXSXJD_SXJHID--ʵϰ�ƻ�ID
      ,d.JDM as d_XXSXJD_JDM--�׶���
      ,d.JDKSSJ as d_XXSXJD_JDKSSJ--�׶ο�ʼʱ��
      ,d.JDJSSJ as d_XXSXJD_JDJSSJ--�׶ν���ʱ��

FROM dbo.EDU_ZZJX_07_A03_XXSXZY AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A02_XXSXJD AS d ON a.SXJDID = d.ID /*ʵϰ�׶�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cb ON c.SFSX = cb.DM /*�ƻ��Ƿ���Ч*/
GO
