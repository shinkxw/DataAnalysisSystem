
--�γ����������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_02_KC_DISP]
AS
SELECT a.[KCH]--�γ̺�
      ,a.[SCHOOLID]--ѧУID
      ,a.[KCMC]--�γ�����
      ,a.[KCYWM]--�γ�Ӣ����
      ,a.[KCBM]--�γ̱���
      ,a.[KCJS]--�γ̽���
      ,a.[XF]--ѧ��
      ,a.[ZXS]--��ѧʱ
      ,a.[LLXS]--����ѧʱ
      ,a.[SJXS]--ʵ��ѧʱ
      ,a.[QTXS]--����ѧʱ
      ,a.[CKSM]--�ο���Ŀ
      ,a.[KKDW]--���ε�λ
      ,a.[KSXS]--������ʽ
      ,a.[SKFSM]--�ڿη�ʽ��
      ,a.[KCFY]--�γ̷���
      ,c.SCHOOLID as c_XNJG_SCHOOLID--У�ڻ���������� ѧУ��
      ,c.JGMC as c_XNJG_JGMC--У�ڻ���������� ��������
      ,c.JGYWMC as c_XNJG_JGYWMC--У�ڻ���������� ����Ӣ������
      ,c.JGJC as c_XNJG_JGJC--У�ڻ���������� �������
      ,c.JGJP as c_XNJG_JGJP--У�ڻ���������� ������ƴ
      ,c.JGDZ as c_XNJG_JGDZ--У�ڻ���������� ������ַ
      ,c.LSSJJGH as c_XNJG_LSSJJGH--У�ڻ���������� �����ϼ�������
      ,c.LSXQH as c_XNJG_LSXQH--У�ڻ���������� ����У����
      ,c.JGYXBS as c_XNJG_JGYXBS--У�ڻ���������� ������Ч��ʶ
      ,[cb].MC as c_XNJG_JGYXBS_MC--�Ƿ��־����� ����
      ,c.SFST as c_XNJG_SFST--У�ڻ���������� �Ƿ�ʵ��
      ,[cc].MC as c_XNJG_SFST_MC--�Ƿ��־����� ����
      ,c.JLNY as c_XNJG_JLNY--У�ڻ���������� ��������
      ,c.JGYZBM as c_XNJG_JGYZBM--У�ڻ���������� ������������
      ,c.FZRH as c_XNJG_FZRH--У�ڻ���������� �����˺�
      ,d.MC as d_KSXS_MC--������ʽ����� ����
      ,e.MC as e_SKFS_MC--�ڿη�ʽ����� ����

FROM dbo.EDU_ZZJX_01_02_KC AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.KKDW = c.JGH /*���ε�λ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS d ON a.KSXS = d.DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS e ON a.SKFSM = e.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.JGYXBS = [cb].DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFST = [cc].DM /*�Ƿ�ʵ��*/
GO
