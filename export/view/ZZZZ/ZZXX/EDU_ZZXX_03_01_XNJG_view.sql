
--У�ڻ����������
CREATE VIEW [dbo].[VIEW_EDU_ZZXX_03_01_XNJG_DISP]
AS
SELECT a.[JGH]--������
      ,a.[SCHOOLID]--ѧУ��
      ,a.[JGMC]--��������
      ,a.[JGYWMC]--����Ӣ������
      ,a.[JGJC]--�������
      ,a.[JGJP]--������ƴ
      ,a.[JGDZ]--������ַ
      ,a.[LSSJJGH]--�����ϼ�������
      ,a.[LSXQH]--����У����
      ,a.[JGYXBS]--������Ч��ʶ
      ,a.[SFST]--�Ƿ�ʵ��
      ,a.[JLNY]--��������
      ,a.[JGYZBM]--������������
      ,a.[FZRH]--�����˺�
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
      ,c.SCHOOLID as c_XNJG_SCHOOLID--ѧУ��
      ,c.JGMC as c_XNJG_JGMC--��������
      ,c.JGYWMC as c_XNJG_JGYWMC--����Ӣ������
      ,c.JGJC as c_XNJG_JGJC--�������
      ,c.JGJP as c_XNJG_JGJP--������ƴ
      ,c.JGDZ as c_XNJG_JGDZ--������ַ
      ,c.LSSJJGH as c_XNJG_LSSJJGH--�����ϼ�������
      ,c.LSXQH as c_XNJG_LSXQH--����У����
      ,c.JGYXBS as c_XNJG_JGYXBS--������Ч��ʶ
      ,cb.MC as c_XNJG_JGYXBS_MC--����
      ,c.SFST as c_XNJG_SFST--�Ƿ�ʵ��
      ,cc.MC as c_XNJG_SFST_MC--����
      ,c.JLNY as c_XNJG_JLNY--��������
      ,c.JGYZBM as c_XNJG_JGYZBM--������������
      ,c.FZRH as c_XNJG_FZRH--�����˺�
      ,d.MC as d_SFBZ_MC--����
      ,e.MC as e_SFBZ_MC--����

FROM dbo.EDU_ZZXX_03_01_XNJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.LSSJJGH = c.JGH /*�����ϼ�������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.JGYXBS = d.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFST = e.DM /*�Ƿ�ʵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.JGYXBS = cb.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cc ON c.SFST = cc.DM /*�Ƿ�ʵ��*/
GO
