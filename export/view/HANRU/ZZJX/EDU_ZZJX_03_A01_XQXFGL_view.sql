
--ѧ��ѧ�ֹ����
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_A01_XQXFGL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[JXJHID]--��ѧ�ƻ�ID
      ,a.[XQID]--ѧ��ID
      ,a.[JHBH]--�ƻ����
      ,a.[ZDXF]--���ѧ��
      ,a.[ZGXF]--���ѧ��
      ,c.SCHOOLID as c_ZTJXJH_SCHOOLID--�����ѧ�ƻ���������� ѧУID
      ,c.JHBH as c_ZTJXJH_JHBH--�����ѧ�ƻ���������� �ƻ����
      ,c.JHNJ as c_ZTJXJH_JHNJ--�����ѧ�ƻ���������� �ƻ��꼶
      ,c.ZYXXID as c_ZTJXJH_ZYXXID--�����ѧ�ƻ���������� רҵID
      ,c.JHZYMC as c_ZTJXJH_JHZYMC--�����ѧ�ƻ���������� �ƻ�רҵ����
      ,c.ZXFYQ as c_ZTJXJH_ZXFYQ--�����ѧ�ƻ���������� ��ѧ��Ҫ��
      ,c.JLNY as c_ZTJXJH_JLNY--�����ѧ�ƻ���������� ��������
      ,c.SYXZ as c_ZTJXJH_SYXZ--�����ѧ�ƻ���������� ����ѧ��
      ,c.PYMB as c_ZTJXJH_PYMB--�����ѧ�ƻ���������� ����Ŀ��
      ,c.SFKY as c_ZTJXJH_SFKY--�����ѧ�ƻ���������� �Ƿ����
      ,[cb].MC as c_ZTJXJH_SFKY_MC--�Ƿ��־����� ����
      ,c.FJ as c_ZTJXJH_FJ--�����ѧ�ƻ���������� ����
      ,c.ZYRS as c_ZTJXJH_ZYRS--�����ѧ�ƻ���������� רҵ����
      ,d.SCHOOLID as d_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,d.XNID as d_XQ_XNID--ѧ�����ݱ� ѧ��
      ,d.XQM as d_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[db].MC as d_XQ_XQM_MC--ѧ�ڴ���� ����
      ,d.XQMC as d_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,d.XQKSRQ as d_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,d.XQJSRQ as d_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.BaseProjectInfoID as d_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���

FROM dbo.EDU_ZZJX_03_A01_XQXFGL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS c ON a.JXJHID = c.ID /*��ѧ�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFKY = [cb].DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*ѧ����*/
GO
