
--��ѧ�����������
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_10_02_JXJSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[JXJMC]--��ѧ������
      ,a.[JXJBH]--��ѧ����
      ,a.[JXJDJ]--��ѧ��ȼ�
      ,a.[JXJLXM]--��ѧ��������
      ,a.[JXJE]--��ѧ���
      ,a.[ZZDWHGR]--������λ�����
      ,a.[JXJLYM]--��ѧ����Դ��
      ,a.[BZ]--��ע
      ,a.[SFKQ]--�Ƿ���
      ,a.[MXQKHJRS]--ÿѧ�ڿɻ�����
      ,c.MC as c_JXJLX_MC--��ѧ�����ʹ���� ����
      ,d.MC as d_JLZZZJLY_MC--���������ʽ���Դ����� ����

FROM dbo.EDU_ZZXS_10_02_JXJSJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_JXJLX AS c ON a.JXJLXM = c.DM /*��ѧ��������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JLZZZJLY AS d ON a.JXJLYM = d.DM /*��ѧ����Դ��*/
GO
