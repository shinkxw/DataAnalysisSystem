
--����������Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZYFZ_02_A02_GZNRLM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[LMMC]--��Ŀ����
      ,a.[LMLBID]--��Ŀ���ID
      ,a.[SYMBID]--ʹ��ģ��ID
      ,a.[PLFS]--���з�ʽ
      ,a.[PLSX]--����˳��
      ,a.[NMLLLM]--���������Ŀ
      ,a.[LMLX]--��Ŀ����
      ,c.SCHOOLID as c_LMLB_SCHOOLID--��Ŀ���� ѧУ
      ,c.LMLBMC as c_LMLB_LMLBMC--��Ŀ���� ��Ŀ�������
      ,c.PLSX as c_LMLB_PLSX--��Ŀ���� ����˳��
      ,c.FLBID as c_LMLB_FLBID--��Ŀ���� �����ID
      ,d.SCHOOLID as d_GZMB_SCHOOLID--����ģ��� ѧУ
      ,d.MBMC as d_GZMB_MBMC--����ģ��� ģ������
      ,d.MBNR as d_GZMB_MBNR--����ģ��� ģ������

FROM dbo.EDU_ZYFZ_02_A02_GZNRLM AS a LEFT OUTER JOIN
      dbo.EDU_ZYFZ_02_A01_LMLB AS c ON a.LMLBID = c.ID /*��Ŀ���ID*/ LEFT OUTER JOIN
      dbo.EDU_ZYFZ_01_A04_GZMB AS d ON a.SYMBID = d.ID /*ʹ��ģ��ID*/
GO
