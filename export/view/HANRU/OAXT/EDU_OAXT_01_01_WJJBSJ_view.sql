
--�ļ������������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_01_01_WJJBSJ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[ID]--�ļ�ID
      ,a.[WJBH]--�ļ����
      ,a.[WJWH]--�ļ��ĺ�
      ,a.[BT]--����
      ,a.[ZTC]--�����
      ,a.[MJM]--�ܼ���
      ,a.[JJCDM]--�����̶���
      ,a.[YS]--ҳ��
      ,a.[WJFLM]--�ļ�������
      ,a.[ZW]--����
      ,a.[FJ]--����
      ,a.[FWRQ]--��������
      ,a.[CSDW]--���͵�λ
      ,c.HYPYDM as c_WXBMZJ_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,c.HZDM as c_WXBMZJ_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,c.MC as c_WXBMZJ_MC--���ױ��ܵȼ��������ʶ ����
      ,d.MC as d_JJCD_MC--�����̶ȴ���� ����
      ,e.MC as e_WJFL_MC--�ļ��������� ����
      ,e.SM as e_WJFL_SM--�ļ��������� ˵��

FROM dbo.EDU_OAXT_01_01_WJJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS c ON a.MJM = c.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS d ON a.JJCDM = d.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS e ON a.WJFLM = e.DM /*�ļ�������*/
GO
