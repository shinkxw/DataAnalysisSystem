
--�ֲ���Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_54_A02_SCXM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XMMC]--��Ŀ����
      ,a.[SFQFXQ]--�Ƿ�����ѧ��
      ,a.[PLSX]--����˳��
      ,a.[SCNRMBID]--�ֲ�����ģ��ID
      ,c.SCHOOLID as c_SCNRMB_SCHOOLID--�ֲ�����ģ��� ѧУ
      ,c.MC as c_SCNRMB_MC--�ֲ�����ģ��� ����
      ,c.NR as c_SCNRMB_NR--�ֲ�����ģ��� ����

FROM dbo.EDU_ZXJX_54_A02_SCXM AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_54_A01_SCNRMB AS c ON a.SCNRMBID = c.ID /*�ֲ�����ģ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
