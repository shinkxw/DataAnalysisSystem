
--��Ŀ����
CREATE VIEW [dbo].[VIEW_EDU_ZYFZ_02_A01_LMLB_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[LMLBMC]--��Ŀ�������
      ,a.[PLSX]--����˳��
      ,a.[FLBID]--�����ID
      ,c.SCHOOLID as c_LMLB_SCHOOLID--��Ŀ���� ѧУ
      ,c.LMLBMC as c_LMLB_LMLBMC--��Ŀ���� ��Ŀ�������
      ,c.PLSX as c_LMLB_PLSX--��Ŀ���� ����˳��
      ,c.FLBID as c_LMLB_FLBID--��Ŀ���� �����ID

FROM dbo.EDU_ZYFZ_02_A01_LMLB AS a LEFT OUTER JOIN
      dbo.EDU_ZYFZ_02_A01_LMLB AS c ON a.FLBID = c.ID /*�����ID*/
GO
