
--н�����ͱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_12_A01_XCLX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XCLXMC]--��������
      ,a.[JZGLXID]--��ְ������ID
      ,a.[PLSX]--����˳��
      ,c.SCHOOLID as c_JZGLX_SCHOOLID--��ְ�����ͱ� ѧУ
      ,c.LXMC as c_JZGLX_LXMC--��ְ�����ͱ� ��������

FROM dbo.EDU_ZXJZ_12_A01_XCLX AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_A07_JZGLX AS c ON a.JZGLXID = c.ID /*��ְ������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
