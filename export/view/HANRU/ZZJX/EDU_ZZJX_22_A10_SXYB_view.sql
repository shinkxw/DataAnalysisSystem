
--ʵϰ�±���
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A10_SXYB_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[SXSID]--ʵϰ��ID
      ,a.[GWXXID]--��λ��ϢID
      ,a.[GZXJ]--����С��
      ,a.[TJSJ]--���ʱ��
      ,a.[ZDSFXM]--ָ��ʦ������
      ,a.[ZDSFPY]--ָ��ʦ������
      ,a.[SFDH]--ʦ���绰
      ,a.[SFPD]--ʦ������
      ,a.[ZDSFPDSJ]--ָ��ʦ������ʱ��
      ,c.SCHOOLID as c_SXSGL_SCHOOLID--ʵϰ������� ѧУ
      ,c.SZBID as c_SXSGL_SZBID--ʵϰ������� ʵϰ��ID
      ,c.StuID as c_SXSGL_StuID--ʵϰ������� ѧ��ID
      ,c.ZT as c_SXSGL_ZT--ʵϰ������� ʵϰ��״̬
      ,c.SFSJSXXYS as c_SXSGL_SFSJSXXYS--ʵϰ������� �Ƿ��Ͻ�ʵϰЭ����
      ,c.SXSXM as c_SXSGL_SXSXM--ʵϰ������� ʵϰ������
      ,c.XQID as c_SXSGL_XQID--ʵϰ������� ѧ��ID
      ,c.DQSXGWID as c_SXSGL_DQSXGWID--ʵϰ������� ��ǰʵϰ��λID
      ,c.ZGCS as c_SXSGL_ZGCS--ʵϰ������� ת�ڴ���
      ,d.SCHOOLID as d_GWXX_SCHOOLID--��λ��Ϣ�� ѧУ
      ,d.ComID as d_GWXX_ComID--��λ��Ϣ�� ��ҵID
      ,d.JobName as d_GWXX_JobName--��λ��Ϣ�� ��λ����
      ,d.WorkType as d_GWXX_WorkType--��λ��Ϣ�� ������ʽ
      ,d.Sex as d_GWXX_Sex--��λ��Ϣ�� �Ա�Ҫ��
      ,d.monthlypay as d_GWXX_monthlypay--��λ��Ϣ�� ��λн��
      ,d.LanguageRequire as d_GWXX_LanguageRequire--��λ��Ϣ�� ����Ҫ��
      ,d.WorkPlace as d_GWXX_WorkPlace--��λ��Ϣ�� �����ص�
      ,d.Computer as d_GWXX_Computer--��λ��Ϣ�� �����ˮƽ
      ,d.ZPRS as d_GWXX_ZPRS--��λ��Ϣ�� ��Ƹ����
      ,d.education as d_GWXX_education--��λ��Ϣ�� ѧ��Ҫ��
      ,d.Age as d_GWXX_Age--��λ��Ϣ�� ����Ҫ��
      ,d.GWJJ as d_GWXX_GWJJ--��λ��Ϣ�� ��λ���
      ,d.Major as d_GWXX_Major--��λ��Ϣ�� רҵҪ��
      ,d.Base as d_GWXX_Base--��λ��Ϣ�� �������
      ,d.experience as d_GWXX_experience--��λ��Ϣ�� ��������
      ,d.GWSHZT as d_GWXX_GWSHZT--��λ��Ϣ�� ��λ���״̬
      ,d.Status as d_GWXX_Status--��λ��Ϣ�� ��λ��ǰ״̬
      ,d.SFZD as d_GWXX_SFZD--��λ��Ϣ�� �Ƿ��ö�
      ,d.QYMC as d_GWXX_QYMC--��λ��Ϣ�� ��ҵ����
      ,d.FBSJ as d_GWXX_FBSJ--��λ��Ϣ�� ����ʱ��

FROM dbo.EDU_ZZJX_22_A10_SXYB AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A02_SXSGL AS c ON a.SXSID = c.ID /*ʵϰ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A03_GWXX AS d ON a.GWXXID = d.ID /*��λ��ϢID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
