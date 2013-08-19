
--������λ��
CREATE VIEW [dbo].[VIEW_EDU_ZZXX_03_A01_JGGW_DISP]
AS
SELECT a.[ID]--��λ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[JGH]--������
      ,a.[GWBH]--��λ���
      ,a.[GWMC]--��λ����
      ,a.[GWSM]--��λ˵��
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
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

FROM dbo.EDU_ZZXX_03_A01_JGGW AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.JGH = c.JGH /*������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.JGYXBS = cb.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cc ON c.SFST = cc.DM /*�Ƿ�ʵ��*/
GO
