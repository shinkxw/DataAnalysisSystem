
--�¸���ͨѶ¼��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_31_A03_XGRTXL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[TXLID]--ͨѶ¼ID
      ,a.[ZDPZID]--�ֶ����ñ�ID
      ,a.[NR]--����
      ,c.SCHOOLID as c_GRTXL_SCHOOLID--����ͨѶ¼�� ѧУ
      ,c.GRID as c_GRTXL_GRID--����ͨѶ¼�� ����ID
      ,c.LXRXM as c_GRTXL_LXRXM--����ͨѶ¼�� ��ϵ������
      ,c.LXRDH as c_GRTXL_LXRDH--����ͨѶ¼�� ��ϵ�˵绰
      ,d.SCHOOLID as d_GRTXLZDPZ_SCHOOLID--����ͨѶ¼�ֶ����ñ� ѧУ
      ,d.ZDMC as d_GRTXLZDPZ_ZDMC--����ͨѶ¼�ֶ����ñ� �ֶ�����

FROM dbo.EDU_OAXT_31_A03_XGRTXL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_31_A01_GRTXL AS c ON a.TXLID = c.ID /*ͨѶ¼ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_31_A02_GRTXLZDPZ AS d ON a.ZDPZID = d.ID /*�ֶ����ñ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
