
--���̲����
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A04_LCBZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[BZMC]--��������
      ,a.[LCMBID]--����ģ��ID
      ,a.[SPRIDLB]--������ID�б�
      ,a.[SPRMCLB]--�����������б�
      ,a.[SYBZID]--��һ����ID
      ,a.[XYBZID]--��һ����ID
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_LCMB_SCHOOLID--����ģ��� ѧУ
      ,c.MBLXID as c_LCMB_MBLXID--����ģ��� ģ������ID
      ,c.MBMC as c_LCMB_MBMC--����ģ��� ģ������
      ,c.BDID as c_LCMB_BDID--����ģ��� ��ID
      ,c.TJSJ as c_LCMB_TJSJ--����ģ��� ���ʱ��
      ,c.BZ as c_LCMB_BZ--����ģ��� ��ע
      ,d.SCHOOLID as d_LCBZ_SCHOOLID--���̲���� ѧУ
      ,d.BZMC as d_LCBZ_BZMC--���̲���� ��������
      ,d.LCMBID as d_LCBZ_LCMBID--���̲���� ����ģ��ID
      ,d.SPRIDLB as d_LCBZ_SPRIDLB--���̲���� ������ID�б�
      ,d.SPRMCLB as d_LCBZ_SPRMCLB--���̲���� �����������б�
      ,d.SYBZID as d_LCBZ_SYBZID--���̲���� ��һ����ID
      ,d.XYBZID as d_LCBZ_XYBZID--���̲���� ��һ����ID
      ,d.BZ as d_LCBZ_BZ--���̲���� ��ע
      ,e.SCHOOLID as e_LCBZ_SCHOOLID--���̲���� ѧУ
      ,e.BZMC as e_LCBZ_BZMC--���̲���� ��������
      ,e.LCMBID as e_LCBZ_LCMBID--���̲���� ����ģ��ID
      ,e.SPRIDLB as e_LCBZ_SPRIDLB--���̲���� ������ID�б�
      ,e.SPRMCLB as e_LCBZ_SPRMCLB--���̲���� �����������б�
      ,e.SYBZID as e_LCBZ_SYBZID--���̲���� ��һ����ID
      ,e.XYBZID as e_LCBZ_XYBZID--���̲���� ��һ����ID
      ,e.BZ as e_LCBZ_BZ--���̲���� ��ע

FROM dbo.EDU_OAXT_20_A04_LCBZ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A03_LCMB AS c ON a.LCMBID = c.ID /*����ģ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS d ON a.SYBZID = d.ID /*��һ����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS e ON a.XYBZID = e.ID /*��һ����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/
GO
