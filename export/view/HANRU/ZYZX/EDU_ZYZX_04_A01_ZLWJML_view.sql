
--�����ļ�Ŀ¼
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_04_A01_ZLWJML_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[MLMC]--Ŀ¼����
      ,a.[FMLID]--��Ŀ¼ID
      ,a.[PLSX]--����˳��
      ,c.SCHOOLID as c_ZLWJML_SCHOOLID--�����ļ�Ŀ¼ ѧУ
      ,c.MLMC as c_ZLWJML_MLMC--�����ļ�Ŀ¼ Ŀ¼����
      ,c.FMLID as c_ZLWJML_FMLID--�����ļ�Ŀ¼ ��Ŀ¼ID
      ,c.PLSX as c_ZLWJML_PLSX--�����ļ�Ŀ¼ ����˳��

FROM dbo.EDU_ZYZX_04_A01_ZLWJML AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_04_A01_ZLWJML AS c ON a.FMLID = c.ID /*��Ŀ¼ID*/
GO
