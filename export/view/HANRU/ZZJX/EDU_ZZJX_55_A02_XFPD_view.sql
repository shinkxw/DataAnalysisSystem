
--ѧ��������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_55_A02_XFPD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[PDMC]--��������
      ,a.[FSSX]--��������
      ,a.[FSXX]--��������
      ,a.[BL]--��ռ�γ�ѧ�ֱ���
      ,a.[PLSX]--����˳��
      ,a.[FZXXID]--������ϢID
      ,c.SCHOOLID as c_FZXX_SCHOOLID--������Ϣ�� ѧУ
      ,c.FZMC as c_FZXX_FZMC--������Ϣ�� ��������
      ,c.ZDZ as c_FZXX_ZDZ--������Ϣ�� ���ֵ
      ,c.ZXZ as c_FZXX_ZXZ--������Ϣ�� ��Сֵ
      ,c.JGX as c_FZXX_JGX--������Ϣ�� ������
      ,c.MXF as c_FZXX_MXF--������Ϣ�� ���޶�Ӧ��
      ,c.MKF as c_FZXX_MKF--������Ϣ�� �⿼��Ӧ��
      ,c.XFPDBIDLB as c_FZXX_XFPDBIDLB--������Ϣ�� ѧ��������ID�б�
      ,c.JDPDBIDLB as c_FZXX_JDPDBIDLB--������Ϣ�� ����������ID�б�

FROM dbo.EDU_ZZJX_55_A02_XFPD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A01_FZXX AS c ON a.FZXXID = c.ID /*������ϢID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
