
--ѧУ�༶���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_02_02_ZZBJ_DISP]
AS
SELECT a.[XZBDM]--���������
      ,a.[SCHOOLID]--ѧУ��
      ,a.[ZYXXID]--רҵ������Ϣ
      ,a.[ZZNJID]--ѧУ�꼶���ݱ�
      ,a.[XZBMC]--����������
      ,a.[JBNY]--��������
      ,a.[BZRGH]--�����ι���
      ,a.[JSBH]--���ұ��
      ,a.[NANSRS]--��������
      ,a.[NVSRS]--Ů������
      ,a.[ZRS]--������
      ,a.[BZXH]--�೤ѧ��
      ,a.[JXJH]--��ѧ�ƻ�
      ,a.[JGH]--������
      ,a.[XQDM]--У������
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_ZYXX_SCHOOLID--ѧУ��
      ,c.ZYDM as c_ZYXX_ZYDM--רҵ����
      ,cb.ZYMLLB as c_ZYXX_ZYDM_ZYMLLB--רҵĿ¼���
      ,cb.MC as c_ZYXX_ZYDM_MC--����
      ,c.ZYMC as c_ZYXX_ZYMC--רҵ����
      ,c.ZYYWMC as c_ZYXX_ZYYWMC--רҵӢ������
      ,c.XZ as c_ZYXX_XZ--ѧ��
      ,c.ZYFXMC as c_ZYXX_ZYFXMC--רҵ��������
      ,c.ZYJC as c_ZYXX_ZYJC--רҵ���
      ,c.JLNY as c_ZYXX_JLNY--��������
      ,c.ZYJSS as c_ZYXX_ZYJSS--רҵ��ʦ��
      ,c.KSJGH as c_ZYXX_KSJGH--���������
      ,c.ZXF as c_ZYXX_ZXF--��ѧ��
      ,c.SSZYML as c_ZYXX_SSZYML--����רҵĿ¼
      ,cc.MC as c_ZYXX_SSZYML_MC--����
      ,c.ZYLB as c_ZYXX_ZYLB--רҵ�������
      ,d.SCHOOLID as d_ZZNJ_SCHOOLID--ѧУ��
      ,d.NJMC as d_ZZNJ_NJMC--�꼶����
      ,d.SSNF as d_ZZNJ_SSNF--�������
      ,d.NJZT as d_ZZNJ_NJZT--�꼶״̬
      ,db.MC as d_ZZNJ_NJZT_MC--����
      ,e.SCHOOLID as e_XNJG_SCHOOLID--ѧУ��
      ,e.JGMC as e_XNJG_JGMC--��������
      ,e.JGYWMC as e_XNJG_JGYWMC--����Ӣ������
      ,e.JGJC as e_XNJG_JGJC--�������
      ,e.JGJP as e_XNJG_JGJP--������ƴ
      ,e.JGDZ as e_XNJG_JGDZ--������ַ
      ,e.LSSJJGH as e_XNJG_LSSJJGH--�����ϼ�������
      ,e.LSXQH as e_XNJG_LSXQH--����У����
      ,e.JGYXBS as e_XNJG_JGYXBS--������Ч��ʶ
      ,eb.MC as e_XNJG_JGYXBS_MC--����
      ,e.SFST as e_XNJG_SFST--�Ƿ�ʵ��
      ,ec.MC as e_XNJG_SFST_MC--����
      ,e.JLNY as e_XNJG_JLNY--��������
      ,e.JGYZBM as e_XNJG_JGYZBM--������������
      ,e.FZRH as e_XNJG_FZRH--�����˺�

FROM dbo.EDU_ZZJX_02_02_ZZBJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS c ON a.ZYXXID = c.ZYBH /*רҵ������Ϣ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS d ON a.ZZNJID = d.NJDM /*ѧУ�꼶���ݱ�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS e ON a.JGH = e.JGH /*������*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS cb ON c.ZYDM = cb.DM /*רҵ����*/ AND c.SSZYML = cb.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS cc ON c.SSZYML = cc.DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS db ON d.NJZT = db.DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS eb ON e.JGYXBS = eb.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ec ON e.SFST = ec.DM /*�Ƿ�ʵ��*/
GO