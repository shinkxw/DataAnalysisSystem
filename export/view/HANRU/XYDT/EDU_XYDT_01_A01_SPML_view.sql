
--��ƵĿ¼
CREATE VIEW [dbo].[VIEW_EDU_XYDT_01_A01_SPML_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[MLMC]--Ŀ¼����
      ,a.[FMLID]--��Ŀ¼ID
      ,a.[PLSX]--����˳��
      ,a.[SFSYZS]--�Ƿ���ҳչʾ
      ,a.[SFQY]--�Ƿ�����
      ,a.[URL]--��ַ
      ,a.[FMLIDLB]--��Ŀ¼ID�б�
      ,c.SCHOOLID as c_SPML_SCHOOLID--��ƵĿ¼ ѧУ
      ,c.MLMC as c_SPML_MLMC--��ƵĿ¼ Ŀ¼����
      ,c.FMLID as c_SPML_FMLID--��ƵĿ¼ ��Ŀ¼ID
      ,c.PLSX as c_SPML_PLSX--��ƵĿ¼ ����˳��
      ,c.SFSYZS as c_SPML_SFSYZS--��ƵĿ¼ �Ƿ���ҳչʾ
      ,c.SFQY as c_SPML_SFQY--��ƵĿ¼ �Ƿ�����
      ,c.URL as c_SPML_URL--��ƵĿ¼ ��ַ
      ,c.FMLIDLB as c_SPML_FMLIDLB--��ƵĿ¼ ��Ŀ¼ID�б�

FROM dbo.EDU_XYDT_01_A01_SPML AS a LEFT OUTER JOIN
      dbo.EDU_XYDT_01_A01_SPML AS c ON a.FMLID = c.ID /*��Ŀ¼ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
