
--�����Ǽ����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_08_01_DADJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[QZH]--ȫ�ں�
      ,a.[ND]--���
      ,a.[MLH]--Ŀ¼��
      ,a.[AJH]--�����
      ,a.[TM]--����
      ,a.[ZTC]--�����
      ,a.[QSRQ]--��ʼ����
      ,a.[JZRQ]--��ֹ����
      ,a.[BGQXM]--����������
      ,a.[MJM]--�ܼ���
      ,a.[YS]--ҳ��
      ,a.[FS]--����
      ,a.[BZDW]--���Ƶ�λ
      ,a.[CFWZ]--���λ��
      ,a.[DAFLM]--����������
      ,c.MC as c_YWDABGQX_MC--һλ�����������޴���� ����
      ,c.ZMDM as c_YWDABGQX_ZMDM--һλ�����������޴���� ��ĸ����
      ,c.SM as c_YWDABGQX_SM--һλ�����������޴���� ˵��
      ,d.HYPYDM as d_WXBMZJ_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,d.HZDM as d_WXBMZJ_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,d.MC as d_WXBMZJ_MC--���ױ��ܵȼ��������ʶ ����
      ,e.MC as e_LWGDXXDASTFL_MC--��λ�ߵ�ѧУ����ʵ������� ����

FROM dbo.EDU_OAXT_08_01_DADJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_YWDABGQX AS c ON a.BGQXM = c.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS d ON a.MJM = d.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_LWGDXXDASTFL AS e ON a.DAFLM = e.DM /*����������*/
GO
