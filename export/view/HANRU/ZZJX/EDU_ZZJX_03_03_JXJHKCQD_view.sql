
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_KC_SCHOOLID--ѧУID
      ,c.KCMC as c_KC_KCMC--�γ�����
      ,c.KCYWM as c_KC_KCYWM--�γ�Ӣ����
      ,c.KCBM as c_KC_KCBM--�γ̱���
      ,c.KCJS as c_KC_KCJS--�γ̽���
      ,c.XF as c_KC_XF--ѧ��
      ,c.ZXS as c_KC_ZXS--��ѧʱ
      ,c.LLXS as c_KC_LLXS--����ѧʱ
      ,c.SJXS as c_KC_SJXS--ʵ��ѧʱ
      ,c.QTXS as c_KC_QTXS--����ѧʱ
      ,c.CKSM as c_KC_CKSM--�ο���Ŀ
      ,c.KKDW as c_KC_KKDW--���ε�λ
      ,c.KSXS as c_KC_KSXS--������ʽ
      ,cb.MC as c_KC_KSXS_MC--����
      ,c.SKFSM as c_KC_SKFSM--�ڿη�ʽ��
      ,cc.MC as c_KC_SKFSM_MC--����
      ,c.KCFY as c_KC_KCFY--�γ̷���
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--ѧУID
      ,d.JHNJ as d_ZTJXJH_JHNJ--�ƻ��꼶
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--רҵ���
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--�ƻ�רҵ����
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--��ѧ��Ҫ��
      ,d.JLNY as d_ZTJXJH_JLNY--��������
      ,d.SYXZ as d_ZTJXJH_SYXZ--����ѧ��
      ,d.PYMB as d_ZTJXJH_PYMB--����Ŀ��
      ,d.SFKY as d_ZTJXJH_SFKY--�Ƿ����
      ,db.MC as d_ZTJXJH_SFKY_MC--����
      ,d.FJ as d_ZTJXJH_FJ--����
      ,e.SCHOOLID as e_XQ_SCHOOLID--ѧУ��
      ,e.XNID as e_XQ_XNID--ѧ��
      ,e.XQM as e_XQ_XQM--ѧ����
      ,eb.MC as e_XQ_XQM_MC--����
      ,e.XQMC as e_XQ_XQMC--ѧ������
      ,e.XQKSRQ as e_XQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,e.XQJSRQ as e_XQ_XQJSRQ--ѧ�ڽ�������
      ,f.MC as f_SKFS_MC--����
      ,g.MC as g_KCFL_MC--����
      ,h.MC as h_KCSX_MC--����
      ,h.SM as h_KCSX_SM--˵��

FROM dbo.EDU_ZZJX_03_03_JXJHKCQD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
