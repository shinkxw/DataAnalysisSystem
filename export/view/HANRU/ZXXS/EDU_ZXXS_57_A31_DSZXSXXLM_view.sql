
--��ʦ��ѧ����Ϣ��Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_57_A31_DSZXSXXLM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[FLMID]--����ĿID
      ,a.[LMMC]--��Ŀ����
      ,a.[LMLX]--��Ŀ����
      ,a.[PLSX]--����˳��
      ,c.SCHOOLID as c_DSZXSXXLM_SCHOOLID--��ʦ��ѧ����Ϣ��Ŀ�� ѧУ
      ,c.FLMID as c_DSZXSXXLM_FLMID--��ʦ��ѧ����Ϣ��Ŀ�� ����ĿID
      ,c.LMMC as c_DSZXSXXLM_LMMC--��ʦ��ѧ����Ϣ��Ŀ�� ��Ŀ����
      ,c.LMLX as c_DSZXSXXLM_LMLX--��ʦ��ѧ����Ϣ��Ŀ�� ��Ŀ����
      ,c.PLSX as c_DSZXSXXLM_PLSX--��ʦ��ѧ����Ϣ��Ŀ�� ����˳��

FROM dbo.EDU_ZXXS_57_A31_DSZXSXXLM AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_57_A31_DSZXSXXLM AS c ON a.FLMID = c.ID /*����ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
