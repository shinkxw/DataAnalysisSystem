
--������������Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_25_A02_CWEJFLKM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[YJKMID]--һ����ĿID
      ,a.[EJKMDM]--������Ŀ����
      ,a.[EJKMMC]--������Ŀ����
      ,c.SCHOOLID as c_CWYJFLKM_SCHOOLID--����һ�������Ŀ�� ѧУ
      ,c.YJKMDM as c_CWYJFLKM_YJKMDM--����һ�������Ŀ�� һ����Ŀ����
      ,c.YJKMMC as c_CWYJFLKM_YJKMMC--����һ�������Ŀ�� һ����Ŀ����
      ,c.SFFT as c_CWYJFLKM_SFFT--����һ�������Ŀ�� �Ƿ��̯

FROM dbo.EDU_ZZJG_25_A02_CWEJFLKM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A01_CWYJFLKM AS c ON a.YJKMID = c.ID /*һ����ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
