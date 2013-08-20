
--���ݷ������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_12_A01_SJFB_DISP]
AS
SELECT a.[ID]--���ݷ���ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[FBRID]--������ID
      ,a.[FBBZRID]--������׼��ID
      ,a.[FBH]--������
      ,a.[XXBT]--���ݱ���
      ,a.[FBLMH]--������Ŀ��
      ,a.[SJNR]--��������
      ,a.[FJS]--������
      ,a.[FBRQ]--��������
      ,a.[FBDW]--������λ��
      ,a.[FBRGH]--�����˹���
      ,a.[FBFW]--������Χ
      ,a.[FBBZRH]--������׼�˺�
      ,a.[SJZT]--����״̬
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ

FROM dbo.EDU_OAXT_12_A01_SJFB AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO