
--����ʵϰ�Ż���Ŀ
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_23_A03_DGSXMHLM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[LMMC]--��Ŀ����
      ,a.[LMLJ]--��Ŀ����
      ,a.[CJ]--�㼶
      ,a.[FLMID]--����ĿID
      ,a.[SFQY]--�Ƿ�����
      ,a.[PLSX]--����˳��
      ,c.SCHOOLID as c_DGSXMHLM_SCHOOLID--����ʵϰ�Ż���Ŀ ѧУ
      ,c.LMMC as c_DGSXMHLM_LMMC--����ʵϰ�Ż���Ŀ ��Ŀ����
      ,c.LMLJ as c_DGSXMHLM_LMLJ--����ʵϰ�Ż���Ŀ ��Ŀ����
      ,c.CJ as c_DGSXMHLM_CJ--����ʵϰ�Ż���Ŀ �㼶
      ,c.FLMID as c_DGSXMHLM_FLMID--����ʵϰ�Ż���Ŀ ����ĿID
      ,c.SFQY as c_DGSXMHLM_SFQY--����ʵϰ�Ż���Ŀ �Ƿ�����
      ,c.PLSX as c_DGSXMHLM_PLSX--����ʵϰ�Ż���Ŀ ����˳��

FROM dbo.EDU_ZZJX_23_A03_DGSXMHLM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_23_A03_DGSXMHLM AS c ON a.FLMID = c.ID /*����ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
