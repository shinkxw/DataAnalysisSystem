
--ѧ��ѧϰ�������������ñ�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_08_A01_XXGCXPJPZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[SSKCH]--�����γ̺�
      ,a.[PZMC]--��������
      ,a.[PZLX]--��������
      ,a.[FLM]--������
      ,c.SCHOOLID as c_KC_SCHOOLID--�γ������� ѧУ��
      ,c.KCMC as c_KC_KCMC--�γ������� �γ�����
      ,c.KCM as c_KC_KCM--�γ������� �γ���
      ,cb.MC as c_KC_KCM_MC--��Сѧ�γ̴���� ����
      ,cb.SYXX as c_KC_KCM_SYXX--��Сѧ�γ̴���� ����ѧУ
      ,c.KCDJM as c_KC_KCDJM--�γ������� �γ̵ȼ���
      ,cc.MC as c_KC_KCDJM_MC--��Сѧ�γ̵ȼ������ ����
      ,c.KCBM as c_KC_KCBM--�γ������� �γ̱���
      ,c.KCJJ as c_KC_KCJJ--�γ������� �γ̼��
      ,c.KCYQ as c_KC_KCYQ--�γ������� �γ�Ҫ��
      ,c.ZXS as c_KC_ZXS--�γ������� ��ѧʱ
      ,c.ZHXS as c_KC_ZHXS--�γ������� ��ѧʱ
      ,c.ZXXS as c_KC_ZXXS--�γ������� ��ѧѧʱ
      ,c.SKFSM as c_KC_SKFSM--�γ������� �ڿη�ʽ��
      ,cd.MC as c_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,c.JCBM as c_KC_JCBM--�γ������� �̲ı���
      ,c.CKSM as c_KC_CKSM--�γ������� �ο���Ŀ
      ,c.CDXZ as c_KC_CDXZ--�γ������� ��������
      ,c.SFZK as c_KC_SFZK--�γ������� �Ƿ�����
      ,ce.MC as c_KC_SFZK_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZXJX_08_A01_XXGCXPJPZ AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS c ON a.SSKCH = c.KCH /*�����γ̺�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS cb ON c.KCM = cb.DM /*�γ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS cc ON c.KCDJM = cc.DM /*�γ̵ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cd ON c.SKFSM = cd.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ce ON c.SFZK = ce.DM /*�Ƿ�����*/
GO
