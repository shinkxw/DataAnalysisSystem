
--ѧУ�꼶���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_02_01_ZZNJ_DISP]
AS
SELECT a.[NJDM]--�꼶����
      ,a.[SCHOOLID]--ѧУ��
      ,a.[NJMC]--�꼶����
      ,a.[SSNF]--�������
      ,a.[NJZT]--�꼶״̬
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,c.MC as c_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZJX_02_01_ZZNJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.NJZT = c.DM /*�꼶״̬*/
GO
