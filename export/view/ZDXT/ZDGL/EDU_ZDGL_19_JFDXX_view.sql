
--��������ϸ��
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_19_JFDXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[JFDID]--������ID
      ,a.[JSDXXID]--���յ���ϸID
      ,b.JFDH as b_JFD_JFDH--�������� ��������
      ,b.WXSID as b_JFD_WXSID--�������� ά����ID
      ,b.JFRQ as b_JFD_JFRQ--�������� ��������
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

FROM dbo.EDU_ZDGL_19_JFDXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_18_JFD AS b ON a.JFDID = b.ID /*������ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_17_JSDXX AS c ON a.JSDXXID = c.ID /*���յ���ϸID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFECFX = [cb].DM /*�Ƿ���η���*/
GO
