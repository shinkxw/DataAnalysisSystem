
--��ѧ�����������
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_10_03_ZXJSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[ZXJE]--��ѧ���
      ,a.[ZXJMC]--��ѧ������
      ,a.[ZZDWHGR]--������λ�����
      ,a.[ZXJLX]--��ѧ������
      ,a.[BZ]--��ע
      ,a.[SFKQ]--�Ƿ���
      ,a.[MXQKHJRS]--ÿѧ�ڿɻ�����
      ,c.MC as c_ZXJFL_MC--��ѧ�������� ����

FROM dbo.EDU_ZZXS_10_03_ZXJSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZ_ZXJFL AS c ON a.ZXJLX = c.DM /*��ѧ������*/
GO
