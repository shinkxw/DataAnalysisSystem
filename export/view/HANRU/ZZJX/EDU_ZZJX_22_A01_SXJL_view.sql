
--ʵϰ��¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A01_SXJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[SXSID]--ʵϰ��ID
      ,a.[KSSJ]--��ʼʱ��
      ,a.[JSSJ]--����ʱ��
      ,a.[SXNR]--ʵϰ����
      ,a.[SXFS]--ʵϰ��˼
      ,a.[ZWPD]--��������
      ,a.[ZDSFXM]--ָ��ʦ������
      ,a.[ZDSFPY]--ָ��ʦ������
      ,a.[ZDSFPDSJ]--ָ��ʦ������ʱ��
      ,a.[ZFPD]--ʦ������
      ,a.[ZDJSXM]--ָ����ʦ����
      ,a.[ZDJSPY]--ָ����ʦ����
      ,a.[ZDJSPDSJ]--ָ����ʦ����ʱ��
      ,a.[JSPD]--��ʦ����
      ,c.SCHOOLID as c_SXSGL_SCHOOLID--ʵϰ������� ѧУ
      ,c.SZBID as c_SXSGL_SZBID--ʵϰ������� ʵϰ��ID
      ,c.StuID as c_SXSGL_StuID--ʵϰ������� ѧ��ID
      ,c.Resume as c_SXSGL_Resume--ʵϰ������� ����
      ,c.Status as c_SXSGL_Status--ʵϰ������� ʵϰ��״̬
      ,c.SXXYS as c_SXSGL_SXXYS--ʵϰ������� ʵϰЭ����
      ,c.SXSXM as c_SXSGL_SXSXM--ʵϰ������� ʵϰ������
      ,c.XQID as c_SXSGL_XQID--ʵϰ������� ѧ��ID

FROM dbo.EDU_ZZJX_22_A01_SXJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A02_SXSGL AS c ON a.SXSID = c.ID /*ʵϰ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
