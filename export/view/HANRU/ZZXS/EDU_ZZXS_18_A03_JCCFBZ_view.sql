
--������ֲ����
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_18_A03_JCCFBZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[CFLXID]--��������ID
      ,a.[BZMC]--��������
      ,a.[SHRIDLB]--�����ID�б�
      ,a.[SHRMCLB]--����������б�
      ,a.[SYBZID]--��һ����ID
      ,a.[XYBZID]--��һ����ID
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_CFLX_SCHOOLID--�������ͱ� ѧУ
      ,c.CFLXMC as c_CFLX_CFLXMC--�������ͱ� ������������
      ,c.CFGLDW as c_CFLX_CFGLDW--�������ͱ� ���ֹ���λ
      ,c.SFCZCKQ as c_CFLX_SFCZCKQ--�������ͱ� �Ƿ���ڲ鿴��
      ,[cb].MC as c_CFLX_SFCZCKQ_MC--�Ƿ��־����� ����
      ,c.CKQ as c_CFLX_CKQ--�������ͱ� �鿴��
      ,c.SFYXJC as c_CFLX_SFYXJC--�������ͱ� �Ƿ�������
      ,[cc].MC as c_CFLX_SFYXJC_MC--�Ƿ��־����� ����
      ,c.BZ as c_CFLX_BZ--�������ͱ� ��ע
      ,d.SCHOOLID as d_JCCFBZ_SCHOOLID--������ֲ���� ѧУ
      ,d.CFLXID as d_JCCFBZ_CFLXID--������ֲ���� ��������ID
      ,d.BZMC as d_JCCFBZ_BZMC--������ֲ���� ��������
      ,d.SHRIDLB as d_JCCFBZ_SHRIDLB--������ֲ���� �����ID�б�
      ,d.SHRMCLB as d_JCCFBZ_SHRMCLB--������ֲ���� ����������б�
      ,d.SYBZID as d_JCCFBZ_SYBZID--������ֲ���� ��һ����ID
      ,d.XYBZID as d_JCCFBZ_XYBZID--������ֲ���� ��һ����ID
      ,d.BZ as d_JCCFBZ_BZ--������ֲ���� ��ע
      ,e.SCHOOLID as e_JCCFBZ_SCHOOLID--������ֲ���� ѧУ
      ,e.CFLXID as e_JCCFBZ_CFLXID--������ֲ���� ��������ID
      ,e.BZMC as e_JCCFBZ_BZMC--������ֲ���� ��������
      ,e.SHRIDLB as e_JCCFBZ_SHRIDLB--������ֲ���� �����ID�б�
      ,e.SHRMCLB as e_JCCFBZ_SHRMCLB--������ֲ���� ����������б�
      ,e.SYBZID as e_JCCFBZ_SYBZID--������ֲ���� ��һ����ID
      ,e.XYBZID as e_JCCFBZ_XYBZID--������ֲ���� ��һ����ID
      ,e.BZ as e_JCCFBZ_BZ--������ֲ���� ��ע

FROM dbo.EDU_ZZXS_18_A03_JCCFBZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A02_CFLX AS c ON a.CFLXID = c.ID /*��������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A03_JCCFBZ AS d ON a.SYBZID = d.ID /*��һ����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A03_JCCFBZ AS e ON a.XYBZID = e.ID /*��һ����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFCZCKQ = [cb].DM /*�Ƿ���ڲ鿴��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFYXJC = [cc].DM /*�Ƿ�������*/
GO
