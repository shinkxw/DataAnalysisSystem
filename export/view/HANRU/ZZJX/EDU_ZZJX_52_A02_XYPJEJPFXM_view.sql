
--ѧҵ���۶���������Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_52_A02_XYPJEJPFXM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[YJXMID]--һ����ĿID
      ,a.[XMMC]--��Ŀ����
      ,a.[MRFZ]--Ĭ�Ϸ�ֵ
      ,a.[NFXGFZ]--�ܷ��޸ķ�ֵ
      ,a.[FZSX]--��ֵ����
      ,a.[FZXX]--��ֵ����
      ,a.[PLSX]--����˳��
      ,c.SCHOOLID as c_XYPJYJPFXM_SCHOOLID--ѧҵ����һ��������Ŀ�� ѧУ
      ,c.XMMC as c_XYPJYJPFXM_XMMC--ѧҵ����һ��������Ŀ�� ��Ŀ����
      ,c.PLSX as c_XYPJYJPFXM_PLSX--ѧҵ����һ��������Ŀ�� ����˳��

FROM dbo.EDU_ZZJX_52_A02_XYPJEJPFXM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_52_A01_XYPJYJPFXM AS c ON a.YJXMID = c.ID /*һ����ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
