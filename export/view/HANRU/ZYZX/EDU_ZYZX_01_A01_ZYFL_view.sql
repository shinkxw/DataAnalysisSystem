
--��Դ����
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A01_ZYFL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[FLMC]--��������
      ,a.[FFLID]--������ID
      ,a.[PLSX]--����˳��
      ,a.[SFSYZS]--�Ƿ���ҳչʾ
      ,a.[SFQY]--�Ƿ�����
      ,c.SCHOOLID as c_ZYFL_SCHOOLID--��Դ���� ѧУ
      ,c.FLMC as c_ZYFL_FLMC--��Դ���� ��������
      ,c.FFLID as c_ZYFL_FFLID--��Դ���� ������ID
      ,c.PLSX as c_ZYFL_PLSX--��Դ���� ����˳��
      ,c.SFSYZS as c_ZYFL_SFSYZS--��Դ���� �Ƿ���ҳչʾ
      ,c.SFQY as c_ZYFL_SFQY--��Դ���� �Ƿ�����

FROM dbo.EDU_ZYZX_01_A01_ZYFL AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A01_ZYFL AS c ON a.FFLID = c.ID /*������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
