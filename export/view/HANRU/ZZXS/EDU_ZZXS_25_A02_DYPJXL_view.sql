
--��������С���
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_25_A02_DYPJXL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[PFDXLX]--���ֶ�������
      ,a.[DLID]--����ID
      ,a.[MC]--����
      ,a.[MRFZ]--Ĭ�Ϸ�ֵ
      ,a.[NFXGFZ]--�ܷ��޸ķ�ֵ
      ,a.[FZSX]--��ֵ����
      ,a.[FZXX]--��ֵ����
      ,a.[PLSX]--����˳��
      ,c.SCHOOLID as c_DYPJDL_SCHOOLID--�������۴���� ѧУ
      ,c.PFDXLX as c_DYPJDL_PFDXLX--�������۴���� ���ֶ�������
      ,c.MC as c_DYPJDL_MC--�������۴���� ����
      ,c.PLSX as c_DYPJDL_PLSX--�������۴���� ����˳��

FROM dbo.EDU_ZZXS_25_A02_DYPJXL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A01_DYPJDL AS c ON a.DLID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
