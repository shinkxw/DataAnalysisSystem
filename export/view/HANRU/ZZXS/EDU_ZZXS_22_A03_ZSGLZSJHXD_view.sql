
--�������������ƻ��굥��
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_22_A03_ZSGLZSJHXD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[JHID]--�ƻ�ID
      ,a.[ZYMC]--רҵ����
      ,a.[ZYID]--רҵID
      ,a.[ZSRS]--��������
      ,a.[ZYJS]--רҵ����
      ,c.SCHOOLID as c_ZSGLZSJH_SCHOOLID--�������������ƻ��� ѧУ
      ,c.JHMC as c_ZSGLZSJH_JHMC--�������������ƻ��� �ƻ�����
      ,c.XNID as c_ZSGLZSJH_XNID--�������������ƻ��� ѧ��ID
      ,c.KG as c_ZSGLZSJH_KG--�������������ƻ��� ����
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,d.ZYDM as d_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,[db].ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,[db].MC as d_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,d.ZYMC as d_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,d.XZ as d_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,d.ZYJC as d_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,d.JLNY as d_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,d.ZYJSS as d_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,d.KSJGH as d_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,d.ZXF as d_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,d.SSZYML as d_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,[dc].MC as d_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,d.ZYLB as d_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,d.XXZ as d_ZYXX_XXZ--רҵ������Ϣ���ݱ� ��ѧ��
      ,d.XZXF as d_ZYXX_XZXF--רҵ������Ϣ���ݱ� ����ѧ��
      ,d.PYMB as d_ZYXX_PYMB--רҵ������Ϣ���ݱ� ����Ŀ��
      ,d.PYGG as d_ZYXX_PYGG--רҵ������Ϣ���ݱ� �������
      ,d.ZKS as d_ZYXX_ZKS--רҵ������Ϣ���ݱ� �ܿ�ʱ
      ,d.SFSY as d_ZYXX_SFSY--רҵ������Ϣ���ݱ� �Ƿ�ʹ��

FROM dbo.EDU_ZZXS_22_A03_ZSGLZSJHXD AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_22_A02_ZSGLZSJH AS c ON a.JHID = c.ID /*�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYID = d.ZYBH /*רҵID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [db] ON d.ZYDM = [db].DM /*רҵ����*/ AND d.SSZYML = [db].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [dc] ON d.SSZYML = [dc].DM /*����רҵĿ¼*/
GO
