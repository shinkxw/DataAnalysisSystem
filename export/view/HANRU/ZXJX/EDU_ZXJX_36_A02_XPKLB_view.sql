
--���ſ��б�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_36_A02_XPKLB_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[JSQJXXID]--��ʦ�����Ϣ��ID
      ,a.[PKJGJLID]--�ſν����¼��ID
      ,a.[RQ]--����
      ,a.[CLZT]--����״̬
      ,c.SCHOOLID as c_JSQJXX_SCHOOLID--��ʦ�����Ϣ�� ѧУ
      ,c.QJJSID as c_JSQJXX_QJJSID--��ʦ�����Ϣ�� ��ٽ�ʦID
      ,c.QJKSSJ as c_JSQJXX_QJKSSJ--��ʦ�����Ϣ�� ��ٿ�ʼʱ��
      ,c.QJJSSJ as c_JSQJXX_QJJSSJ--��ʦ�����Ϣ�� ��ٽ���ʱ��
      ,c.CLZT as c_JSQJXX_CLZT--��ʦ�����Ϣ�� ����״̬
      ,d.SCHOOLID as d_PKJGJL_SCHOOLID--�ſν����¼�� ѧУ��
      ,d.XQID as d_PKJGJL_XQID--�ſν����¼�� ѧ��ID
      ,d.TEACHERID as d_PKJGJL_TEACHERID--�ſν����¼�� ��ʦ
      ,d.TEACHERNAME as d_PKJGJL_TEACHERNAME--�ſν����¼�� ��ʦ
      ,d.COURSEID as d_PKJGJL_COURSEID--�ſν����¼�� �γ�
      ,d.COURSENAME as d_PKJGJL_COURSENAME--�ſν����¼�� �γ�
      ,d.CLASSID as d_PKJGJL_CLASSID--�ſν����¼�� �༶
      ,d.CLASSNAME as d_PKJGJL_CLASSNAME--�ſν����¼�� �༶
      ,d.WEEKDAY as d_PKJGJL_WEEKDAY--�ſν����¼�� ������
      ,d.WEEKDAYNAME as d_PKJGJL_WEEKDAYNAME--�ſν����¼�� ����������
      ,d.PERIOD as d_PKJGJL_PERIOD--�ſν����¼�� ʱ��
      ,d.PERIODNAME as d_PKJGJL_PERIODNAME--�ſν����¼�� ʱ������
      ,d.SESSION as d_PKJGJL_SESSION--�ſν����¼�� �ڴ�
      ,d.SESSIONNAME as d_PKJGJL_SESSIONNAME--�ſν����¼�� �ڴ�����

FROM dbo.EDU_ZXJX_36_A02_XPKLB AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_36_A01_JSQJXX AS c ON a.JSQJXXID = c.ID /*��ʦ�����Ϣ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_04_PKJGJL AS d ON a.PKJGJLID = d.ID /*�ſν����¼��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
