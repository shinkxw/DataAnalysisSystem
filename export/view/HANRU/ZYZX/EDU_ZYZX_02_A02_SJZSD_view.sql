
--�Ծ�֪ʶ���
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_02_A02_SJZSD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KCH]--�γ�ID
      ,a.[ZSDMC]--֪ʶ������
      ,c.SCHOOLID as c_KC_SCHOOLID--�γ���������� ѧУID
      ,c.KCMC as c_KC_KCMC--�γ���������� �γ�����
      ,c.KCYWM as c_KC_KCYWM--�γ���������� �γ�Ӣ����
      ,c.KCBM as c_KC_KCBM--�γ���������� �γ̱���
      ,c.KCJS as c_KC_KCJS--�γ���������� �γ̽���
      ,c.XF as c_KC_XF--�γ���������� ѧ��
      ,c.ZXS as c_KC_ZXS--�γ���������� ��ѧʱ
      ,c.LLXS as c_KC_LLXS--�γ���������� ����ѧʱ
      ,c.SJXS as c_KC_SJXS--�γ���������� ʵ��ѧʱ
      ,c.QTXS as c_KC_QTXS--�γ���������� ����ѧʱ
      ,c.CKSM as c_KC_CKSM--�γ���������� �ο���Ŀ
      ,c.KKDW as c_KC_KKDW--�γ���������� ���ε�λ
      ,c.KSXS as c_KC_KSXS--�γ���������� ������ʽ
      ,[cb].MC as c_KC_KSXS_MC--������ʽ����� ����
      ,c.SKFSM as c_KC_SKFSM--�γ���������� �ڿη�ʽ��
      ,[cc].MC as c_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,c.KCFY as c_KC_KCFY--�γ���������� �γ̷���

FROM dbo.EDU_ZYZX_02_A02_SJZSD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS c ON a.KCH = c.KCH /*�γ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [cb] ON c.KSXS = [cb].DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [cc] ON c.SKFSM = [cc].DM /*�ڿη�ʽ��*/
GO
