
--��ѧ�����ֱ�����
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_55_A15_JXBPFBL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[JXJHID]--��ѧ�ƻ���ID
      ,a.[KCPFXMID]--�γ�������Ŀ��ID
      ,a.[BL]--����
      ,a.[KCLX]--�γ�����
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

FROM dbo.EDU_ZZJX_55_A15_JXBPFBL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A06_KCPFXM AS c ON a.KCPFXMID = c.ID /*�γ�������Ŀ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
