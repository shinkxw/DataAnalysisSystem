
--�ʾ���Ŀѡ���
CREATE VIEW [dbo].[VIEW_EDU_OAXT_32_A03_DCWJTMXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[TMID]--������Ŀ
      ,a.[WJID]--�����ʾ�
      ,a.[SelectItem]--ѡ��
      ,a.[XXFZ]--ѡ���ֵ
      ,c.SCHOOLID as c_DCWJTM_SCHOOLID--�����ʾ���Ŀ�� ѧУ
      ,c.WJID as c_DCWJTM_WJID--�����ʾ���Ŀ�� �����ʾ�
      ,c.TypeID as c_DCWJTM_TypeID--�����ʾ���Ŀ�� ��Ŀ����
      ,c.Title as c_DCWJTM_Title--�����ʾ���Ŀ�� ��Ŀ
      ,c.SSDL as c_DCWJTM_SSDL--�����ʾ���Ŀ�� ��������
      ,d.SCHOOLID as d_DCWJ_SCHOOLID--�����ʾ����ݱ� ѧУ
      ,d.Title as d_DCWJ_Title--�����ʾ����ݱ� �ʾ�����
      ,d.Users as d_DCWJ_Users--�����ʾ����ݱ� ��ѡ��Ա
      ,d.StartTime as d_DCWJ_StartTime--�����ʾ����ݱ� ��ʼʱ��
      ,d.EndTime as d_DCWJ_EndTime--�����ʾ����ݱ� ����ʱ��
      ,d.IsStart as d_DCWJ_IsStart--�����ʾ����ݱ� �Ƿ���

FROM dbo.EDU_OAXT_32_A03_DCWJTMXX AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A02_DCWJTM AS c ON a.TMID = c.ID /*������Ŀ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A01_DCWJ AS d ON a.WJID = d.ID /*�����ʾ�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
