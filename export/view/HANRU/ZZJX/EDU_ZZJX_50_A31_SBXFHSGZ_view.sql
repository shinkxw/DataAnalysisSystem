
--�ϱ�ѧ�ֻ�������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_50_A31_SBXFHSGZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XXKCLBID]--ѡ�޿γ����ID
      ,a.[CJSX]--�ɼ�����
      ,a.[CJXX]--�ɼ�����
      ,a.[XFHSBL]--ѧ�ֻ������
      ,a.[YXJ]--���ȼ�
      ,c.SCHOOLID as c_XXKCLB_SCHOOLID--ѡ�޿γ����� ѧУ
      ,c.LBMC as c_XXKCLB_LBMC--ѡ�޿γ����� �������
      ,c.JJ as c_XXKCLB_JJ--ѡ�޿γ����� ���
      ,c.ZGTSXKSL as c_XXKCLB_ZGTSXKSL--ѡ�޿γ����� ���ͬʱѡ������
      ,c.SFYXTMKCDX as c_XXKCLB_SFYXTMKCDX--ѡ�޿γ����� �Ƿ�����ͬ���γ̶�ѡ

FROM dbo.EDU_ZZJX_50_A31_SBXFHSGZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_50_A01_XXKCLB AS c ON a.XXKCLBID = c.ID /*ѡ�޿γ����ID*/
GO
