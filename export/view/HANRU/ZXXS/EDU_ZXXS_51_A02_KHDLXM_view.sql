
--���˴�����Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_51_A02_KHDLXM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[SSDLID]--��������ID
      ,a.[DLXMMC]--������Ŀ����
      ,a.[FZLX]--��ֵ����
      ,a.[XMZGF]--��Ŀ��߷�
      ,c.SCHOOLID as c_KHDL_SCHOOLID--���˴���� ѧУ
      ,c.MC as c_KHDL_MC--���˴���� ����
      ,c.KHDX as c_KHDL_KHDX--���˴���� ���˶���
      ,c.DJFS as c_KHDL_DJFS--���˴���� �ǼǷ�ʽ
      ,c.KDJYHIDLB as c_KHDL_KDJYHIDLB--���˴���� �ɵǼ��û�ID�б�
      ,c.KDJYHXMLB as c_KHDL_KDJYHXMLB--���˴���� �ɵǼ��û������б�

FROM dbo.EDU_ZXXS_51_A02_KHDLXM AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_51_A01_KHDL AS c ON a.SSDLID = c.ID /*��������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
