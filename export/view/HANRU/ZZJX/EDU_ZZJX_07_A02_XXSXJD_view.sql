
--ѧУʵϰ�׶α�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A02_XXSXJD_DISP]
AS
SELECT a.[ID]--ʵϰ�׶�ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[SXJHID]--ʵϰ�ƻ�ID
      ,a.[JDM]--�׶���
      ,a.[JDKSSJ]--�׶ο�ʼʱ��
      ,a.[JDJSSJ]--�׶ν���ʱ��
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--ѧУʵϰ�ƻ��� ѧУID
      ,c.JHBT as c_XXSXJH_JHBT--ѧУʵϰ�ƻ��� �ƻ�����
      ,c.NJ as c_XXSXJH_NJ--ѧУʵϰ�ƻ��� �꼶
      ,c.BGXS as c_XXSXJH_BGXS--ѧУʵϰ�ƻ��� ������ʽ
      ,c.SFSX as c_XXSXJH_SFSX--ѧУʵϰ�ƻ��� �ƻ��Ƿ���Ч
      ,cb.MC as c_XXSXJH_SFSX_MC--�ڿη�ʽ����� ����

FROM dbo.EDU_ZZJX_07_A02_XXSXJD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cb ON c.SFSX = cb.DM /*�ƻ��Ƿ���Ч*/
GO
