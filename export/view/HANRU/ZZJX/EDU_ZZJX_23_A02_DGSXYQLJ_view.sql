
--����ʵϰ��������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_23_A02_DGSXYQLJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[YQLJLXID]--������������ID
      ,a.[TITLE]--����
      ,a.[IMAGEURL]--ͼƬ
      ,a.[URL]--����
      ,c.SCHOOLID as c_DGSXYQLJLX_SCHOOLID--����ʵϰ������������ ѧУ��
      ,c.NAME as c_DGSXYQLJLX_NAME--����ʵϰ������������ ������

FROM dbo.EDU_ZZJX_23_A02_DGSXYQLJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_23_A01_DGSXYQLJLX AS c ON a.YQLJLXID = c.ID /*������������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO
