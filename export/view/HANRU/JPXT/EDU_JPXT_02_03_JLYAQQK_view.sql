
--����Ա��ȫ�����
CREATE VIEW [dbo].[VIEW_EDU_JPXT_02_03_JLYAQQK_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[JLYID]--����ԱID
      ,a.[LRSJ]--¼��ʱ��
      ,a.[AQQK]--��ȫ���
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_JLYSJ_SCHOOLID--����Ա���ݱ� ѧУID
      ,c.XM as c_JLYSJ_XM--����Ա���ݱ� ����
      ,c.XBM as c_JLYSJ_XBM--����Ա���ݱ� �Ա���
      ,cb.MC as c_JLYSJ_XBM_MC--�˵��Ա���� ����
      ,c.SFZH as c_JLYSJ_SFZH--����Ա���ݱ� ���֤��
      ,c.JSZH as c_JLYSJ_JSZH--����Ա���ݱ� ��ʻ֤��
      ,c.JSZYXQ as c_JLYSJ_JSZYXQ--����Ա���ݱ� ��ʻ֤��Ч��
      ,c.JLZH as c_JLYSJ_JLZH--����Ա���ݱ� ����֤��
      ,c.JLZYXQ as c_JLYSJ_JLZYXQ--����Ա���ݱ� ����֤��Ч��
      ,c.XL as c_JLYSJ_XL--����Ա���ݱ� ѧ��
      ,c.ZC as c_JLYSJ_ZC--����Ա���ݱ� ְ��
      ,c.JXSJ as c_JLYSJ_JXSJ--����Ա���ݱ� ��Уʱ��
      ,c.LXDH as c_JLYSJ_LXDH--����Ա���ݱ� ��ϵ�绰
      ,c.ZZ as c_JLYSJ_ZZ--����Ա���ݱ� סַ
      ,c.JSDJ as c_JLYSJ_JSDJ--����Ա���ݱ� �����ȼ�
      ,c.JTCHYXM as c_JLYSJ_JTCHYXM--����Ա���ݱ� ��ͥ��Աһ����
      ,c.JTCYYGX as c_JLYSJ_JTCYYGX--����Ա���ݱ� ��ͥ��Աһ��ϵ
      ,c.JTCYYXBM as c_JLYSJ_JTCYYXBM--����Ա���ݱ� ��ͥ��Աһ�Ա���
      ,c.JTCYYCSRQ as c_JLYSJ_JTCYYCSRQ--����Ա���ݱ� ��ͥ��Աһ��������
      ,c.JTCYYZZ as c_JLYSJ_JTCYYZZ--����Ա���ݱ� ��ͥ��Աһסַ
      ,c.JTCYYLXDH as c_JLYSJ_JTCYYLXDH--����Ա���ݱ� ��ͥ��Աһ��ϵ�绰
      ,c.JTCYYCSGZ as c_JLYSJ_JTCYYCSGZ--����Ա���ݱ� ��ͥ��Աһ���¹���
      ,c.JTCYEXM as c_JLYSJ_JTCYEXM--����Ա���ݱ� ��ͥ��Ա������
      ,c.JTCYEGX as c_JLYSJ_JTCYEGX--����Ա���ݱ� ��ͥ��Ա����ϵ
      ,c.JTCYEXBM as c_JLYSJ_JTCYEXBM--����Ա���ݱ� ��ͥ��Ա���Ա���
      ,c.JTCYECSRQ as c_JLYSJ_JTCYECSRQ--����Ա���ݱ� ��ͥ��Ա����������
      ,c.JTCYEZZ as c_JLYSJ_JTCYEZZ--����Ա���ݱ� ��ͥ��Ա��סַ
      ,c.JTCYELXDH as c_JLYSJ_JTCYELXDH--����Ա���ݱ� ��ͥ��Ա����ϵ�绰
      ,c.JTCYECSGZ as c_JLYSJ_JTCYECSGZ--����Ա���ݱ� ��ͥ��Ա�����¹���

FROM dbo.EDU_JPXT_02_03_JLYAQQK AS a LEFT OUTER JOIN
      dbo.EDU_JPXT_02_01_JLYSJ AS c ON a.JLYID = c.ID /*����ԱID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cb ON c.XBM = cb.DM /*�Ա���*/
GO
