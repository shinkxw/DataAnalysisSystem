
--���ͳ���ֶα�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A51_DFTJZD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XMID]--��ĿID
      ,a.[SJJID]--���ݼ�ID
      ,a.[ZDMC]--�ֶ�����
      ,a.[ZDLX]--�ֶ�����
      ,a.[SJLYLX]--������Դ����
      ,a.[SJLYID]--������ԴID
      ,a.[SJLYDXCJ]--������Դ����㼶
      ,a.[SJLYSJPC]--������Դʱ��Ƶ��
      ,a.[ZDDXCJ]--�ֶζ���㼶
      ,a.[DXCJSFFS]--����㼶���ŷ�ʽ
      ,a.[ZDSJPC]--�ֶ�ʱ��Ƶ��
      ,a.[SJPCSFFS]--ʱ��Ƶ�����ŷ�ʽ
      ,a.[SZMRZ]--��ֵĬ��ֵ
      ,a.[LJMRZ]--�߼�Ĭ��ֵ
      ,a.[YXJ]--���ȼ�
      ,c.SCHOOLID as c_DFXM_SCHOOLID--�����Ŀ�� ѧУID
      ,c.XMMC as c_DFXM_XMMC--�����Ŀ�� ��Ŀ����
      ,c.APPID as c_DFXM_APPID--�����Ŀ�� ����Ӧ��ID
      ,d.SCHOOLID as d_DFTJSJJ_SCHOOLID--���ͳ�����ݼ��� ѧУID
      ,d.XMID as d_DFTJSJJ_XMID--���ͳ�����ݼ��� ��ĿID
      ,d.SJJMC as d_DFTJSJJ_SJJMC--���ͳ�����ݼ��� ���ݼ�����
      ,d.DFDXZID as d_DFTJSJJ_DFDXZID--���ͳ�����ݼ��� ��ֶ�����ID
      ,d.TJDXJDBMJH as d_DFTJSJJ_TJDXJDBMJH--���ͳ�����ݼ��� ͳ�ƶ���ڵ���뼯��
      ,d.TJDXJDMCLB as d_DFTJSJJ_TJDXJDMCLB--���ͳ�����ݼ��� ͳ�ƶ���ڵ������б�
      ,d.QSSJ as d_DFTJSJJ_QSSJ--���ͳ�����ݼ��� ��ʼʱ��
      ,d.JSSJ as d_DFTJSJJ_JSSJ--���ͳ�����ݼ��� ����ʱ��
      ,d.SJSCZT as d_DFTJSJJ_SJSCZT--���ͳ�����ݼ��� ��������״̬
      ,d.DQPCBH as d_DFTJSJJ_DQPCBH--���ͳ�����ݼ��� ��ǰ���α��

FROM dbo.EDU_OAXT_50_A51_DFTJZD AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*��ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A50_DFTJSJJ AS d ON a.SJJID = d.ID /*���ݼ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ AND a.XMID = d.XMID /*��ĿID*/
GO
