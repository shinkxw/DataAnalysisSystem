
--��������
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_18_JFD_DISP]
AS
SELECT a.[ID]--���
      ,a.[JFDH]--��������
      ,a.[WXSID]--ά����ID
      ,a.[JFRQ]--��������
      ,a.[SXDWID]--���޵�λID
      ,b.WXSDM as b_WXS_WXSDM--ά���̱� ά���̴���
      ,b.WXSMC as b_WXS_WXSMC--ά���̱� ά��������
      ,b.LXR as b_WXS_LXR--ά���̱� ��ϵ��
      ,b.LXDM as b_WXS_LXDM--ά���̱� ��ϵ����
      ,b.DZ as b_WXS_DZ--ά���̱� ��ַ
      ,c.KHDM as c_KH_KHDM--�ͻ��� �ͻ�����
      ,c.SZQYID as c_KH_SZQYID--�ͻ��� ��������ID
      ,c.SSGSID as c_KH_SSGSID--�ͻ��� ������˾ID
      ,c.DWMC as c_KH_DWMC--�ͻ��� ��λ����
      ,c.PY as c_KH_PY--�ͻ��� ƴ��
      ,c.KHDZ as c_KH_KHDZ--�ͻ��� �ͻ���ַ
      ,c.LXR as c_KH_LXR--�ͻ��� ��ϵ��
      ,c.DH as c_KH_DH--�ͻ��� �绰
      ,c.XTLX as c_KH_XTLX--�ͻ��� ϵͳ����

FROM dbo.EDU_ZDGL_18_JFD AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_09_WXS AS b ON a.WXSID = b.ID /*ά����ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_KH AS c ON a.SXDWID = c.ID /*���޵�λID*/
GO
