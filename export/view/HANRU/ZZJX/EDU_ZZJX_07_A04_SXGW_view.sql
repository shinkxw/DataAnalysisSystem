
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--ѧУ���ñ� Ȩ���б�
      ,c.SCHOOLID as c_XWSXJDXX_SCHOOLID--У��ʵϰ������Ϣ��������� ѧУ��
      ,c.QYBH as c_XWSXJDXX_QYBH--У��ʵϰ������Ϣ��������� ��ҵ���
      ,c.JDHZHTBH as c_XWSXJDXX_JDHZHTBH--У��ʵϰ������Ϣ��������� ���غ�����ͬ���
      ,c.JDHZHTMC as c_XWSXJDXX_JDHZHTMC--У��ʵϰ������Ϣ��������� ���غ�����ͬ����
      ,c.JDLBM as c_XWSXJDXX_JDLBM--У��ʵϰ������Ϣ��������� ���������
      ,cb.MC as c_XWSXJDXX_JDLBM_MC--ʵϰ���������� ����
      ,c.DWMC as c_XWSXJDXX_DWMC--У��ʵϰ������Ϣ��������� ��λ����
      ,c.QYXZQ as c_XWSXJDXX_QYXZQ--У��ʵϰ������Ϣ��������� ��ҵ������
      ,cc.MC as c_XWSXJDXX_QYXZQ_MC--�л����񹲺͹������������� ����
      ,c.QYDZ as c_XWSXJDXX_QYDZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,c.QYXZ as c_XWSXJDXX_QYXZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,cd.MC as c_XWSXJDXX_QYXZ_MC--�������ͷ�������� ����
      ,c.FRDB as c_XWSXJDXX_FRDB--У��ʵϰ������Ϣ��������� ���˴���
      ,c.QYLXR as c_XWSXJDXX_QYLXR--У��ʵϰ������Ϣ��������� ��ҵ��ϵ��
      ,c.QYYZBM as c_XWSXJDXX_QYYZBM--У��ʵϰ������Ϣ��������� ��ҵ��������
      ,c.QYLXDH as c_XWSXJDXX_QYLXDH--У��ʵϰ������Ϣ��������� ��ҵ��ϵ�绰
      ,c.QYYYZZ as c_XWSXJDXX_QYYYZZ--У��ʵϰ������Ϣ��������� ��ҵӪҵִ��
      ,c.QYLX as c_XWSXJDXX_QYLX--У��ʵϰ������Ϣ��������� ��ҵ����
      ,c.QYRS as c_XWSXJDXX_QYRS--У��ʵϰ������Ϣ��������� ��ҵ����
      ,c.QYZCZJ as c_XWSXJDXX_QYZCZJ--У��ʵϰ������Ϣ��������� ��ҵע���ʽ�
      ,c.QYCZ as c_XWSXJDXX_QYCZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,c.QYFZR as c_XWSXJDXX_QYFZR--У��ʵϰ������Ϣ��������� ��ҵ������
      ,c.FZRZW as c_XWSXJDXX_FZRZW--У��ʵϰ������Ϣ��������� ������ְλ
      ,c.FZRLXDH as c_XWSXJDXX_FZRLXDH--У��ʵϰ������Ϣ��������� ��������ϵ�绰
      ,c.QYYXDZ as c_XWSXJDXX_QYYXDZ--У��ʵϰ������Ϣ��������� ��ҵ�����ַ
      ,c.QYQQ as c_XWSXJDXX_QYQQ--У��ʵϰ������Ϣ��������� ��ҵQQ
      ,c.QYMSN as c_XWSXJDXX_QYMSN--У��ʵϰ������Ϣ��������� ��ҵMSN
      ,c.QYWZ as c_XWSXJDXX_QYWZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,c.QYJJ as c_XWSXJDXX_QYJJ--У��ʵϰ������Ϣ��������� ��ҵ���
      ,c.SHZT as c_XWSXJDXX_SHZT--У��ʵϰ������Ϣ��������� ���״̬

FROM dbo.EDU_ZZJX_07_A04_SXGW AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS c ON a.QYID = c.ID /*��ҵID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS cb ON c.JDLBM = cb.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.QYXZQ = cc.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS cd ON c.QYXZ = cd.DM /*��ҵ����*/
GO
