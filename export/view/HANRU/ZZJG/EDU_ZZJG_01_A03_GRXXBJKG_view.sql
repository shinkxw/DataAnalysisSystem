
--������Ϣ�༭���ر�
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_01_A03_GRXXBJKG_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ
      ,a.[SCSJ]--��ʼʱ��
      ,a.[HDSJ]--����ʱ��
      ,a.[SFKQ]--�Ƿ���
      ,a.[JBXXKG]--������Ϣ����
      ,a.[KZXXKG]--��չ��Ϣ����
      ,a.[QTXXKG]--������Ϣ����
      ,c.MC as c_SFBZ_MC--�Ƿ��־����� ����
      ,d.MC as d_SFBZ_MC--�Ƿ��־����� ����
      ,e.MC as e_SFBZ_MC--�Ƿ��־����� ����
      ,f.MC as f_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZJG_01_A03_GRXXBJKG AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFKQ = c.DM /*�Ƿ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.JBXXKG = d.DM /*������Ϣ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.KZXXKG = e.DM /*��չ��Ϣ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.QTXXKG = f.DM /*������Ϣ����*/
GO
