
--�������������Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_25_A03_CWSJFLKM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[YJKMID]--һ����ĿID
      ,a.[EJKMID]--������ĿID
      ,a.[SJKMDM]--������Ŀ����
      ,a.[SJKMMC]--������Ŀ����
      ,a.[SFHJDY]--�Ƿ�ϼƴ�ӡ
      ,c.SCHOOLID as c_CWYJFLKM_SCHOOLID--����һ�������Ŀ�� ѧУ
      ,c.YJKMDM as c_CWYJFLKM_YJKMDM--����һ�������Ŀ�� һ����Ŀ����
      ,c.YJKMMC as c_CWYJFLKM_YJKMMC--����һ�������Ŀ�� һ����Ŀ����
      ,c.SFFT as c_CWYJFLKM_SFFT--����һ�������Ŀ�� �Ƿ��̯
      ,d.SCHOOLID as d_CWEJFLKM_SCHOOLID--������������Ŀ�� ѧУ
      ,d.YJKMID as d_CWEJFLKM_YJKMID--������������Ŀ�� һ����ĿID
      ,d.EJKMDM as d_CWEJFLKM_EJKMDM--������������Ŀ�� ������Ŀ����
      ,d.EJKMMC as d_CWEJFLKM_EJKMMC--������������Ŀ�� ������Ŀ����

FROM dbo.EDU_ZZJG_25_A03_CWSJFLKM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A01_CWYJFLKM AS c ON a.YJKMID = c.ID /*һ����ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A02_CWEJFLKM AS d ON a.EJKMID = d.ID /*������ĿID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
