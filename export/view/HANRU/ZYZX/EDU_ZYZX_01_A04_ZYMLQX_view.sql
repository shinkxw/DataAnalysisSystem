
--��ԴĿ¼Ȩ��
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A04_ZYMLQX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ZYMLID]--��ԴĿ¼ID
      ,a.[YHLX]--�û�����
      ,a.[QXLB]--Ȩ���б�
      ,c.SCHOOLID as c_ZYML_SCHOOLID--��ԴĿ¼ ѧУ
      ,c.MLMC as c_ZYML_MLMC--��ԴĿ¼ Ŀ¼����
      ,c.FMLID as c_ZYML_FMLID--��ԴĿ¼ ��Ŀ¼ID
      ,c.PLSX as c_ZYML_PLSX--��ԴĿ¼ ����˳��
      ,c.YYZID as c_ZYML_YYZID--��ԴĿ¼ ӵ����ID
      ,c.WJLXIDLB as c_ZYML_WJLXIDLB--��ԴĿ¼ �ϴ��ļ�����ID�б�
      ,c.FWQX as c_ZYML_FWQX--��ԴĿ¼ ����Ȩ��

FROM dbo.EDU_ZYZX_01_A04_ZYMLQX AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A02_ZYML AS c ON a.ZYMLID = c.ID /*��ԴĿ¼ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
