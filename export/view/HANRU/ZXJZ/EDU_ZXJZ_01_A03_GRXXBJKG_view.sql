
--������Ϣ�༭���ر�
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_01_A03_GRXXBJKG_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ
      ,a.[SCSJ]--��ʼʱ��
      ,a.[HDSJ]--����ʱ��
      ,a.[SFKQ]--�Ƿ���
      ,a.[SFXYSH]--�Ƿ���Ҫ���
      ,c.MC as c_SFBZ_MC--�Ƿ��־����� ����
      ,d.MC as d_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZXJZ_01_A03_GRXXBJKG AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFKQ = c.DM /*�Ƿ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.SFXYSH = d.DM /*�Ƿ���Ҫ���*/
GO
