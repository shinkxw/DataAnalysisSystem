
--�������۱�
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZPJ_DISP]
AS
SELECT a.[ID]--����ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[WEBID]--��վID
      ,a.[WZID]--��վ����ID
      ,a.[PJR]--������
      ,a.[YJDZ]--�ʼ���ַ
      ,a.[PJSJ]--����ʱ��
      ,a.[PJNR]--��������
      ,a.[PJZT]--����״̬
      ,a.[SHR]--�����
      ,a.[HF]--�ظ�
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
      ,d.SCHOOLID as d_WZWZ_SCHOOLID--ѧУ��
      ,d.WEBID as d_WZWZ_WEBID--��վID
      ,d.TYPENAME as d_WZWZ_TYPENAME--��������
      ,d.LMID as d_WZWZ_LMID--��Ŀ
      ,d.TITLE as d_WZWZ_TITLE--����
      ,d.PUBLISHERNAME as d_WZWZ_PUBLISHERNAME--������
      ,d.AUTHOR as d_WZWZ_AUTHOR--����
      ,d.AUTHORDEPART as d_WZWZ_AUTHORDEPART--���߲���
      ,d.PUBLISHDATE as d_WZWZ_PUBLISHDATE--����ʱ��
      ,d.CONTENT as d_WZWZ_CONTENT--����
      ,d.URL as d_WZWZ_URL--����
      ,d.IMAGEURL as d_WZWZ_IMAGEURL--ͼƬ
      ,d.ATTACHMENTNAME as d_WZWZ_ATTACHMENTNAME--������
      ,d.ATTACHMENT as d_WZWZ_ATTACHMENT--����
      ,d.CHICKNUB as d_WZWZ_CHICKNUB--�����
      ,d.AUDITSTATU as d_WZWZ_AUDITSTATU--���״̬
      ,d.AUDITOR as d_WZWZ_AUDITOR--�����ID
      ,d.AUDITORNAME as d_WZWZ_AUDITORNAME--�����
      ,d.AUDITTIME as d_WZWZ_AUDITTIME--���ʱ��
      ,d.REMARK as d_WZWZ_REMARK--��ע
      ,d.SUMMARY as d_WZWZ_SUMMARY--ժҪ
      ,d.DISPLAYTYPE as d_WZWZ_DISPLAYTYPE--�Ƿ���ʾ
      ,d.OPENFLAG as d_WZWZ_OPENFLAG--������
      ,d.LLQX as d_WZWZ_LLQX--���Ȩ��

FROM dbo.EDU_WZXT_MHXT_WZPJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZWZ AS d ON a.WZID = d.ID /*��վ����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ AND a.WEBID = d.WEBID /*��վID*/
GO
