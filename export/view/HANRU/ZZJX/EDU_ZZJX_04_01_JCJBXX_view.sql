
--�̲Ļ�����Ϣ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_04_01_JCJBXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[JCDM]--�̲Ĵ���
      ,a.[JCMC]--�̲�����
      ,a.[CBH]--�����
      ,a.[DYZZ]--��һ����
      ,a.[QTZZ]--��������
      ,a.[BC]--���
      ,a.[YC]--ӡ��
      ,a.[JG]--�۸�
      ,a.[CBS]--������
      ,a.[CBRQ]--��������
      ,a.[SFYLXC]--�Ƿ�����ϰ��
      ,a.[SFYJCJF]--�Ƿ��н̲ν̸�
      ,a.[NRJJ]--���ݼ��
      ,a.[DQZT]--��ǰ״̬
      ,a.[ZDKC]--��Ϳ��
      ,a.[DQKC]--��ǰ���
      ,c.MC as c_SFBZ_MC--�Ƿ��־����� ����
      ,d.MC as d_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZJX_04_01_JCJBXX AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFYLXC = c.DM /*�Ƿ�����ϰ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.SFYJCJF = d.DM /*�Ƿ��н̲ν̸�*/
GO
