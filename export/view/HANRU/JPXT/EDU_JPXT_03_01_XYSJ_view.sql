
--ѧԱ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_JPXT_03_01_XYSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XM]--����
      ,a.[SFZH]--���֤��
      ,a.[XBM]--�Ա���
      ,a.[LXDH]--��ϵ�绰
      ,a.[ZZ]--סַ
      ,a.[BMSJ]--����ʱ��
      ,a.[SFQK]--�ɷ����
      ,a.[SXCXID]--��ѡ����ID
      ,a.[ZJQK]--�������
      ,a.[SSJLYID]--��������ԱID
      ,a.[YJJLYID]--��������ԱID
      ,a.[DQZT]--��ǰ״̬
      ,a.[BYSJ]--��ҵʱ��
      ,c.MC as c_RDXB_MC--�˵��Ա���� ����
      ,d.SCHOOLID as d_CLXH_SCHOOLID--�����ͺ����ݱ� ѧУID
      ,d.CLXHMC as d_CLXH_CLXHMC--�����ͺ����ݱ� �����ͺ�����
      ,d.BZ as d_CLXH_BZ--�����ͺ����ݱ� ��ע
      ,e.SCHOOLID as e_JLYSJ_SCHOOLID--����Ա���ݱ� ѧУID
      ,e.XM as e_JLYSJ_XM--����Ա���ݱ� ����
      ,e.XBM as e_JLYSJ_XBM--����Ա���ݱ� �Ա���
      ,eb.MC as e_JLYSJ_XBM_MC--�˵��Ա���� ����
      ,e.SFZH as e_JLYSJ_SFZH--����Ա���ݱ� ���֤��
      ,e.JSZH as e_JLYSJ_JSZH--����Ա���ݱ� ��ʻ֤��
      ,e.JSZYXQ as e_JLYSJ_JSZYXQ--����Ա���ݱ� ��ʻ֤��Ч��
      ,e.JLZH as e_JLYSJ_JLZH--����Ա���ݱ� ����֤��
      ,e.JLZYXQ as e_JLYSJ_JLZYXQ--����Ա���ݱ� ����֤��Ч��
      ,e.XL as e_JLYSJ_XL--����Ա���ݱ� ѧ��
      ,e.ZC as e_JLYSJ_ZC--����Ա���ݱ� ְ��
      ,e.JXSJ as e_JLYSJ_JXSJ--����Ա���ݱ� ��Уʱ��
      ,e.LXDH as e_JLYSJ_LXDH--����Ա���ݱ� ��ϵ�绰
      ,e.ZZ as e_JLYSJ_ZZ--����Ա���ݱ� סַ
      ,e.JSDJ as e_JLYSJ_JSDJ--����Ա���ݱ� �����ȼ�
      ,e.JTCHYXM as e_JLYSJ_JTCHYXM--����Ա���ݱ� ��ͥ��Աһ����
      ,e.JTCYYGX as e_JLYSJ_JTCYYGX--����Ա���ݱ� ��ͥ��Աһ��ϵ
      ,e.JTCYYXBM as e_JLYSJ_JTCYYXBM--����Ա���ݱ� ��ͥ��Աһ�Ա���
      ,e.JTCYYCSRQ as e_JLYSJ_JTCYYCSRQ--����Ա���ݱ� ��ͥ��Աһ��������
      ,e.JTCYYZZ as e_JLYSJ_JTCYYZZ--����Ա���ݱ� ��ͥ��Աһסַ
      ,e.JTCYYLXDH as e_JLYSJ_JTCYYLXDH--����Ա���ݱ� ��ͥ��Աһ��ϵ�绰
      ,e.JTCYYCSGZ as e_JLYSJ_JTCYYCSGZ--����Ա���ݱ� ��ͥ��Աһ���¹���
      ,e.JTCYEXM as e_JLYSJ_JTCYEXM--����Ա���ݱ� ��ͥ��Ա������
      ,e.JTCYEGX as e_JLYSJ_JTCYEGX--����Ա���ݱ� ��ͥ��Ա����ϵ
      ,e.JTCYEXBM as e_JLYSJ_JTCYEXBM--����Ա���ݱ� ��ͥ��Ա���Ա���
      ,e.JTCYECSRQ as e_JLYSJ_JTCYECSRQ--����Ա���ݱ� ��ͥ��Ա����������
      ,e.JTCYEZZ as e_JLYSJ_JTCYEZZ--����Ա���ݱ� ��ͥ��Ա��סַ
      ,e.JTCYELXDH as e_JLYSJ_JTCYELXDH--����Ա���ݱ� ��ͥ��Ա����ϵ�绰
      ,e.JTCYECSGZ as e_JLYSJ_JTCYECSGZ--����Ա���ݱ� ��ͥ��Ա�����¹���
      ,f.SCHOOLID as f_JLYSJ_SCHOOLID--����Ա���ݱ� ѧУID
      ,f.XM as f_JLYSJ_XM--����Ա���ݱ� ����
      ,f.XBM as f_JLYSJ_XBM--����Ա���ݱ� �Ա���
      ,fb.MC as f_JLYSJ_XBM_MC--�˵��Ա���� ����
      ,f.SFZH as f_JLYSJ_SFZH--����Ա���ݱ� ���֤��
      ,f.JSZH as f_JLYSJ_JSZH--����Ա���ݱ� ��ʻ֤��
      ,f.JSZYXQ as f_JLYSJ_JSZYXQ--����Ա���ݱ� ��ʻ֤��Ч��
      ,f.JLZH as f_JLYSJ_JLZH--����Ա���ݱ� ����֤��
      ,f.JLZYXQ as f_JLYSJ_JLZYXQ--����Ա���ݱ� ����֤��Ч��
      ,f.XL as f_JLYSJ_XL--����Ա���ݱ� ѧ��
      ,f.ZC as f_JLYSJ_ZC--����Ա���ݱ� ְ��
      ,f.JXSJ as f_JLYSJ_JXSJ--����Ա���ݱ� ��Уʱ��
      ,f.LXDH as f_JLYSJ_LXDH--����Ա���ݱ� ��ϵ�绰
      ,f.ZZ as f_JLYSJ_ZZ--����Ա���ݱ� סַ
      ,f.JSDJ as f_JLYSJ_JSDJ--����Ա���ݱ� �����ȼ�
      ,f.JTCHYXM as f_JLYSJ_JTCHYXM--����Ա���ݱ� ��ͥ��Աһ����
      ,f.JTCYYGX as f_JLYSJ_JTCYYGX--����Ա���ݱ� ��ͥ��Աһ��ϵ
      ,f.JTCYYXBM as f_JLYSJ_JTCYYXBM--����Ա���ݱ� ��ͥ��Աһ�Ա���
      ,f.JTCYYCSRQ as f_JLYSJ_JTCYYCSRQ--����Ա���ݱ� ��ͥ��Աһ��������
      ,f.JTCYYZZ as f_JLYSJ_JTCYYZZ--����Ա���ݱ� ��ͥ��Աһסַ
      ,f.JTCYYLXDH as f_JLYSJ_JTCYYLXDH--����Ա���ݱ� ��ͥ��Աһ��ϵ�绰
      ,f.JTCYYCSGZ as f_JLYSJ_JTCYYCSGZ--����Ա���ݱ� ��ͥ��Աһ���¹���
      ,f.JTCYEXM as f_JLYSJ_JTCYEXM--����Ա���ݱ� ��ͥ��Ա������
      ,f.JTCYEGX as f_JLYSJ_JTCYEGX--����Ա���ݱ� ��ͥ��Ա����ϵ
      ,f.JTCYEXBM as f_JLYSJ_JTCYEXBM--����Ա���ݱ� ��ͥ��Ա���Ա���
      ,f.JTCYECSRQ as f_JLYSJ_JTCYECSRQ--����Ա���ݱ� ��ͥ��Ա����������
      ,f.JTCYEZZ as f_JLYSJ_JTCYEZZ--����Ա���ݱ� ��ͥ��Ա��סַ
      ,f.JTCYELXDH as f_JLYSJ_JTCYELXDH--����Ա���ݱ� ��ͥ��Ա����ϵ�绰
      ,f.JTCYECSGZ as f_JLYSJ_JTCYECSGZ--����Ա���ݱ� ��ͥ��Ա�����¹���

FROM dbo.EDU_JPXT_03_01_XYSJ AS a LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS c ON a.XBM = c.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JPXT_05_01_CLXH AS d ON a.SXCXID = d.ID /*��ѡ����ID*/ LEFT OUTER JOIN
      dbo.EDU_JPXT_02_01_JLYSJ AS e ON a.SSJLYID = e.ID /*��������ԱID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JPXT_02_01_JLYSJ AS f ON a.YJJLYID = f.ID /*��������ԱID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS eb ON e.XBM = eb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fb ON f.XBM = fb.DM /*�Ա���*/
GO
