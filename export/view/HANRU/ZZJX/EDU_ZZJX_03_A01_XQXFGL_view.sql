
--ѧ��ѧ�ֹ����
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_A01_XQXFGL_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[JHBH]--�ƻ����
      ,a.[ZDXF]--���ѧ��
      ,a.[ZGXF]--���ѧ��
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ��
      ,c.XQM as c_XQ_XQM--ѧ����
      ,cb.MC as c_XQ_XQM_MC--����
      ,c.XQMC as c_XQ_XQMC--ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�ڽ�������
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--ѧУID
      ,d.JHNJ as d_ZTJXJH_JHNJ--�ƻ��꼶
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--רҵ���
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--�ƻ�רҵ����
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--��ѧ��Ҫ��
      ,d.JLNY as d_ZTJXJH_JLNY--��������
      ,d.SYXZ as d_ZTJXJH_SYXZ--����ѧ��
      ,d.PYMB as d_ZTJXJH_PYMB--����Ŀ��
      ,d.SFKY as d_ZTJXJH_SFKY--�Ƿ����
      ,db.MC as d_ZTJXJH_SFKY_MC--����
      ,d.FJ as d_ZTJXJH_FJ--����

FROM dbo.EDU_ZZJX_03_A01_XQXFGL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JHBH = d.JHBH /*�ƻ����*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFKY = db.DM /*�Ƿ����*/
GO
