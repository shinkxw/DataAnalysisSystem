
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--ѧУʵϰ�ƻ��� ѧУID
      ,c.JHBT as c_XXSXJH_JHBT--ѧУʵϰ�ƻ��� �ƻ�����
      ,c.NJ as c_XXSXJH_NJ--ѧУʵϰ�ƻ��� �꼶
      ,c.BGXS as c_XXSXJH_BGXS--ѧУʵϰ�ƻ��� ������ʽ
      ,c.SFSX as c_XXSXJH_SFSX--ѧУʵϰ�ƻ��� �ƻ��Ƿ���Ч
      ,cb.MC as c_XXSXJH_SFSX_MC--�ڿη�ʽ����� ����
      ,d.SCHOOLID as d_XXSXJD_SCHOOLID--ѧУʵϰ�׶α� ѧУID
      ,d.SXJHID as d_XXSXJD_SXJHID--ѧУʵϰ�׶α� ʵϰ�ƻ�ID
      ,d.JDM as d_XXSXJD_JDM--ѧУʵϰ�׶α� �׶���
      ,d.JDKSSJ as d_XXSXJD_JDKSSJ--ѧУʵϰ�׶α� �׶ο�ʼʱ��
      ,d.JDJSSJ as d_XXSXJD_JDJSSJ--ѧУʵϰ�׶α� �׶ν���ʱ��

FROM dbo.EDU_ZZJX_07_A03_XXSXZY AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A02_XXSXJD AS d ON a.SXJDID = d.ID /*ʵϰ�׶�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cb ON c.SFSX = cb.DM /*�ƻ��Ƿ���Ч*/
GO
