
--��������������Ϣ��
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_22_A04_ZSGLXSXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[XM]--����
      ,a.[XB]--�Ա�
      ,a.[SFZX]--�Ƿ�סУ
      ,a.[LXDH]--��ϵ�绰
      ,a.[BYXXID]--��ҵѧУID
      ,a.[YW]--����
      ,a.[SX]--��ѧ
      ,a.[YY]--Ӣ��
      ,a.[SZ]--����
      ,a.[KX]--��ѧ
      ,a.[TY]--����
      ,a.[SYJF]--ʵ��ӷ�
      ,a.[ZF]--�ܷ�
      ,a.[TC]--�س�
      ,a.[BZ]--��ע
      ,a.[DYZYID]--��һ־ԸID
      ,a.[DEZYID]--�ڶ�־ԸID
      ,a.[DSZYID]--����־ԸID
      ,a.[LSID]--��ʱID
      ,a.[LRSJ]--¼��ʱ��
      ,a.[LRR]--¼����
      ,a.[LQSJ]--¼ȡʱ��
      ,a.[LQR]--¼ȡ��
      ,a.[LQZYID]--¼ȡרҵID
      ,a.[BH]--���
      ,a.[JFJE]--�ɷѽ��
      ,a.[XNID]--ѧ��ID
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_ZSGLCZXX_SCHOOLID--�����������ѧУ�� ѧУ
      ,d.XXMC as d_ZSGLCZXX_XXMC--�����������ѧУ�� ѧУ����
      ,e.SCHOOLID as e_ZSGLZSJHXD_SCHOOLID--�������������ƻ��굥�� ѧУ
      ,e.JHID as e_ZSGLZSJHXD_JHID--�������������ƻ��굥�� �ƻ�ID
      ,e.ZYMC as e_ZSGLZSJHXD_ZYMC--�������������ƻ��굥�� רҵ����
      ,e.ZYID as e_ZSGLZSJHXD_ZYID--�������������ƻ��굥�� רҵID
      ,e.ZSRS as e_ZSGLZSJHXD_ZSRS--�������������ƻ��굥�� ��������
      ,e.ZYJS as e_ZSGLZSJHXD_ZYJS--�������������ƻ��굥�� רҵ����
      ,f.SCHOOLID as f_ZSGLZSJHXD_SCHOOLID--�������������ƻ��굥�� ѧУ
      ,f.JHID as f_ZSGLZSJHXD_JHID--�������������ƻ��굥�� �ƻ�ID
      ,f.ZYMC as f_ZSGLZSJHXD_ZYMC--�������������ƻ��굥�� רҵ����
      ,f.ZYID as f_ZSGLZSJHXD_ZYID--�������������ƻ��굥�� רҵID
      ,f.ZSRS as f_ZSGLZSJHXD_ZSRS--�������������ƻ��굥�� ��������
      ,f.ZYJS as f_ZSGLZSJHXD_ZYJS--�������������ƻ��굥�� רҵ����
      ,g.SCHOOLID as g_ZSGLZSJHXD_SCHOOLID--�������������ƻ��굥�� ѧУ
      ,g.JHID as g_ZSGLZSJHXD_JHID--�������������ƻ��굥�� �ƻ�ID
      ,g.ZYMC as g_ZSGLZSJHXD_ZYMC--�������������ƻ��굥�� רҵ����
      ,g.ZYID as g_ZSGLZSJHXD_ZYID--�������������ƻ��굥�� רҵID
      ,g.ZSRS as g_ZSGLZSJHXD_ZSRS--�������������ƻ��굥�� ��������
      ,g.ZYJS as g_ZSGLZSJHXD_ZYJS--�������������ƻ��굥�� רҵ����
      ,h.SCHOOLID as h_ZSGLZSJHXD_SCHOOLID--�������������ƻ��굥�� ѧУ
      ,h.JHID as h_ZSGLZSJHXD_JHID--�������������ƻ��굥�� �ƻ�ID
      ,h.ZYMC as h_ZSGLZSJHXD_ZYMC--�������������ƻ��굥�� רҵ����
      ,h.ZYID as h_ZSGLZSJHXD_ZYID--�������������ƻ��굥�� רҵID
      ,h.ZSRS as h_ZSGLZSJHXD_ZSRS--�������������ƻ��굥�� ��������
      ,h.ZYJS as h_ZSGLZSJHXD_ZYJS--�������������ƻ��굥�� רҵ����
      ,i.SCHOOLID as i_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,i.ZYDM as i_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,[ib].ZYMLLB as i_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,[ib].MC as i_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,i.ZYMC as i_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,i.ZYYWMC as i_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,i.XZ as i_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,i.ZYFXMC as i_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,i.ZYJC as i_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,i.JLNY as i_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,i.ZYJSS as i_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,i.KSJGH as i_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,i.ZXF as i_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,i.SSZYML as i_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,[ic].MC as i_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,i.ZYLB as i_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,j.SCHOOLID as j_XN_SCHOOLID--ѧ��� ѧУ��
      ,j.XN as j_XN_XN--ѧ��� ѧ��

FROM dbo.EDU_ZZXS_22_A04_ZSGLXSXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_22_A01_ZSGLCZXX AS d ON a.BYXXID = d.ID /*��ҵѧУID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_22_A03_ZSGLZSJHXD AS e ON a.DYZYID = e.ID /*��һ־ԸID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_22_A03_ZSGLZSJHXD AS f ON a.DEZYID = f.ID /*�ڶ�־ԸID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_22_A03_ZSGLZSJHXD AS g ON a.DSZYID = g.ID /*����־ԸID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_22_A03_ZSGLZSJHXD AS h ON a.LSID = h.ID /*��ʱID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS i ON a.LQZYID = i.ZYBH /*¼ȡרҵID*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS j ON a.XNID = j.ID /*ѧ��ID*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [ib] ON i.ZYDM = [ib].DM /*רҵ����*/ AND i.SSZYML = [ib].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [ic] ON i.SSZYML = [ic].DM /*����רҵĿ¼*/
GO
