
--�༶�������
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_03_01_BJ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[BH]--���
      ,a.[NJ]--�꼶��
      ,a.[BJ]--�༶����
      ,a.[JBNY]--��������
      ,a.[BZRGH]--�����ι���
      ,a.[BZXH]--�೤ѧ��
      ,a.[BJRYCH]--�༶�����ƺ�
      ,a.[XZ]--ѧ��
      ,a.[BJLXM]--�༶������
      ,a.[WLLX]--��������
      ,a.[BYRQ]--��ҵ����
      ,a.[SFSSMZSYJXB]--�Ƿ���������˫���ѧ��
      ,a.[SYJXMSM]--˫���ѧģʽ��
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_NJ_SCHOOLID--ѧУ��
      ,c.NJMC as c_NJ_NJMC--�꼶����
      ,d.MC as d_ZXXBJLX_MC--����
      ,e.MC as e_SFBZ_MC--����
      ,f.MC as f_SSMZSYJXMS_MC--����
      ,f.SM as f_SSMZSYJXMS_SM--˵��

FROM dbo.EDU_ZXXX_03_01_BJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS c ON a.NJ = c.NJ /*�꼶��*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS d ON a.BJLXM = d.DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFSSMZSYJXB = e.DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS f ON a.SYJXMSM = f.DM /*˫���ѧģʽ��*/
GO
