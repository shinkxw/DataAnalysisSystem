
--���ص���ϸ��
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_21_FHDXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[FHDID]--���ص�ID
      ,a.[JSDXXID]--���յ���ϸID
      ,b.FHDH as b_FHD_FHDH--���ص��� ���ص���
      ,b.FHRQ as b_FHD_FHRQ--���ص��� ��������
      ,b.FHDWID as b_FHD_FHDWID--���ص��� ���ص�λID
      ,c.XHID as c_JSDXX_XHID--���յ���ϸ�� �ͺ�ID
      ,c.XH as c_JSDXX_XH--���յ���ϸ�� ���
      ,c.SN as c_JSDXX_SN--���յ���ϸ�� SN��
      ,c.SFECFX as c_JSDXX_SFECFX--���յ���ϸ�� �Ƿ���η���
      ,[cb].MC as c_JSDXX_SFECFX_MC--�Ƿ��־����� ����
      ,c.SXDWID as c_JSDXX_SXDWID--���յ���ϸ�� ���޵�λID
      ,c.GZXXID as c_JSDXX_GZXXID--���յ���ϸ�� ������ϢID
      ,c.WXXXID as c_JSDXX_WXXXID--���յ���ϸ�� ά����ϢID
      ,c.WXRID as c_JSDXX_WXRID--���յ���ϸ�� ά����ID
      ,c.WXRQ as c_JSDXX_WXRQ--���յ���ϸ�� ά������

FROM dbo.EDU_ZDGL_21_FHDXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_20_FHD AS b ON a.FHDID = b.ID /*���ص�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_17_JSDXX AS c ON a.JSDXXID = c.ID /*���յ���ϸID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFECFX = [cb].DM /*�Ƿ���η���*/
GO
