
--�������ӱ�
CREATE VIEW [dbo].[VIEW_EDU_ZYFZ_03_A02_YQLJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[LJLXID]--��������ID
      ,a.[LJMC]--��������
      ,a.[LJTP]--����ͼƬ
      ,a.[LJDZ]--���ӵ�ַ
      ,c.SCHOOLID as c_YQLJLX_SCHOOLID--�����������ͱ� ѧУ
      ,c.LXMC as c_YQLJLX_LXMC--�����������ͱ� ��������
      ,c.XSFS as c_YQLJLX_XSFS--�����������ͱ� ��ʾ��ʽ

FROM dbo.EDU_ZYFZ_03_A02_YQLJ AS a LEFT OUTER JOIN
      dbo.EDU_ZYFZ_03_A01_YQLJLX AS c ON a.LJLXID = c.ID /*��������ID*/
GO
