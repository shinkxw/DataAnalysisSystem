
--���ܼ�������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_37_A02_JNJDAP_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KSMC]--��������
      ,a.[JDXMID]--������ĿID
      ,a.[KSSJ]--����ʱ��
      ,a.[KSDD]--���Եص�
      ,a.[KSXS]--����ѧ��
      ,c.SCHOOLID as c_JNJDXM_SCHOOLID--���ܼ�����Ŀ ѧУ
      ,c.JNMC as c_JNJDXM_JNMC--���ܼ�����Ŀ ��������
      ,c.JNZY as c_JNJDXM_JNZY--���ܼ�����Ŀ ����רҵ
      ,c.JNGZ as c_JNJDXM_JNGZ--���ܼ�����Ŀ ���ܹ���
      ,c.JDJG as c_JNJDXM_JDJG--���ܼ�����Ŀ ��������
      ,c.SBZT as c_JNJDXM_SBZT--���ܼ�����Ŀ �걨״̬

FROM dbo.EDU_ZZJX_37_A02_JNJDAP AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_37_A01_JNJDXM AS c ON a.JDXMID = c.ID /*������ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
