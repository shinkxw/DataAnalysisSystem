
--����ģ���
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A03_LCMB_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[MBLXID]--ģ������ID
      ,a.[MBMC]--ģ������
      ,a.[BDID]--��ID
      ,a.[TJSJ]--���ʱ��
      ,a.[BZ]--��ע
      ,c.LXMC as c_LCMBLX_LXMC--����ģ�����ͱ� ��������
      ,c.BZ as c_LCMBLX_BZ--����ģ�����ͱ� ��ע
      ,d.SCHOOLID as d_LCBDSJ_SCHOOLID--���̱����ݱ� ѧУ
      ,d.BDMC as d_LCBDSJ_BDMC--���̱����ݱ� ������
      ,d.BDNR as d_LCBDSJ_BDNR--���̱����ݱ� ������
      ,d.TJSJ as d_LCBDSJ_TJSJ--���̱����ݱ� ���ʱ��
      ,d.BZ as d_LCBDSJ_BZ--���̱����ݱ� ��ע

FROM dbo.EDU_OAXT_20_A03_LCMB AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A01_LCMBLX AS c ON a.MBLXID = c.ID /*ģ������ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A02_LCBDSJ AS d ON a.BDID = d.ID /*��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
