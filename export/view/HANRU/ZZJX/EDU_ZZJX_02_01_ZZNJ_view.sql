
--ѧУ�꼶���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_02_01_ZZNJ_DISP]
AS
SELECT a.[NJDM]--�꼶����
      ,a.[SCHOOLID]--ѧУ��
      ,a.[NJMC]--�꼶����
      ,a.[SSNF]--�������
      ,a.[NJZT]--�꼶״̬
      ,a.[PLSX]--����˳��
      ,c.MC as c_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZJX_02_01_ZZNJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.NJZT = c.DM /*�꼶״̬*/
GO
