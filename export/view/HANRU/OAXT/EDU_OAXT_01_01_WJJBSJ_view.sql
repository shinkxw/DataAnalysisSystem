
--�ļ������������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_01_01_WJJBSJ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[ID]--�ļ�ID
      ,a.[WJBH]--�ļ����
      ,a.[WJWH]--�ļ��ĺ�
      ,a.[BT]--����
      ,a.[ZTC]--�����
      ,a.[MJM]--�ܼ���
      ,a.[JJCDM]--�����̶���
      ,a.[YS]--ҳ��
      ,a.[WJFLM]--�ļ�������
      ,a.[ZW]--����
      ,a.[FJ]--����
      ,a.[FWRQ]--��������
      ,a.[CSDW]--���͵�λ
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.HYPYDM as c_WXBMZJ_HYPYDM--����ƴ������
      ,c.HZDM as c_WXBMZJ_HZDM--���ִ���
      ,c.MC as c_WXBMZJ_MC--����
      ,d.MC as d_JJCD_MC--����
      ,e.MC as e_WJFL_MC--����
      ,e.SM as e_WJFL_SM--˵��

FROM dbo.EDU_OAXT_01_01_WJJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS c ON a.MJM = c.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS d ON a.JJCDM = d.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS e ON a.WJFLM = e.DM /*�ļ�������*/
GO
