
--���ͳ���ֶμ��㷽ʽ��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A52_DFTJZDJSFS_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XMID]--��ĿID
      ,a.[SJJID]--���ݼ�ID
      ,a.[ZDID]--�ֶ�ID
      ,a.[JSLX]--��������
      ,a.[ZDYID]--�ֶ�һID
      ,a.[ZDEID]--�ֶζ�ID
      ,a.[ZDESZ]--�ֶζ���ֵ
      ,a.[JSCS]--�������
      ,a.[JSFSSM]--���㷽ʽ˵��
      ,c.SCHOOLID as c_DFXM_SCHOOLID--�����Ŀ�� ѧУID
      ,c.XMMC as c_DFXM_XMMC--�����Ŀ�� ��Ŀ����
      ,c.APPID as c_DFXM_APPID--�����Ŀ�� ����Ӧ��ID
      ,d.SCHOOLID as d_DFTJSJJ_SCHOOLID--���ͳ�����ݼ��� ѧУID
      ,d.XMID as d_DFTJSJJ_XMID--���ͳ�����ݼ��� ��ĿID
      ,d.SJJMC as d_DFTJSJJ_SJJMC--���ͳ�����ݼ��� ���ݼ�����
      ,d.DFDXZID as d_DFTJSJJ_DFDXZID--���ͳ�����ݼ��� ��ֶ�����ID
      ,d.DFDXZMC as d_DFTJSJJ_DFDXZMC--���ͳ�����ݼ��� ��ֶ���������
      ,d.TJDXJDBMJH as d_DFTJSJJ_TJDXJDBMJH--���ͳ�����ݼ��� ͳ�ƶ���ڵ���뼯��
      ,d.TJDXJDMCLB as d_DFTJSJJ_TJDXJDMCLB--���ͳ�����ݼ��� ͳ�ƶ���ڵ������б�
      ,d.QSSJ as d_DFTJSJJ_QSSJ--���ͳ�����ݼ��� ��ʼʱ��
      ,d.JSSJ as d_DFTJSJJ_JSSJ--���ͳ�����ݼ��� ����ʱ��
      ,d.SJSCZT as d_DFTJSJJ_SJSCZT--���ͳ�����ݼ��� ��������״̬
      ,d.DQPCBH as d_DFTJSJJ_DQPCBH--���ͳ�����ݼ��� ��ǰ���α��
      ,d.SJJCJ as d_DFTJSJJ_SJJCJ--���ͳ�����ݼ��� ���ݼ��㼶
      ,d.SJJPC as d_DFTJSJJ_SJJPC--���ͳ�����ݼ��� ���ݼ�Ƶ��
      ,d.SJJCJMC as d_DFTJSJJ_SJJCJMC--���ͳ�����ݼ��� ���ݼ��㼶����
      ,d.SJJPCMC as d_DFTJSJJ_SJJPCMC--���ͳ�����ݼ��� ���ݼ�Ƶ������
      ,e.SCHOOLID as e_DFTJZD_SCHOOLID--���ͳ���ֶα� ѧУID
      ,e.XMID as e_DFTJZD_XMID--���ͳ���ֶα� ��ĿID
      ,e.SJJID as e_DFTJZD_SJJID--���ͳ���ֶα� ���ݼ�ID
      ,e.ZDMC as e_DFTJZD_ZDMC--���ͳ���ֶα� �ֶ�����
      ,e.ZDLX as e_DFTJZD_ZDLX--���ͳ���ֶα� �ֶ�����
      ,e.SJLYLX as e_DFTJZD_SJLYLX--���ͳ���ֶα� ������Դ����
      ,e.SJLYID as e_DFTJZD_SJLYID--���ͳ���ֶα� ������ԴID
      ,e.SJLYMC as e_DFTJZD_SJLYMC--���ͳ���ֶα� ������Դ����
      ,e.SJLYDXCJ as e_DFTJZD_SJLYDXCJ--���ͳ���ֶα� ������Դ����㼶
      ,e.SJLYSJPC as e_DFTJZD_SJLYSJPC--���ͳ���ֶα� ������Դʱ��Ƶ��
      ,e.SJLYDXCJMC as e_DFTJZD_SJLYDXCJMC--���ͳ���ֶα� ������Դ����㼶����
      ,e.SJLYSJPCMC as e_DFTJZD_SJLYSJPCMC--���ͳ���ֶα� ������Դʱ��Ƶ������
      ,e.DXCJSFFS as e_DFTJZD_DXCJSFFS--���ͳ���ֶα� ����㼶���ŷ�ʽ
      ,e.SJPCSFFS as e_DFTJZD_SJPCSFFS--���ͳ���ֶα� ʱ��Ƶ�����ŷ�ʽ
      ,e.SZMRZ as e_DFTJZD_SZMRZ--���ͳ���ֶα� ��ֵĬ��ֵ
      ,e.LJMRZ as e_DFTJZD_LJMRZ--���ͳ���ֶα� �߼�Ĭ��ֵ
      ,e.YXJ as e_DFTJZD_YXJ--���ͳ���ֶα� ���ȼ�

FROM dbo.EDU_OAXT_50_A52_DFTJZDJSFS AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*��ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A50_DFTJSJJ AS d ON a.SJJID = d.ID /*���ݼ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ AND a.XMID = d.XMID /*��ĿID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A51_DFTJZD AS e ON a.ZDID = e.ID /*�ֶ�ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ AND a.XMID = e.XMID /*��ĿID*/
GO
