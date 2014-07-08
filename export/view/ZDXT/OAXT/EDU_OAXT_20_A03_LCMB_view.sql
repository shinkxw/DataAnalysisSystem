
--����ģ���
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A03_LCMB_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[MBLXID]--ģ������ID
      ,a.[MBMC]--ģ������
      ,a.[BDID]--��ID
      ,a.[QSBZID]--��ʼ����ID
      ,a.[JSBZID]--��������ID
      ,a.[TJSJ]--���ʱ��
      ,a.[BZ]--��ע
      ,c.LXMC as c_LCMBLX_LXMC--����ģ�����ͱ� ��������
      ,c.BZ as c_LCMBLX_BZ--����ģ�����ͱ� ��ע
      ,d.SCHOOLID as d_LCBDSJ_SCHOOLID--���̱����ݱ� ѧУ
      ,d.BDMC as d_LCBDSJ_BDMC--���̱����ݱ� ������
      ,d.BDNR as d_LCBDSJ_BDNR--���̱����ݱ� ������
      ,d.TJSJ as d_LCBDSJ_TJSJ--���̱����ݱ� ���ʱ��
      ,d.BZ as d_LCBDSJ_BZ--���̱����ݱ� ��ע
      ,e.SCHOOLID as e_LCBZ_SCHOOLID--���̲���� ѧУ
      ,e.BZMC as e_LCBZ_BZMC--���̲���� ��������
      ,e.LCMBID as e_LCBZ_LCMBID--���̲���� ����ģ��ID
      ,e.SPRIDLB as e_LCBZ_SPRIDLB--���̲���� ������ID�б�
      ,e.SPRMCLB as e_LCBZ_SPRMCLB--���̲���� �����������б�
      ,e.SYBZID as e_LCBZ_SYBZID--���̲���� ��һ����ID
      ,e.XYBZID as e_LCBZ_XYBZID--���̲���� ��һ����ID
      ,e.BZ as e_LCBZ_BZ--���̲���� ��ע
      ,f.SCHOOLID as f_LCBZ_SCHOOLID--���̲���� ѧУ
      ,f.BZMC as f_LCBZ_BZMC--���̲���� ��������
      ,f.LCMBID as f_LCBZ_LCMBID--���̲���� ����ģ��ID
      ,f.SPRIDLB as f_LCBZ_SPRIDLB--���̲���� ������ID�б�
      ,f.SPRMCLB as f_LCBZ_SPRMCLB--���̲���� �����������б�
      ,f.SYBZID as f_LCBZ_SYBZID--���̲���� ��һ����ID
      ,f.XYBZID as f_LCBZ_XYBZID--���̲���� ��һ����ID
      ,f.BZ as f_LCBZ_BZ--���̲���� ��ע

FROM dbo.EDU_OAXT_20_A03_LCMB AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A01_LCMBLX AS c ON a.MBLXID = c.ID /*ģ������ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A02_LCBDSJ AS d ON a.BDID = d.ID /*��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS e ON a.QSBZID = e.ID /*��ʼ����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS f ON a.JSBZID = f.ID /*��������ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/
GO
