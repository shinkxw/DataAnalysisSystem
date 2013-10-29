
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
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,c.URL as c_WZPZ_URL--��վ���� ������ַ
      ,d.SCHOOLID as d_WZWZ_SCHOOLID--��վ���� ѧУ��
      ,d.WEBID as d_WZWZ_WEBID--��վ���� ��վID
      ,d.TYPENAME as d_WZWZ_TYPENAME--��վ���� ��������
      ,d.LMID as d_WZWZ_LMID--��վ���� ��Ŀ
      ,d.TITLE as d_WZWZ_TITLE--��վ���� ����
      ,d.PUBLISHERNAME as d_WZWZ_PUBLISHERNAME--��վ���� ������
      ,d.AUTHOR as d_WZWZ_AUTHOR--��վ���� ����
      ,d.AUTHORDEPART as d_WZWZ_AUTHORDEPART--��վ���� ���߲���
      ,d.PUBLISHDATE as d_WZWZ_PUBLISHDATE--��վ���� ����ʱ��
      ,d.CONTENT as d_WZWZ_CONTENT--��վ���� ����
      ,d.URL as d_WZWZ_URL--��վ���� ����
      ,d.IMAGEURL as d_WZWZ_IMAGEURL--��վ���� ͼƬ
      ,d.ATTACHMENTNAME as d_WZWZ_ATTACHMENTNAME--��վ���� ������
      ,d.ATTACHMENT as d_WZWZ_ATTACHMENT--��վ���� ����
      ,d.CHICKNUB as d_WZWZ_CHICKNUB--��վ���� �����
      ,d.AUDITSTATU as d_WZWZ_AUDITSTATU--��վ���� ���״̬
      ,d.AUDITOR as d_WZWZ_AUDITOR--��վ���� �����ID
      ,d.AUDITORNAME as d_WZWZ_AUDITORNAME--��վ���� �����
      ,d.AUDITTIME as d_WZWZ_AUDITTIME--��վ���� ���ʱ��
      ,d.REMARK as d_WZWZ_REMARK--��վ���� ��ע
      ,d.SUMMARY as d_WZWZ_SUMMARY--��վ���� ժҪ
      ,d.DISPLAYTYPE as d_WZWZ_DISPLAYTYPE--��վ���� ������
      ,d.OPENFLAG as d_WZWZ_OPENFLAG--��վ���� ����״̬
      ,d.LLQX as d_WZWZ_LLQX--��վ���� ���Ȩ��
      ,d.INDEXSHOW as d_WZWZ_INDEXSHOW--��վ���� �ܷ���ʾ����ҳ��
      ,d.SFZD as d_WZWZ_SFZD--��վ���� �Ƿ��ö�
      ,d.ZDYXJ as d_WZWZ_ZDYXJ--��վ���� �ö����ȼ�

FROM dbo.EDU_WZXT_MHXT_WZPJ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZWZ AS d ON a.WZID = d.ID /*��վ����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ AND a.WEBID = d.WEBID /*��վID*/
GO
