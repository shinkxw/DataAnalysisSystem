
--���������ҵ֤����
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_22_A05_ZSGLJYZM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XSID]--ѧ��ID
      ,a.[XSXM]--ѧ������
      ,a.[XB]--�Ա�
      ,a.[ZY]--רҵ
      ,a.[JTDZ]--��ͥ��ַ
      ,a.[LXDH]--��ϵ�绰
      ,a.[JYDW]--��ҵ��λ
      ,a.[DWDH]--��λ�绰
      ,a.[JYGW]--��ҵ��λ
      ,a.[PJYSR]--ƽ��������
      ,a.[JYSJ]--��ҵʱ��
      ,a.[ZYDM]--רҵ����
      ,a.[BJID]--�༶ID
      ,a.[XJH]--ѧ����
      ,a.[GZHZY]--���ֻ�רҵ
      ,a.[SFDK]--�Ƿ�Կ�
      ,a.[JYDD]--��ҵ�ص�
      ,a.[JYQX]--��ҵȥ��
      ,a.[DD]--�ص�
      ,a.[JYHT]--��ҵ��ͬ
      ,a.[SB]--�籣
      ,c.SCHOOLID as c_XJSJ_SCHOOLID--ѧ���������ݱ� ѧУ��
      ,c.ZYXXID as c_XJSJ_ZYXXID--ѧ���������ݱ� רҵ������Ϣ
      ,c.ZZBJID as c_XJSJ_ZZBJID--ѧ���������ݱ� ѧУ�༶���ݱ�
      ,c.ZZNJID as c_XJSJ_ZZNJID--ѧ���������ݱ� ѧУ�꼶���ݱ�
      ,c.RXNY as c_XJSJ_RXNY--ѧ���������ݱ� ��ѧ����
      ,c.XSLBM as c_XJSJ_XSLBM--ѧ���������ݱ� ѧ�������
      ,[cb].MC as c_XJSJ_XSLBM_MC--ѧ��������� ����
      ,[cb].SM as c_XJSJ_XSLBM_SM--ѧ��������� ˵��
      ,c.XZ as c_XJSJ_XZ--ѧ���������ݱ� ѧ��
      ,c.ZYM as c_XJSJ_ZYM--ѧ���������ݱ� רҵ��
      ,c.XSDQZTM as c_XJSJ_XSDQZTM--ѧ���������ݱ� ѧ����ǰ״̬��
      ,[cc].MC as c_XJSJ_XSDQZTM_MC--ѧ����ǰ״̬����� ����
      ,[cc].SM as c_XJSJ_XSDQZTM_SM--ѧ����ǰ״̬����� ˵��
      ,d.SCHOOLID as d_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,d.ZYXXID as d_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,d.ZZNJID as d_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,d.XZBMC as d_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,d.JBNY as d_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,d.BZRGH as d_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,d.JSBH as d_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,d.NANSRS as d_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,d.NVSRS as d_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,d.ZRS as d_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,d.BZXH as d_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,d.JXJH as d_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,d.JGH as d_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,d.XQDM as d_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,d.BZRID as d_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID
      ,d.PLSX as d_ZZBJ_PLSX--ѧУ�༶���ݱ� ����˳��
      ,d.ID as d_ZZBJ_ID--ѧУ�༶���ݱ� ��Record���

FROM dbo.EDU_ZZXS_22_A05_ZSGLJYZM AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_07_01_XJSJ AS c ON a.XSID = c.XSXXID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS d ON a.BJID = d.XZBDM /*�༶ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS [cb] ON c.XSLBM = [cb].DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS [cc] ON c.XSDQZTM = [cc].DM /*ѧ����ǰ״̬��*/
GO
