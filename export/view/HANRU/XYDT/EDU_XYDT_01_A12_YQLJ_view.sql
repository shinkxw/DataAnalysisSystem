
--��������
CREATE VIEW [dbo].[VIEW_EDU_XYDT_01_A12_YQLJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[YQLJLXID]--������������ID
      ,a.[TITLE]--����
      ,a.[IMAGEURL]--ͼƬ
      ,a.[URL]--����
      ,c.SCHOOLID as c_YQLJLX_SCHOOLID--������������ ѧУ��
      ,c.NAME as c_YQLJLX_NAME--������������ ������
      ,c.SHOWSTYLE as c_YQLJLX_SHOWSTYLE--������������ ��ʾ��ʽ

FROM dbo.EDU_XYDT_01_A12_YQLJ AS a LEFT OUTER JOIN
      dbo.EDU_XYDT_01_A11_YQLJLX AS c ON a.YQLJLXID = c.ID /*������������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO
