
--���ͳ�����ݼ���
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A50_DFTJSJJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XMID]--��ĿID
      ,a.[SJJMC]--���ݼ�����
      ,a.[DFDXZID]--��ֶ�����ID
      ,a.[DFDXZMC]--��ֶ���������
      ,a.[TJDXJDBMJH]--ͳ�ƶ���ڵ���뼯��
      ,a.[TJDXJDMCLB]--ͳ�ƶ���ڵ������б�
      ,a.[QSSJ]--��ʼʱ��
      ,a.[JSSJ]--����ʱ��
      ,a.[SJJCJ]--���ݼ��㼶
      ,a.[SJJPC]--���ݼ�Ƶ��
      ,a.[SJJCJMC]--���ݼ��㼶����
      ,a.[SJJPCMC]--���ݼ�Ƶ������
      ,a.[SJSCZT]--��������״̬
      ,a.[DQPCBH]--��ǰ���α��
      ,c.SCHOOLID as c_DFXM_SCHOOLID--�����Ŀ�� ѧУID
      ,c.XMMC as c_DFXM_XMMC--�����Ŀ�� ��Ŀ����
      ,c.APPID as c_DFXM_APPID--�����Ŀ�� ����Ӧ��ID

FROM dbo.EDU_OAXT_50_A50_DFTJSJJ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*��ĿID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO
