
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--ѧУ���ñ� Ȩ���б�
      ,c.SCHOOLID as c_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,c.ZYDM as c_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,cb.ZYMLLB as c_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,cb.MC as c_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,c.ZYMC as c_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,c.ZYYWMC as c_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,c.XZ as c_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,c.ZYFXMC as c_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,c.ZYJC as c_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,c.JLNY as c_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,c.ZYJSS as c_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,c.KSJGH as c_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,c.ZXF as c_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,c.SSZYML as c_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,cc.MC as c_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,c.ZYLB as c_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,d.SCHOOLID as d_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,d.NJMC as d_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,d.SSNF as d_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,d.NJZT as d_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,db.MC as d_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,e.SCHOOLID as e_XNJG_SCHOOLID--У�ڻ���������� ѧУ��
      ,e.JGMC as e_XNJG_JGMC--У�ڻ���������� ��������
      ,e.JGYWMC as e_XNJG_JGYWMC--У�ڻ���������� ����Ӣ������
      ,e.JGJC as e_XNJG_JGJC--У�ڻ���������� �������
      ,e.JGJP as e_XNJG_JGJP--У�ڻ���������� ������ƴ
      ,e.JGDZ as e_XNJG_JGDZ--У�ڻ���������� ������ַ
      ,e.LSSJJGH as e_XNJG_LSSJJGH--У�ڻ���������� �����ϼ�������
      ,e.LSXQH as e_XNJG_LSXQH--У�ڻ���������� ����У����
      ,e.JGYXBS as e_XNJG_JGYXBS--У�ڻ���������� ������Ч��ʶ
      ,eb.MC as e_XNJG_JGYXBS_MC--�Ƿ��־����� ����
      ,e.SFST as e_XNJG_SFST--У�ڻ���������� �Ƿ�ʵ��
      ,ec.MC as e_XNJG_SFST_MC--�Ƿ��־����� ����
      ,e.JLNY as e_XNJG_JLNY--У�ڻ���������� ��������
      ,e.JGYZBM as e_XNJG_JGYZBM--У�ڻ���������� ������������
      ,e.FZRH as e_XNJG_FZRH--У�ڻ���������� �����˺�

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
