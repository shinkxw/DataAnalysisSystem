
--ʵϰ��λ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A04_SXGW_DISP]
AS
SELECT a.[ID]--ʵϰ��λID
      ,a.[SCHOOLID]--ѧУID
      ,a.[QYID]--��ҵID
      ,a.[GWMC]--��λ����
      ,a.[QYMC]--��ҵ����
      ,a.[ZPKSSJ]--��Ƹ��ʼʱ��
      ,a.[ZPJSSJ]--��Ƹ����ʱ��
      ,a.[GZXS]--������ʽ
      ,a.[XBYQ]--�Ա�Ҫ��
      ,a.[GWXC]--��λн��
      ,a.[WYYQ]--����Ҫ��
      ,a.[GZDD]--�����ص�
      ,a.[JSJSP]--�����ˮƽ
      ,a.[ZPRS]--��Ƹ����
      ,a.[XLYQ]--ѧ��Ҫ��
      ,a.[ZYYQ]--רҵҪ��
      ,a.[NLYQ]--����Ҫ��
      ,a.[GWJJ]--��λ���
      ,a.[JBQK]--�������
      ,a.[GZJY]--��������
      ,a.[SHZT]--���״̬
      ,a.[GWZT]--��λ״̬
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
      ,c.SCHOOLID as c_XWSXJDXX_SCHOOLID--ѧУ��
      ,c.QYBH as c_XWSXJDXX_QYBH--��ҵ���
      ,c.JDHZHTBH as c_XWSXJDXX_JDHZHTBH--���غ�����ͬ���
      ,c.JDHZHTMC as c_XWSXJDXX_JDHZHTMC--���غ�����ͬ����
      ,c.JDLBM as c_XWSXJDXX_JDLBM--���������
      ,cb.MC as c_XWSXJDXX_JDLBM_MC--����
      ,c.DWMC as c_XWSXJDXX_DWMC--��λ����
      ,c.QYXZQ as c_XWSXJDXX_QYXZQ--��ҵ������
      ,cc.MC as c_XWSXJDXX_QYXZQ_MC--����
      ,c.QYDZ as c_XWSXJDXX_QYDZ--��ҵ��ַ
      ,c.QYXZ as c_XWSXJDXX_QYXZ--��ҵ����
      ,cd.MC as c_XWSXJDXX_QYXZ_MC--����
      ,c.FRDB as c_XWSXJDXX_FRDB--���˴���
      ,c.QYLXR as c_XWSXJDXX_QYLXR--��ҵ��ϵ��
      ,c.QYYZBM as c_XWSXJDXX_QYYZBM--��ҵ��������
      ,c.QYLXDH as c_XWSXJDXX_QYLXDH--��ҵ��ϵ�绰
      ,c.QYYYZZ as c_XWSXJDXX_QYYYZZ--��ҵӪҵִ��
      ,c.QYLX as c_XWSXJDXX_QYLX--��ҵ����
      ,c.QYRS as c_XWSXJDXX_QYRS--��ҵ����
      ,c.QYZCZJ as c_XWSXJDXX_QYZCZJ--��ҵע���ʽ�
      ,c.QYCZ as c_XWSXJDXX_QYCZ--��ҵ����
      ,c.QYFZR as c_XWSXJDXX_QYFZR--��ҵ������
      ,c.FZRZW as c_XWSXJDXX_FZRZW--������ְλ
      ,c.FZRLXDH as c_XWSXJDXX_FZRLXDH--��������ϵ�绰
      ,c.QYYXDZ as c_XWSXJDXX_QYYXDZ--��ҵ�����ַ
      ,c.QYQQ as c_XWSXJDXX_QYQQ--��ҵQQ
      ,c.QYMSN as c_XWSXJDXX_QYMSN--��ҵMSN
      ,c.QYWZ as c_XWSXJDXX_QYWZ--��ҵ��ַ
      ,c.QYJJ as c_XWSXJDXX_QYJJ--��ҵ���
      ,c.SHZT as c_XWSXJDXX_SHZT--���״̬

FROM dbo.EDU_ZZJX_07_A04_SXGW AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS c ON a.QYID = c.ID /*��ҵID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS cb ON c.JDLBM = cb.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.QYXZQ = cc.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS cd ON c.QYXZ = cd.DM /*��ҵ����*/
GO
