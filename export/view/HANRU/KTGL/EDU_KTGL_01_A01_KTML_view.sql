
--����Ŀ¼
CREATE VIEW [dbo].[VIEW_EDU_KTGL_01_A01_KTML_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[MLMC]--Ŀ¼����
      ,a.[FMLID]--��Ŀ¼ID
      ,a.[PLSX]--����˳��
      ,a.[SFSYZS]--�Ƿ���ҳչʾ
      ,a.[SFQY]--�Ƿ�����
      ,a.[URL]--��ַ
      ,c.SCHOOLID as c_KTML_SCHOOLID--����Ŀ¼ ѧУ
      ,c.MLMC as c_KTML_MLMC--����Ŀ¼ Ŀ¼����
      ,c.FMLID as c_KTML_FMLID--����Ŀ¼ ��Ŀ¼ID
      ,c.PLSX as c_KTML_PLSX--����Ŀ¼ ����˳��
      ,c.SFSYZS as c_KTML_SFSYZS--����Ŀ¼ �Ƿ���ҳչʾ
      ,c.SFQY as c_KTML_SFQY--����Ŀ¼ �Ƿ�����
      ,c.URL as c_KTML_URL--����Ŀ¼ ��ַ

FROM dbo.EDU_KTGL_01_A01_KTML AS a LEFT OUTER JOIN
      dbo.EDU_KTGL_01_A01_KTML AS c ON a.FMLID = c.ID /*��Ŀ¼ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
