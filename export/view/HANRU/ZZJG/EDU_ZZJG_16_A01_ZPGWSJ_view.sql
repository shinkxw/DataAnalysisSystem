
--��Ƹ��λ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_16_A01_ZPGWSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[ZPGWMC]--��Ƹ��λ����
      ,a.[ZWMC]--ְ������
      ,a.[ZPRS]--��Ƹ����
      ,a.[GWQSNY]--��λ��ʼ����
      ,a.[GWJSNY]--��λ��������
      ,a.[SFKQ]--�Ƿ���
      ,c.MC as c_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZJG_16_A01_ZPGWSJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFKQ = c.DM /*�Ƿ���*/
GO
