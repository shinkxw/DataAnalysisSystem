
--���Կ�Ŀ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_05_A02_KSKM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[SSKSID]--��������ID
      ,a.[KCH]--�γ̺�
      ,a.[NJIDLB]--�꼶�б�
      ,a.[NJMCLB]--�꼶�����б�
      ,a.[BJIDLB]--�༶�б�
      ,a.[BJMCLB]--�༶�����б�
      ,a.[CJZF]--�ɼ��ܷ�
      ,c.SCHOOLID as c_KS_SCHOOLID--�������ݱ� ѧУ��
      ,c.XNID as c_KS_XNID--�������ݱ� ѧ��
      ,c.XQID as c_KS_XQID--�������ݱ� ѧ��
      ,c.KSMC as c_KS_KSMC--�������ݱ� ��������
      ,c.KSKSSJ as c_KS_KSKSSJ--�������ݱ� ���Կ�ʼʱ��
      ,c.KSJSSJ as c_KS_KSJSSJ--�������ݱ� ���Խ���ʱ��
      ,c.DFKSSJ as c_KS_DFKSSJ--�������ݱ� �Ƿֿ�ʼʱ��
      ,c.DFJSSJ as c_KS_DFJSSJ--�������ݱ� �Ƿֽ���ʱ��
      ,d.SCHOOLID as d_KC_SCHOOLID--�γ������� ѧУ��
      ,d.KCMC as d_KC_KCMC--�γ������� �γ�����
      ,d.KCM as d_KC_KCM--�γ������� �γ���
      ,db.MC as d_KC_KCM_MC--��Сѧ�γ̴���� ����
      ,db.SYXX as d_KC_KCM_SYXX--��Сѧ�γ̴���� ����ѧУ
      ,d.KCDJM as d_KC_KCDJM--�γ������� �γ̵ȼ���
      ,dc.MC as d_KC_KCDJM_MC--��Сѧ�γ̵ȼ������ ����
      ,d.KCBM as d_KC_KCBM--�γ������� �γ̱���
      ,d.KCJJ as d_KC_KCJJ--�γ������� �γ̼��
      ,d.KCYQ as d_KC_KCYQ--�γ������� �γ�Ҫ��
      ,d.ZXS as d_KC_ZXS--�γ������� ��ѧʱ
      ,d.ZHXS as d_KC_ZHXS--�γ������� ��ѧʱ
      ,d.ZXXS as d_KC_ZXXS--�γ������� ��ѧѧʱ
      ,d.SKFSM as d_KC_SKFSM--�γ������� �ڿη�ʽ��
      ,dd.MC as d_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,d.JCBM as d_KC_JCBM--�γ������� �̲ı���
      ,d.CKSM as d_KC_CKSM--�γ������� �ο���Ŀ
      ,d.CDXZ as d_KC_CDXZ--�γ������� ��������
      ,d.SFZK as d_KC_SFZK--�γ������� �Ƿ�����
      ,de.MC as d_KC_SFZK_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZXJX_05_A02_KSKM AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_05_A01_KS AS c ON a.SSKSID = c.ID /*��������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS d ON a.KCH = d.KCH /*�γ̺�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS db ON d.KCM = db.DM /*�γ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS dc ON d.KCDJM = dc.DM /*�γ̵ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dd ON d.SKFSM = dd.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS de ON d.SFZK = de.DM /*�Ƿ�����*/
GO
