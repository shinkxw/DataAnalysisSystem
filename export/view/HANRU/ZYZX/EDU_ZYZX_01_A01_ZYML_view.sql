
--��ԴĿ¼
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A01_ZYML_DISP]
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
      ,c.SCHOOLID as c_ZYML_SCHOOLID--��ԴĿ¼ ѧУ
      ,c.MLMC as c_ZYML_MLMC--��ԴĿ¼ Ŀ¼����
      ,c.FMLID as c_ZYML_FMLID--��ԴĿ¼ ��Ŀ¼ID
      ,c.PLSX as c_ZYML_PLSX--��ԴĿ¼ ����˳��
      ,c.SFSYZS as c_ZYML_SFSYZS--��ԴĿ¼ �Ƿ���ҳչʾ
      ,c.SFQY as c_ZYML_SFQY--��ԴĿ¼ �Ƿ�����
      ,c.URL as c_ZYML_URL--��ԴĿ¼ ��ַ
      ,c.FMLIDLB as c_ZYML_FMLIDLB--��ԴĿ¼ ��Ŀ¼ID�б�

FROM dbo.EDU_ZYZX_01_A01_ZYML AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A01_ZYML AS c ON a.FMLID = c.ID /*��Ŀ¼ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
