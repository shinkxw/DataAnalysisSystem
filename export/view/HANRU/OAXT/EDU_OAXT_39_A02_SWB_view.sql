
--���ı�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_39_A02_SWB_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[LBID]--���ID
      ,a.[LWDW]--���ĵ�λ
      ,a.[LWRQ]--��������
      ,a.[LWWH]--�����ĺ�
      ,a.[WJBT]--�ļ�����
      ,a.[WJNR]--�ļ�����
      ,a.[PSYJ]--��ʾ���
      ,a.[SFSH]--�Ƿ��ջ�
      ,a.[XFWDLX]--�·��ĵ�����
      ,c.SCHOOLID as c_GWLB_SCHOOLID--�������� ѧУID
      ,c.LBMC as c_GWLB_LBMC--�������� �������
      ,d.MC as d_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_OAXT_39_A02_SWB AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_39_A01_GWLB AS c ON a.LBID = c.ID /*���ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.SFSH = d.DM /*�Ƿ��ջ�*/
GO
