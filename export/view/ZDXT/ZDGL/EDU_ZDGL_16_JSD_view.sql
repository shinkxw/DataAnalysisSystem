
--���յ���
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_16_JSD_DISP]
AS
SELECT a.[ID]--���
      ,a.[JSDH]--���յ���
      ,a.[SXDWID]--���޵�λID
      ,a.[SXRQ]--��������
      ,a.[BCZT]--����״̬
      ,a.[SFQR]--�Ƿ�ȷ��
      ,b.KHDM as b_KH_KHDM--�ͻ��� �ͻ�����
      ,b.SZQYID as b_KH_SZQYID--�ͻ��� ��������ID
      ,b.SSGSID as b_KH_SSGSID--�ͻ��� ������˾ID
      ,b.DWMC as b_KH_DWMC--�ͻ��� ��λ����
      ,b.PY as b_KH_PY--�ͻ��� ƴ��
      ,b.KHDZ as b_KH_KHDZ--�ͻ��� �ͻ���ַ
      ,b.LXR as b_KH_LXR--�ͻ��� ��ϵ��
      ,b.DH as b_KH_DH--�ͻ��� �绰
      ,c.MC as c_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZDGL_16_JSD AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_KH AS b ON a.SXDWID = b.ID /*���޵�λID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFQR = c.DM /*�Ƿ�ȷ��*/
GO
