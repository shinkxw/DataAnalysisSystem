
--�γ�������Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_55_A06_KCPFXM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[LXID]--����ID
      ,a.[FXMID]--����ĿID
      ,a.[XMMC]--��Ŀ����
      ,a.[SFYZXM]--�Ƿ�������Ŀ
      ,a.[BL]--����
      ,a.[SFYXXG]--�Ƿ������޸�
      ,a.[XGSX]--�޸�����
      ,a.[XGXX]--�޸�����
      ,a.[LY]--��Դ
      ,a.[PLSX]--����˳��
      ,c.SCHOOLID as c_KCPFLX_SCHOOLID--�γ��������ͱ� ѧУ
      ,c.LXMC as c_KCPFLX_LXMC--�γ��������ͱ� ��������
      ,d.SCHOOLID as d_KCPFXM_SCHOOLID--�γ�������Ŀ�� ѧУ
      ,d.LXID as d_KCPFXM_LXID--�γ�������Ŀ�� ����ID
      ,d.FXMID as d_KCPFXM_FXMID--�γ�������Ŀ�� ����ĿID
      ,d.XMMC as d_KCPFXM_XMMC--�γ�������Ŀ�� ��Ŀ����
      ,d.SFYZXM as d_KCPFXM_SFYZXM--�γ�������Ŀ�� �Ƿ�������Ŀ
      ,d.BL as d_KCPFXM_BL--�γ�������Ŀ�� ����
      ,d.SFYXXG as d_KCPFXM_SFYXXG--�γ�������Ŀ�� �Ƿ������޸�
      ,d.XGSX as d_KCPFXM_XGSX--�γ�������Ŀ�� �޸�����
      ,d.XGXX as d_KCPFXM_XGXX--�γ�������Ŀ�� �޸�����
      ,d.LY as d_KCPFXM_LY--�γ�������Ŀ�� ��Դ
      ,d.PLSX as d_KCPFXM_PLSX--�γ�������Ŀ�� ����˳��

FROM dbo.EDU_ZZJX_55_A06_KCPFXM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A05_KCPFLX AS c ON a.LXID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A06_KCPFXM AS d ON a.FXMID = d.ID /*����ĿID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
