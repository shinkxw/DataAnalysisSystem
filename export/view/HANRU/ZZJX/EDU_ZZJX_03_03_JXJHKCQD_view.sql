
--��ѧ�ƻ��γ��嵥���������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_03_JXJHKCQD_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[KCH]--�γ̺�
      ,a.[JHBH]--�ƻ����
      ,a.[XQID]--ѧ��ID
      ,a.[KCMC]--�γ�����
      ,a.[YXKC]--Ԥ�޿γ�
      ,a.[SFHXKC]--�Ƿ���ģ��Ǹɣ�
      ,a.[KCFLM]--�γ̷�����
      ,a.[KCSXM]--�γ�������
      ,a.[ZXXQ]--ִ��ѧ��
      ,c.SCHOOLID as c_KC_SCHOOLID--�γ���������� ѧУID
      ,c.KCMC as c_KC_KCMC--�γ���������� �γ�����
      ,c.KCYWM as c_KC_KCYWM--�γ���������� �γ�Ӣ����
      ,c.KCBM as c_KC_KCBM--�γ���������� �γ̱���
      ,c.KCJS as c_KC_KCJS--�γ���������� �γ̽���
      ,c.XF as c_KC_XF--�γ���������� ѧ��
      ,c.ZXS as c_KC_ZXS--�γ���������� ��ѧʱ
      ,c.LLXS as c_KC_LLXS--�γ���������� ����ѧʱ
      ,c.SJXS as c_KC_SJXS--�γ���������� ʵ��ѧʱ
      ,c.QTXS as c_KC_QTXS--�γ���������� ����ѧʱ
      ,c.CKSM as c_KC_CKSM--�γ���������� �ο���Ŀ
      ,c.KKDW as c_KC_KKDW--�γ���������� ���ε�λ
      ,c.KSXS as c_KC_KSXS--�γ���������� ������ʽ
      ,cb.MC as c_KC_KSXS_MC--������ʽ����� ����
      ,c.SKFSM as c_KC_SKFSM--�γ���������� �ڿη�ʽ��
      ,cc.MC as c_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,c.KCFY as c_KC_KCFY--�γ���������� �γ̷���
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--�����ѧ�ƻ���������� ѧУID
      ,d.JHNJ as d_ZTJXJH_JHNJ--�����ѧ�ƻ���������� �ƻ��꼶
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--�����ѧ�ƻ���������� רҵ���
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--�����ѧ�ƻ���������� �ƻ�רҵ����
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--�����ѧ�ƻ���������� ��ѧ��Ҫ��
      ,d.JLNY as d_ZTJXJH_JLNY--�����ѧ�ƻ���������� ��������
      ,d.SYXZ as d_ZTJXJH_SYXZ--�����ѧ�ƻ���������� ����ѧ��
      ,d.PYMB as d_ZTJXJH_PYMB--�����ѧ�ƻ���������� ����Ŀ��
      ,d.SFKY as d_ZTJXJH_SFKY--�����ѧ�ƻ���������� �Ƿ����
      ,db.MC as d_ZTJXJH_SFKY_MC--�ڿη�ʽ����� ����
      ,d.FJ as d_ZTJXJH_FJ--�����ѧ�ƻ���������� ����
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
      dbo.EDU_ZZJX_01_02_KC AS c ON a.KCH = c.KCH /*�γ̺�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JHBH = d.JHBH /*�ƻ����*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS f ON a.SFHXKC = f.DM /*�Ƿ���ģ��Ǹɣ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS g ON a.KCFLM = g.DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS h ON a.KCSXM = h.DM /*�γ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS cb ON c.KSXS = cb.DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cc ON c.SKFSM = cc.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFKY = db.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS eb ON e.XQM = eb.DM /*ѧ����*/
GO
