
--ѧ��ѧ�ֹ����
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_A01_XQXFGL_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[JHBH]--�ƻ����
      ,a.[ZDXF]--���ѧ��
      ,a.[ZGXF]--���ѧ��
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.MenhuURL as b_SCHOOL_MenhuURL--ѧУ���ñ� �Ż�url
      ,b.MenhuWebid as b_SCHOOL_MenhuWebid--ѧУ���ñ� �Ż�webid
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--ѧУ���ñ� Ȩ���б�
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,cb.MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--�����ѧ�ƻ���������� ѧУID
      ,d.JHNJ as d_ZTJXJH_JHNJ--�����ѧ�ƻ���������� �ƻ��꼶
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--�����ѧ�ƻ���������� רҵ���
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--�����ѧ�ƻ���������� �ƻ�רҵ����
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--�����ѧ�ƻ���������� ��ѧ��Ҫ��
      ,d.JLNY as d_ZTJXJH_JLNY--�����ѧ�ƻ���������� ��������
      ,d.SYXZ as d_ZTJXJH_SYXZ--�����ѧ�ƻ���������� ����ѧ��
      ,d.PYMB as d_ZTJXJH_PYMB--�����ѧ�ƻ���������� ����Ŀ��
      ,d.SFKY as d_ZTJXJH_SFKY--�����ѧ�ƻ���������� �Ƿ����
      ,db.MC as d_ZTJXJH_SFKY_MC--�ڿη�ʽ����� ����
      ,d.FJ as d_ZTJXJH_FJ--�����ѧ�ƻ���������� ����

FROM dbo.EDU_ZZJX_03_A01_XQXFGL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JHBH = d.JHBH /*�ƻ����*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFKY = db.DM /*�Ƿ����*/
GO
