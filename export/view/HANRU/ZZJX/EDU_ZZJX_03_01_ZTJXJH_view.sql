
--�����ѧ�ƻ����������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_01_ZTJXJH_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[JHBH]--�ƻ����
      ,a.[JHNJ]--�ƻ��꼶
      ,a.[ZYXXID]--רҵID
      ,a.[JHZYMC]--�ƻ�רҵ����
      ,a.[ZXFYQ]--��ѧ��Ҫ��
      ,a.[JLNY]--��������
      ,a.[SYXZ]--����ѧ��
      ,a.[PYMB]--����Ŀ��
      ,a.[SFKY]--�Ƿ����
      ,a.[FJ]--����
      ,a.[ZYRS]--רҵ����
      ,c.SCHOOLID as c_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,c.NJMC as c_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,c.SSNF as c_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,c.NJZT as c_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,[cb].MC as c_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,c.PLSX as c_ZZNJ_PLSX--ѧУ�꼶���ݱ� ����˳��
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,d.ZYDM as d_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,[db].ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,[db].MC as d_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,d.ZYMC as d_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,d.XZ as d_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,d.ZYJC as d_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,d.JLNY as d_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,d.ZYJSS as d_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,d.KSJGH as d_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,d.ZXF as d_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,d.SSZYML as d_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,[dc].MC as d_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,d.ZYLB as d_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,e.MC as e_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZJX_03_01_ZTJXJH AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS c ON a.JHNJ = c.NJDM /*�ƻ��꼶*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*רҵID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFKY = e.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.NJZT = [cb].DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [db] ON d.ZYDM = [db].DM /*רҵ����*/ AND d.SSZYML = [db].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [dc] ON d.SSZYML = [dc].DM /*����רҵĿ¼*/
GO
