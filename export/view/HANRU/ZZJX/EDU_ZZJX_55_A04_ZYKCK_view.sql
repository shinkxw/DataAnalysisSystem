
--רҵ�γ̿��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_55_A04_ZYKCK_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ZYID]--רҵID
      ,a.[FZXXID]--������ϢID
      ,a.[KCPFLXID]--�γ���������ID
      ,a.[KCBH]--�γ�����
      ,a.[ZXF]--��ѧ��
      ,a.[ZXS]--��ѧʱ
      ,a.[KKDW]--���ε�λ
      ,a.[KSXS]--������ʽ
      ,a.[SKFSM]--�ڿη�ʽ��
      ,a.[JXDG]--��ѧ���
      ,a.[SFSY]--�Ƿ�ʹ��
      ,a.[CourseGroupId]--��CourseGroup�����
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
      ,d.SCHOOLID as d_FZXX_SCHOOLID--������Ϣ�� ѧУ
      ,d.FZMC as d_FZXX_FZMC--������Ϣ�� ��������
      ,d.ZDZ as d_FZXX_ZDZ--������Ϣ�� ���ֵ
      ,d.ZXZ as d_FZXX_ZXZ--������Ϣ�� ��Сֵ
      ,d.JGX as d_FZXX_JGX--������Ϣ�� ������
      ,d.MXF as d_FZXX_MXF--������Ϣ�� ���޶�Ӧ��
      ,d.MKF as d_FZXX_MKF--������Ϣ�� �⿼��Ӧ��
      ,d.XFPDBIDLB as d_FZXX_XFPDBIDLB--������Ϣ�� ѧ��������ID�б�
      ,d.JDPDBIDLB as d_FZXX_JDPDBIDLB--������Ϣ�� ����������ID�б�
      ,e.SCHOOLID as e_KCPFLX_SCHOOLID--�γ��������ͱ� ѧУ
      ,e.LXMC as e_KCPFLX_LXMC--�γ��������ͱ� ��������

FROM dbo.EDU_ZZJX_55_A04_ZYKCK AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS c ON a.ZYID = c.ZYBH /*רҵID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A01_FZXX AS d ON a.FZXXID = d.ID /*������ϢID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A05_KCPFLX AS e ON a.KCPFLXID = e.ID /*�γ���������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [cb] ON c.ZYDM = [cb].DM /*רҵ����*/ AND c.SSZYML = [cb].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [cc] ON c.SSZYML = [cc].DM /*����רҵĿ¼*/
GO
