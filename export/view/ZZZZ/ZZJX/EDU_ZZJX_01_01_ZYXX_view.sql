
--רҵ������Ϣ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_01_ZYXX_DISP]
AS
SELECT a.[ZYBH]--רҵ���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[ZYDM]--רҵ����
      ,a.[ZYMC]--רҵ����
      ,a.[ZYYWMC]--רҵӢ������
      ,a.[XZ]--ѧ��
      ,a.[ZYFXMC]--רҵ��������
      ,a.[ZYJC]--רҵ���
      ,a.[JLNY]--��������
      ,a.[ZYJSS]--רҵ��ʦ��
      ,a.[KSJGH]--���������
      ,a.[ZXF]--��ѧ��
      ,a.[SSZYML]--����רҵĿ¼
      ,a.[ZYLB]--רҵ�������
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
      ,c.ZYMLLB as c_ZJZY_ZYMLLB--רҵĿ¼���
      ,cb.MC as c_ZJZY_ZYMLLB_MC--����
      ,c.MC as c_ZJZY_MC--����
      ,d.SCHOOLID as d_XNJG_SCHOOLID--ѧУ��
      ,d.JGMC as d_XNJG_JGMC--��������
      ,d.JGYWMC as d_XNJG_JGYWMC--����Ӣ������
      ,d.JGJC as d_XNJG_JGJC--�������
      ,d.JGJP as d_XNJG_JGJP--������ƴ
      ,d.JGDZ as d_XNJG_JGDZ--������ַ
      ,d.LSSJJGH as d_XNJG_LSSJJGH--�����ϼ�������
      ,d.LSXQH as d_XNJG_LSXQH--����У����
      ,d.JGYXBS as d_XNJG_JGYXBS--������Ч��ʶ
      ,db.MC as d_XNJG_JGYXBS_MC--����
      ,d.SFST as d_XNJG_SFST--�Ƿ�ʵ��
      ,dc.MC as d_XNJG_SFST_MC--����
      ,d.JLNY as d_XNJG_JLNY--��������
      ,d.JGYZBM as d_XNJG_JGYZBM--������������
      ,d.FZRH as d_XNJG_FZRH--�����˺�
      ,e.MC as e_ZYML_MC--����

FROM dbo.EDU_ZZJX_01_01_ZYXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS c ON a.ZYDM = c.DM /*רҵ����*/ AND a.SSZYML = c.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS d ON a.KSJGH = d.JGH /*���������*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS e ON a.SSZYML = e.DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS cb ON c.ZYMLLB = cb.DM /*רҵĿ¼���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS db ON d.JGYXBS = db.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dc ON d.SFST = dc.DM /*�Ƿ�ʵ��*/
GO
