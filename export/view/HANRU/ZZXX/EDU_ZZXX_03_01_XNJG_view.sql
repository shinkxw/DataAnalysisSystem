
--У�ڻ����������
CREATE VIEW [dbo].[VIEW_EDU_ZZXX_03_01_XNJG_DISP]
AS
SELECT a.[JGH]--������
      ,a.[SCHOOLID]--ѧУ��
      ,a.[JGMC]--��������
      ,a.[JGYWMC]--����Ӣ������
      ,a.[JGJC]--�������
      ,a.[JGJP]--������ƴ
      ,a.[JGDZ]--������ַ
      ,a.[LSSJJGH]--�����ϼ�������
      ,a.[LSXQH]--����У����
      ,a.[JGYXBS]--������Ч��ʶ
      ,a.[SFST]--�Ƿ�ʵ��
      ,a.[JLNY]--��������
      ,a.[JGYZBM]--������������
      ,a.[FZRH]--�����˺�
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
      ,d.MC as d_SFBZ_MC--����
      ,e.MC as e_SFBZ_MC--����

FROM dbo.EDU_ZZXX_03_01_XNJG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.LSSJJGH = c.JGH /*�����ϼ�������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.JGYXBS = d.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFST = e.DM /*�Ƿ�ʵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.JGYXBS = cb.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cc ON c.SFST = cc.DM /*�Ƿ�ʵ��*/
GO
