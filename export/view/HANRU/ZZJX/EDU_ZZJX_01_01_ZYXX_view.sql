
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
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
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS c ON a.ZYDM = c.DM /*רҵ����*/ AND a.SSZYML = c.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS d ON a.KSJGH = d.JGH /*���������*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS e ON a.SSZYML = e.DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS cb ON c.ZYMLLB = cb.DM /*רҵĿ¼���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS db ON d.JGYXBS = db.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dc ON d.SFST = dc.DM /*�Ƿ�ʵ��*/
GO
