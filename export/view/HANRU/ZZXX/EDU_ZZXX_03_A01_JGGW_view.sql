
--������λ��
CREATE VIEW [dbo].[VIEW_EDU_ZZXX_03_A01_JGGW_DISP]
AS
SELECT a.[ID]--��λ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[JGH]--������
      ,a.[GWBH]--��λ���
      ,a.[GWMC]--��λ����
      ,a.[GWSM]--��λ˵��
      ,c.SCHOOLID as c_XNJG_SCHOOLID--У�ڻ���������� ѧУ��
      ,c.JGMC as c_XNJG_JGMC--У�ڻ���������� ��������
      ,c.JGYWMC as c_XNJG_JGYWMC--У�ڻ���������� ����Ӣ������
      ,c.JGJC as c_XNJG_JGJC--У�ڻ���������� �������
      ,c.JGJP as c_XNJG_JGJP--У�ڻ���������� ������ƴ
      ,c.JGDZ as c_XNJG_JGDZ--У�ڻ���������� ������ַ
      ,c.LSSJJGH as c_XNJG_LSSJJGH--У�ڻ���������� �����ϼ�������
      ,c.LSXQH as c_XNJG_LSXQH--У�ڻ���������� ����У����
      ,c.JGYXBS as c_XNJG_JGYXBS--У�ڻ���������� ������Ч��ʶ
      ,[cb].MC as c_XNJG_JGYXBS_MC--�Ƿ��־����� ����
      ,c.SFST as c_XNJG_SFST--У�ڻ���������� �Ƿ�ʵ��
      ,[cc].MC as c_XNJG_SFST_MC--�Ƿ��־����� ����
      ,c.JLNY as c_XNJG_JLNY--У�ڻ���������� ��������
      ,c.JGYZBM as c_XNJG_JGYZBM--У�ڻ���������� ������������
      ,c.FZRH as c_XNJG_FZRH--У�ڻ���������� �����˺�

FROM dbo.EDU_ZZXX_03_A01_JGGW AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.JGH = c.JGH /*������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.JGYXBS = [cb].DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFST = [cc].DM /*�Ƿ�ʵ��*/
GO
