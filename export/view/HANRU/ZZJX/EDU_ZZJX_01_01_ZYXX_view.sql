
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
      ,c.ZYMLLB as c_ZJZY_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,cb.MC as c_ZJZY_ZYMLLB_MC--רҵĿ¼���� ����
      ,c.MC as c_ZJZY_MC--�Խ�רҵ���� ����
      ,d.SCHOOLID as d_XNJG_SCHOOLID--У�ڻ���������� ѧУ��
      ,d.JGMC as d_XNJG_JGMC--У�ڻ���������� ��������
      ,d.JGYWMC as d_XNJG_JGYWMC--У�ڻ���������� ����Ӣ������
      ,d.JGJC as d_XNJG_JGJC--У�ڻ���������� �������
      ,d.JGJP as d_XNJG_JGJP--У�ڻ���������� ������ƴ
      ,d.JGDZ as d_XNJG_JGDZ--У�ڻ���������� ������ַ
      ,d.LSSJJGH as d_XNJG_LSSJJGH--У�ڻ���������� �����ϼ�������
      ,d.LSXQH as d_XNJG_LSXQH--У�ڻ���������� ����У����
      ,d.JGYXBS as d_XNJG_JGYXBS--У�ڻ���������� ������Ч��ʶ
      ,db.MC as d_XNJG_JGYXBS_MC--�Ƿ��־����� ����
      ,d.SFST as d_XNJG_SFST--У�ڻ���������� �Ƿ�ʵ��
      ,dc.MC as d_XNJG_SFST_MC--�Ƿ��־����� ����
      ,d.JLNY as d_XNJG_JLNY--У�ڻ���������� ��������
      ,d.JGYZBM as d_XNJG_JGYZBM--У�ڻ���������� ������������
      ,d.FZRH as d_XNJG_FZRH--У�ڻ���������� �����˺�
      ,e.MC as e_ZYML_MC--רҵĿ¼���� ����

FROM dbo.EDU_ZZJX_01_01_ZYXX AS a LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS c ON a.ZYDM = c.DM /*רҵ����*/ AND a.SSZYML = c.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS d ON a.KSJGH = d.JGH /*���������*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS e ON a.SSZYML = e.DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS cb ON c.ZYMLLB = cb.DM /*רҵĿ¼���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS db ON d.JGYXBS = db.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dc ON d.SFST = dc.DM /*�Ƿ�ʵ��*/
GO
