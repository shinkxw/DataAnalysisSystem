
--�����ʾ���Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_32_A02_DCWJTM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[WJID]--�����ʾ�
      ,a.[TypeID]--��Ŀ����
      ,a.[Title]--��Ŀ
      ,a.[SSDL]--��������
      ,c.SCHOOLID as c_DCWJ_SCHOOLID--�����ʾ����ݱ� ѧУ
      ,c.Title as c_DCWJ_Title--�����ʾ����ݱ� �ʾ�����
      ,c.Users as c_DCWJ_Users--�����ʾ����ݱ� ��ѡ��Ա
      ,c.StartTime as c_DCWJ_StartTime--�����ʾ����ݱ� ��ʼʱ��
      ,c.EndTime as c_DCWJ_EndTime--�����ʾ����ݱ� ����ʱ��
      ,c.IsStart as c_DCWJ_IsStart--�����ʾ����ݱ� �Ƿ���

FROM dbo.EDU_OAXT_32_A02_DCWJTM AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A01_DCWJ AS c ON a.WJID = c.ID /*�����ʾ�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
