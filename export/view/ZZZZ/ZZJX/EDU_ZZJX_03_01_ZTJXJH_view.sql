
--�����ѧ�ƻ����������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_01_ZTJXJH_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[JHBH]--�ƻ����
      ,a.[JHNJ]--�ƻ��꼶
      ,a.[ZYXXID]--רҵ���
      ,a.[JHZYMC]--�ƻ�רҵ����
      ,a.[ZXFYQ]--��ѧ��Ҫ��
      ,a.[JLNY]--��������
      ,a.[SYXZ]--����ѧ��
      ,a.[PYMB]--����Ŀ��
      ,a.[SFKY]--�Ƿ����
      ,a.[FJ]--����
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
      ,c.SCHOOLID as c_ZZNJ_SCHOOLID--ѧУ��
      ,c.NJMC as c_ZZNJ_NJMC--�꼶����
      ,c.SSNF as c_ZZNJ_SSNF--�������
      ,c.NJZT as c_ZZNJ_NJZT--�꼶״̬
      ,cb.MC as c_ZZNJ_NJZT_MC--����
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--ѧУ��
      ,d.ZYDM as d_ZYXX_ZYDM--רҵ����
      ,db.ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--רҵĿ¼���
      ,db.MC as d_ZYXX_ZYDM_MC--����
      ,d.ZYMC as d_ZYXX_ZYMC--רҵ����
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--רҵӢ������
      ,d.XZ as d_ZYXX_XZ--ѧ��
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--רҵ��������
      ,d.ZYJC as d_ZYXX_ZYJC--רҵ���
      ,d.JLNY as d_ZYXX_JLNY--��������
      ,d.ZYJSS as d_ZYXX_ZYJSS--רҵ��ʦ��
      ,d.KSJGH as d_ZYXX_KSJGH--���������
      ,d.ZXF as d_ZYXX_ZXF--��ѧ��
      ,d.SSZYML as d_ZYXX_SSZYML--����רҵĿ¼
      ,dc.MC as d_ZYXX_SSZYML_MC--����
      ,d.ZYLB as d_ZYXX_ZYLB--רҵ�������
      ,e.MC as e_SKFS_MC--����

FROM dbo.EDU_ZZJX_03_01_ZTJXJH AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS c ON a.JHNJ = c.NJDM /*�ƻ��꼶*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*רҵ���*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS e ON a.SFKY = e.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.NJZT = cb.DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS db ON d.ZYDM = db.DM /*רҵ����*/ AND d.SSZYML = db.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS dc ON d.SSZYML = dc.DM /*����רҵĿ¼*/
GO
