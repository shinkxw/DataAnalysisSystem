
--�γ�������Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_55_A06_KCPFXM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[FXMID]--����ĿID
      ,a.[XMMC]--��Ŀ����
      ,a.[SFYZXM]--�Ƿ�������Ŀ
      ,a.[BL]--����
      ,a.[SFYXXG]--�Ƿ������޸�
      ,a.[XGSX]--�޸�����
      ,a.[XGXX]--�޸�����
      ,a.[LY]--��Դ
      ,a.[PLSX]--����˳��
      ,c.SCHOOLID as c_KCPFXM_SCHOOLID--�γ�������Ŀ�� ѧУ
      ,c.FXMID as c_KCPFXM_FXMID--�γ�������Ŀ�� ����ĿID
      ,c.XMMC as c_KCPFXM_XMMC--�γ�������Ŀ�� ��Ŀ����
      ,c.SFYZXM as c_KCPFXM_SFYZXM--�γ�������Ŀ�� �Ƿ�������Ŀ
      ,c.BL as c_KCPFXM_BL--�γ�������Ŀ�� ����
      ,c.SFYXXG as c_KCPFXM_SFYXXG--�γ�������Ŀ�� �Ƿ������޸�
      ,c.XGSX as c_KCPFXM_XGSX--�γ�������Ŀ�� �޸�����
      ,c.XGXX as c_KCPFXM_XGXX--�γ�������Ŀ�� �޸�����
      ,c.LY as c_KCPFXM_LY--�γ�������Ŀ�� ��Դ
      ,c.PLSX as c_KCPFXM_PLSX--�γ�������Ŀ�� ����˳��

FROM dbo.EDU_ZZJX_55_A06_KCPFXM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A06_KCPFXM AS c ON a.FXMID = c.ID /*����ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
