
--У��ʵϰ������Ϣ���������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_01_XWSXJDXX_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[ID]--��ҵ��ID
      ,a.[QYBH]--��ҵ���
      ,a.[JDHZHTBH]--���غ�����ͬ���
      ,a.[JDHZHTMC]--���غ�����ͬ����
      ,a.[JDLBM]--���������
      ,a.[DWMC]--��λ����
      ,a.[QYXZQ]--��ҵ������
      ,a.[QYDZ]--��ҵ��ַ
      ,a.[QYXZ]--��ҵ����
      ,a.[FRDB]--���˴���
      ,a.[QYLXR]--��ҵ��ϵ��
      ,a.[QYYZBM]--��ҵ��������
      ,a.[QYLXDH]--��ҵ��ϵ�绰
      ,a.[QYYYZZ]--��ҵӪҵִ��
      ,a.[QYLX]--��ҵ����
      ,a.[QYRS]--��ҵ����
      ,a.[QYZCZJ]--��ҵע���ʽ�
      ,a.[QYCZ]--��ҵ����
      ,a.[QYFZR]--��ҵ������
      ,a.[FZRZW]--������ְλ
      ,a.[FZRLXDH]--��������ϵ�绰
      ,a.[QYYXDZ]--��ҵ�����ַ
      ,a.[QYQQ]--��ҵQQ
      ,a.[QYMSN]--��ҵMSN
      ,a.[QYWZ]--��ҵ��ַ
      ,a.[QYJJ]--��ҵ���
      ,a.[SHZT]--���״̬
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.MC as c_SXJDLB_MC--����
      ,d.MC as d_ZHRMGHGXZQH_MC--����
      ,e.MC as e_JJLXFL_MC--����

FROM dbo.EDU_ZZJX_07_01_XWSXJDXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS c ON a.JDLBM = c.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.QYXZQ = d.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS e ON a.QYXZ = e.DM /*��ҵ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/
GO
