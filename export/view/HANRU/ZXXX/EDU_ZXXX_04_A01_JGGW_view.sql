
--������λ��
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_04_A01_JGGW_DISP]
AS
SELECT a.[ID]--��λ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[JGH]--������
      ,a.[GWBH]--��λ���
      ,a.[GWMC]--��λ����
      ,a.[GWSM]--��λ˵��
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--ѧУ���ñ� Ȩ���б�
      ,c.SCHOOLID as c_JG_SCHOOLID--����������� ѧУ��
      ,c.LSJGH as c_JG_LSJGH--����������� ����������
      ,c.JGMC as c_JG_JGMC--����������� ��������
      ,c.JGJC as c_JG_JGJC--����������� �������
      ,c.FZRGH as c_JG_FZRGH--����������� �����˹���

FROM dbo.EDU_ZXXX_04_A01_JGGW AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS c ON a.JGH = c.JGH /*������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO
