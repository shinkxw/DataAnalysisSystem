
--У���ܱ�
CREATE VIEW [dbo].[VIEW_EDU_ELE_05_XLZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XLID]--У��ID
      ,a.[NAME]--У��������
      ,a.[STARTDAY]--��ʼ����
      ,a.[ENDDAY]--��������
      ,a.[ZJH]--�ܼƻ�
      ,c.SCHOOLID as c_XL_SCHOOLID--У���� ѧУID
      ,c.NAME as c_XL_NAME--У���� У������
      ,c.STARTDAY as c_XL_STARTDAY--У���� ��ʼ����
      ,c.ENDDAY as c_XL_ENDDAY--У���� ��������
      ,c.XNID as c_XL_XNID--У���� ѧ��ID
      ,c.XQID as c_XL_XQID--У���� ѧ��ID

FROM dbo.EDU_ELE_05_XLZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_05_XL AS c ON a.XLID = c.ID /*У��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO
