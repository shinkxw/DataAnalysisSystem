
--����ģ���������ñ�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A07_LCMBLXPZ_DISP]
AS
SELECT a.[LCMBLXID]--����ģ������ID
      ,a.[SCHOOLID]--ѧУ
      ,a.[BSYLC]--��ʹ������
      ,b.LXMC as b_LCMBLX_LXMC--����ģ�����ͱ� ��������
      ,b.BZ as b_LCMBLX_BZ--����ģ�����ͱ� ��ע

FROM dbo.EDU_OAXT_20_A07_LCMBLXPZ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A01_LCMBLX AS b ON a.LCMBLXID = b.ID /*����ģ������ID*/
GO
