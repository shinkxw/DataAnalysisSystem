
--����Ա���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_JPXT_02_01_JLYSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XM]--����
      ,a.[XBM]--�Ա���
      ,a.[SFZH]--���֤��
      ,a.[JSZH]--��ʻ֤��
      ,a.[JSZYXQ]--��ʻ֤��Ч��
      ,a.[JLZH]--����֤��
      ,a.[JLZYXQ]--����֤��Ч��
      ,a.[XL]--ѧ��
      ,a.[ZC]--ְ��
      ,a.[JXSJ]--��Уʱ��
      ,a.[LXDH]--��ϵ�绰
      ,a.[ZZ]--סַ
      ,a.[JSDJ]--�����ȼ�
      ,a.[JTCHYXM]--��ͥ��Աһ����
      ,a.[JTCYYGX]--��ͥ��Աһ��ϵ
      ,a.[JTCYYXBM]--��ͥ��Աһ�Ա���
      ,a.[JTCYYCSRQ]--��ͥ��Աһ��������
      ,a.[JTCYYZZ]--��ͥ��Աһסַ
      ,a.[JTCYYLXDH]--��ͥ��Աһ��ϵ�绰
      ,a.[JTCYYCSGZ]--��ͥ��Աһ���¹���
      ,a.[JTCYEXM]--��ͥ��Ա������
      ,a.[JTCYEGX]--��ͥ��Ա����ϵ
      ,a.[JTCYEXBM]--��ͥ��Ա���Ա���
      ,a.[JTCYECSRQ]--��ͥ��Ա����������
      ,a.[JTCYEZZ]--��ͥ��Ա��סַ
      ,a.[JTCYELXDH]--��ͥ��Ա����ϵ�绰
      ,a.[JTCYECSGZ]--��ͥ��Ա�����¹���
      ,c.MC as c_RDXB_MC--�˵��Ա���� ����

FROM dbo.EDU_JPXT_02_01_JLYSJ AS a LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS c ON a.XBM = c.DM /*�Ա���*/
GO
