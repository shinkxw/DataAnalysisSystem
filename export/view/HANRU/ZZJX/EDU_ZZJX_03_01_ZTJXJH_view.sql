
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
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
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS c ON a.JHNJ = c.NJDM /*�ƻ��꼶*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*רҵ���*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS e ON a.SFKY = e.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.NJZT = cb.DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS db ON d.ZYDM = db.DM /*רҵ����*/ AND d.SSZYML = db.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS dc ON d.SSZYML = dc.DM /*����רҵĿ¼*/
GO
