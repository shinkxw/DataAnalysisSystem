
--���ص���
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_20_FHD_DISP]
AS
SELECT a.[ID]--���
      ,a.[FHDH]--���ص���
      ,a.[FHRQ]--��������
      ,a.[FHDWID]--���ص�λID
      ,b.KHDM as b_KH_KHDM--�ͻ��� �ͻ�����
      ,b.SZQYID as b_KH_SZQYID--�ͻ��� ��������ID
      ,b.SSGSID as b_KH_SSGSID--�ͻ��� ������˾ID
      ,b.DWMC as b_KH_DWMC--�ͻ��� ��λ����
      ,b.PY as b_KH_PY--�ͻ��� ƴ��
      ,b.KHDZ as b_KH_KHDZ--�ͻ��� �ͻ���ַ
      ,b.LXR as b_KH_LXR--�ͻ��� ��ϵ��
      ,b.DH as b_KH_DH--�ͻ��� �绰
      ,b.XTLX as b_KH_XTLX--�ͻ��� ϵͳ����

FROM dbo.EDU_ZDGL_20_FHD AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_KH AS b ON a.FHDWID = b.ID /*���ص�λID*/
GO
