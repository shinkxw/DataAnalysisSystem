
--��վ����
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZWZ_DISP]
AS
SELECT a.[ID]--��վ����ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[TYPENAME]--��������
      ,a.[LMID]--��Ŀ
      ,a.[TITLE]--����
      ,a.[PUBLISHERNAME]--������
      ,a.[AUTHOR]--����
      ,a.[AUTHORDEPART]--���߲���
      ,a.[PUBLISHDATE]--����ʱ��
      ,a.[CONTENT]--����
      ,a.[URL]--����
      ,a.[IMAGEURL]--ͼƬ
      ,a.[ATTACHMENTNAME]--������
      ,a.[ATTACHMENT]--����
      ,a.[CHICKNUB]--�����
      ,a.[AUDITSTATU]--���״̬
      ,a.[AUDITOR]--�����ID
      ,a.[AUDITORNAME]--�����
      ,a.[AUDITTIME]--���ʱ��
      ,a.[REMARK]--��ע
      ,a.[SUMMARY]--ժҪ
      ,a.[DISPLAYTYPE]--������
      ,a.[OPENFLAG]--����״̬
      ,a.[LLQX]--���Ȩ��
      ,a.[INDEXSHOW]--�ܷ���ʾ����ҳ��
      ,a.[SFZD]--�Ƿ��ö�
      ,a.[ZDYXJ]--�ö����ȼ�
      ,a.[XCLM]--С����Ŀ
      ,a.[XCID]--С��ID
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,c.URL as c_WZPZ_URL--��վ���� ������ַ
      ,c.YS as c_WZPZ_YS--��վ���� ҳ��
      ,c.YW as c_WZPZ_YW--��վ���� ҳβ
      ,d.SCHOOLID as d_WZLM_SCHOOLID--��վ��Ŀ�������� ѧУ��
      ,d.WEBID as d_WZLM_WEBID--��վ��Ŀ�������� ��վID
      ,d.LMSHOWSTYLE as d_WZLM_LMSHOWSTYLE--��վ��Ŀ�������� ��Ŀʹ������
      ,d.NAME as d_WZLM_NAME--��վ��Ŀ�������� ��Ŀ����
      ,d.URL as d_WZLM_URL--��վ��Ŀ�������� ��Ŀ����
      ,d.IMAGEURL as d_WZLM_IMAGEURL--��վ��Ŀ�������� ͼƬ����
      ,d.DEPTH as d_WZLM_DEPTH--��վ��Ŀ�������� �㼶
      ,d.PID as d_WZLM_PID--��վ��Ŀ�������� ��Ŀ¼
      ,d.LISTSHOWSTYLE as d_WZLM_LISTSHOWSTYLE--��վ��Ŀ�������� �б���ʾ��ʽ
      ,d.ORDERTYPE as d_WZLM_ORDERTYPE--��վ��Ŀ�������� ����ʽ
      ,d.SHOWNUMBER as d_WZLM_SHOWNUMBER--��վ��Ŀ�������� ��ʾ����
      ,d.OPENFLAG as d_WZLM_OPENFLAG--��վ��Ŀ�������� ����״̬
      ,d.LLQX as d_WZLM_LLQX--��վ��Ŀ�������� ���Ȩ��
      ,d.PLSX as d_WZLM_PLSX--��վ��Ŀ�������� ����˳��

FROM dbo.EDU_WZXT_MHXT_WZWZ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZLM AS d ON a.LMID = d.ID /*��Ŀ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/
GO
