
--�������ͱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_18_A02_CFLX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[CFLXMC]--������������
      ,a.[CFGLDW]--���ֹ���λ
      ,a.[SFCZCKQ]--�Ƿ���ڲ鿴��
      ,a.[CKQ]--�鿴��
      ,a.[SFQXJC]--�Ƿ�������
      ,a.[BZ]--��ע
      ,c.MC as c_SFBZ_MC--�Ƿ��־����� ����
      ,d.MC as d_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZXS_18_A02_CFLX AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFCZCKQ = c.DM /*�Ƿ���ڲ鿴��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.SFQXJC = d.DM /*�Ƿ�������*/
GO
