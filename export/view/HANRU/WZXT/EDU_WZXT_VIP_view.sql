
--��վ��Ա
CREATE VIEW [dbo].[VIEW_EDU_WZXT_VIP_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[LOGINNAME]--�û���
      ,a.[LOGINPWD]--����
      ,a.[REALNAME]--����
      ,a.[EMAIL]--��������
      ,a.[MOBILE]--��ϵ�绰
      ,a.[QQ]--QQ����
      ,a.[AUDITSTATU]--���״̬
      ,a.[AUDITOR]--�����ID
      ,a.[AUDITORNAME]--�����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,c.URL as c_WZPZ_URL--��վ���� ������ַ

FROM dbo.EDU_WZXT_VIP AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO
