
--�����ƻ����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZZS_01_A01_ZSJH_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[ZYXXID]--רҵ������Ϣ
      ,a.[XNID]--ѧ��
      ,a.[ZSJHRS]--�����ƻ�
      ,a.[BZ]--��ע
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_ZYXX_SCHOOLID--ѧУ��
      ,c.ZYDM as c_ZYXX_ZYDM--רҵ����
      ,cb.ZYMLLB as c_ZYXX_ZYDM_ZYMLLB--רҵĿ¼���
      ,cb.MC as c_ZYXX_ZYDM_MC--����
      ,c.ZYMC as c_ZYXX_ZYMC--רҵ����
      ,c.ZYYWMC as c_ZYXX_ZYYWMC--רҵӢ������
      ,c.XZ as c_ZYXX_XZ--ѧ��
      ,c.ZYFXMC as c_ZYXX_ZYFXMC--רҵ��������
      ,c.ZYJC as c_ZYXX_ZYJC--רҵ���
      ,c.JLNY as c_ZYXX_JLNY--��������
      ,c.ZYJSS as c_ZYXX_ZYJSS--רҵ��ʦ��
      ,c.KSJGH as c_ZYXX_KSJGH--���������
      ,c.ZXF as c_ZYXX_ZXF--��ѧ��
      ,c.SSZYML as c_ZYXX_SSZYML--����רҵĿ¼
      ,cc.MC as c_ZYXX_SSZYML_MC--����
      ,c.ZYLB as c_ZYXX_ZYLB--רҵ�������
      ,d.SCHOOLID as d_XN_SCHOOLID--ѧУ��
      ,d.XN as d_XN_XN--ѧ��

FROM dbo.EDU_ZZZS_01_A01_ZSJH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS c ON a.ZYXXID = c.ZYBH /*רҵ������Ϣ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS d ON a.XNID = d.ID /*ѧ��*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS cb ON c.ZYDM = cb.DM /*רҵ����*/ AND c.SSZYML = cb.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS cc ON c.SSZYML = cc.DM /*����רҵĿ¼*/
GO
