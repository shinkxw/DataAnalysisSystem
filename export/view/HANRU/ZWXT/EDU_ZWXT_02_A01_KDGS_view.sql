
--��ݹ�˾��
CREATE VIEW [dbo].[VIEW_EDU_ZWXT_02_A01_KDGS_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[KDGSMC]--��ݹ�˾����
      ,a.[LXRXM]--��ϵ������
      ,a.[LXDH]--��ϵ�绰
      ,a.[LXDZ]--��ϵ��ַ
      ,a.[SFSY]--�Ƿ�ʹ��
      ,a.[PLSX]--����˳��
      ,c.MC as c_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZWXT_02_A01_KDGS AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFSY = c.DM /*�Ƿ�ʹ��*/
GO
