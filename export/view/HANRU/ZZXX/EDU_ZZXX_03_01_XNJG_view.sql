
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,c.SCHOOLID as c_XNJG_SCHOOLID--У�ڻ���������� ѧУ��
      ,c.JGMC as c_XNJG_JGMC--У�ڻ���������� ��������
      ,c.JGYWMC as c_XNJG_JGYWMC--У�ڻ���������� ����Ӣ������
      ,c.JGJC as c_XNJG_JGJC--У�ڻ���������� �������
      ,c.JGJP as c_XNJG_JGJP--У�ڻ���������� ������ƴ
      ,c.JGDZ as c_XNJG_JGDZ--У�ڻ���������� ������ַ
      ,c.LSSJJGH as c_XNJG_LSSJJGH--У�ڻ���������� �����ϼ�������
      ,c.LSXQH as c_XNJG_LSXQH--У�ڻ���������� ����У����
      ,c.JGYXBS as c_XNJG_JGYXBS--У�ڻ���������� ������Ч��ʶ
      ,cb.MC as c_XNJG_JGYXBS_MC--�Ƿ��־����� ����
      ,c.SFST as c_XNJG_SFST--У�ڻ���������� �Ƿ�ʵ��
      ,cc.MC as c_XNJG_SFST_MC--�Ƿ��־����� ����
      ,c.JLNY as c_XNJG_JLNY--У�ڻ���������� ��������
      ,c.JGYZBM as c_XNJG_JGYZBM--У�ڻ���������� ������������
      ,c.FZRH as c_XNJG_FZRH--У�ڻ���������� �����˺�
      ,d.MC as d_SFBZ_MC--�Ƿ��־����� ����
      ,e.MC as e_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZXX_03_01_XNJG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.LSSJJGH = c.JGH /*�����ϼ�������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.JGYXBS = d.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFST = e.DM /*�Ƿ�ʵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.JGYXBS = cb.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cc ON c.SFST = cc.DM /*�Ƿ�ʵ��*/
GO
