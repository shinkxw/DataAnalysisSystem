
--ʵϰÿ�¿��ڼ�¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A11_SXMYKQJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[SXSID]--ʵϰ��ID
      ,a.[SJ]--ʱ��
      ,a.[SJGR]--ʵ�ʹ���
      ,a.[SJTS]--�¼�����
      ,a.[KGTS]--��������
      ,a.[BJTS]--��������
      ,a.[GXTS]--��������
      ,a.[CDTS]--�ٵ�����
      ,a.[ZTTS]--��������
      ,c.SCHOOLID as c_SXSGL_SCHOOLID--ʵϰ������� ѧУ
      ,c.SZBID as c_SXSGL_SZBID--ʵϰ������� ʵϰ��ID
      ,c.StuID as c_SXSGL_StuID--ʵϰ������� ѧ��ID
      ,c.ZT as c_SXSGL_ZT--ʵϰ������� ʵϰ��״̬
      ,c.SFSJSXXYS as c_SXSGL_SFSJSXXYS--ʵϰ������� �Ƿ��Ͻ�ʵϰЭ����
      ,c.SXSXM as c_SXSGL_SXSXM--ʵϰ������� ʵϰ������
      ,c.XQID as c_SXSGL_XQID--ʵϰ������� ѧ��ID
      ,c.DQSXGWID as c_SXSGL_DQSXGWID--ʵϰ������� ��ǰʵϰ��λID
      ,c.ZGCS as c_SXSGL_ZGCS--ʵϰ������� ת�ڴ���

FROM dbo.EDU_ZZJX_22_A11_SXMYKQJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A02_SXSGL AS c ON a.SXSID = c.ID /*ʵϰ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
