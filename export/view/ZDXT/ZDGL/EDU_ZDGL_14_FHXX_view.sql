
--������ϸ��
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_14_FHXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[FHPCID]--��������ID
      ,a.[FJXXID]--�ּ���ϸID
      ,a.[JCFW]--��������
      ,a.[HK]--����
      ,a.[WX]--ά��
      ,a.[XDY]--�µ�Դ
      ,a.[JDY]--�ɵ�Դ
      ,a.[PJ]--���
      ,a.[TH]--�˻�
      ,a.[QT]--����
      ,a.[WF]--δ��
      ,a.[FHRQ]--��������
      ,b.FHPCH as b_FHPC_FHPCH--�������α� �������κ�
      ,b.FHR as b_FHPC_FHR--�������α� ������
      ,b.WLGSID as b_FHPC_WLGSID--�������α� ������˾ID
      ,b.ZXS as b_FHPC_ZXS--�������α� ������
      ,b.FHSJ as b_FHPC_FHSJ--�������α� ����ʱ��
      ,b.FJPCID as b_FHPC_FJPCID--�������α� �ּ�����ID
      ,b.FHRID as b_FHPC_FHRID--�������α� ������ID
      ,c.PCID as c_FJXX_PCID--�ּ���ϸ�� ����ID
      ,c.XHID as c_FJXX_XHID--�ּ���ϸ�� �ͺ�ID
      ,c.SRSL as c_FJXX_SRSL--�ּ���ϸ�� ��������
      ,c.LPSL as c_FJXX_LPSL--�ּ���ϸ�� ��Ʒ����
      ,c.GZSL as c_FJXX_GZSL--�ּ���ϸ�� ��������
      ,c.BFSL as c_FJXX_BFSL--�ּ���ϸ�� ��������
      ,c.RWSHSL as c_FJXX_RWSHSL--�ּ���ϸ�� ��Ϊ������
      ,c.QT as c_FJXX_QT--�ּ���ϸ�� ����
      ,c.HJ as c_FJXX_HJ--�ּ���ϸ�� �ϼ�
      ,c.BZ as c_FJXX_BZ--�ּ���ϸ�� ��ע
      ,c.JCFW as c_FJXX_JCFW--�ּ���ϸ�� ��������
      ,c.HK as c_FJXX_HK--�ּ���ϸ�� ����
      ,c.WX as c_FJXX_WX--�ּ���ϸ�� ά��
      ,c.XDY as c_FJXX_XDY--�ּ���ϸ�� �µ�Դ
      ,c.JDY as c_FJXX_JDY--�ּ���ϸ�� �ɵ�Դ
      ,c.PJ as c_FJXX_PJ--�ּ���ϸ�� ���
      ,c.TH as c_FJXX_TH--�ּ���ϸ�� �˻�
      ,c.QTE as c_FJXX_QTE--�ּ���ϸ�� ������
      ,c.WF as c_FJXX_WF--�ּ���ϸ�� δ��
      ,c.FHRQ as c_FJXX_FHRQ--�ּ���ϸ�� ��������

FROM dbo.EDU_ZDGL_14_FHXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_13_FHPC AS b ON a.FHPCID = b.ID /*��������ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_12_FJXX AS c ON a.FJXXID = c.ID /*�ּ���ϸID*/
GO
