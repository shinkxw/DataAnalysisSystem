
--����ʱ�䰲�ű�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_52_A02_KSSJAP_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KSID]--����ID
      ,a.[KSSJID]--����ʱ��ID
      ,a.[KCID]--�γ�ID
      ,c.SCHOOLID as c_KS_SCHOOLID--�������ݱ� ѧУ��
      ,c.XNID as c_KS_XNID--�������ݱ� ѧ��
      ,c.XQID as c_KS_XQID--�������ݱ� ѧ��
      ,c.KSMC as c_KS_KSMC--�������ݱ� ��������
      ,c.KSKSSJ as c_KS_KSKSSJ--�������ݱ� ���Կ�ʼʱ��
      ,c.KSJSSJ as c_KS_KSJSSJ--�������ݱ� ���Խ���ʱ��
      ,c.DFKSSJ as c_KS_DFKSSJ--�������ݱ� �Ƿֿ�ʼʱ��
      ,c.DFJSSJ as c_KS_DFJSSJ--�������ݱ� �Ƿֽ���ʱ��
      ,c.DFKS as c_KS_DFKS--�������ݱ� �Ƿַ�ʽ
      ,c.SFYXCX as c_KS_SFYXCX--�������ݱ� �Ƿ������ѯ
      ,[cb].MC as c_KS_SFYXCX_MC--�Ƿ��־����� ����
      ,c.SFXYPK as c_KS_SFXYPK--�������ݱ� �Ƿ���Ҫ�ſ�
      ,[cc].MC as c_KS_SFXYPK_MC--�Ƿ��־����� ����
      ,d.SCHOOLID as d_KSSJ_SCHOOLID--����ʱ��� ѧУ
      ,d.KSID as d_KSSJ_KSID--����ʱ��� ����ID
      ,d.KSRQ as d_KSSJ_KSRQ--����ʱ��� ��������
      ,d.KSSJ as d_KSSJ_KSSJ--����ʱ��� ����ʱ��
      ,d.BZ as d_KSSJ_BZ--����ʱ��� ��ע
      ,d.CCMC as d_KSSJ_CCMC--����ʱ��� ��������
      ,e.SCHOOLID as e_KC_SCHOOLID--�γ������� ѧУ��
      ,e.KCMC as e_KC_KCMC--�γ������� �γ�����
      ,e.KCM as e_KC_KCM--�γ������� �γ���
      ,[eb].MC as e_KC_KCM_MC--��Сѧ�γ̴���� ����
      ,[eb].SYXX as e_KC_KCM_SYXX--��Сѧ�γ̴���� ����ѧУ
      ,e.KCDJM as e_KC_KCDJM--�γ������� �γ̵ȼ���
      ,[ec].MC as e_KC_KCDJM_MC--��Сѧ�γ̵ȼ������ ����
      ,e.KCBM as e_KC_KCBM--�γ������� �γ̱���
      ,e.KCJJ as e_KC_KCJJ--�γ������� �γ̼��
      ,e.KCYQ as e_KC_KCYQ--�γ������� �γ�Ҫ��
      ,e.ZXS as e_KC_ZXS--�γ������� ��ѧʱ
      ,e.ZHXS as e_KC_ZHXS--�γ������� ��ѧʱ
      ,e.ZXXS as e_KC_ZXXS--�γ������� ��ѧѧʱ
      ,e.SKFSM as e_KC_SKFSM--�γ������� �ڿη�ʽ��
      ,[ed].MC as e_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,e.JCBM as e_KC_JCBM--�γ������� �̲ı���
      ,e.CKSM as e_KC_CKSM--�γ������� �ο���Ŀ
      ,e.CDXZ as e_KC_CDXZ--�γ������� ��������
      ,e.SFZK as e_KC_SFZK--�γ������� �Ƿ�����
      ,[ee].MC as e_KC_SFZK_MC--�Ƿ��־����� ����
      ,e.PLSX as e_KC_PLSX--�γ������� ����˳��

FROM dbo.EDU_ZXJX_52_A02_KSSJAP AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_05_A01_KS AS c ON a.KSID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_52_A01_KSSJ AS d ON a.KSSJID = d.ID /*����ʱ��ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS e ON a.KCID = e.KCH /*�γ�ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFYXCX = [cb].DM /*�Ƿ������ѯ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFXYPK = [cc].DM /*�Ƿ���Ҫ�ſ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS [eb] ON e.KCM = [eb].DM /*�γ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS [ec] ON e.KCDJM = [ec].DM /*�γ̵ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [ed] ON e.SKFSM = [ed].DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ee] ON e.SFZK = [ee].DM /*�Ƿ�����*/
GO
