
--�γ����������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_02_KC_DISP]
AS
SELECT a.[KCH]--�γ̺�
      ,a.[SCHOOLID]--ѧУID
      ,a.[KCMC]--�γ�����
      ,a.[KCYWM]--�γ�Ӣ����
      ,a.[KCBM]--�γ̱���
      ,a.[KCJS]--�γ̽���
      ,a.[XF]--ѧ��
      ,a.[ZXS]--��ѧʱ
      ,a.[LLXS]--����ѧʱ
      ,a.[SJXS]--ʵ��ѧʱ
      ,a.[QTXS]--����ѧʱ
      ,a.[CKSM]--�ο���Ŀ
      ,a.[KKDW]--���ε�λ
      ,a.[KSXS]--������ʽ
      ,a.[SKFSM]--�ڿη�ʽ��
      ,a.[KCFY]--�γ̷���
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_XNJG_SCHOOLID--ѧУ��
      ,c.JGMC as c_XNJG_JGMC--��������
      ,c.JGYWMC as c_XNJG_JGYWMC--����Ӣ������
      ,c.JGJC as c_XNJG_JGJC--�������
      ,c.JGJP as c_XNJG_JGJP--������ƴ
      ,c.JGDZ as c_XNJG_JGDZ--������ַ
      ,c.LSSJJGH as c_XNJG_LSSJJGH--�����ϼ�������
      ,c.LSXQH as c_XNJG_LSXQH--����У����
      ,c.JGYXBS as c_XNJG_JGYXBS--������Ч��ʶ
      ,cb.MC as c_XNJG_JGYXBS_MC--����
      ,c.SFST as c_XNJG_SFST--�Ƿ�ʵ��
      ,cc.MC as c_XNJG_SFST_MC--����
      ,c.JLNY as c_XNJG_JLNY--��������
      ,c.JGYZBM as c_XNJG_JGYZBM--������������
      ,c.FZRH as c_XNJG_FZRH--�����˺�
      ,d.MC as d_KSXS_MC--����
      ,e.MC as e_SKFS_MC--����

FROM dbo.EDU_ZZJX_01_02_KC AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.KKDW = c.JGH /*���ε�λ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS d ON a.KSXS = d.DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS e ON a.SKFSM = e.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.JGYXBS = cb.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cc ON c.SFST = cc.DM /*�Ƿ�ʵ��*/
GO
