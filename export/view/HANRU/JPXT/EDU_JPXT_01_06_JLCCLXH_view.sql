
--�������������ı�
CREATE VIEW [dbo].[VIEW_EDU_JPXT_01_06_JLCCLXH_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[JLCID]--������ID
      ,a.[JLYID]--����ԱID
      ,a.[LRSJ]--¼��ʱ��
      ,a.[XHQK]--�������
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_JLCSJ_SCHOOLID--���������ݱ� ѧУID
      ,c.GMSJ as c_JLCSJ_GMSJ--���������ݱ� ����ʱ��
      ,c.CLXHID as c_JLCSJ_CLXHID--���������ݱ� �����ͺ�ID
      ,c.PP as c_JLCSJ_PP--���������ݱ� Ʒ��
      ,c.CPH as c_JLCSJ_CPH--���������ݱ� ���ƺ�
      ,c.FDJH as c_JLCSJ_FDJH--���������ݱ� ��������
      ,c.CJH as c_JLCSJ_CJH--���������ݱ� ���ܺ�
      ,c.BFSJ as c_JLCSJ_BFSJ--���������ݱ� ����ʱ��
      ,c.EBRQ as c_JLCSJ_EBRQ--���������ݱ� ��������
      ,c.DQZT as c_JLCSJ_DQZT--���������ݱ� ��ǰ״̬
      ,c.DQJLYID as c_JLCSJ_DQJLYID--���������ݱ� ��ǰ����ԱID
      ,c.BZ as c_JLCSJ_BZ--���������ݱ� ��ע
      ,d.SCHOOLID as d_JLYSJ_SCHOOLID--����Ա���ݱ� ѧУID
      ,d.XM as d_JLYSJ_XM--����Ա���ݱ� ����
      ,d.XBM as d_JLYSJ_XBM--����Ա���ݱ� �Ա���
      ,db.MC as d_JLYSJ_XBM_MC--�˵��Ա���� ����
      ,d.SFZH as d_JLYSJ_SFZH--����Ա���ݱ� ���֤��
      ,d.JSZH as d_JLYSJ_JSZH--����Ա���ݱ� ��ʻ֤��
      ,d.JSZYXQ as d_JLYSJ_JSZYXQ--����Ա���ݱ� ��ʻ֤��Ч��
      ,d.JLZH as d_JLYSJ_JLZH--����Ա���ݱ� ����֤��
      ,d.JLZYXQ as d_JLYSJ_JLZYXQ--����Ա���ݱ� ����֤��Ч��
      ,d.XL as d_JLYSJ_XL--����Ա���ݱ� ѧ��
      ,d.ZC as d_JLYSJ_ZC--����Ա���ݱ� ְ��
      ,d.JXSJ as d_JLYSJ_JXSJ--����Ա���ݱ� ��Уʱ��
      ,d.LXDH as d_JLYSJ_LXDH--����Ա���ݱ� ��ϵ�绰
      ,d.ZZ as d_JLYSJ_ZZ--����Ա���ݱ� סַ
      ,d.JSDJ as d_JLYSJ_JSDJ--����Ա���ݱ� �����ȼ�
      ,d.JTCHYXM as d_JLYSJ_JTCHYXM--����Ա���ݱ� ��ͥ��Աһ����
      ,d.JTCYYGX as d_JLYSJ_JTCYYGX--����Ա���ݱ� ��ͥ��Աһ��ϵ
      ,d.JTCYYXBM as d_JLYSJ_JTCYYXBM--����Ա���ݱ� ��ͥ��Աһ�Ա���
      ,d.JTCYYCSRQ as d_JLYSJ_JTCYYCSRQ--����Ա���ݱ� ��ͥ��Աһ��������
      ,d.JTCYYZZ as d_JLYSJ_JTCYYZZ--����Ա���ݱ� ��ͥ��Աһסַ
      ,d.JTCYYLXDH as d_JLYSJ_JTCYYLXDH--����Ա���ݱ� ��ͥ��Աһ��ϵ�绰
      ,d.JTCYYCSGZ as d_JLYSJ_JTCYYCSGZ--����Ա���ݱ� ��ͥ��Աһ���¹���
      ,d.JTCYEXM as d_JLYSJ_JTCYEXM--����Ա���ݱ� ��ͥ��Ա������
      ,d.JTCYEGX as d_JLYSJ_JTCYEGX--����Ա���ݱ� ��ͥ��Ա����ϵ
      ,d.JTCYEXBM as d_JLYSJ_JTCYEXBM--����Ա���ݱ� ��ͥ��Ա���Ա���
      ,d.JTCYECSRQ as d_JLYSJ_JTCYECSRQ--����Ա���ݱ� ��ͥ��Ա����������
      ,d.JTCYEZZ as d_JLYSJ_JTCYEZZ--����Ա���ݱ� ��ͥ��Ա��סַ
      ,d.JTCYELXDH as d_JLYSJ_JTCYELXDH--����Ա���ݱ� ��ͥ��Ա����ϵ�绰
      ,d.JTCYECSGZ as d_JLYSJ_JTCYECSGZ--����Ա���ݱ� ��ͥ��Ա�����¹���

FROM dbo.EDU_JPXT_01_06_JLCCLXH AS a LEFT OUTER JOIN
      dbo.EDU_JPXT_01_01_JLCSJ AS c ON a.JLCID = c.ID /*������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JPXT_02_01_JLYSJ AS d ON a.JLYID = d.ID /*����ԱID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*�Ա���*/
GO
