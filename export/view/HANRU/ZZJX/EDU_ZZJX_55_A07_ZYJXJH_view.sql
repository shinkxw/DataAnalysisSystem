
--רҵ��ѧ�ƻ���
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_55_A07_ZYJXJH_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ZYID]--רҵID
      ,a.[ZYKCKID]--רҵ�γ̿�ID
      ,a.[XQDH]--ѧ�ڴ���
      ,a.[XF]--ѧ��
      ,a.[KS]--��ʱ
      ,c.SCHOOLID as c_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,c.ZYDM as c_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,[cb].ZYMLLB as c_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,[cb].MC as c_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,c.ZYMC as c_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,c.ZYYWMC as c_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,c.XZ as c_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,c.ZYFXMC as c_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,c.ZYJC as c_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,c.JLNY as c_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,c.ZYJSS as c_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,c.KSJGH as c_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,c.ZXF as c_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,c.SSZYML as c_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,[cc].MC as c_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,c.ZYLB as c_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,c.XXZ as c_ZYXX_XXZ--רҵ������Ϣ���ݱ� ��ѧ��
      ,c.XZXF as c_ZYXX_XZXF--רҵ������Ϣ���ݱ� ����ѧ��
      ,c.PYMB as c_ZYXX_PYMB--רҵ������Ϣ���ݱ� ����Ŀ��
      ,c.PYGG as c_ZYXX_PYGG--רҵ������Ϣ���ݱ� �������
      ,c.ZKS as c_ZYXX_ZKS--רҵ������Ϣ���ݱ� �ܿ�ʱ
      ,c.SFSY as c_ZYXX_SFSY--רҵ������Ϣ���ݱ� �Ƿ�ʹ��
      ,d.SCHOOLID as d_ZYKCK_SCHOOLID--רҵ�γ̿�� ѧУ
      ,d.ZYID as d_ZYKCK_ZYID--רҵ�γ̿�� רҵID
      ,d.FZXXID as d_ZYKCK_FZXXID--רҵ�γ̿�� ������ϢID
      ,d.KCPFLXID as d_ZYKCK_KCPFLXID--רҵ�γ̿�� �γ���������ID
      ,d.KCBH as d_ZYKCK_KCBH--רҵ�γ̿�� �γ�����
      ,d.ZXF as d_ZYKCK_ZXF--רҵ�γ̿�� ��ѧ��
      ,d.ZXS as d_ZYKCK_ZXS--רҵ�γ̿�� ��ѧʱ
      ,d.KKDW as d_ZYKCK_KKDW--רҵ�γ̿�� ���ε�λ
      ,d.KSXS as d_ZYKCK_KSXS--רҵ�γ̿�� ������ʽ
      ,d.SKFSM as d_ZYKCK_SKFSM--רҵ�γ̿�� �ڿη�ʽ��
      ,d.JXDG as d_ZYKCK_JXDG--רҵ�γ̿�� ��ѧ���
      ,d.SFSY as d_ZYKCK_SFSY--רҵ�γ̿�� �Ƿ�ʹ��

FROM dbo.EDU_ZZJX_55_A07_ZYJXJH AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS c ON a.ZYID = c.ZYBH /*רҵID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A04_ZYKCK AS d ON a.ZYKCKID = d.ID /*רҵ�γ̿�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [cb] ON c.ZYDM = [cb].DM /*רҵ����*/ AND c.SSZYML = [cb].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [cc] ON c.SSZYML = [cc].DM /*����רҵĿ¼*/
GO
