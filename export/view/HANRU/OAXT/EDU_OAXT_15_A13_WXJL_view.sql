
--ά�޼�¼��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A13_WXJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[WPID]--��ƷID
      ,a.[WXZT]--ά��״̬
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_BXGL_SCHOOLID--���޹���� ѧУ
      ,c.AID as c_BXGL_AID--���޹���� ����ID
      ,c.TypeID as c_BXGL_TypeID--���޹���� ��������ID
      ,c.Title as c_BXGL_Title--���޹���� ��������
      ,c.Telephone as c_BXGL_Telephone--���޹���� ��ϵ�绰
      ,c.Repairplace as c_BXGL_Repairplace--���޹���� ���޵ص�
      ,c.Repaircontent as c_BXGL_Repaircontent--���޹���� ��������
      ,c.Repairpeople as c_BXGL_Repairpeople--���޹���� ά����
      ,c.RepairDate as c_BXGL_RepairDate--���޹���� ά��ʱ��
      ,c.ReadrID as c_BXGL_ReadrID--���޹���� �Ķ����
      ,c.Readr as c_BXGL_Readr--���޹���� �Ķ����
      ,c.Applicant as c_BXGL_Applicant--���޹���� ������
      ,c.Approver as c_BXGL_Approver--���޹���� ������
      ,c.Evaluate as c_BXGL_Evaluate--���޹���� ����
      ,c.StartDate as c_BXGL_StartDate--���޹���� ��ʼʱ��
      ,c.Status as c_BXGL_Status--���޹���� ״̬
      ,c.Remark as c_BXGL_Remark--���޹���� ��ע
      ,c.SumCount as c_BXGL_SumCount--���޹���� ����
      ,c.GZTP as c_BXGL_GZTP--���޹���� ����ͼƬ
      ,c.WCZT as c_BXGL_WCZT--���޹���� ���״̬
      ,c.SCZT as c_BXGL_SCZT--���޹���� ɾ��״̬

FROM dbo.EDU_OAXT_15_A13_WXJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A08_BXGL AS c ON a.WPID = c.ID /*��ƷID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
