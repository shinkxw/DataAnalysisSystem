
--ʵϰ��λ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_21_A03_SXGW_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[SXSID]--ʵϰ��ID
      ,a.[JobID]--��λID
      ,a.[GSSHZT]--��˾���״̬
      ,a.[TypeID]--¼ȡ����
      ,a.[Status]--ʵϰ��״̬
      ,c.SCHOOLID as c_SXSGL_SCHOOLID--ʵϰ�������� ѧУ
      ,c.SZBID as c_SXSGL_SZBID--ʵϰ�������� ʵϰ��ID
      ,c.StuID as c_SXSGL_StuID--ʵϰ�������� ѧ��ID
      ,c.Resume as c_SXSGL_Resume--ʵϰ�������� ����
      ,c.Status as c_SXSGL_Status--ʵϰ�������� ʵϰ��״̬
      ,d.SCHOOLID as d_GWXX_SCHOOLID--��λ��Ϣ�� ѧУ
      ,d.ComID as d_GWXX_ComID--��λ��Ϣ�� ��ҵID
      ,d.JobName as d_GWXX_JobName--��λ��Ϣ�� ��λ����
      ,d.PubTime as d_GWXX_PubTime--��λ��Ϣ�� ��Ƹ��ʼʱ��
      ,d.EndTime as d_GWXX_EndTime--��λ��Ϣ�� ��Ƹ����ʱ��
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

FROM dbo.EDU_ZZJX_21_A03_SXGW AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A02_SXSGL AS c ON a.SXSID = c.ID /*ʵϰ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A03_GWXX AS d ON a.JobID = d.ID /*��λID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO