
--��ѧ�ƻ��γ��嵥���������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_03_JXJHKCQD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[JXJHID]--��ѧ�ƻ�ID
      ,a.[KCH]--�γ̺�
      ,a.[JHBH]--�ƻ����
      ,a.[XQID]--ѧ��ID
      ,a.[KCMC]--�γ�����
      ,a.[YXKC]--Ԥ�޿γ�
      ,a.[SFHXKC]--�Ƿ���ģ��Ǹɣ�
      ,a.[KCFLM]--�γ̷�����
      ,a.[KCSXM]--�γ�������
      ,a.[ZXXQ]--ִ��ѧ��
      ,a.[ZKS]--�ܿ�ʱ
      ,a.[LLKS]--���ۿ�ʱ
      ,a.[SJKS]--ʵ����ʱ
      ,a.[XF]--ѧ��
      ,c.SCHOOLID as c_ZTJXJH_SCHOOLID--�����ѧ�ƻ���������� ѧУID
      ,c.JHBH as c_ZTJXJH_JHBH--�����ѧ�ƻ���������� �ƻ����
      ,c.JHNJ as c_ZTJXJH_JHNJ--�����ѧ�ƻ���������� �ƻ��꼶
      ,c.ZYXXID as c_ZTJXJH_ZYXXID--�����ѧ�ƻ���������� רҵID
      ,c.JHZYMC as c_ZTJXJH_JHZYMC--�����ѧ�ƻ���������� �ƻ�רҵ����
      ,c.ZXFYQ as c_ZTJXJH_ZXFYQ--�����ѧ�ƻ���������� ��ѧ��Ҫ��
      ,c.JLNY as c_ZTJXJH_JLNY--�����ѧ�ƻ���������� ��������
      ,c.SYXZ as c_ZTJXJH_SYXZ--�����ѧ�ƻ���������� ����ѧ��
      ,c.PYMB as c_ZTJXJH_PYMB--�����ѧ�ƻ���������� ����Ŀ��
      ,c.SFKY as c_ZTJXJH_SFKY--�����ѧ�ƻ���������� �Ƿ����
      ,cb.MC as c_ZTJXJH_SFKY_MC--�Ƿ��־����� ����
      ,c.FJ as c_ZTJXJH_FJ--�����ѧ�ƻ���������� ����
      ,c.ZYRS as c_ZTJXJH_ZYRS--�����ѧ�ƻ���������� רҵ����
      ,d.SCHOOLID as d_KC_SCHOOLID--�γ���������� ѧУID
      ,d.KCMC as d_KC_KCMC--�γ���������� �γ�����
      ,d.KCYWM as d_KC_KCYWM--�γ���������� �γ�Ӣ����
      ,d.KCBM as d_KC_KCBM--�γ���������� �γ̱���
      ,d.KCJS as d_KC_KCJS--�γ���������� �γ̽���
      ,d.XF as d_KC_XF--�γ���������� ѧ��
      ,d.ZXS as d_KC_ZXS--�γ���������� ��ѧʱ
      ,d.LLXS as d_KC_LLXS--�γ���������� ����ѧʱ
      ,d.SJXS as d_KC_SJXS--�γ���������� ʵ��ѧʱ
      ,d.QTXS as d_KC_QTXS--�γ���������� ����ѧʱ
      ,d.CKSM as d_KC_CKSM--�γ���������� �ο���Ŀ
      ,d.KKDW as d_KC_KKDW--�γ���������� ���ε�λ
      ,d.KSXS as d_KC_KSXS--�γ���������� ������ʽ
      ,db.MC as d_KC_KSXS_MC--������ʽ����� ����
      ,d.SKFSM as d_KC_SKFSM--�γ���������� �ڿη�ʽ��
      ,dc.MC as d_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,d.KCFY as d_KC_KCFY--�γ���������� �γ̷���
      ,e.SCHOOLID as e_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,e.XNID as e_XQ_XNID--ѧ�����ݱ� ѧ��
      ,e.XQM as e_XQ_XQM--ѧ�����ݱ� ѧ����
      ,eb.MC as e_XQ_XQM_MC--ѧ�ڴ���� ����
      ,e.XQMC as e_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,e.XQKSRQ as e_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,e.XQJSRQ as e_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,f.MC as f_SKFS_MC--�ڿη�ʽ����� ����
      ,g.MC as g_KCFL_MC--�γ̷������ ����
      ,h.MC as h_KCSX_MC--�γ����Դ���� ����
      ,h.SM as h_KCSX_SM--�γ����Դ���� ˵��

FROM dbo.EDU_ZZJX_03_03_JXJHKCQD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS c ON a.JXJHID = c.ID /*��ѧ�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCH = d.KCH /*�γ̺�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS f ON a.SFHXKC = f.DM /*�Ƿ���ģ��Ǹɣ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS g ON a.KCFLM = g.DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS h ON a.KCSXM = h.DM /*�γ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.SFKY = cb.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS db ON d.KSXS = db.DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dc ON d.SKFSM = dc.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS eb ON e.XQM = eb.DM /*ѧ����*/
GO
