
--У��ʵϰ������Ϣ���������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_01_XWSXJDXX_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[ID]--��ҵ��ID
      ,a.[QYBH]--��ҵ���
      ,a.[JDHZHTBH]--���غ�����ͬ���
      ,a.[JDHZHTMC]--���غ�����ͬ����
      ,a.[JDLBM]--���������
      ,a.[DWMC]--��λ����
      ,a.[QYXZQ]--��ҵ������
      ,a.[QYDZ]--��ҵ��ַ
      ,a.[QYXZ]--��ҵ����
      ,a.[FRDB]--���˴���
      ,a.[QYLXR]--��ҵ��ϵ��
      ,a.[QYYZBM]--��ҵ��������
      ,a.[QYLXDH]--��ҵ��ϵ�绰
      ,a.[QYYYZZ]--��ҵӪҵִ��
      ,a.[QYLX]--��ҵ����
      ,a.[QYRS]--��ҵ����
      ,a.[QYZCZJ]--��ҵע���ʽ�
      ,a.[QYCZ]--��ҵ����
      ,a.[QYFZR]--��ҵ������
      ,a.[FZRZW]--������ְλ
      ,a.[FZRLXDH]--��������ϵ�绰
      ,a.[QYYXDZ]--��ҵ�����ַ
      ,a.[QYQQ]--��ҵQQ
      ,a.[QYMSN]--��ҵMSN
      ,a.[QYWZ]--��ҵ��ַ
      ,a.[QYJJ]--��ҵ���
      ,a.[SHZT]--���״̬
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.MC as c_SXJDLB_MC--����
      ,d.MC as d_ZHRMGHGXZQH_MC--����
      ,e.MC as e_JJLXFL_MC--����

FROM dbo.EDU_ZZJX_07_01_XWSXJDXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS c ON a.JDLBM = c.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.QYXZQ = d.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS e ON a.QYXZ = e.DM /*��ҵ����*/
GO