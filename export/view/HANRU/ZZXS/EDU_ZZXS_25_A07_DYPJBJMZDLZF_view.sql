
--�������۰༶ÿ�ܴ����ֱܷ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_25_A07_DYPJBJMZDLZF_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[MZHZID]--ÿ�ܻ���ID
      ,a.[DLID]--����ID
      ,a.[ZF]--�ܷ�
      ,c.SCHOOLID as c_DYPJBJMZHZ_SCHOOLID--�������۰༶ÿ�ܻ��ܱ� ѧУ
      ,c.XQID as c_DYPJBJMZHZ_XQID--�������۰༶ÿ�ܻ��ܱ� ѧ��ID
      ,c.ZCID as c_DYPJBJMZHZ_ZCID--�������۰༶ÿ�ܻ��ܱ� �ܴ�ID
      ,c.BJID as c_DYPJBJMZHZ_BJID--�������۰༶ÿ�ܻ��ܱ� �༶ID
      ,c.ZZF as c_DYPJBJMZHZ_ZZF--�������۰༶ÿ�ܻ��ܱ� ���ܷ�
      ,c.ZF as c_DYPJBJMZHZ_ZF--�������۰༶ÿ�ܻ��ܱ� �ܷ�
      ,c.DDID as c_DYPJBJMZHZ_DDID--�������۰༶ÿ�ܻ��ܱ� �ȵ�ID
      ,c.DDPJJSID as c_DYPJBJMZHZ_DDPJJSID--�������۰༶ÿ�ܻ��ܱ� �ȵ�������ʦID
      ,c.TJJSID as c_DYPJBJMZHZ_TJJSID--�������۰༶ÿ�ܻ��ܱ� ��ӽ�ʦID
      ,c.TJSJ as c_DYPJBJMZHZ_TJSJ--�������۰༶ÿ�ܻ��ܱ� ���ʱ��
      ,d.SCHOOLID as d_DYPJDL_SCHOOLID--�������۴���� ѧУ
      ,d.PFDXLX as d_DYPJDL_PFDXLX--�������۴���� ���ֶ�������
      ,d.MC as d_DYPJDL_MC--�������۴���� ����
      ,d.PLSX as d_DYPJDL_PLSX--�������۴���� ����˳��

FROM dbo.EDU_ZZXS_25_A07_DYPJBJMZDLZF AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A06_DYPJBJMZHZ AS c ON a.MZHZID = c.ID /*ÿ�ܻ���ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A01_DYPJDL AS d ON a.DLID = d.ID /*����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
