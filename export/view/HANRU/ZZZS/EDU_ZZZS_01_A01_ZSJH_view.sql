
--�����ƻ����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZZS_01_A01_ZSJH_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[ZYXXID]--רҵ������Ϣ
      ,a.[XNID]--ѧ��
      ,a.[ZSJHRS]--�����ƻ�
      ,a.[BZ]--��ע
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--ѧУ���ñ� Ȩ���б�
      ,c.SCHOOLID as c_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,c.ZYDM as c_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,cb.ZYMLLB as c_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,cb.MC as c_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,c.ZYMC as c_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,c.ZYYWMC as c_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,c.XZ as c_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,c.ZYFXMC as c_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,c.ZYJC as c_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,c.JLNY as c_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,c.ZYJSS as c_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,c.KSJGH as c_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,c.ZXF as c_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,c.SSZYML as c_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,cc.MC as c_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,c.ZYLB as c_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,d.SCHOOLID as d_XN_SCHOOLID--ѧ��� ѧУ��
      ,d.XN as d_XN_XN--ѧ��� ѧ��

FROM dbo.EDU_ZZZS_01_A01_ZSJH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS c ON a.ZYXXID = c.ZYBH /*רҵ������Ϣ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS d ON a.XNID = d.ID /*ѧ��*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS cb ON c.ZYDM = cb.DM /*רҵ����*/ AND c.SSZYML = cb.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS cc ON c.SSZYML = cc.DM /*����רҵĿ¼*/
GO
