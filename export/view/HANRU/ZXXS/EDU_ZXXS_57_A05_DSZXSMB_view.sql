
--��ʦ����ʾģ���
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_57_A05_DSZXSMB_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[MBLX]--ģ������
      ,a.[NRLX]--��������
      ,a.[MC]--����
      ,a.[NR]--����
      ,a.[PLSX]--����˳��
      ,a.[YF]--�·�
      ,a.[WZ]--λ��
      ,a.[JSMBID]--��ɫģ��ID
      ,c.SCHOOLID as c_DSZJSMB_SCHOOLID--��ʦ�ƽ�ɫģ��� ѧУ
      ,c.XQID as c_DSZJSMB_XQID--��ʦ�ƽ�ɫģ��� ѧ��ID
      ,c.JSID as c_DSZJSMB_JSID--��ʦ�ƽ�ɫģ��� ��ɫID
      ,c.MC as c_DSZJSMB_MC--��ʦ�ƽ�ɫģ��� ����
      ,c.BJT as c_DSZJSMB_BJT--��ʦ�ƽ�ɫģ��� ����ͼ
      ,c.TJSJ as c_DSZJSMB_TJSJ--��ʦ�ƽ�ɫģ��� ���ʱ��

FROM dbo.EDU_ZXXS_57_A05_DSZXSMB AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_57_A06_DSZJSMB AS c ON a.JSMBID = c.ID /*��ɫģ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
