
--У�󻥶���
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A06_XQHD_DISP]
AS
SELECT a.[ID]--У�󻥶���ϢID
      ,a.[SCHOOLID]--ѧУID
      ,a.[QYID]--��ҵID
      ,a.[XXJY]--��ҵ��ѧУ��������
      ,a.[XSJY]--��ҵ��ѧ��ְҵ���ܽ���
      ,a.[GLJY]--ʵϰ���������Ľ���
      ,a.[QTJY]--��������
      ,a.[FKNR]--��������
      ,a.[FKSJ]--����ʱ��
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
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

FROM dbo.EDU_ZZJX_07_A06_XQHD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS c ON a.QYID = c.ID /*��ҵID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS cb ON c.JDLBM = cb.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.QYXZQ = cc.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS cd ON c.QYXZ = cd.DM /*��ҵ����*/
GO
