
--����ᱨ����Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_25_A11_CWJBDTM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[YJKMID]--һ����ĿID
      ,a.[EJKMID]--������ĿID
      ,a.[SJKMID]--������ĿID
      ,a.[ZYDLID]--רҵ����ID
      ,a.[ZYXLID]--רҵС��ID
      ,a.[JBDH]--�ᱨ����
      ,a.[JBDW]--�ᱨ��λ
      ,a.[BZY]--����Ա
      ,a.[JBRQ]--�ᱨ����
      ,a.[ZY]--ժҪ
      ,a.[JE]--���
      ,c.SCHOOLID as c_CWYJFLKM_SCHOOLID--����һ�������Ŀ�� ѧУ
      ,c.YJKMDM as c_CWYJFLKM_YJKMDM--����һ�������Ŀ�� һ����Ŀ����
      ,c.YJKMMC as c_CWYJFLKM_YJKMMC--����һ�������Ŀ�� һ����Ŀ����
      ,c.SFFT as c_CWYJFLKM_SFFT--����һ�������Ŀ�� �Ƿ��̯
      ,d.SCHOOLID as d_CWEJFLKM_SCHOOLID--������������Ŀ�� ѧУ
      ,d.YJKMID as d_CWEJFLKM_YJKMID--������������Ŀ�� һ����ĿID
      ,d.EJKMDM as d_CWEJFLKM_EJKMDM--������������Ŀ�� ������Ŀ����
      ,d.EJKMMC as d_CWEJFLKM_EJKMMC--������������Ŀ�� ������Ŀ����
      ,e.SCHOOLID as e_CWSJFLKM_SCHOOLID--�������������Ŀ�� ѧУ
      ,e.YJKMID as e_CWSJFLKM_YJKMID--�������������Ŀ�� һ����ĿID
      ,e.EJKMID as e_CWSJFLKM_EJKMID--�������������Ŀ�� ������ĿID
      ,e.SJKMDM as e_CWSJFLKM_SJKMDM--�������������Ŀ�� ������Ŀ����
      ,e.SJKMMC as e_CWSJFLKM_SJKMMC--�������������Ŀ�� ������Ŀ����
      ,e.SFHJDY as e_CWSJFLKM_SFHJDY--�������������Ŀ�� �Ƿ�ϼƴ�ӡ
      ,f.SCHOOLID as f_CWZYDL_SCHOOLID--����רҵ����� ѧУ
      ,f.ZYDLDM as f_CWZYDL_ZYDLDM--����רҵ����� רҵ�������
      ,f.ZYDLMC as f_CWZYDL_ZYDLMC--����רҵ����� רҵ��������
      ,g.SCHOOLID as g_CWZYXL_SCHOOLID--����רҵС��� ѧУ
      ,g.ZYDLID as g_CWZYXL_ZYDLID--����רҵС��� רҵ����ID
      ,g.ZYXLDM as g_CWZYXL_ZYXLDM--����רҵС��� רҵС�����
      ,g.ZYXLMC as g_CWZYXL_ZYXLMC--����רҵС��� רҵС������
      ,g.JSS as g_CWZYXL_JSS--����רҵС��� ��ʦ��
      ,g.XSS as g_CWZYXL_XSS--����רҵС��� ѧ����

FROM dbo.EDU_ZZJG_25_A11_CWJBDTM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A01_CWYJFLKM AS c ON a.YJKMID = c.ID /*һ����ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A02_CWEJFLKM AS d ON a.EJKMID = d.ID /*������ĿID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A03_CWSJFLKM AS e ON a.SJKMID = e.ID /*������ĿID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A04_CWZYDL AS f ON a.ZYDLID = f.ID /*רҵ����ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A05_CWZYXL AS g ON a.ZYXLID = g.ID /*רҵС��ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/
GO
