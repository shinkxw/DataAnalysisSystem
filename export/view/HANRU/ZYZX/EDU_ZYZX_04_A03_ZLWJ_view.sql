
--�����ļ�
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_04_A03_ZLWJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ZYMLID]--��ԴĿ¼ID
      ,a.[BT]--����
      ,a.[SCSJ]--�ϴ�ʱ��
      ,a.[SCNR]--�ϴ�����
      ,c.SCHOOLID as c_ZLWJML_SCHOOLID--�����ļ�Ŀ¼ ѧУ
      ,c.MLMC as c_ZLWJML_MLMC--�����ļ�Ŀ¼ Ŀ¼����
      ,c.FMLID as c_ZLWJML_FMLID--�����ļ�Ŀ¼ ��Ŀ¼ID
      ,c.PLSX as c_ZLWJML_PLSX--�����ļ�Ŀ¼ ����˳��

FROM dbo.EDU_ZYZX_04_A03_ZLWJ AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_04_A01_ZLWJML AS c ON a.ZYMLID = c.ID /*��ԴĿ¼ID*/
GO
