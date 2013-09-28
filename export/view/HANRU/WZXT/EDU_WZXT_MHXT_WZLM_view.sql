
--��վ��Ŀ��������
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZLM_DISP]
AS
SELECT a.[ID]--��վ��Ŀ��������ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[LMSHOWSTYLE]--��Ŀʹ������
      ,a.[NAME]--��Ŀ����
      ,a.[URL]--��Ŀ����
      ,a.[IMAGEURL]--ͼƬ����
      ,a.[DEPTH]--�㼶
      ,a.[PID]--��Ŀ¼
      ,a.[LISTSHOWSTYLE]--�б���ʾ��ʽ
      ,a.[ORDERTYPE]--����ʽ
      ,a.[SHOWNUMBER]--��ʾ����
      ,a.[OPENFLAG]--����״̬
      ,a.[LLQX]--���Ȩ��
      ,a.[PLSX]--����˳��
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,c.URL as c_WZPZ_URL--��վ���� ������ַ
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

FROM dbo.EDU_WZXT_MHXT_WZLM AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZLM AS d ON a.PID = d.ID /*��Ŀ¼*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/
GO
