
--�豸�ͺű�
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_05_SBXH_DISP]
AS
SELECT a.[ID]--���
      ,a.[XX]--�ͺ�
      ,a.[LXID]--����ID
      ,a.[SCCJID]--��������ID
      ,a.[PY]--ƴ��
      ,a.[MS]--����
      ,a.[JG]--�۸�
      ,a.[XTLX]--ϵͳ����
      ,b.LXMC as b_SBXHLX_LXMC--�豸�ͺ����ͱ� ��������
      ,b.LXJC as b_SBXHLX_LXJC--�豸�ͺ����ͱ� ���ͼ��
      ,c.CJM as c_SCCJ_CJM--�������ұ� ������
      ,c.CJDZ as c_SCCJ_CJDZ--�������ұ� ���ҵ�ַ
      ,c.LXR as c_SCCJ_LXR--�������ұ� ��ϵ��
      ,c.LXDH as c_SCCJ_LXDH--�������ұ� ��ϵ�绰

FROM dbo.EDU_ZDGL_05_SBXH AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_03_SBXHLX AS b ON a.LXID = b.ID /*����ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_04_SCCJ AS c ON a.SCCJID = c.ID /*��������ID*/
GO
