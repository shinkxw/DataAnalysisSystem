
--���յ���ϸ��
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_17_JSDXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[XHID]--�ͺ�ID
      ,a.[XH]--���
      ,a.[SN]--SN��
      ,a.[SFECFX]--�Ƿ���η���
      ,a.[SXDWID]--���޵�λID
      ,a.[GZXXID]--������ϢID
      ,a.[WXXXID]--ά����ϢID
      ,a.[WXRID]--ά����ID
      ,a.[WXRQ]--ά������
      ,b.XX as b_SBXH_XX--�豸�ͺű� �ͺ�
      ,b.LXID as b_SBXH_LXID--�豸�ͺű� ����ID
      ,b.SCCJID as b_SBXH_SCCJID--�豸�ͺű� ��������ID
      ,b.PY as b_SBXH_PY--�豸�ͺű� ƴ��
      ,b.MS as b_SBXH_MS--�豸�ͺű� ����
      ,b.JG as b_SBXH_JG--�豸�ͺű� �۸�
      ,c.MC as c_SFBZ_MC--�Ƿ��־����� ����
      ,d.KHDM as d_KH_KHDM--�ͻ��� �ͻ�����
      ,d.SZQYID as d_KH_SZQYID--�ͻ��� ��������ID
      ,d.SSGSID as d_KH_SSGSID--�ͻ��� ������˾ID
      ,d.DWMC as d_KH_DWMC--�ͻ��� ��λ����
      ,d.PY as d_KH_PY--�ͻ��� ƴ��
      ,d.KHDZ as d_KH_KHDZ--�ͻ��� �ͻ���ַ
      ,d.LXR as d_KH_LXR--�ͻ��� ��ϵ��
      ,d.DH as d_KH_DH--�ͻ��� �绰
      ,e.GZDM as e_GZDM_GZDM--���ϴ���� ���ϴ���
      ,e.GZXX as e_GZDM_GZXX--���ϴ���� ��������
      ,f.WXDM as f_WXDM_WXDM--ά�޴���� ά�޴���
      ,f.WXNR as f_WXDM_WXNR--ά�޴���� ά������
      ,f.WXJG as f_WXDM_WXJG--ά�޴���� ά�޽��
      ,g.GH as g_WXR_GH--ά���˱� ����
      ,g.XM as g_WXR_XM--ά���˱� ����
      ,g.LXDH as g_WXR_LXDH--ά���˱� ��ϵ�绰

FROM dbo.EDU_ZDGL_17_JSDXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_5_SBXH AS b ON a.XHID = b.ID /*�ͺ�ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFECFX = c.DM /*�Ƿ���η���*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_8_KH AS d ON a.SXDWID = d.ID /*���޵�λID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_1_GZDM AS e ON a.GZXXID = e.ID /*������ϢID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_2_WXDM AS f ON a.WXXXID = f.ID /*ά����ϢID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_10_WXR AS g ON a.WXRID = g.ID /*ά����ID*/
GO
