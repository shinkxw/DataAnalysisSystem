
--��������
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_18_JFD_DISP]
AS
SELECT a.[ID]--���
      ,a.[JFDH]--��������
      ,a.[WXSID]--ά����ID
      ,a.[JFRQ]--��������
      ,b.WXSDM as b_WXS_WXSDM--ά���̱� ά���̴���
      ,b.WXSMC as b_WXS_WXSMC--ά���̱� ά��������
      ,b.LXR as b_WXS_LXR--ά���̱� ��ϵ��
      ,b.LXDM as b_WXS_LXDM--ά���̱� ��ϵ����
      ,b.DZ as b_WXS_DZ--ά���̱� ��ַ

FROM dbo.EDU_ZDGL_18_JFD AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_09_WXS AS b ON a.WXSID = b.ID /*ά����ID*/
GO
