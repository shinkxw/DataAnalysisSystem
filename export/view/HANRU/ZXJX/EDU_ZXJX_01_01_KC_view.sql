
--�γ�������
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_01_01_KC_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[KCH]--�γ̺�
      ,a.[KCMC]--�γ�����
      ,a.[KCM]--�γ���
      ,a.[KCDJM]--�γ̵ȼ���
      ,a.[KCBM]--�γ̱���
      ,a.[KCJJ]--�γ̼��
      ,a.[KCYQ]--�γ�Ҫ��
      ,a.[ZXS]--��ѧʱ
      ,a.[ZHXS]--��ѧʱ
      ,a.[ZXXS]--��ѧѧʱ
      ,a.[SKFSM]--�ڿη�ʽ��
      ,a.[JCBM]--�̲ı���
      ,a.[CKSM]--�ο���Ŀ
      ,a.[CDXZ]--��������
      ,a.[SFZK]--�Ƿ�����
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.MC as c_ZXXKC_MC--����
      ,c.SYXX as c_ZXXKC_SYXX--����ѧУ
      ,d.MC as d_ZXXKCDJ_MC--����
      ,e.MC as e_SKFS_MC--����
      ,f.MC as f_SFBZ_MC--����

FROM dbo.EDU_ZXJX_01_01_KC AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS c ON a.KCM = c.DM /*�γ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS d ON a.KCDJM = d.DM /*�γ̵ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS e ON a.SKFSM = e.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFZK = f.DM /*�Ƿ�����*/
GO
