
--ѧ���ɼ����ͱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_06_02_XSCJLX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[LXMC]--��������
      ,a.[QZ]--Ȩ��
      ,a.[KCQDID]--�γ��嵥ID
      ,c.SCHOOLID as c_JXJHKCQD_SCHOOLID--��ѧ�ƻ��γ��嵥��������� ѧУID
      ,c.JXJHID as c_JXJHKCQD_JXJHID--��ѧ�ƻ��γ��嵥��������� ��ѧ�ƻ�ID
      ,c.KCH as c_JXJHKCQD_KCH--��ѧ�ƻ��γ��嵥��������� �γ̺�
      ,c.JHBH as c_JXJHKCQD_JHBH--��ѧ�ƻ��γ��嵥��������� �ƻ����
      ,c.XQID as c_JXJHKCQD_XQID--��ѧ�ƻ��γ��嵥��������� ѧ��ID
      ,c.KCMC as c_JXJHKCQD_KCMC--��ѧ�ƻ��γ��嵥��������� �γ�����
      ,c.YXKC as c_JXJHKCQD_YXKC--��ѧ�ƻ��γ��嵥��������� Ԥ�޿γ�
      ,c.SFHXKC as c_JXJHKCQD_SFHXKC--��ѧ�ƻ��γ��嵥��������� �Ƿ���ģ��Ǹɣ�
      ,[cb].MC as c_JXJHKCQD_SFHXKC_MC--�ڿη�ʽ����� ����
      ,c.KCFLM as c_JXJHKCQD_KCFLM--��ѧ�ƻ��γ��嵥��������� �γ̷�����
      ,[cc].MC as c_JXJHKCQD_KCFLM_MC--�γ̷������ ����
      ,c.KCSXM as c_JXJHKCQD_KCSXM--��ѧ�ƻ��γ��嵥��������� �γ�������
      ,[cd].MC as c_JXJHKCQD_KCSXM_MC--�γ����Դ���� ����
      ,[cd].SM as c_JXJHKCQD_KCSXM_SM--�γ����Դ���� ˵��
      ,c.ZXXQ as c_JXJHKCQD_ZXXQ--��ѧ�ƻ��γ��嵥��������� ִ��ѧ��
      ,c.ZKS as c_JXJHKCQD_ZKS--��ѧ�ƻ��γ��嵥��������� �ܿ�ʱ
      ,c.LLKS as c_JXJHKCQD_LLKS--��ѧ�ƻ��γ��嵥��������� ���ۿ�ʱ
      ,c.SJKS as c_JXJHKCQD_SJKS--��ѧ�ƻ��γ��嵥��������� ʵ����ʱ
      ,c.XF as c_JXJHKCQD_XF--��ѧ�ƻ��γ��嵥��������� ѧ��
      ,c.XFRDHGX as c_JXJHKCQD_XFRDHGX--��ѧ�ƻ��γ��嵥��������� ѧ���϶��ϸ���

FROM dbo.EDU_ZZXS_06_02_XSCJLX AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS c ON a.KCQDID = c.ID /*�γ��嵥ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [cb] ON c.SFHXKC = [cb].DM /*�Ƿ���ģ��Ǹɣ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [cc] ON c.KCFLM = [cc].DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [cd] ON c.KCSXM = [cd].DM /*�γ�������*/
GO
