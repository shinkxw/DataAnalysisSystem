
--��ѧ�ƻ�����ѧ��Ҫ����������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_02_JXJHFLXFYQ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[KCFLM]--�γ̷�����
      ,a.[JXJHID]--��ѧ�ƻ�ID
      ,a.[XFYQ]--ѧ��Ҫ��
      ,a.[JHBH]--�ƻ����
      ,c.MC as c_KCFL_MC--�γ̷������ ����
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--�����ѧ�ƻ���������� ѧУID
      ,d.JHBH as d_ZTJXJH_JHBH--�����ѧ�ƻ���������� �ƻ����
      ,d.JHNJ as d_ZTJXJH_JHNJ--�����ѧ�ƻ���������� �ƻ��꼶
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--�����ѧ�ƻ���������� רҵID
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--�����ѧ�ƻ���������� �ƻ�רҵ����
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--�����ѧ�ƻ���������� ��ѧ��Ҫ��
      ,d.JLNY as d_ZTJXJH_JLNY--�����ѧ�ƻ���������� ��������
      ,d.SYXZ as d_ZTJXJH_SYXZ--�����ѧ�ƻ���������� ����ѧ��
      ,d.PYMB as d_ZTJXJH_PYMB--�����ѧ�ƻ���������� ����Ŀ��
      ,d.SFKY as d_ZTJXJH_SFKY--�����ѧ�ƻ���������� �Ƿ����
      ,db.MC as d_ZTJXJH_SFKY_MC--�Ƿ��־����� ����
      ,d.FJ as d_ZTJXJH_FJ--�����ѧ�ƻ���������� ����
      ,d.ZYRS as d_ZTJXJH_ZYRS--�����ѧ�ƻ���������� רҵ����

FROM dbo.EDU_ZZJX_03_02_JXJHFLXFYQ AS a LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS c ON a.KCFLM = c.DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JXJHID = d.ID /*��ѧ�ƻ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS db ON d.SFKY = db.DM /*�Ƿ����*/
GO
