--ɾ����ͼ
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_01_USER_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_01_USER_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_01_SCHOOL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_01_SCHOOL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_01_XQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_01_XQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_01_APPUSER_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_01_APPUSER_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_01_APPDLCS_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_01_APPDLCS_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_03_APPRZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_03_APPRZ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_03_APPLL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_03_APPLL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_03_YHSYJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_03_YHSYJL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_05_XL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_05_XL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_05_XLZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_05_XLZ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_05_JC_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_05_JC_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_07_JFBD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_07_JFBD_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_07_RYBD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_07_RYBD_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_09_JKXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_09_JKXX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_01_01_WJJBSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_01_01_WJJBSJ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_02_01_SWCL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_02_01_SWCL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_02_02_WJYB_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_02_02_WJYB_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_03_01_FWCL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_03_01_FWCL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_03_02_HG_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_03_02_HG_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_03_03_HQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_03_03_HQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_03_04_CP_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_03_04_CP_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_04_01_WJQT_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_04_01_WJQT_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_05_01_WJXH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_05_01_WJXH_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_06_01_WJJQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_06_01_WJJQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_08_01_DADJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_08_01_DADJ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_10_A01_TZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_10_A01_TZ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_10_A02_TZYDJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_10_A02_TZYDJL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_10_A03_GG_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_10_A03_GG_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_11_A01_YJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_11_A01_YJ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_13_A01_DWSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_13_A01_DWSJ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_14_A01_GRRCXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_14_A01_GRRCXX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A01_ZCML_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A01_ZCML_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A03_ZCKC_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A03_ZCKC_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A04_ZCRK_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A04_ZCRK_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A05_ZCJH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A05_ZCJH_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A06_ZCBG_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A06_ZCBG_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A08_BXGL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A08_BXGL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A09_WXJH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A09_WXJH_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A10_ZCBF_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A10_ZCBF_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A12_ZCPDMX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A12_ZCPDMX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A13_WXJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A13_WXJL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A14_BXGZXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A14_BXGZXX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_20_A03_LCMB_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_20_A03_LCMB_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_20_A04_LCBZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_20_A04_LCBZ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_20_A05_LCSL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_20_A05_LCSL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_20_A06_LCSHJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_20_A06_LCSHJL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_20_A07_LCMBLXPZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_20_A07_LCMBLXPZ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_21_A02_QJSQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_21_A02_QJSQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_22_A02_HYSQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_22_A02_HYSQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_22_A04_HYJY_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_22_A04_HYJY_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_23_A01_GWSQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_23_A01_GWSQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_24_A01_YCSQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_24_A01_YCSQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_25_A01_CGSQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_25_A01_CGSQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_26_A03_SYSSQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_26_A03_SYSSQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_31_A01_GRTXL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_31_A01_GRTXL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_32_A02_DCWJTM_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_32_A02_DCWJTM_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_32_A03_DCWJTMXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_32_A03_DCWJTMXX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_32_A04_DCWJJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_32_A04_DCWJJL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_33_A03_FW_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_33_A03_FW_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_33_A04_SW_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_33_A04_SW_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_34_A01_WYLCJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_34_A01_WYLCJL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_35_A01_RW_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_35_A01_RW_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_35_A02_RWJSR_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_35_A02_RWJSR_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_35_A03_HFJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_35_A03_HFJL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_36_A02_BJGZJC_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_36_A02_BJGZJC_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_05_SBXH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_05_SBXH_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_08_KH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_08_KH_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_11_FJPC_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_11_FJPC_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_12_FJXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_12_FJXX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_13_FHPC_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_13_FHPC_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_14_FHXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_14_FHXX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_16_JSD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_16_JSD_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_17_JSDXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_17_JSDXX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_18_JFD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_18_JFD_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_19_JFDXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_19_JFDXX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_20_FHD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_20_FHD_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_21_FHDXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_21_FHDXX_DISP
GO

--Ӧ��ϵͳ�û���
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_USER_DISP]
AS
SELECT a.[LOGINNAME]--�û���
      ,a.[SCHOOLID]--ѧУID
      ,a.[APPID]--Ӧ��ID
      ,a.[PWD]--����
      ,a.[STATUS]--�û�״̬
      ,a.[USERTYPE]--�û����
      ,a.[USERID]--�û�ID
      ,a.[ROLEIDLst]--�û���ɫ
      ,a.[XM]--����
      ,a.[XB]--�Ա�
      ,a.[QQ]--QQ
      ,a.[DZYJ]--�����ʼ�
      ,a.[LXDH]--��ϵ�绰
      ,a.[ZJDLSJ]--���һ�ε�¼ʱ��
      ,a.[DLCGCS]--��¼�ɹ�����
      ,a.[YHCJSJ]--�û�����ʱ��
      ,a.[YHRY]--�û�����
      ,a.[YHJF]--�û�����
      ,a.[BMID]--����ID
      ,c.SCHOOLID as c_APP_SCHOOLID--Ӧ�ñ� ѧУID
      ,c.NAME as c_APP_NAME--Ӧ�ñ� Ӧ������
      ,c.URL as c_APP_URL--Ӧ�ñ� ��ַ
      ,c.AUTHIP as c_APP_AUTHIP--Ӧ�ñ� ����IP
      ,c.SM as c_APP_SM--Ӧ�ñ� ˵��
      ,c.DLFS as c_APP_DLFS--Ӧ�ñ� ��¼��ʽ
      ,c.STATUS as c_APP_STATUS--Ӧ�ñ� Ӧ��״̬
      ,c.TYPE as c_APP_TYPE--Ӧ�ñ� Ӧ�����
      ,c.DLCSLB as c_APP_DLCSLB--Ӧ�ñ� ��¼�����б�
      ,c.MNDLJS as c_APP_MNDLJS--Ӧ�ñ� ģ���¼JS
      ,c.SYDX as c_APP_SYDX--Ӧ�ñ� ʹ�ö���
      ,c.KJDX as c_APP_KJDX--Ӧ�ñ� �ɼ�����
      ,d.GSDM as d_SSGS_GSDM--������˾�� ��˾����
      ,d.GSM as d_SSGS_GSM--������˾�� ��˾��

FROM dbo.EDU_ELE_01_USER AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*Ӧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_07_SSGS AS d ON a.BMID = d.ID /*����ID*/
GO

--ѧУ���ñ�
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_SCHOOL_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[SCHOOLNAME]--ѧУ����
      ,a.[SCHOOLTYPE]--ѧУ����
      ,a.[XNID]--ѧ��ID
      ,a.[XQID]--ѧ��ID
      ,a.[MatchURL]--ƥ��url
      ,a.[MenhuURL]--�Ż�url
      ,a.[MenhuWebid]--�Ż�webid
      ,a.[LogLevel]--��־����
      ,a.[ModuleIdList]--Ȩ���б�
      ,a.[EnableStatus]--����״̬
      ,a.[CreateTime]--����ʱ��
      ,a.[YXTID]--��УͨID
      ,a.[LOGO]--ͼ��
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������

FROM dbo.EDU_ELE_01_SCHOOL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/
GO

--ѧ�����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_XQ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XNID]--ѧ��
      ,a.[XQM]--ѧ����
      ,a.[XQMC]--ѧ������
      ,a.[XQKSRQ]--ѧ�ڿ�ʼ����
      ,a.[XQJSRQ]--ѧ�ڽ�������
      ,c.SCHOOLID as c_XN_SCHOOLID--ѧ��� ѧУ��
      ,c.XN as c_XN_XN--ѧ��� ѧ��
      ,d.MC as d_XQ_MC--ѧ�ڴ���� ����

FROM dbo.EDU_ELE_01_XQ AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*ѧ��*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS d ON a.XQM = d.DM /*ѧ����*/
GO

--������Ӧ���û���
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_APPUSER_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[YHID]--�û�ID
      ,a.[APPID]--Ӧ��ID
      ,a.[YHMC]--�û�����
      ,a.[YHZT]--�û�״̬
      ,c.SCHOOLID as c_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,c.PWD as c_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,c.STATUS as c_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,c.USERID as c_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,c.XM as c_USER_XM--Ӧ��ϵͳ�û��� ����
      ,c.XB as c_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,c.QQ as c_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,c.DZYJ as c_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,c.LXDH as c_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,c.YHRY as c_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,c.YHJF as c_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,c.BMID as c_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,d.SCHOOLID as d_APP_SCHOOLID--Ӧ�ñ� ѧУID
      ,d.NAME as d_APP_NAME--Ӧ�ñ� Ӧ������
      ,d.URL as d_APP_URL--Ӧ�ñ� ��ַ
      ,d.AUTHIP as d_APP_AUTHIP--Ӧ�ñ� ����IP
      ,d.SM as d_APP_SM--Ӧ�ñ� ˵��
      ,d.DLFS as d_APP_DLFS--Ӧ�ñ� ��¼��ʽ
      ,d.STATUS as d_APP_STATUS--Ӧ�ñ� Ӧ��״̬
      ,d.TYPE as d_APP_TYPE--Ӧ�ñ� Ӧ�����
      ,d.DLCSLB as d_APP_DLCSLB--Ӧ�ñ� ��¼�����б�
      ,d.MNDLJS as d_APP_MNDLJS--Ӧ�ñ� ģ���¼JS
      ,d.SYDX as d_APP_SYDX--Ӧ�ñ� ʹ�ö���
      ,d.KJDX as d_APP_KJDX--Ӧ�ñ� �ɼ�����

FROM dbo.EDU_ELE_01_APPUSER AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*�û�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS d ON a.APPID = d.ID /*Ӧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO

--������Ӧ�õ�¼������
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_APPDLCS_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[APPUSERID]--Ӧ���û�ID
      ,a.[CSMC]--��������
      ,a.[CSZ]--����ֵ
      ,c.SCHOOLID as c_APPUSER_SCHOOLID--������Ӧ���û��� ѧУ
      ,c.YHID as c_APPUSER_YHID--������Ӧ���û��� �û�ID
      ,c.APPID as c_APPUSER_APPID--������Ӧ���û��� Ӧ��ID
      ,c.YHMC as c_APPUSER_YHMC--������Ӧ���û��� �û�����
      ,c.YHZT as c_APPUSER_YHZT--������Ӧ���û��� �û�״̬

FROM dbo.EDU_ELE_01_APPDLCS AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APPUSER AS c ON a.APPUSERID = c.ID /*Ӧ���û�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO

--Ӧ����־��
CREATE VIEW [dbo].[VIEW_EDU_ELE_03_APPRZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[APPID]--Ӧ��ID
      ,a.[RZLX]--��־����
      ,a.[YHID]--�����û�
      ,a.[CZSJ]--����ʱ��
      ,a.[CZYY]--����Ӧ��
      ,a.[CZLX]--��������
      ,a.[CZJTXX]--����������Ϣ
      ,c.SCHOOLID as c_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,c.PWD as c_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,c.STATUS as c_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,c.USERID as c_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,c.XM as c_USER_XM--Ӧ��ϵͳ�û��� ����
      ,c.XB as c_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,c.QQ as c_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,c.DZYJ as c_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,c.LXDH as c_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,c.YHRY as c_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,c.YHJF as c_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,c.BMID as c_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_ELE_03_APPRZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*�����û�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO

--Ӧ��������
CREATE VIEW [dbo].[VIEW_EDU_ELE_03_APPLL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[APPID]--Ӧ��ID
      ,a.[YHID]--�����û�
      ,a.[CZSJ]--����ʱ��
      ,a.[CZYY]--����Ӧ��
      ,a.[CZBM]--��������
      ,a.[CZXX]--������Ϣ
      ,c.SCHOOLID as c_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,c.PWD as c_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,c.STATUS as c_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,c.USERID as c_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,c.XM as c_USER_XM--Ӧ��ϵͳ�û��� ����
      ,c.XB as c_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,c.QQ as c_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,c.DZYJ as c_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,c.LXDH as c_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,c.YHRY as c_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,c.YHJF as c_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,c.BMID as c_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_ELE_03_APPLL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*�����û�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO

--�û�ʹ�ü�¼��
CREATE VIEW [dbo].[VIEW_EDU_ELE_03_YHSYJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[APPID]--Ӧ��ID
      ,a.[MODULEID]--����ID
      ,a.[YHID]--�û�ID
      ,a.[GNMC]--��������
      ,a.[LJ]--����
      ,a.[SYSJ]--ʹ��ʱ��
      ,a.[XHHMS]--���ĺ�����
      ,c.SCHOOLID as c_APP_SCHOOLID--Ӧ�ñ� ѧУID
      ,c.NAME as c_APP_NAME--Ӧ�ñ� Ӧ������
      ,c.URL as c_APP_URL--Ӧ�ñ� ��ַ
      ,c.AUTHIP as c_APP_AUTHIP--Ӧ�ñ� ����IP
      ,c.SM as c_APP_SM--Ӧ�ñ� ˵��
      ,c.DLFS as c_APP_DLFS--Ӧ�ñ� ��¼��ʽ
      ,c.STATUS as c_APP_STATUS--Ӧ�ñ� Ӧ��״̬
      ,c.TYPE as c_APP_TYPE--Ӧ�ñ� Ӧ�����
      ,c.DLCSLB as c_APP_DLCSLB--Ӧ�ñ� ��¼�����б�
      ,c.MNDLJS as c_APP_MNDLJS--Ӧ�ñ� ģ���¼JS
      ,c.SYDX as c_APP_SYDX--Ӧ�ñ� ʹ�ö���
      ,c.KJDX as c_APP_KJDX--Ӧ�ñ� �ɼ�����
      ,d.APPID as d_MODULE_APPID--������ 
      ,d.NAME as d_MODULE_NAME--������ 
      ,d.Depth as d_MODULE_Depth--������ 
      ,d.PID as d_MODULE_PID--������ 
      ,d.MenuDisp as d_MODULE_MenuDisp--������ 
      ,d.MenuUserType as d_MODULE_MenuUserType--������ 
      ,d.Link as d_MODULE_Link--������ 
      ,d.OrderIndex as d_MODULE_OrderIndex--������ 
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,e.STATUS as e_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,e.USERID as e_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,e.XM as e_USER_XM--Ӧ��ϵͳ�û��� ����
      ,e.XB as e_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,e.QQ as e_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,e.DZYJ as e_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,e.LXDH as e_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,e.BMID as e_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_ELE_03_YHSYJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*Ӧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_MODULE AS d ON a.MODULEID = d.ID /*����ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.YHID = e.LOGINNAME /*�û�ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/
GO

--У����
CREATE VIEW [dbo].[VIEW_EDU_ELE_05_XL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[NAME]--У������
      ,a.[STARTDAY]--��ʼ����
      ,a.[ENDDAY]--��������
      ,a.[XNID]--ѧ��ID
      ,a.[XQID]--ѧ��ID
      ,c.SCHOOLID as c_XN_SCHOOLID--ѧ��� ѧУ��
      ,c.XN as c_XN_XN--ѧ��� ѧ��
      ,d.SCHOOLID as d_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,d.XNID as d_XQ_XNID--ѧ�����ݱ� ѧ��
      ,d.XQM as d_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[db].MC as d_XQ_XQM_MC--ѧ�ڴ���� ����
      ,d.XQMC as d_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,d.XQKSRQ as d_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,d.XQJSRQ as d_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������

FROM dbo.EDU_ELE_05_XL AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*ѧ����*/
GO

--У���ܱ�
CREATE VIEW [dbo].[VIEW_EDU_ELE_05_XLZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XLID]--У��ID
      ,a.[NAME]--У��������
      ,a.[STARTDAY]--��ʼ����
      ,a.[ENDDAY]--��������
      ,a.[ZJH]--�ܼƻ�
      ,c.SCHOOLID as c_XL_SCHOOLID--У���� ѧУID
      ,c.NAME as c_XL_NAME--У���� У������
      ,c.STARTDAY as c_XL_STARTDAY--У���� ��ʼ����
      ,c.ENDDAY as c_XL_ENDDAY--У���� ��������
      ,c.XNID as c_XL_XNID--У���� ѧ��ID
      ,c.XQID as c_XL_XQID--У���� ѧ��ID

FROM dbo.EDU_ELE_05_XLZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_05_XL AS c ON a.XLID = c.ID /*У��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO

--�ڴ�
CREATE VIEW [dbo].[VIEW_EDU_ELE_05_JC_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[SDID]--����ʱ��ID
      ,a.[MC]--����
      ,c.SCHOOLID as c_SD_SCHOOLID--ʱ�� ѧУ��
      ,c.MC as c_SD_MC--ʱ�� ����

FROM dbo.EDU_ELE_05_JC AS a LEFT OUTER JOIN
      dbo.EDU_ELE_05_SD AS c ON a.SDID = c.ID /*����ʱ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO

--���ֱ䶯��
CREATE VIEW [dbo].[VIEW_EDU_ELE_07_JFBD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[APPID]--Ӧ��ID
      ,a.[YHID]--�û�ID
      ,a.[BDSJ]--�䶯ʱ��
      ,a.[BDTM]--�䶯��Ŀ
      ,a.[BDJF]--�䶯����
      ,a.[CZXX]--������Ϣ
      ,c.SCHOOLID as c_APP_SCHOOLID--Ӧ�ñ� ѧУID
      ,c.NAME as c_APP_NAME--Ӧ�ñ� Ӧ������
      ,c.URL as c_APP_URL--Ӧ�ñ� ��ַ
      ,c.AUTHIP as c_APP_AUTHIP--Ӧ�ñ� ����IP
      ,c.SM as c_APP_SM--Ӧ�ñ� ˵��
      ,c.DLFS as c_APP_DLFS--Ӧ�ñ� ��¼��ʽ
      ,c.STATUS as c_APP_STATUS--Ӧ�ñ� Ӧ��״̬
      ,c.TYPE as c_APP_TYPE--Ӧ�ñ� Ӧ�����
      ,c.DLCSLB as c_APP_DLCSLB--Ӧ�ñ� ��¼�����б�
      ,c.MNDLJS as c_APP_MNDLJS--Ӧ�ñ� ģ���¼JS
      ,c.SYDX as c_APP_SYDX--Ӧ�ñ� ʹ�ö���
      ,c.KJDX as c_APP_KJDX--Ӧ�ñ� �ɼ�����
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_ELE_07_JFBD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*Ӧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YHID = d.LOGINNAME /*�û�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/
GO

--�����䶯��
CREATE VIEW [dbo].[VIEW_EDU_ELE_07_RYBD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[APPID]--Ӧ��ID
      ,a.[YHID]--�û�ID
      ,a.[BDSJ]--�䶯ʱ��
      ,a.[BDTM]--�䶯��Ŀ
      ,a.[BDRY]--�䶯����
      ,a.[CZXX]--������Ϣ
      ,c.SCHOOLID as c_APP_SCHOOLID--Ӧ�ñ� ѧУID
      ,c.NAME as c_APP_NAME--Ӧ�ñ� Ӧ������
      ,c.URL as c_APP_URL--Ӧ�ñ� ��ַ
      ,c.AUTHIP as c_APP_AUTHIP--Ӧ�ñ� ����IP
      ,c.SM as c_APP_SM--Ӧ�ñ� ˵��
      ,c.DLFS as c_APP_DLFS--Ӧ�ñ� ��¼��ʽ
      ,c.STATUS as c_APP_STATUS--Ӧ�ñ� Ӧ��״̬
      ,c.TYPE as c_APP_TYPE--Ӧ�ñ� Ӧ�����
      ,c.DLCSLB as c_APP_DLCSLB--Ӧ�ñ� ��¼�����б�
      ,c.MNDLJS as c_APP_MNDLJS--Ӧ�ñ� ģ���¼JS
      ,c.SYDX as c_APP_SYDX--Ӧ�ñ� ʹ�ö���
      ,c.KJDX as c_APP_KJDX--Ӧ�ñ� �ɼ�����
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_ELE_07_RYBD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*Ӧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YHID = d.LOGINNAME /*�û�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/
GO

--�ӿ���Ϣ��
CREATE VIEW [dbo].[VIEW_EDU_ELE_09_JKXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[JKLB]--�ӿ����
      ,a.[JKSM]--�ӿ�˵��
      ,a.[CRCS]--�������
      ,a.[TZWZ]--��ת��ַ
      ,a.[KQZT]--����״̬
      ,a.[FWCS]--���ʴ���
      ,a.[TJSJ]--���ʱ��
      ,a.[TJYH]--����û�
      ,c.SCHOOLID as c_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,c.PWD as c_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,c.STATUS as c_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,c.USERID as c_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,c.XM as c_USER_XM--Ӧ��ϵͳ�û��� ����
      ,c.XB as c_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,c.QQ as c_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,c.DZYJ as c_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,c.LXDH as c_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,c.YHRY as c_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,c.YHJF as c_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,c.BMID as c_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_ELE_09_JKXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.TJYH = c.LOGINNAME /*����û�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO

--�ļ������������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_01_01_WJJBSJ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[ID]--�ļ�ID
      ,a.[WJBH]--�ļ����
      ,a.[WJWH]--�ļ��ĺ�
      ,a.[BT]--����
      ,a.[ZTC]--�����
      ,a.[MJM]--�ܼ���
      ,a.[JJCDM]--�����̶���
      ,a.[YS]--ҳ��
      ,a.[WJFLM]--�ļ�������
      ,a.[ZW]--����
      ,a.[FJ]--����
      ,a.[FWRQ]--��������
      ,a.[CSDW]--���͵�λ
      ,c.HYPYDM as c_WXBMZJ_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,c.HZDM as c_WXBMZJ_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,c.MC as c_WXBMZJ_MC--���ױ��ܵȼ��������ʶ ����
      ,d.MC as d_JJCD_MC--�����̶ȴ���� ����
      ,e.MC as e_WJFL_MC--�ļ��������� ����
      ,e.SM as e_WJFL_SM--�ļ��������� ˵��

FROM dbo.EDU_OAXT_01_01_WJJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS c ON a.MJM = c.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS d ON a.JJCDM = d.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS e ON a.WJFLM = e.DM /*�ļ�������*/
GO

--���Ĵ��������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_02_01_SWCL_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WJID]--�ļ�ID
      ,a.[QSRID]--ǩ����ID
      ,a.[CFRID]--�����ID
      ,a.[DJRID]--�Ǽ���ID
      ,a.[QSRGH]--ǩ���˹���
      ,a.[CFRGH]--����˹���
      ,a.[DJRGH]--�Ǽ��˹���
      ,a.[SWRQ]--��������
      ,a.[LWDW]--���ĵ�λ
      ,a.[FS]--����
      ,a.[CLQK]--�������
      ,a.[FYFS]--��ӡ����
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--�ļ������������ ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ������������ �ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ������������ �ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--�ļ������������ ����
      ,c.ZTC as c_WJJBSJ_ZTC--�ļ������������ �����
      ,c.MJM as c_WJJBSJ_MJM--�ļ������������ �ܼ���
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,[cb].MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
      ,c.ZW as c_WJJBSJ_ZW--�ļ������������ ����
      ,c.FJ as c_WJJBSJ_FJ--�ļ������������ ����
      ,c.FWRQ as c_WJJBSJ_FWRQ--�ļ������������ ��������
      ,c.CSDW as c_WJJBSJ_CSDW--�ļ������������ ���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,e.STATUS as e_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,e.USERID as e_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,e.XM as e_USER_XM--Ӧ��ϵͳ�û��� ����
      ,e.XB as e_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,e.QQ as e_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,e.DZYJ as e_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,e.LXDH as e_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,e.BMID as e_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,f.SCHOOLID as f_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,f.PWD as f_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,f.STATUS as f_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,f.USERTYPE as f_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,f.USERID as f_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,f.XM as f_USER_XM--Ӧ��ϵͳ�û��� ����
      ,f.XB as f_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,f.QQ as f_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,f.DZYJ as f_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,f.LXDH as f_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,f.ZJDLSJ as f_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,f.DLCGCS as f_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,f.YHCJSJ as f_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,f.YHRY as f_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,f.YHJF as f_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,f.BMID as f_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_02_01_SWCL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.QSRID = d.LOGINNAME /*ǩ����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.CFRID = e.LOGINNAME /*�����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.DJRID = f.LOGINNAME /*�Ǽ���ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*�ļ�������*/
GO

--�ļ��İ������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_02_02_WJYB_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WJID]--�ļ�ID
      ,a.[YBRID]--�İ���ID
      ,a.[YBLBM]--�İ������
      ,a.[YBJB]--�İ켶��
      ,a.[YBDW]--�İ쵥λ
      ,a.[YBDWBH]--�İ쵥λ���
      ,a.[YBRGH]--�İ��˹���
      ,a.[YBYJ]--�İ����
      ,a.[YBRQ]--�İ�����
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--�ļ������������ ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ������������ �ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ������������ �ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--�ļ������������ ����
      ,c.ZTC as c_WJJBSJ_ZTC--�ļ������������ �����
      ,c.MJM as c_WJJBSJ_MJM--�ļ������������ �ܼ���
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,[cb].MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
      ,c.ZW as c_WJJBSJ_ZW--�ļ������������ ����
      ,c.FJ as c_WJJBSJ_FJ--�ļ������������ ����
      ,c.FWRQ as c_WJJBSJ_FWRQ--�ļ������������ ��������
      ,c.CSDW as c_WJJBSJ_CSDW--�ļ������������ ���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,e.MC as e_YBLB_MC--�İ�������� ����
      ,e.SM as e_YBLB_SM--�İ�������� ˵��

FROM dbo.EDU_OAXT_02_02_WJYB AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YBRID = d.LOGINNAME /*�İ���ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_YBLB AS e ON a.YBLBM = e.DM /*�İ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*�ļ�������*/
GO

--���Ĵ��������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_03_01_FWCL_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WJID]--�ļ�ID
      ,a.[NGRID]--�����ID
      ,a.[QFRID]--ǩ����ID
      ,a.[DJRID]--�Ǽ���ID
      ,a.[DZRID]--������ID
      ,a.[JDRID]--У����ID
      ,a.[NGRGH]--����˹���
      ,a.[NGRQ]--�������
      ,a.[QFRGH]--ǩ���˹���
      ,a.[QFRQ]--ǩ������
      ,a.[FSFW]--���ͷ�Χ
      ,a.[FSFSM]--���ͷ�ʽ��
      ,a.[DJRGH]--�Ǽ��˹���
      ,a.[DJRQ]--�Ǽ�����
      ,a.[FWJS]--���ļ���
      ,a.[GWFWRQ]--���ķ�������
      ,a.[CLQK]--�������
      ,a.[DZRGH]--�����˹���
      ,a.[JDRGH]--У���˹���
      ,a.[FZFSM]--��װ��ʽ��
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--�ļ������������ ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ������������ �ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ������������ �ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--�ļ������������ ����
      ,c.ZTC as c_WJJBSJ_ZTC--�ļ������������ �����
      ,c.MJM as c_WJJBSJ_MJM--�ļ������������ �ܼ���
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,[cb].MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
      ,c.ZW as c_WJJBSJ_ZW--�ļ������������ ����
      ,c.FJ as c_WJJBSJ_FJ--�ļ������������ ����
      ,c.FWRQ as c_WJJBSJ_FWRQ--�ļ������������ ��������
      ,c.CSDW as c_WJJBSJ_CSDW--�ļ������������ ���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,e.STATUS as e_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,e.USERID as e_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,e.XM as e_USER_XM--Ӧ��ϵͳ�û��� ����
      ,e.XB as e_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,e.QQ as e_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,e.DZYJ as e_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,e.LXDH as e_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,e.BMID as e_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,f.SCHOOLID as f_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,f.PWD as f_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,f.STATUS as f_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,f.USERTYPE as f_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,f.USERID as f_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,f.XM as f_USER_XM--Ӧ��ϵͳ�û��� ����
      ,f.XB as f_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,f.QQ as f_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,f.DZYJ as f_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,f.LXDH as f_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,f.ZJDLSJ as f_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,f.DLCGCS as f_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,f.YHCJSJ as f_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,f.YHRY as f_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,f.YHJF as f_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,f.BMID as f_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,g.SCHOOLID as g_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,g.APPID as g_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,g.PWD as g_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,g.STATUS as g_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,g.USERTYPE as g_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,g.USERID as g_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,g.XM as g_USER_XM--Ӧ��ϵͳ�û��� ����
      ,g.XB as g_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,g.QQ as g_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,g.DZYJ as g_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,g.LXDH as g_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,g.ZJDLSJ as g_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,g.DLCGCS as g_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,g.YHCJSJ as g_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,g.YHRY as g_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,g.YHJF as g_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,g.BMID as g_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,h.SCHOOLID as h_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,h.APPID as h_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,h.PWD as h_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,h.STATUS as h_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,h.USERTYPE as h_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,h.USERID as h_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,h.ROLEIDLst as h_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,h.XM as h_USER_XM--Ӧ��ϵͳ�û��� ����
      ,h.XB as h_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,h.QQ as h_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,h.DZYJ as h_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,h.LXDH as h_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,h.ZJDLSJ as h_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,h.DLCGCS as h_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,h.YHCJSJ as h_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,h.YHRY as h_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,h.YHJF as h_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,h.BMID as h_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,i.MC as i_FSFS_MC--���ͷ�ʽ����� ����
      ,j.MC as j_GWFZFS_MC--���ķ�װ��ʽ����� ����

FROM dbo.EDU_OAXT_03_01_FWCL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.NGRID = d.LOGINNAME /*�����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.QFRID = e.LOGINNAME /*ǩ����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.DJRID = f.LOGINNAME /*�Ǽ���ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.DZRID = g.LOGINNAME /*������ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS h ON a.JDRID = h.LOGINNAME /*У����ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_FSFS AS i ON a.FSFSM = i.DM /*���ͷ�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWFZFS AS j ON a.FZFSM = j.DM /*��װ��ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*�ļ�������*/
GO

--�˸������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_03_02_HG_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WJID]--�ļ�ID
      ,a.[HGRID]--�˸���ID
      ,a.[HGRGH]--�˸��˹���
      ,a.[HGDW]--�˸嵥λ
      ,a.[HGYJ]--�˸����
      ,a.[HGRQ]--�˸�����
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--�ļ������������ ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ������������ �ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ������������ �ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--�ļ������������ ����
      ,c.ZTC as c_WJJBSJ_ZTC--�ļ������������ �����
      ,c.MJM as c_WJJBSJ_MJM--�ļ������������ �ܼ���
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,[cb].MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
      ,c.ZW as c_WJJBSJ_ZW--�ļ������������ ����
      ,c.FJ as c_WJJBSJ_FJ--�ļ������������ ����
      ,c.FWRQ as c_WJJBSJ_FWRQ--�ļ������������ ��������
      ,c.CSDW as c_WJJBSJ_CSDW--�ļ������������ ���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_03_02_HG AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.HGRID = d.LOGINNAME /*�˸���ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*�ļ�������*/
GO

--��ǩ�����
CREATE VIEW [dbo].[VIEW_EDU_OAXT_03_03_HQ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WJID]--�ļ�ID
      ,a.[HQRID]--��ǩ��ID
      ,a.[HQR]--��ǩ��
      ,a.[HQDW]--��ǩ��λ
      ,a.[HQYJ]--��ǩ���
      ,a.[HQRQ]--��ǩ����
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--�ļ������������ ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ������������ �ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ������������ �ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--�ļ������������ ����
      ,c.ZTC as c_WJJBSJ_ZTC--�ļ������������ �����
      ,c.MJM as c_WJJBSJ_MJM--�ļ������������ �ܼ���
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,[cb].MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
      ,c.ZW as c_WJJBSJ_ZW--�ļ������������ ����
      ,c.FJ as c_WJJBSJ_FJ--�ļ������������ ����
      ,c.FWRQ as c_WJJBSJ_FWRQ--�ļ������������ ��������
      ,c.CSDW as c_WJJBSJ_CSDW--�ļ������������ ���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_03_03_HQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.HQRID = d.LOGINNAME /*��ǩ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*�ļ�������*/
GO

--���������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_03_04_CP_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WJID]--�ļ�ID
      ,a.[PFRID]--������ID
      ,a.[PFR]--������
      ,a.[PFDW]--������λ
      ,a.[PFYJ]--�������
      ,a.[PFRQ]--��������
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--�ļ������������ ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ������������ �ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ������������ �ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--�ļ������������ ����
      ,c.ZTC as c_WJJBSJ_ZTC--�ļ������������ �����
      ,c.MJM as c_WJJBSJ_MJM--�ļ������������ �ܼ���
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,[cb].MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
      ,c.ZW as c_WJJBSJ_ZW--�ļ������������ ����
      ,c.FJ as c_WJJBSJ_FJ--�ļ������������ ����
      ,c.FWRQ as c_WJJBSJ_FWRQ--�ļ������������ ��������
      ,c.CSDW as c_WJJBSJ_CSDW--�ļ������������ ���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_03_04_CP AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.PFRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*�ļ�������*/
GO

--�ļ������������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_04_01_WJQT_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WJID]--�ļ�ID
      ,a.[JBRID]--������ID
      ,a.[QTRQ]--��������
      ,a.[QTFW]--���˷�Χ
      ,a.[QTSM]--����˵��
      ,a.[JBRGH]--�����˹���
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--�ļ������������ ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ������������ �ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ������������ �ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--�ļ������������ ����
      ,c.ZTC as c_WJJBSJ_ZTC--�ļ������������ �����
      ,c.MJM as c_WJJBSJ_MJM--�ļ������������ �ܼ���
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,[cb].MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
      ,c.ZW as c_WJJBSJ_ZW--�ļ������������ ����
      ,c.FJ as c_WJJBSJ_FJ--�ļ������������ ����
      ,c.FWRQ as c_WJJBSJ_FWRQ--�ļ������������ ��������
      ,c.CSDW as c_WJJBSJ_CSDW--�ļ������������ ���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_04_01_WJQT AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JBRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*�ļ�������*/
GO

--�ļ������������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_05_01_WJXH_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WJID]--�ļ�ID
      ,a.[XHSPRID]--����������ID
      ,a.[JBRID]--������ID
      ,a.[XHRQ]--��������
      ,a.[XHSPRGH]--���������˹���
      ,a.[XHSM]--����˵��
      ,a.[JBRGH]--�����˹���
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--�ļ������������ ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ������������ �ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ������������ �ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--�ļ������������ ����
      ,c.ZTC as c_WJJBSJ_ZTC--�ļ������������ �����
      ,c.MJM as c_WJJBSJ_MJM--�ļ������������ �ܼ���
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,[cb].MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
      ,c.ZW as c_WJJBSJ_ZW--�ļ������������ ����
      ,c.FJ as c_WJJBSJ_FJ--�ļ������������ ����
      ,c.FWRQ as c_WJJBSJ_FWRQ--�ļ������������ ��������
      ,c.CSDW as c_WJJBSJ_CSDW--�ļ������������ ���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,e.STATUS as e_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,e.USERID as e_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,e.XM as e_USER_XM--Ӧ��ϵͳ�û��� ����
      ,e.XB as e_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,e.QQ as e_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,e.DZYJ as e_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,e.LXDH as e_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,e.BMID as e_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_05_01_WJXH AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.XHSPRID = d.LOGINNAME /*����������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JBRID = e.LOGINNAME /*������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*�ļ�������*/
GO

--�ļ������������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_06_01_WJJQ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WJID]--�ļ�ID
      ,a.[JYSPRID]--����������ID
      ,a.[JYJBRID]--���ľ�����ID
      ,a.[JYR]--������
      ,a.[JYRQ]--��������
      ,a.[JYSPRGH]--���������˹���
      ,a.[JYJBRGH]--���ľ����˹���
      ,a.[JYYY]--����ԭ��
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--�ļ������������ ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ������������ �ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ������������ �ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--�ļ������������ ����
      ,c.ZTC as c_WJJBSJ_ZTC--�ļ������������ �����
      ,c.MJM as c_WJJBSJ_MJM--�ļ������������ �ܼ���
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,[cb].MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
      ,c.ZW as c_WJJBSJ_ZW--�ļ������������ ����
      ,c.FJ as c_WJJBSJ_FJ--�ļ������������ ����
      ,c.FWRQ as c_WJJBSJ_FWRQ--�ļ������������ ��������
      ,c.CSDW as c_WJJBSJ_CSDW--�ļ������������ ���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,e.STATUS as e_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,e.USERID as e_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,e.XM as e_USER_XM--Ӧ��ϵͳ�û��� ����
      ,e.XB as e_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,e.QQ as e_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,e.DZYJ as e_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,e.LXDH as e_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,e.BMID as e_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_06_01_WJJQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JYSPRID = d.LOGINNAME /*����������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JYJBRID = e.LOGINNAME /*���ľ�����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*�ļ�������*/
GO

--�����Ǽ����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_08_01_DADJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[QZH]--ȫ�ں�
      ,a.[ND]--���
      ,a.[MLH]--Ŀ¼��
      ,a.[AJH]--�����
      ,a.[TM]--����
      ,a.[ZTC]--�����
      ,a.[QSRQ]--��ʼ����
      ,a.[JZRQ]--��ֹ����
      ,a.[BGQXM]--����������
      ,a.[MJM]--�ܼ���
      ,a.[YS]--ҳ��
      ,a.[FS]--����
      ,a.[BZDW]--���Ƶ�λ
      ,a.[CFWZ]--���λ��
      ,a.[DAFLM]--����������
      ,c.MC as c_YWDABGQX_MC--һλ�����������޴���� ����
      ,c.ZMDM as c_YWDABGQX_ZMDM--һλ�����������޴���� ��ĸ����
      ,c.SM as c_YWDABGQX_SM--һλ�����������޴���� ˵��
      ,d.HYPYDM as d_WXBMZJ_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,d.HZDM as d_WXBMZJ_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,d.MC as d_WXBMZJ_MC--���ױ��ܵȼ��������ʶ ����
      ,e.MC as e_LWGDXXDASTFL_MC--��λ�ߵ�ѧУ����ʵ������� ����

FROM dbo.EDU_OAXT_08_01_DADJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_YWDABGQX AS c ON a.BGQXM = c.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS d ON a.MJM = d.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_LWGDXXDASTFL AS e ON a.DAFLM = e.DM /*����������*/
GO

--֪ͨ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_10_A01_TZ_DISP]
AS
SELECT a.[ID]--֪ͨID
      ,a.[SCHOOLID]--ѧУID
      ,a.[FSRID]--������ID
      ,a.[FSRLB]--���������
      ,a.[BT]--����
      ,a.[NR]--����
      ,a.[FJ]--����
      ,a.[TJRQ]--�������
      ,a.[JSRS]--��������
      ,a.[JSRIDLB]--������ID�б�
      ,a.[JSRMZLB]--�����������б�
      ,a.[YYDRIDLB]--���Ķ���ID�б�
      ,a.[YYDRMZLB]--���Ķ��������б�
      ,a.[FSZT]--����״̬
      ,c.SCHOOLID as c_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,c.PWD as c_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,c.STATUS as c_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,c.USERID as c_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,c.XM as c_USER_XM--Ӧ��ϵͳ�û��� ����
      ,c.XB as c_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,c.QQ as c_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,c.DZYJ as c_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,c.LXDH as c_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,c.YHRY as c_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,c.YHJF as c_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,c.BMID as c_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_10_A01_TZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.FSRID = c.LOGINNAME /*������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO

--֪ͨ�Ķ���¼
CREATE VIEW [dbo].[VIEW_EDU_OAXT_10_A02_TZYDJL_DISP]
AS
SELECT a.[ID]--֪ͨ�Ķ���¼ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[TZID]--֪ͨID
      ,a.[BTZRID]--��֪ͨ��ID
      ,a.[YDRQ]--�Ķ�����
      ,a.[SFYD]--�Ƿ����Ķ�
      ,a.[SCZT]--ɾ��״̬
      ,c.SCHOOLID as c_TZ_SCHOOLID--֪ͨ���ݱ� ѧУID
      ,c.FSRID as c_TZ_FSRID--֪ͨ���ݱ� ������ID
      ,c.FSRLB as c_TZ_FSRLB--֪ͨ���ݱ� ���������
      ,c.BT as c_TZ_BT--֪ͨ���ݱ� ����
      ,c.NR as c_TZ_NR--֪ͨ���ݱ� ����
      ,c.FJ as c_TZ_FJ--֪ͨ���ݱ� ����
      ,c.TJRQ as c_TZ_TJRQ--֪ͨ���ݱ� �������
      ,c.JSRS as c_TZ_JSRS--֪ͨ���ݱ� ��������
      ,c.JSRIDLB as c_TZ_JSRIDLB--֪ͨ���ݱ� ������ID�б�
      ,c.JSRMZLB as c_TZ_JSRMZLB--֪ͨ���ݱ� �����������б�
      ,c.YYDRIDLB as c_TZ_YYDRIDLB--֪ͨ���ݱ� ���Ķ���ID�б�
      ,c.YYDRMZLB as c_TZ_YYDRMZLB--֪ͨ���ݱ� ���Ķ��������б�
      ,c.FSZT as c_TZ_FSZT--֪ͨ���ݱ� ����״̬
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,e.MC as e_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_OAXT_10_A02_TZYDJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_10_A01_TZ AS c ON a.TZID = c.ID /*֪ͨID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.BTZRID = d.LOGINNAME /*��֪ͨ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFYD = e.DM /*�Ƿ����Ķ�*/
GO

--�������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_10_A03_GG_DISP]
AS
SELECT a.[ID]--����ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[FBRID]--������ID
      ,a.[FBBM]--��������
      ,a.[FBSJ]--����ʱ��
      ,a.[BT]--�������
      ,a.[NR]--��������
      ,a.[ZT]--����״̬
      ,c.SCHOOLID as c_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,c.PWD as c_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,c.STATUS as c_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,c.USERID as c_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,c.XM as c_USER_XM--Ӧ��ϵͳ�û��� ����
      ,c.XB as c_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,c.QQ as c_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,c.DZYJ as c_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,c.LXDH as c_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,c.YHRY as c_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,c.YHJF as c_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,c.BMID as c_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_10_A03_GG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.FBRID = c.LOGINNAME /*������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO

--�ʼ����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_11_A01_YJ_DISP]
AS
SELECT a.[ID]--�ʼ�ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[YYZID]--ӵ����ID
      ,a.[FSRID]--������ID
      ,a.[JSRID]--������ID
      ,a.[FSRMC]--����������
      ,a.[JSRMC]--����������
      ,a.[JSRIDLB]--������ID�б�
      ,a.[JSRMCLB]--�����������б�
      ,a.[BT]--����
      ,a.[NR]--����
      ,a.[FJ]--����
      ,a.[FSSJ]--����ʱ��
      ,a.[SFYD]--�Ƿ����Ķ�
      ,a.[YJLX]--�ʼ�����
      ,c.SCHOOLID as c_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,c.PWD as c_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,c.STATUS as c_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,c.USERID as c_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,c.XM as c_USER_XM--Ӧ��ϵͳ�û��� ����
      ,c.XB as c_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,c.QQ as c_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,c.DZYJ as c_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,c.LXDH as c_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,c.YHRY as c_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,c.YHJF as c_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,c.BMID as c_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,e.STATUS as e_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,e.USERID as e_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,e.XM as e_USER_XM--Ӧ��ϵͳ�û��� ����
      ,e.XB as e_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,e.QQ as e_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,e.DZYJ as e_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,e.LXDH as e_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,e.BMID as e_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,f.MC as f_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_OAXT_11_A01_YJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YYZID = c.LOGINNAME /*ӵ����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.FSRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JSRID = e.LOGINNAME /*������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFYD = f.DM /*�Ƿ����Ķ�*/
GO

--��λ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_13_A01_DWSJ_DISP]
AS
SELECT a.[ID]--��λID
      ,a.[SCHOOLID]--ѧУID
      ,a.[SJDWID]--�ϼ���λID
      ,a.[DWFZRID]--��λ������ID
      ,a.[DWMC]--��λ����
      ,a.[DWCYIDLB]--��λ��ԱID�б�
      ,c.SCHOOLID as c_DWSJ_SCHOOLID--��λ���ݱ� ѧУID
      ,c.SJDWID as c_DWSJ_SJDWID--��λ���ݱ� �ϼ���λID
      ,c.DWFZRID as c_DWSJ_DWFZRID--��λ���ݱ� ��λ������ID
      ,c.DWMC as c_DWSJ_DWMC--��λ���ݱ� ��λ����
      ,c.DWCYIDLB as c_DWSJ_DWCYIDLB--��λ���ݱ� ��λ��ԱID�б�
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_13_A01_DWSJ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_13_A01_DWSJ AS c ON a.SJDWID = c.ID /*�ϼ���λID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.DWFZRID = d.LOGINNAME /*��λ������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/
GO

--�����ճ���Ϣ��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_14_A01_GRRCXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[YHID]--�û�ID
      ,a.[BT]--����
      ,a.[NR]--����
      ,a.[KSSJ]--��ʼʱ��
      ,a.[JSSJ]--����ʱ��
      ,a.[SFTS]--�Ƿ���ʾ
      ,a.[ZT]--״̬
      ,c.SCHOOLID as c_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,c.PWD as c_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,c.STATUS as c_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,c.USERID as c_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,c.XM as c_USER_XM--Ӧ��ϵͳ�û��� ����
      ,c.XB as c_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,c.QQ as c_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,c.DZYJ as c_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,c.LXDH as c_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,c.YHRY as c_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,c.YHJF as c_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,c.BMID as c_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,d.MC as d_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_OAXT_14_A01_GRRCXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*�û�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.SFTS = d.DM /*�Ƿ���ʾ*/
GO

--�ʲ�Ŀ¼��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A01_ZCML_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[Name]--У��Ŀ¼
      ,a.[Superid]--��Ŀ¼ID
      ,a.[Remark]--��ע
      ,c.SCHOOLID as c_ZCML_SCHOOLID--�ʲ�Ŀ¼�� ѧУ
      ,c.Name as c_ZCML_Name--�ʲ�Ŀ¼�� У��Ŀ¼
      ,c.Superid as c_ZCML_Superid--�ʲ�Ŀ¼�� ��Ŀ¼ID
      ,c.Remark as c_ZCML_Remark--�ʲ�Ŀ¼�� ��ע

FROM dbo.EDU_OAXT_15_A01_ZCML AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A01_ZCML AS c ON a.Superid = c.ID /*��Ŀ¼ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO

--�ʲ�����
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A03_ZCKC_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[TypeID]--�ʲ�Ŀ¼��ID
      ,a.[ClassID]--�ʲ������ID
      ,a.[Name]--�ʲ�����
      ,a.[Info]--�ʲ����
      ,a.[Productdate]--����ʱ��
      ,a.[Price]--����
      ,a.[SumCount]--����
      ,a.[Merchant]--��Ӧ��
      ,a.[Vender]--����
      ,a.[Remark]--��ע
      ,a.[AllCount]--�ʲ�����
      ,a.[RKL]--�����
      ,a.[RQ]--����
      ,a.[DW]--��λ
      ,a.[ZJ]--�ܼ�
      ,a.[SYBM]--ʹ�ò���
      ,a.[CFDW]--��ŵ�λ
      ,a.[FZR]--������
      ,a.[CZFS]--���÷�ʽ
      ,c.SCHOOLID as c_ZCML_SCHOOLID--�ʲ�Ŀ¼�� ѧУ
      ,c.Name as c_ZCML_Name--�ʲ�Ŀ¼�� У��Ŀ¼
      ,c.Superid as c_ZCML_Superid--�ʲ�Ŀ¼�� ��Ŀ¼ID
      ,c.Remark as c_ZCML_Remark--�ʲ�Ŀ¼�� ��ע
      ,d.SCHOOLID as d_ZCDL_SCHOOLID--�ʲ������ ѧУ
      ,d.Name as d_ZCDL_Name--�ʲ������ У������
      ,d.Remark as d_ZCDL_Remark--�ʲ������ ��ע

FROM dbo.EDU_OAXT_15_A03_ZCKC AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A01_ZCML AS c ON a.TypeID = c.ID /*�ʲ�Ŀ¼��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A02_ZCDL AS d ON a.ClassID = d.ID /*�ʲ������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO

--�ʲ�����
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A04_ZCRK_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[TypeID]--�ʲ�Ŀ¼��ID
      ,a.[ClassID]--�ʲ������ID
      ,a.[Name]--У������
      ,a.[Info]--�ʲ����
      ,a.[Productdate]--����ʱ��
      ,a.[Price]--����
      ,a.[SumCount]--����
      ,a.[Merchant]--��Ӧ��
      ,a.[Vender]--����
      ,a.[Registdate]--�Ǽ�ʱ��
      ,a.[Remark]--��ע
      ,a.[Status]--���״̬
      ,a.[RQ]--����
      ,a.[DW]--��λ
      ,a.[ZJ]--�ܼ�
      ,a.[SYBM]--ʹ�ò���
      ,a.[CFDW]--��ŵ�λ
      ,a.[FZR]--������
      ,a.[CZFS]--���÷�ʽ
      ,c.SCHOOLID as c_ZCML_SCHOOLID--�ʲ�Ŀ¼�� ѧУ
      ,c.Name as c_ZCML_Name--�ʲ�Ŀ¼�� У��Ŀ¼
      ,c.Superid as c_ZCML_Superid--�ʲ�Ŀ¼�� ��Ŀ¼ID
      ,c.Remark as c_ZCML_Remark--�ʲ�Ŀ¼�� ��ע
      ,d.SCHOOLID as d_ZCDL_SCHOOLID--�ʲ������ ѧУ
      ,d.Name as d_ZCDL_Name--�ʲ������ У������
      ,d.Remark as d_ZCDL_Remark--�ʲ������ ��ע

FROM dbo.EDU_OAXT_15_A04_ZCRK AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A01_ZCML AS c ON a.TypeID = c.ID /*�ʲ�Ŀ¼��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A02_ZCDL AS d ON a.ClassID = d.ID /*�ʲ������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO

--�ʲ��軹��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A05_ZCJH_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[TypeID]--�ʲ�Ŀ¼��ID
      ,a.[ClassID]--�ʲ������ID
      ,a.[AID]--����ID
      ,a.[SumCount]--����
      ,a.[Unit]--��λ
      ,a.[Borrower]--���÷�
      ,a.[Remark]--��ע
      ,a.[Registdate]--�Ǽ�ʱ��
      ,c.SCHOOLID as c_ZCML_SCHOOLID--�ʲ�Ŀ¼�� ѧУ
      ,c.Name as c_ZCML_Name--�ʲ�Ŀ¼�� У��Ŀ¼
      ,c.Superid as c_ZCML_Superid--�ʲ�Ŀ¼�� ��Ŀ¼ID
      ,c.Remark as c_ZCML_Remark--�ʲ�Ŀ¼�� ��ע
      ,d.SCHOOLID as d_ZCDL_SCHOOLID--�ʲ������ ѧУ
      ,d.Name as d_ZCDL_Name--�ʲ������ У������
      ,d.Remark as d_ZCDL_Remark--�ʲ������ ��ע
      ,e.SCHOOLID as e_ZCKC_SCHOOLID--�ʲ����� ѧУ
      ,e.TypeID as e_ZCKC_TypeID--�ʲ����� �ʲ�Ŀ¼��ID
      ,e.ClassID as e_ZCKC_ClassID--�ʲ����� �ʲ������ID
      ,e.Name as e_ZCKC_Name--�ʲ����� �ʲ�����
      ,e.Info as e_ZCKC_Info--�ʲ����� �ʲ����
      ,e.Productdate as e_ZCKC_Productdate--�ʲ����� ����ʱ��
      ,e.Price as e_ZCKC_Price--�ʲ����� ����
      ,e.SumCount as e_ZCKC_SumCount--�ʲ����� ����
      ,e.Merchant as e_ZCKC_Merchant--�ʲ����� ��Ӧ��
      ,e.Vender as e_ZCKC_Vender--�ʲ����� ����
      ,e.Remark as e_ZCKC_Remark--�ʲ����� ��ע
      ,e.AllCount as e_ZCKC_AllCount--�ʲ����� �ʲ�����
      ,e.RKL as e_ZCKC_RKL--�ʲ����� �����
      ,e.RQ as e_ZCKC_RQ--�ʲ����� ����
      ,e.DW as e_ZCKC_DW--�ʲ����� ��λ
      ,e.ZJ as e_ZCKC_ZJ--�ʲ����� �ܼ�
      ,e.SYBM as e_ZCKC_SYBM--�ʲ����� ʹ�ò���
      ,e.CFDW as e_ZCKC_CFDW--�ʲ����� ��ŵ�λ
      ,e.FZR as e_ZCKC_FZR--�ʲ����� ������
      ,e.CZFS as e_ZCKC_CZFS--�ʲ����� ���÷�ʽ

FROM dbo.EDU_OAXT_15_A05_ZCJH AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A01_ZCML AS c ON a.TypeID = c.ID /*�ʲ�Ŀ¼��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A02_ZCDL AS d ON a.ClassID = d.ID /*�ʲ������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS e ON a.AID = e.ID /*����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/
GO

--�ʲ������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A06_ZCBG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[TypeID]--���(���á����á�����)
      ,a.[TypeName]--�������
      ,a.[AID]--����ID
      ,a.[Name]--�ʲ�����
      ,a.[Option]--����
      ,a.[RegistTime]--�Ǽ�ʱ��
      ,a.[Remark]--��ע
      ,a.[SumCount]--����
      ,c.SCHOOLID as c_ZCKC_SCHOOLID--�ʲ����� ѧУ
      ,c.TypeID as c_ZCKC_TypeID--�ʲ����� �ʲ�Ŀ¼��ID
      ,c.ClassID as c_ZCKC_ClassID--�ʲ����� �ʲ������ID
      ,c.Name as c_ZCKC_Name--�ʲ����� �ʲ�����
      ,c.Info as c_ZCKC_Info--�ʲ����� �ʲ����
      ,c.Productdate as c_ZCKC_Productdate--�ʲ����� ����ʱ��
      ,c.Price as c_ZCKC_Price--�ʲ����� ����
      ,c.SumCount as c_ZCKC_SumCount--�ʲ����� ����
      ,c.Merchant as c_ZCKC_Merchant--�ʲ����� ��Ӧ��
      ,c.Vender as c_ZCKC_Vender--�ʲ����� ����
      ,c.Remark as c_ZCKC_Remark--�ʲ����� ��ע
      ,c.AllCount as c_ZCKC_AllCount--�ʲ����� �ʲ�����
      ,c.RKL as c_ZCKC_RKL--�ʲ����� �����
      ,c.RQ as c_ZCKC_RQ--�ʲ����� ����
      ,c.DW as c_ZCKC_DW--�ʲ����� ��λ
      ,c.ZJ as c_ZCKC_ZJ--�ʲ����� �ܼ�
      ,c.SYBM as c_ZCKC_SYBM--�ʲ����� ʹ�ò���
      ,c.CFDW as c_ZCKC_CFDW--�ʲ����� ��ŵ�λ
      ,c.FZR as c_ZCKC_FZR--�ʲ����� ������
      ,c.CZFS as c_ZCKC_CZFS--�ʲ����� ���÷�ʽ

FROM dbo.EDU_OAXT_15_A06_ZCBG AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO

--���޹����
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A08_BXGL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[AID]--����ID
      ,a.[TypeID]--��������ID
      ,a.[Title]--��������
      ,a.[Telephone]--��ϵ�绰
      ,a.[Repairplace]--���޵ص�
      ,a.[Repaircontent]--��������
      ,a.[Repairpeople]--ά����
      ,a.[RepairDate]--ά��ʱ��
      ,a.[ReadrID]--�Ķ����
      ,a.[Readr]--�Ķ����
      ,a.[Applicant]--������
      ,a.[Approver]--������
      ,a.[Evaluate]--����
      ,a.[StartDate]--��ʼʱ��
      ,a.[Status]--״̬
      ,a.[Remark]--��ע
      ,a.[SumCount]--����
      ,a.[GZTP]--����ͼƬ
      ,a.[WCZT]--���״̬
      ,a.[SCZT]--ɾ��״̬
      ,c.SCHOOLID as c_ZCKC_SCHOOLID--�ʲ����� ѧУ
      ,c.TypeID as c_ZCKC_TypeID--�ʲ����� �ʲ�Ŀ¼��ID
      ,c.ClassID as c_ZCKC_ClassID--�ʲ����� �ʲ������ID
      ,c.Name as c_ZCKC_Name--�ʲ����� �ʲ�����
      ,c.Info as c_ZCKC_Info--�ʲ����� �ʲ����
      ,c.Productdate as c_ZCKC_Productdate--�ʲ����� ����ʱ��
      ,c.Price as c_ZCKC_Price--�ʲ����� ����
      ,c.SumCount as c_ZCKC_SumCount--�ʲ����� ����
      ,c.Merchant as c_ZCKC_Merchant--�ʲ����� ��Ӧ��
      ,c.Vender as c_ZCKC_Vender--�ʲ����� ����
      ,c.Remark as c_ZCKC_Remark--�ʲ����� ��ע
      ,c.AllCount as c_ZCKC_AllCount--�ʲ����� �ʲ�����
      ,c.RKL as c_ZCKC_RKL--�ʲ����� �����
      ,c.RQ as c_ZCKC_RQ--�ʲ����� ����
      ,c.DW as c_ZCKC_DW--�ʲ����� ��λ
      ,c.ZJ as c_ZCKC_ZJ--�ʲ����� �ܼ�
      ,c.SYBM as c_ZCKC_SYBM--�ʲ����� ʹ�ò���
      ,c.CFDW as c_ZCKC_CFDW--�ʲ����� ��ŵ�λ
      ,c.FZR as c_ZCKC_FZR--�ʲ����� ������
      ,c.CZFS as c_ZCKC_CZFS--�ʲ����� ���÷�ʽ
      ,d.SCHOOLID as d_BXLX_SCHOOLID--�������ͱ� ѧУ
      ,d.TypeName as d_BXLX_TypeName--�������ͱ� ��������
      ,d.Remark as d_BXLX_Remark--�������ͱ� ��ע
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,e.STATUS as e_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,e.USERID as e_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,e.XM as e_USER_XM--Ӧ��ϵͳ�û��� ����
      ,e.XB as e_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,e.QQ as e_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,e.DZYJ as e_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,e.LXDH as e_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,e.BMID as e_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,f.SCHOOLID as f_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,f.PWD as f_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,f.STATUS as f_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,f.USERTYPE as f_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,f.USERID as f_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,f.XM as f_USER_XM--Ӧ��ϵͳ�û��� ����
      ,f.XB as f_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,f.QQ as f_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,f.DZYJ as f_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,f.LXDH as f_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,f.ZJDLSJ as f_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,f.DLCGCS as f_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,f.YHCJSJ as f_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,f.YHRY as f_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,f.YHJF as f_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,f.BMID as f_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_15_A08_BXGL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A07_BXLX AS d ON a.TypeID = d.ID /*��������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.Applicant = e.LOGINNAME /*������*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.Approver = f.LOGINNAME /*������*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/
GO

--ά�޼ƻ���
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A09_WXJH_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[AID]--����ID
      ,a.[Title]--�ƻ�����
      ,a.[Content]--ά������
      ,c.SCHOOLID as c_ZCKC_SCHOOLID--�ʲ����� ѧУ
      ,c.TypeID as c_ZCKC_TypeID--�ʲ����� �ʲ�Ŀ¼��ID
      ,c.ClassID as c_ZCKC_ClassID--�ʲ����� �ʲ������ID
      ,c.Name as c_ZCKC_Name--�ʲ����� �ʲ�����
      ,c.Info as c_ZCKC_Info--�ʲ����� �ʲ����
      ,c.Productdate as c_ZCKC_Productdate--�ʲ����� ����ʱ��
      ,c.Price as c_ZCKC_Price--�ʲ����� ����
      ,c.SumCount as c_ZCKC_SumCount--�ʲ����� ����
      ,c.Merchant as c_ZCKC_Merchant--�ʲ����� ��Ӧ��
      ,c.Vender as c_ZCKC_Vender--�ʲ����� ����
      ,c.Remark as c_ZCKC_Remark--�ʲ����� ��ע
      ,c.AllCount as c_ZCKC_AllCount--�ʲ����� �ʲ�����
      ,c.RKL as c_ZCKC_RKL--�ʲ����� �����
      ,c.RQ as c_ZCKC_RQ--�ʲ����� ����
      ,c.DW as c_ZCKC_DW--�ʲ����� ��λ
      ,c.ZJ as c_ZCKC_ZJ--�ʲ����� �ܼ�
      ,c.SYBM as c_ZCKC_SYBM--�ʲ����� ʹ�ò���
      ,c.CFDW as c_ZCKC_CFDW--�ʲ����� ��ŵ�λ
      ,c.FZR as c_ZCKC_FZR--�ʲ����� ������
      ,c.CZFS as c_ZCKC_CZFS--�ʲ����� ���÷�ʽ

FROM dbo.EDU_OAXT_15_A09_WXJH AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO

--�ʲ����ϱ�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A10_ZCBF_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[AID]--����ID
      ,a.[Sum]--����
      ,a.[Reporter]--�걨��
      ,a.[Remark]--��ע
      ,a.[RegsterID]--�Ǽ���ID
      ,a.[Statu]--״̬
      ,a.[Registdate]--�Ǽ�ʱ��
      ,c.SCHOOLID as c_ZCKC_SCHOOLID--�ʲ����� ѧУ
      ,c.TypeID as c_ZCKC_TypeID--�ʲ����� �ʲ�Ŀ¼��ID
      ,c.ClassID as c_ZCKC_ClassID--�ʲ����� �ʲ������ID
      ,c.Name as c_ZCKC_Name--�ʲ����� �ʲ�����
      ,c.Info as c_ZCKC_Info--�ʲ����� �ʲ����
      ,c.Productdate as c_ZCKC_Productdate--�ʲ����� ����ʱ��
      ,c.Price as c_ZCKC_Price--�ʲ����� ����
      ,c.SumCount as c_ZCKC_SumCount--�ʲ����� ����
      ,c.Merchant as c_ZCKC_Merchant--�ʲ����� ��Ӧ��
      ,c.Vender as c_ZCKC_Vender--�ʲ����� ����
      ,c.Remark as c_ZCKC_Remark--�ʲ����� ��ע
      ,c.AllCount as c_ZCKC_AllCount--�ʲ����� �ʲ�����
      ,c.RKL as c_ZCKC_RKL--�ʲ����� �����
      ,c.RQ as c_ZCKC_RQ--�ʲ����� ����
      ,c.DW as c_ZCKC_DW--�ʲ����� ��λ
      ,c.ZJ as c_ZCKC_ZJ--�ʲ����� �ܼ�
      ,c.SYBM as c_ZCKC_SYBM--�ʲ����� ʹ�ò���
      ,c.CFDW as c_ZCKC_CFDW--�ʲ����� ��ŵ�λ
      ,c.FZR as c_ZCKC_FZR--�ʲ����� ������
      ,c.CZFS as c_ZCKC_CZFS--�ʲ����� ���÷�ʽ
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_15_A10_ZCBF AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.RegsterID = d.LOGINNAME /*�Ǽ���ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO

--�ʲ��̵���ϸ��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A12_ZCPDMX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[AID]--����ID
      ,a.[PID]--�̵��ID
      ,a.[PUserID]--�̵���ID
      ,a.[Storesum]--�����
      ,a.[RealSum]--ʵ����
      ,a.[Name]--�ʲ�����
      ,a.[AllCount]--�ʲ�����
      ,a.[Remark]--��ע
      ,a.[BorrowCount]--��������
      ,c.SCHOOLID as c_ZCKC_SCHOOLID--�ʲ����� ѧУ
      ,c.TypeID as c_ZCKC_TypeID--�ʲ����� �ʲ�Ŀ¼��ID
      ,c.ClassID as c_ZCKC_ClassID--�ʲ����� �ʲ������ID
      ,c.Name as c_ZCKC_Name--�ʲ����� �ʲ�����
      ,c.Info as c_ZCKC_Info--�ʲ����� �ʲ����
      ,c.Productdate as c_ZCKC_Productdate--�ʲ����� ����ʱ��
      ,c.Price as c_ZCKC_Price--�ʲ����� ����
      ,c.SumCount as c_ZCKC_SumCount--�ʲ����� ����
      ,c.Merchant as c_ZCKC_Merchant--�ʲ����� ��Ӧ��
      ,c.Vender as c_ZCKC_Vender--�ʲ����� ����
      ,c.Remark as c_ZCKC_Remark--�ʲ����� ��ע
      ,c.AllCount as c_ZCKC_AllCount--�ʲ����� �ʲ�����
      ,c.RKL as c_ZCKC_RKL--�ʲ����� �����
      ,c.RQ as c_ZCKC_RQ--�ʲ����� ����
      ,c.DW as c_ZCKC_DW--�ʲ����� ��λ
      ,c.ZJ as c_ZCKC_ZJ--�ʲ����� �ܼ�
      ,c.SYBM as c_ZCKC_SYBM--�ʲ����� ʹ�ò���
      ,c.CFDW as c_ZCKC_CFDW--�ʲ����� ��ŵ�λ
      ,c.FZR as c_ZCKC_FZR--�ʲ����� ������
      ,c.CZFS as c_ZCKC_CZFS--�ʲ����� ���÷�ʽ
      ,d.SCHOOLID as d_ZCPD_SCHOOLID--�ʲ��̵�� ѧУ
      ,d.Title as d_ZCPD_Title--�ʲ��̵�� �̵�����
      ,d.PanDate as d_ZCPD_PanDate--�ʲ��̵�� �̵�����
      ,d.PanTypeIDs as d_ZCPD_PanTypeIDs--�ʲ��̵�� �̵�Ŀ¼ID�б�
      ,d.Remark as d_ZCPD_Remark--�ʲ��̵�� ��ע
      ,d.Statu as d_ZCPD_Statu--�ʲ��̵�� ״̬
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,e.STATUS as e_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,e.USERID as e_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,e.XM as e_USER_XM--Ӧ��ϵͳ�û��� ����
      ,e.XB as e_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,e.QQ as e_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,e.DZYJ as e_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,e.LXDH as e_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,e.BMID as e_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_15_A12_ZCPDMX AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A11_ZCPD AS d ON a.PID = d.ID /*�̵��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.PUserID = e.LOGINNAME /*�̵���ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/
GO

--ά�޼�¼��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A13_WXJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[WPID]--��ƷID
      ,a.[WXZT]--ά��״̬
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_BXGL_SCHOOLID--���޹���� ѧУ
      ,c.AID as c_BXGL_AID--���޹���� ����ID
      ,c.TypeID as c_BXGL_TypeID--���޹���� ��������ID
      ,c.Title as c_BXGL_Title--���޹���� ��������
      ,c.Telephone as c_BXGL_Telephone--���޹���� ��ϵ�绰
      ,c.Repairplace as c_BXGL_Repairplace--���޹���� ���޵ص�
      ,c.Repaircontent as c_BXGL_Repaircontent--���޹���� ��������
      ,c.Repairpeople as c_BXGL_Repairpeople--���޹���� ά����
      ,c.RepairDate as c_BXGL_RepairDate--���޹���� ά��ʱ��
      ,c.ReadrID as c_BXGL_ReadrID--���޹���� �Ķ����
      ,c.Readr as c_BXGL_Readr--���޹���� �Ķ����
      ,c.Applicant as c_BXGL_Applicant--���޹���� ������
      ,c.Approver as c_BXGL_Approver--���޹���� ������
      ,c.Evaluate as c_BXGL_Evaluate--���޹���� ����
      ,c.StartDate as c_BXGL_StartDate--���޹���� ��ʼʱ��
      ,c.Status as c_BXGL_Status--���޹���� ״̬
      ,c.Remark as c_BXGL_Remark--���޹���� ��ע
      ,c.SumCount as c_BXGL_SumCount--���޹���� ����
      ,c.GZTP as c_BXGL_GZTP--���޹���� ����ͼƬ
      ,c.WCZT as c_BXGL_WCZT--���޹���� ���״̬
      ,c.SCZT as c_BXGL_SCZT--���޹���� ɾ��״̬

FROM dbo.EDU_OAXT_15_A13_WXJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A08_BXGL AS c ON a.WPID = c.ID /*��ƷID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO

--���޹�����Ϣ��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A14_BXGZXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[BXLXID]--��������ID
      ,a.[GZXX]--������Ϣ
      ,c.SCHOOLID as c_BXLX_SCHOOLID--�������ͱ� ѧУ
      ,c.TypeName as c_BXLX_TypeName--�������ͱ� ��������
      ,c.Remark as c_BXLX_Remark--�������ͱ� ��ע

FROM dbo.EDU_OAXT_15_A14_BXGZXX AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A07_BXLX AS c ON a.BXLXID = c.ID /*��������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO

--����ģ���
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A03_LCMB_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[MBLXID]--ģ������ID
      ,a.[MBMC]--ģ������
      ,a.[BDID]--��ID
      ,a.[QSBZID]--��ʼ����ID
      ,a.[JSBZID]--��������ID
      ,a.[TJSJ]--���ʱ��
      ,a.[BZ]--��ע
      ,c.LXMC as c_LCMBLX_LXMC--����ģ�����ͱ� ��������
      ,c.BZ as c_LCMBLX_BZ--����ģ�����ͱ� ��ע
      ,d.SCHOOLID as d_LCBDSJ_SCHOOLID--���̱����ݱ� ѧУ
      ,d.BDMC as d_LCBDSJ_BDMC--���̱����ݱ� ������
      ,d.BDNR as d_LCBDSJ_BDNR--���̱����ݱ� ������
      ,d.TJSJ as d_LCBDSJ_TJSJ--���̱����ݱ� ���ʱ��
      ,d.BZ as d_LCBDSJ_BZ--���̱����ݱ� ��ע
      ,e.SCHOOLID as e_LCBZ_SCHOOLID--���̲���� ѧУ
      ,e.BZMC as e_LCBZ_BZMC--���̲���� ��������
      ,e.LCMBID as e_LCBZ_LCMBID--���̲���� ����ģ��ID
      ,e.SPRIDLB as e_LCBZ_SPRIDLB--���̲���� ������ID�б�
      ,e.SPRMCLB as e_LCBZ_SPRMCLB--���̲���� �����������б�
      ,e.SYBZID as e_LCBZ_SYBZID--���̲���� ��һ����ID
      ,e.XYBZID as e_LCBZ_XYBZID--���̲���� ��һ����ID
      ,e.BZ as e_LCBZ_BZ--���̲���� ��ע
      ,f.SCHOOLID as f_LCBZ_SCHOOLID--���̲���� ѧУ
      ,f.BZMC as f_LCBZ_BZMC--���̲���� ��������
      ,f.LCMBID as f_LCBZ_LCMBID--���̲���� ����ģ��ID
      ,f.SPRIDLB as f_LCBZ_SPRIDLB--���̲���� ������ID�б�
      ,f.SPRMCLB as f_LCBZ_SPRMCLB--���̲���� �����������б�
      ,f.SYBZID as f_LCBZ_SYBZID--���̲���� ��һ����ID
      ,f.XYBZID as f_LCBZ_XYBZID--���̲���� ��һ����ID
      ,f.BZ as f_LCBZ_BZ--���̲���� ��ע

FROM dbo.EDU_OAXT_20_A03_LCMB AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A01_LCMBLX AS c ON a.MBLXID = c.ID /*ģ������ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A02_LCBDSJ AS d ON a.BDID = d.ID /*��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS e ON a.QSBZID = e.ID /*��ʼ����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS f ON a.JSBZID = f.ID /*��������ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/
GO

--���̲����
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A04_LCBZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[BZMC]--��������
      ,a.[LCMBID]--����ģ��ID
      ,a.[SPRIDLB]--������ID�б�
      ,a.[SPRMCLB]--�����������б�
      ,a.[SYBZID]--��һ����ID
      ,a.[XYBZID]--��һ����ID
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_LCMB_SCHOOLID--����ģ��� ѧУ
      ,c.MBLXID as c_LCMB_MBLXID--����ģ��� ģ������ID
      ,c.MBMC as c_LCMB_MBMC--����ģ��� ģ������
      ,c.BDID as c_LCMB_BDID--����ģ��� ��ID
      ,c.QSBZID as c_LCMB_QSBZID--����ģ��� ��ʼ����ID
      ,c.JSBZID as c_LCMB_JSBZID--����ģ��� ��������ID
      ,c.TJSJ as c_LCMB_TJSJ--����ģ��� ���ʱ��
      ,c.BZ as c_LCMB_BZ--����ģ��� ��ע
      ,d.SCHOOLID as d_LCBZ_SCHOOLID--���̲���� ѧУ
      ,d.BZMC as d_LCBZ_BZMC--���̲���� ��������
      ,d.LCMBID as d_LCBZ_LCMBID--���̲���� ����ģ��ID
      ,d.SPRIDLB as d_LCBZ_SPRIDLB--���̲���� ������ID�б�
      ,d.SPRMCLB as d_LCBZ_SPRMCLB--���̲���� �����������б�
      ,d.SYBZID as d_LCBZ_SYBZID--���̲���� ��һ����ID
      ,d.XYBZID as d_LCBZ_XYBZID--���̲���� ��һ����ID
      ,d.BZ as d_LCBZ_BZ--���̲���� ��ע
      ,e.SCHOOLID as e_LCBZ_SCHOOLID--���̲���� ѧУ
      ,e.BZMC as e_LCBZ_BZMC--���̲���� ��������
      ,e.LCMBID as e_LCBZ_LCMBID--���̲���� ����ģ��ID
      ,e.SPRIDLB as e_LCBZ_SPRIDLB--���̲���� ������ID�б�
      ,e.SPRMCLB as e_LCBZ_SPRMCLB--���̲���� �����������б�
      ,e.SYBZID as e_LCBZ_SYBZID--���̲���� ��һ����ID
      ,e.XYBZID as e_LCBZ_XYBZID--���̲���� ��һ����ID
      ,e.BZ as e_LCBZ_BZ--���̲���� ��ע

FROM dbo.EDU_OAXT_20_A04_LCBZ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A03_LCMB AS c ON a.LCMBID = c.ID /*����ģ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS d ON a.SYBZID = d.ID /*��һ����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS e ON a.XYBZID = e.ID /*��һ����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/
GO

--����ʵ����
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A05_LCSL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[LCMBID]--����ģ��ID
      ,a.[SQRID]--������ID
      ,a.[SPRID]--������ID
      ,a.[SQSJ]--����ʱ��
      ,a.[DQBZID]--��ǰ����ID
      ,a.[DQBZZXZT]--��ǰ����ִ��״̬
      ,a.[YXQ]--��Ч��
      ,a.[SLZT]--ʵ��״̬
      ,a.[FJ]--����
      ,a.[BZ]--��ע
      ,a.[LXID]--����ID
      ,a.[LXMC]--��������
      ,c.SCHOOLID as c_LCMB_SCHOOLID--����ģ��� ѧУ
      ,c.MBLXID as c_LCMB_MBLXID--����ģ��� ģ������ID
      ,c.MBMC as c_LCMB_MBMC--����ģ��� ģ������
      ,c.BDID as c_LCMB_BDID--����ģ��� ��ID
      ,c.QSBZID as c_LCMB_QSBZID--����ģ��� ��ʼ����ID
      ,c.JSBZID as c_LCMB_JSBZID--����ģ��� ��������ID
      ,c.TJSJ as c_LCMB_TJSJ--����ģ��� ���ʱ��
      ,c.BZ as c_LCMB_BZ--����ģ��� ��ע
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,e.STATUS as e_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,e.USERID as e_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,e.XM as e_USER_XM--Ӧ��ϵͳ�û��� ����
      ,e.XB as e_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,e.QQ as e_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,e.DZYJ as e_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,e.LXDH as e_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,e.BMID as e_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,f.SCHOOLID as f_LCBZ_SCHOOLID--���̲���� ѧУ
      ,f.BZMC as f_LCBZ_BZMC--���̲���� ��������
      ,f.LCMBID as f_LCBZ_LCMBID--���̲���� ����ģ��ID
      ,f.SPRIDLB as f_LCBZ_SPRIDLB--���̲���� ������ID�б�
      ,f.SPRMCLB as f_LCBZ_SPRMCLB--���̲���� �����������б�
      ,f.SYBZID as f_LCBZ_SYBZID--���̲���� ��һ����ID
      ,f.XYBZID as f_LCBZ_XYBZID--���̲���� ��һ����ID
      ,f.BZ as f_LCBZ_BZ--���̲���� ��ע

FROM dbo.EDU_OAXT_20_A05_LCSL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A03_LCMB AS c ON a.LCMBID = c.ID /*����ģ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SQRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SPRID = e.LOGINNAME /*������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS f ON a.DQBZID = f.ID /*��ǰ����ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/
GO

--������˼�¼��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A06_LCSHJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[LCMBMC]--����ģ������
      ,a.[LCSLID]--����ʵ��ID
      ,a.[BZMC]--��������
      ,a.[BZID]--����ID
      ,a.[LCMBLXID]--����ģ������ID
      ,a.[SQRID]--������ID
      ,a.[SPRID]--������ID
      ,a.[SHZT]--���״̬
      ,a.[TJSJ]--���ʱ��
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_LCSL_SCHOOLID--����ʵ���� ѧУ
      ,c.LCMBID as c_LCSL_LCMBID--����ʵ���� ����ģ��ID
      ,c.SQRID as c_LCSL_SQRID--����ʵ���� ������ID
      ,c.SPRID as c_LCSL_SPRID--����ʵ���� ������ID
      ,c.SQSJ as c_LCSL_SQSJ--����ʵ���� ����ʱ��
      ,c.DQBZID as c_LCSL_DQBZID--����ʵ���� ��ǰ����ID
      ,c.DQBZZXZT as c_LCSL_DQBZZXZT--����ʵ���� ��ǰ����ִ��״̬
      ,c.YXQ as c_LCSL_YXQ--����ʵ���� ��Ч��
      ,c.SLZT as c_LCSL_SLZT--����ʵ���� ʵ��״̬
      ,c.FJ as c_LCSL_FJ--����ʵ���� ����
      ,c.BZ as c_LCSL_BZ--����ʵ���� ��ע
      ,c.LXID as c_LCSL_LXID--����ʵ���� ����ID
      ,c.LXMC as c_LCSL_LXMC--����ʵ���� ��������
      ,d.SCHOOLID as d_LCBZ_SCHOOLID--���̲���� ѧУ
      ,d.BZMC as d_LCBZ_BZMC--���̲���� ��������
      ,d.LCMBID as d_LCBZ_LCMBID--���̲���� ����ģ��ID
      ,d.SPRIDLB as d_LCBZ_SPRIDLB--���̲���� ������ID�б�
      ,d.SPRMCLB as d_LCBZ_SPRMCLB--���̲���� �����������б�
      ,d.SYBZID as d_LCBZ_SYBZID--���̲���� ��һ����ID
      ,d.XYBZID as d_LCBZ_XYBZID--���̲���� ��һ����ID
      ,d.BZ as d_LCBZ_BZ--���̲���� ��ע
      ,e.LXMC as e_LCMBLX_LXMC--����ģ�����ͱ� ��������
      ,e.BZ as e_LCMBLX_BZ--����ģ�����ͱ� ��ע
      ,f.SCHOOLID as f_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,f.PWD as f_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,f.STATUS as f_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,f.USERTYPE as f_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,f.USERID as f_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,f.XM as f_USER_XM--Ӧ��ϵͳ�û��� ����
      ,f.XB as f_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,f.QQ as f_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,f.DZYJ as f_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,f.LXDH as f_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,f.ZJDLSJ as f_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,f.DLCGCS as f_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,f.YHCJSJ as f_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,f.YHRY as f_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,f.YHJF as f_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,f.BMID as f_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,g.SCHOOLID as g_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,g.APPID as g_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,g.PWD as g_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,g.STATUS as g_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,g.USERTYPE as g_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,g.USERID as g_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,g.XM as g_USER_XM--Ӧ��ϵͳ�û��� ����
      ,g.XB as g_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,g.QQ as g_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,g.DZYJ as g_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,g.LXDH as g_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,g.ZJDLSJ as g_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,g.DLCGCS as g_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,g.YHCJSJ as g_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,g.YHRY as g_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,g.YHJF as g_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,g.BMID as g_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_20_A06_LCSHJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*����ʵ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS d ON a.BZID = d.ID /*����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A01_LCMBLX AS e ON a.LCMBLXID = e.ID /*����ģ������ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.SQRID = f.LOGINNAME /*������ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.SPRID = g.LOGINNAME /*������ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/
GO

--����ģ���������ñ�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A07_LCMBLXPZ_DISP]
AS
SELECT a.[LCMBLXID]--����ģ������ID
      ,a.[SCHOOLID]--ѧУ
      ,a.[BSYLC]--��ʹ������
      ,b.LXMC as b_LCMBLX_LXMC--����ģ�����ͱ� ��������
      ,b.BZ as b_LCMBLX_BZ--����ģ�����ͱ� ��ע

FROM dbo.EDU_OAXT_20_A07_LCMBLXPZ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A01_LCMBLX AS b ON a.LCMBLXID = b.ID /*����ģ������ID*/
GO

--��������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_21_A02_QJSQ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[LCSLID]--����ʵ��ID
      ,a.[QJLXID]--�������ID
      ,a.[QJYY]--���ԭ��
      ,a.[KSSJ]--��ʼʱ��
      ,a.[JSSJ]--����ʱ��
      ,a.[QJTS]--�������
      ,a.[SQSJ]--����ʱ��
      ,a.[SQZT]--����״̬
      ,a.[SQRID]--������ID
      ,a.[BZ]--��ע
      ,a.[BJ]--����
      ,a.[XJ]--����
      ,a.[XJRID]--������ID
      ,a.[XJSJ]--����ʱ��
      ,c.SCHOOLID as c_LCSL_SCHOOLID--����ʵ���� ѧУ
      ,c.LCMBID as c_LCSL_LCMBID--����ʵ���� ����ģ��ID
      ,c.SQRID as c_LCSL_SQRID--����ʵ���� ������ID
      ,c.SPRID as c_LCSL_SPRID--����ʵ���� ������ID
      ,c.SQSJ as c_LCSL_SQSJ--����ʵ���� ����ʱ��
      ,c.DQBZID as c_LCSL_DQBZID--����ʵ���� ��ǰ����ID
      ,c.DQBZZXZT as c_LCSL_DQBZZXZT--����ʵ���� ��ǰ����ִ��״̬
      ,c.YXQ as c_LCSL_YXQ--����ʵ���� ��Ч��
      ,c.SLZT as c_LCSL_SLZT--����ʵ���� ʵ��״̬
      ,c.FJ as c_LCSL_FJ--����ʵ���� ����
      ,c.BZ as c_LCSL_BZ--����ʵ���� ��ע
      ,c.LXID as c_LCSL_LXID--����ʵ���� ����ID
      ,c.LXMC as c_LCSL_LXMC--����ʵ���� ��������
      ,d.SCHOOLID as d_QJLX_SCHOOLID--������ͱ� ѧУ
      ,d.LXMC as d_QJLX_LXMC--������ͱ� ��������
      ,d.BZ as d_QJLX_BZ--������ͱ� ��ע
      ,d.JSDW as d_QJLX_JSDW--������ͱ� ��ʱ��λ
      ,d.ZCSJ as d_QJLX_ZCSJ--������ͱ� �ʱ��
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,e.STATUS as e_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,e.USERID as e_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,e.XM as e_USER_XM--Ӧ��ϵͳ�û��� ����
      ,e.XB as e_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,e.QQ as e_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,e.DZYJ as e_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,e.LXDH as e_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,e.BMID as e_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,f.SCHOOLID as f_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,f.PWD as f_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,f.STATUS as f_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,f.USERTYPE as f_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,f.USERID as f_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,f.XM as f_USER_XM--Ӧ��ϵͳ�û��� ����
      ,f.XB as f_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,f.QQ as f_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,f.DZYJ as f_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,f.LXDH as f_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,f.ZJDLSJ as f_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,f.DLCGCS as f_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,f.YHCJSJ as f_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,f.YHRY as f_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,f.YHJF as f_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,f.BMID as f_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_21_A02_QJSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*����ʵ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_21_A01_QJLX AS d ON a.QJLXID = d.ID /*�������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SQRID = e.LOGINNAME /*������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.XJRID = f.LOGINNAME /*������ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/
GO

--���������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_22_A02_HYSQ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[LCSLID]--����ʵ��ID
      ,a.[HYMC]--��������
      ,a.[HYNR]--��������
      ,a.[ZCRID]--������
      ,a.[JLRID]--��¼��
      ,a.[HYJB]--���鼶��
      ,a.[HYDDID]--����ص�ID
      ,a.[HYDZ]--�����ַ
      ,a.[YHRYIDLB]--�����ԱID�б�
      ,a.[YHRYXMLB]--�����Ա�����б�
      ,a.[KSSJ]--��ʼʱ��
      ,a.[JSSJ]--����ʱ��
      ,a.[SQSJ]--����ʱ��
      ,a.[SQZT]--����״̬
      ,a.[SQRID]--������ID
      ,a.[BZ]--��ע
      ,a.[FJ]--����
      ,c.SCHOOLID as c_LCSL_SCHOOLID--����ʵ���� ѧУ
      ,c.LCMBID as c_LCSL_LCMBID--����ʵ���� ����ģ��ID
      ,c.SQRID as c_LCSL_SQRID--����ʵ���� ������ID
      ,c.SPRID as c_LCSL_SPRID--����ʵ���� ������ID
      ,c.SQSJ as c_LCSL_SQSJ--����ʵ���� ����ʱ��
      ,c.DQBZID as c_LCSL_DQBZID--����ʵ���� ��ǰ����ID
      ,c.DQBZZXZT as c_LCSL_DQBZZXZT--����ʵ���� ��ǰ����ִ��״̬
      ,c.YXQ as c_LCSL_YXQ--����ʵ���� ��Ч��
      ,c.SLZT as c_LCSL_SLZT--����ʵ���� ʵ��״̬
      ,c.FJ as c_LCSL_FJ--����ʵ���� ����
      ,c.BZ as c_LCSL_BZ--����ʵ���� ��ע
      ,c.LXID as c_LCSL_LXID--����ʵ���� ����ID
      ,c.LXMC as c_LCSL_LXMC--����ʵ���� ��������
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,e.STATUS as e_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,e.USERID as e_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,e.XM as e_USER_XM--Ӧ��ϵͳ�û��� ����
      ,e.XB as e_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,e.QQ as e_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,e.DZYJ as e_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,e.LXDH as e_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,e.BMID as e_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,f.SCHOOLID as f_HYSSJ_SCHOOLID--���������ݱ� ѧУ
      ,f.FJMC as f_HYSSJ_FJMC--���������ݱ� ��������
      ,f.FJDZ as f_HYSSJ_FJDZ--���������ݱ� �����ַ
      ,f.ZDRNRS as f_HYSSJ_ZDRNRS--���������ݱ� �����������
      ,f.BZ as f_HYSSJ_BZ--���������ݱ� ��ע
      ,g.SCHOOLID as g_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,g.APPID as g_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,g.PWD as g_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,g.STATUS as g_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,g.USERTYPE as g_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,g.USERID as g_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,g.XM as g_USER_XM--Ӧ��ϵͳ�û��� ����
      ,g.XB as g_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,g.QQ as g_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,g.DZYJ as g_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,g.LXDH as g_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,g.ZJDLSJ as g_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,g.DLCGCS as g_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,g.YHCJSJ as g_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,g.YHRY as g_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,g.YHJF as g_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,g.BMID as g_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_22_A02_HYSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*����ʵ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.ZCRID = d.LOGINNAME /*������*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JLRID = e.LOGINNAME /*��¼��*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_22_A01_HYSSJ AS f ON a.HYDDID = f.ID /*����ص�ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.SQRID = g.LOGINNAME /*������ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/
GO

--�����Ҫ��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_22_A04_HYJY_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[HYID]--����ID
      ,a.[HYJYNR]--�����Ҫ����
      ,a.[JLRID]--��¼��
      ,a.[JLSJ]--��¼ʱ��
      ,c.SCHOOLID as c_HYSQ_SCHOOLID--��������� ѧУ
      ,c.LCSLID as c_HYSQ_LCSLID--��������� ����ʵ��ID
      ,c.HYMC as c_HYSQ_HYMC--��������� ��������
      ,c.HYNR as c_HYSQ_HYNR--��������� ��������
      ,c.ZCRID as c_HYSQ_ZCRID--��������� ������
      ,c.JLRID as c_HYSQ_JLRID--��������� ��¼��
      ,c.HYJB as c_HYSQ_HYJB--��������� ���鼶��
      ,c.HYDDID as c_HYSQ_HYDDID--��������� ����ص�ID
      ,c.HYDZ as c_HYSQ_HYDZ--��������� �����ַ
      ,c.YHRYIDLB as c_HYSQ_YHRYIDLB--��������� �����ԱID�б�
      ,c.YHRYXMLB as c_HYSQ_YHRYXMLB--��������� �����Ա�����б�
      ,c.KSSJ as c_HYSQ_KSSJ--��������� ��ʼʱ��
      ,c.JSSJ as c_HYSQ_JSSJ--��������� ����ʱ��
      ,c.SQSJ as c_HYSQ_SQSJ--��������� ����ʱ��
      ,c.SQZT as c_HYSQ_SQZT--��������� ����״̬
      ,c.SQRID as c_HYSQ_SQRID--��������� ������ID
      ,c.BZ as c_HYSQ_BZ--��������� ��ע
      ,c.FJ as c_HYSQ_FJ--��������� ����
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_22_A04_HYJY AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_22_A02_HYSQ AS c ON a.HYID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JLRID = d.LOGINNAME /*��¼��*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO

--���������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_23_A01_GWSQ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[LCSLID]--����ʵ��ID
      ,a.[GWBT]--���ı���
      ,a.[GWNR]--��������
      ,a.[FJ]--����
      ,a.[SJRIDLB]--�ռ���ID�б�
      ,a.[SJRXMLB]--�ռ��������б�
      ,a.[YDQK]--�Ķ����
      ,a.[SQSJ]--����ʱ��
      ,a.[SQRID]--������ID
      ,a.[SQZT]--����״̬
      ,a.[BZ]--��ע
      ,a.[SWDW]--���ĵ�λ
      ,a.[YGDCS]--�ѹ鵵����
      ,a.[WJBH]--�ļ����
      ,c.SCHOOLID as c_LCSL_SCHOOLID--����ʵ���� ѧУ
      ,c.LCMBID as c_LCSL_LCMBID--����ʵ���� ����ģ��ID
      ,c.SQRID as c_LCSL_SQRID--����ʵ���� ������ID
      ,c.SPRID as c_LCSL_SPRID--����ʵ���� ������ID
      ,c.SQSJ as c_LCSL_SQSJ--����ʵ���� ����ʱ��
      ,c.DQBZID as c_LCSL_DQBZID--����ʵ���� ��ǰ����ID
      ,c.DQBZZXZT as c_LCSL_DQBZZXZT--����ʵ���� ��ǰ����ִ��״̬
      ,c.YXQ as c_LCSL_YXQ--����ʵ���� ��Ч��
      ,c.SLZT as c_LCSL_SLZT--����ʵ���� ʵ��״̬
      ,c.FJ as c_LCSL_FJ--����ʵ���� ����
      ,c.BZ as c_LCSL_BZ--����ʵ���� ��ע
      ,c.LXID as c_LCSL_LXID--����ʵ���� ����ID
      ,c.LXMC as c_LCSL_LXMC--����ʵ���� ��������
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_23_A01_GWSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*����ʵ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SQRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO

--�ó������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_24_A01_YCSQ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[LCSLID]--����ʵ��ID
      ,a.[YCYY]--�ó�ԭ��
      ,a.[WCRS]--�������
      ,a.[KSSJ]--��ʼʱ��
      ,a.[SYTS]--ʹ������
      ,a.[SQSJ]--����ʱ��
      ,a.[SQRID]--������ID
      ,a.[SQZT]--����״̬
      ,a.[BZ]--��ע
      ,a.[SQCLID]--���복��ID
      ,a.[JSSJ]--����ʱ��
      ,c.SCHOOLID as c_LCSL_SCHOOLID--����ʵ���� ѧУ
      ,c.LCMBID as c_LCSL_LCMBID--����ʵ���� ����ģ��ID
      ,c.SQRID as c_LCSL_SQRID--����ʵ���� ������ID
      ,c.SPRID as c_LCSL_SPRID--����ʵ���� ������ID
      ,c.SQSJ as c_LCSL_SQSJ--����ʵ���� ����ʱ��
      ,c.DQBZID as c_LCSL_DQBZID--����ʵ���� ��ǰ����ID
      ,c.DQBZZXZT as c_LCSL_DQBZZXZT--����ʵ���� ��ǰ����ִ��״̬
      ,c.YXQ as c_LCSL_YXQ--����ʵ���� ��Ч��
      ,c.SLZT as c_LCSL_SLZT--����ʵ���� ʵ��״̬
      ,c.FJ as c_LCSL_FJ--����ʵ���� ����
      ,c.BZ as c_LCSL_BZ--����ʵ���� ��ע
      ,c.LXID as c_LCSL_LXID--����ʵ���� ����ID
      ,c.LXMC as c_LCSL_LXMC--����ʵ���� ��������
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,e.SCHOOLID as e_CLSJ_SCHOOLID--�������ݱ� ѧУ
      ,e.CLMC as e_CLSJ_CLMC--�������ݱ� ��������
      ,e.CLPP as e_CLSJ_CLPP--�������ݱ� ����Ʒ��
      ,e.CLCPH as e_CLSJ_CLCPH--�������ݱ� �������ƺ�
      ,e.ZDRNRS as e_CLSJ_ZDRNRS--�������ݱ� ����������
      ,e.CLZT as e_CLSJ_CLZT--�������ݱ� ����״̬
      ,e.BZ as e_CLSJ_BZ--�������ݱ� ��ע

FROM dbo.EDU_OAXT_24_A01_YCSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*����ʵ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SQRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_24_A03_CLSJ AS e ON a.SQCLID = e.ID /*���복��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/
GO

--�ɹ������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_25_A01_CGSQ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[LCSLID]--����ʵ��ID
      ,a.[CGDMC]--�ɹ�������
      ,a.[CGNR]--�ɹ�����
      ,a.[FJ]--����
      ,a.[SQSJ]--����ʱ��
      ,a.[SQRID]--������ID
      ,a.[CGZT]--�ɹ�״̬
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_LCSL_SCHOOLID--����ʵ���� ѧУ
      ,c.LCMBID as c_LCSL_LCMBID--����ʵ���� ����ģ��ID
      ,c.SQRID as c_LCSL_SQRID--����ʵ���� ������ID
      ,c.SPRID as c_LCSL_SPRID--����ʵ���� ������ID
      ,c.SQSJ as c_LCSL_SQSJ--����ʵ���� ����ʱ��
      ,c.DQBZID as c_LCSL_DQBZID--����ʵ���� ��ǰ����ID
      ,c.DQBZZXZT as c_LCSL_DQBZZXZT--����ʵ���� ��ǰ����ִ��״̬
      ,c.YXQ as c_LCSL_YXQ--����ʵ���� ��Ч��
      ,c.SLZT as c_LCSL_SLZT--����ʵ���� ʵ��״̬
      ,c.FJ as c_LCSL_FJ--����ʵ���� ����
      ,c.BZ as c_LCSL_BZ--����ʵ���� ��ע
      ,c.LXID as c_LCSL_LXID--����ʵ���� ����ID
      ,c.LXMC as c_LCSL_LXMC--����ʵ���� ��������
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_25_A01_CGSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*����ʵ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SQRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO

--ʵ���������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_26_A03_SYSSQ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[SYSID]--ʵ����ID
      ,a.[LCSLID]--����ʵ��ID
      ,a.[SYQC]--ʵ������
      ,a.[SYMC]--ʵ������
      ,a.[KM]--��Ŀ
      ,a.[BJ]--�༶
      ,a.[KSSJ]--��ʼʱ��
      ,a.[JSSJ]--����ʱ��
      ,a.[SQSJ]--����ʱ��
      ,a.[SQZT]--����״̬
      ,a.[SQRID]--������ID
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_SYSSJ_SCHOOLID--ʵ�������ݱ� ѧУ
      ,c.MC as c_SYSSJ_MC--ʵ�������ݱ� ����
      ,c.DD as c_SYSSJ_DD--ʵ�������ݱ� �ص�
      ,c.FZR as c_SYSSJ_FZR--ʵ�������ݱ� ������
      ,d.SCHOOLID as d_LCSL_SCHOOLID--����ʵ���� ѧУ
      ,d.LCMBID as d_LCSL_LCMBID--����ʵ���� ����ģ��ID
      ,d.SQRID as d_LCSL_SQRID--����ʵ���� ������ID
      ,d.SPRID as d_LCSL_SPRID--����ʵ���� ������ID
      ,d.SQSJ as d_LCSL_SQSJ--����ʵ���� ����ʱ��
      ,d.DQBZID as d_LCSL_DQBZID--����ʵ���� ��ǰ����ID
      ,d.DQBZZXZT as d_LCSL_DQBZZXZT--����ʵ���� ��ǰ����ִ��״̬
      ,d.YXQ as d_LCSL_YXQ--����ʵ���� ��Ч��
      ,d.SLZT as d_LCSL_SLZT--����ʵ���� ʵ��״̬
      ,d.FJ as d_LCSL_FJ--����ʵ���� ����
      ,d.BZ as d_LCSL_BZ--����ʵ���� ��ע
      ,d.LXID as d_LCSL_LXID--����ʵ���� ����ID
      ,d.LXMC as d_LCSL_LXMC--����ʵ���� ��������
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,e.STATUS as e_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,e.USERID as e_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,e.XM as e_USER_XM--Ӧ��ϵͳ�û��� ����
      ,e.XB as e_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,e.QQ as e_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,e.DZYJ as e_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,e.LXDH as e_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,e.BMID as e_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_26_A03_SYSSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_26_A01_SYSSJ AS c ON a.SYSID = c.ID /*ʵ����ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS d ON a.LCSLID = d.ID /*����ʵ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SQRID = e.LOGINNAME /*������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/
GO

--����ͨѶ¼��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_31_A01_GRTXL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[GRID]--����ID
      ,a.[LXRXM]--��ϵ������
      ,a.[LXRDH]--��ϵ�˵绰
      ,c.SCHOOLID as c_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,c.PWD as c_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,c.STATUS as c_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,c.USERID as c_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,c.XM as c_USER_XM--Ӧ��ϵͳ�û��� ����
      ,c.XB as c_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,c.QQ as c_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,c.DZYJ as c_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,c.LXDH as c_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,c.YHRY as c_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,c.YHJF as c_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,c.BMID as c_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_31_A01_GRTXL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.GRID = c.LOGINNAME /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO

--�����ʾ���Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_32_A02_DCWJTM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[WJID]--�����ʾ�
      ,a.[TypeID]--��Ŀ����
      ,a.[Title]--��Ŀ
      ,a.[SSDL]--��������
      ,c.SCHOOLID as c_DCWJ_SCHOOLID--�����ʾ����ݱ� ѧУ
      ,c.Title as c_DCWJ_Title--�����ʾ����ݱ� �ʾ�����
      ,c.Users as c_DCWJ_Users--�����ʾ����ݱ� ��ѡ��Ա
      ,c.StartTime as c_DCWJ_StartTime--�����ʾ����ݱ� ��ʼʱ��
      ,c.EndTime as c_DCWJ_EndTime--�����ʾ����ݱ� ����ʱ��
      ,c.IsStart as c_DCWJ_IsStart--�����ʾ����ݱ� �Ƿ���
      ,c.JJ as c_DCWJ_JJ--�����ʾ����ݱ� ���

FROM dbo.EDU_OAXT_32_A02_DCWJTM AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A01_DCWJ AS c ON a.WJID = c.ID /*�����ʾ�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO

--�ʾ���Ŀѡ���
CREATE VIEW [dbo].[VIEW_EDU_OAXT_32_A03_DCWJTMXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[TMID]--������Ŀ
      ,a.[WJID]--�����ʾ�
      ,a.[SelectItem]--ѡ��
      ,a.[XXFZ]--ѡ���ֵ
      ,c.SCHOOLID as c_DCWJTM_SCHOOLID--�����ʾ���Ŀ�� ѧУ
      ,c.WJID as c_DCWJTM_WJID--�����ʾ���Ŀ�� �����ʾ�
      ,c.TypeID as c_DCWJTM_TypeID--�����ʾ���Ŀ�� ��Ŀ����
      ,c.Title as c_DCWJTM_Title--�����ʾ���Ŀ�� ��Ŀ
      ,c.SSDL as c_DCWJTM_SSDL--�����ʾ���Ŀ�� ��������
      ,d.SCHOOLID as d_DCWJ_SCHOOLID--�����ʾ����ݱ� ѧУ
      ,d.Title as d_DCWJ_Title--�����ʾ����ݱ� �ʾ�����
      ,d.Users as d_DCWJ_Users--�����ʾ����ݱ� ��ѡ��Ա
      ,d.StartTime as d_DCWJ_StartTime--�����ʾ����ݱ� ��ʼʱ��
      ,d.EndTime as d_DCWJ_EndTime--�����ʾ����ݱ� ����ʱ��
      ,d.IsStart as d_DCWJ_IsStart--�����ʾ����ݱ� �Ƿ���
      ,d.JJ as d_DCWJ_JJ--�����ʾ����ݱ� ���

FROM dbo.EDU_OAXT_32_A03_DCWJTMXX AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A02_DCWJTM AS c ON a.TMID = c.ID /*������Ŀ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A01_DCWJ AS d ON a.WJID = d.ID /*�����ʾ�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO

--�ʾ�����¼��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_32_A04_DCWJJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[YHID]--�û�ID
      ,a.[WJID]--�����ʾ�ID
      ,a.[TMID]--������ĿID
      ,a.[XXID]--ѡ��ID
      ,a.[XXFZ]--ѡ���ֵ
      ,a.[TJZT]--�ύ״̬
      ,c.SCHOOLID as c_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,c.PWD as c_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,c.STATUS as c_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,c.USERID as c_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,c.XM as c_USER_XM--Ӧ��ϵͳ�û��� ����
      ,c.XB as c_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,c.QQ as c_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,c.DZYJ as c_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,c.LXDH as c_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,c.YHRY as c_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,c.YHJF as c_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,c.BMID as c_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,d.SCHOOLID as d_DCWJ_SCHOOLID--�����ʾ����ݱ� ѧУ
      ,d.Title as d_DCWJ_Title--�����ʾ����ݱ� �ʾ�����
      ,d.Users as d_DCWJ_Users--�����ʾ����ݱ� ��ѡ��Ա
      ,d.StartTime as d_DCWJ_StartTime--�����ʾ����ݱ� ��ʼʱ��
      ,d.EndTime as d_DCWJ_EndTime--�����ʾ����ݱ� ����ʱ��
      ,d.IsStart as d_DCWJ_IsStart--�����ʾ����ݱ� �Ƿ���
      ,d.JJ as d_DCWJ_JJ--�����ʾ����ݱ� ���
      ,e.SCHOOLID as e_DCWJTM_SCHOOLID--�����ʾ���Ŀ�� ѧУ
      ,e.WJID as e_DCWJTM_WJID--�����ʾ���Ŀ�� �����ʾ�
      ,e.TypeID as e_DCWJTM_TypeID--�����ʾ���Ŀ�� ��Ŀ����
      ,e.Title as e_DCWJTM_Title--�����ʾ���Ŀ�� ��Ŀ
      ,e.SSDL as e_DCWJTM_SSDL--�����ʾ���Ŀ�� ��������
      ,f.SCHOOLID as f_DCWJTMXX_SCHOOLID--�ʾ���Ŀѡ��� ѧУ
      ,f.TMID as f_DCWJTMXX_TMID--�ʾ���Ŀѡ��� ������Ŀ
      ,f.WJID as f_DCWJTMXX_WJID--�ʾ���Ŀѡ��� �����ʾ�
      ,f.SelectItem as f_DCWJTMXX_SelectItem--�ʾ���Ŀѡ��� ѡ��
      ,f.XXFZ as f_DCWJTMXX_XXFZ--�ʾ���Ŀѡ��� ѡ���ֵ

FROM dbo.EDU_OAXT_32_A04_DCWJJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*�û�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A01_DCWJ AS d ON a.WJID = d.ID /*�����ʾ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A02_DCWJTM AS e ON a.TMID = e.ID /*������ĿID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A03_DCWJTMXX AS f ON a.XXID = f.ID /*ѡ��ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/
GO

--���ı�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_33_A03_FW_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[GWID]--����ID
      ,a.[FZ]--��ע
      ,a.[SHRID]--�����ID
      ,a.[DXTZZT]--����֪ͨ״̬
      ,a.[SHPZ]--�����ע
      ,a.[GZID]--����ID
      ,a.[ZYCD]--��Ҫ�̶�
      ,a.[SFHF]--�Ƿ���Ҫ�ظ�
      ,a.[FSDW]--���͵�λ�����
      ,a.[FSZLY]--����������
      ,a.[FSRID]--������ID
      ,a.[BSZT]--����״̬
      ,a.[SHZT]--���״̬
      ,a.[FSZT]--����״̬
      ,a.[BJZT]--���״̬
      ,c.SCHOOLID as c_GWJCXX_SCHOOLID--���Ļ�����Ϣ�� ѧУ
      ,c.HTWZ as c_GWJCXX_HTWZ--���Ļ�����Ϣ�� ��ͷ����
      ,c.GWBT as c_GWJCXX_GWBT--���Ļ�����Ϣ�� ���ı���
      ,c.SJ as c_GWJCXX_SJ--���Ļ�����Ϣ�� ʱ��
      ,c.ZW as c_GWJCXX_ZW--���Ļ�����Ϣ�� ����
      ,c.BH as c_GWJCXX_BH--���Ļ�����Ϣ�� ���
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,e.SCHOOLID as e_GZ_SCHOOLID--������Ϣ�� ѧУ
      ,e.QZTPLJ as e_GZ_QZTPLJ--������Ϣ�� ǩ��ͼƬ·��
      ,f.SCHOOLID as f_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,f.PWD as f_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,f.STATUS as f_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,f.USERTYPE as f_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,f.USERID as f_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,f.XM as f_USER_XM--Ӧ��ϵͳ�û��� ����
      ,f.XB as f_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,f.QQ as f_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,f.DZYJ as f_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,f.LXDH as f_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,f.ZJDLSJ as f_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,f.DLCGCS as f_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,f.YHCJSJ as f_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,f.YHRY as f_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,f.YHJF as f_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,f.BMID as f_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_33_A03_FW AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_33_A01_GWJCXX AS c ON a.GWID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SHRID = d.LOGINNAME /*�����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_33_A02_GZ AS e ON a.GZID = e.ID /*����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.FSRID = f.LOGINNAME /*������ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/
GO

--���ı�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_33_A04_SW_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[GWID]--����ID
      ,a.[XFRID]--�·���ID
      ,a.[JSRID]--������ID
      ,a.[XFSJ]--�·�ʱ��
      ,a.[QSZT]--ǩ��״̬
      ,a.[DXTZZT]--����֪ͨ״̬
      ,a.[HFZT]--�ظ�״̬
      ,a.[HFXX]--�ظ���Ϣ
      ,a.[HFFJ]--�ظ�����
      ,a.[CLZT]--����״̬
      ,a.[SCZT]--ɾ��״̬
      ,c.SCHOOLID as c_GWJCXX_SCHOOLID--���Ļ�����Ϣ�� ѧУ
      ,c.HTWZ as c_GWJCXX_HTWZ--���Ļ�����Ϣ�� ��ͷ����
      ,c.GWBT as c_GWJCXX_GWBT--���Ļ�����Ϣ�� ���ı���
      ,c.SJ as c_GWJCXX_SJ--���Ļ�����Ϣ�� ʱ��
      ,c.ZW as c_GWJCXX_ZW--���Ļ�����Ϣ�� ����
      ,c.BH as c_GWJCXX_BH--���Ļ�����Ϣ�� ���
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,e.STATUS as e_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,e.USERID as e_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,e.XM as e_USER_XM--Ӧ��ϵͳ�û��� ����
      ,e.XB as e_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,e.QQ as e_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,e.DZYJ as e_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,e.LXDH as e_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,e.BMID as e_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_33_A04_SW AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_33_A01_GWJCXX AS c ON a.GWID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.XFRID = d.LOGINNAME /*�·���ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JSRID = e.LOGINNAME /*������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/
GO

--��ӡ���̼�¼
CREATE VIEW [dbo].[VIEW_EDU_OAXT_34_A01_WYLCJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[WYBT]--��ӡ����
      ,a.[NR]--����
      ,a.[BZ]--��ע
      ,a.[SQRID]--������ID
      ,a.[SQSJ]--����ʱ��
      ,a.[SHZT]--���״̬
      ,a.[SHRID]--�����ID
      ,a.[SHSJ]--���ʱ��
      ,a.[SHBZ]--��˱�ע
      ,a.[SHLBSFXS]--����б��Ƿ���ʾ
      ,a.[DYZT]--��ӡ״̬
      ,a.[DYSJ]--��ӡʱ��
      ,a.[DYBZ]--��ӡ��ע
      ,a.[DYLBSFXS]--��ӡ�б��Ƿ���ʾ
      ,c.SCHOOLID as c_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,c.PWD as c_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,c.STATUS as c_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,c.USERID as c_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,c.XM as c_USER_XM--Ӧ��ϵͳ�û��� ����
      ,c.XB as c_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,c.QQ as c_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,c.DZYJ as c_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,c.LXDH as c_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,c.YHRY as c_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,c.YHJF as c_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,c.BMID as c_USER_BMID--Ӧ��ϵͳ�û��� ����ID
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_34_A01_WYLCJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.SQRID = c.LOGINNAME /*������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SHRID = d.LOGINNAME /*�����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO

--�����
CREATE VIEW [dbo].[VIEW_EDU_OAXT_35_A01_RW_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[RWBT]--�������
      ,a.[JSYHIDLB]--�����û�ID�б�
      ,a.[JSYHXMLB]--�����û������б�
      ,a.[JZRQ]--��ֹ����
      ,a.[NR]--����
      ,a.[FBRID]--������ID
      ,a.[FBRXM]--����������
      ,a.[FBBMMC]--������������
      ,a.[FBSJ]--����ʱ��
      ,a.[RWZT]--����״̬
      ,c.SCHOOLID as c_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,c.PWD as c_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,c.STATUS as c_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,c.USERID as c_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,c.XM as c_USER_XM--Ӧ��ϵͳ�û��� ����
      ,c.XB as c_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,c.QQ as c_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,c.DZYJ as c_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,c.LXDH as c_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,c.YHRY as c_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,c.YHJF as c_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,c.BMID as c_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_35_A01_RW AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.FBRID = c.LOGINNAME /*������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO

--��������˱�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_35_A02_RWJSR_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[RWID]--����ID
      ,a.[JSRID]--������ID
      ,a.[YDZT]--�Ķ�״̬
      ,a.[WCZT]--���״̬
      ,a.[SCZT]--ɾ��״̬
      ,a.[TJZT]--�ύ״̬
      ,a.[FJ]--����
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_RW_SCHOOLID--����� ѧУID
      ,c.RWBT as c_RW_RWBT--����� �������
      ,c.JSYHIDLB as c_RW_JSYHIDLB--����� �����û�ID�б�
      ,c.JSYHXMLB as c_RW_JSYHXMLB--����� �����û������б�
      ,c.JZRQ as c_RW_JZRQ--����� ��ֹ����
      ,c.NR as c_RW_NR--����� ����
      ,c.FBRID as c_RW_FBRID--����� ������ID
      ,c.FBRXM as c_RW_FBRXM--����� ����������
      ,c.FBBMMC as c_RW_FBBMMC--����� ������������
      ,c.FBSJ as c_RW_FBSJ--����� ����ʱ��
      ,c.RWZT as c_RW_RWZT--����� ����״̬
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_35_A02_RWJSR AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_35_A01_RW AS c ON a.RWID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JSRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/
GO

--�ظ���¼��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_35_A03_HFJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[RWID]--����ID
      ,a.[HFRID]--�ظ���ID
      ,a.[HFNR]--�ظ�����
      ,a.[HSSJ]--�ظ�ʱ��
      ,c.SCHOOLID as c_RW_SCHOOLID--����� ѧУID
      ,c.RWBT as c_RW_RWBT--����� �������
      ,c.JSYHIDLB as c_RW_JSYHIDLB--����� �����û�ID�б�
      ,c.JSYHXMLB as c_RW_JSYHXMLB--����� �����û������б�
      ,c.JZRQ as c_RW_JZRQ--����� ��ֹ����
      ,c.NR as c_RW_NR--����� ����
      ,c.FBRID as c_RW_FBRID--����� ������ID
      ,c.FBRXM as c_RW_FBRXM--����� ����������
      ,c.FBBMMC as c_RW_FBBMMC--����� ������������
      ,c.FBSJ as c_RW_FBSJ--����� ����ʱ��
      ,c.RWZT as c_RW_RWZT--����� ����״̬
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_35_A03_HFJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_35_A01_RW AS c ON a.RWID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.HFRID = d.LOGINNAME /*�ظ���ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/
GO

--�༶��������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_36_A02_BJGZJC_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[GZLBID]--�������ID
      ,a.[BJ]--�༶
      ,a.[RQ]--����
      ,a.[JG]--���
      ,a.[BJMC]--�༶����
      ,c.SCHOOLID as c_BJGZLB_SCHOOLID--�༶�������� ѧУID
      ,c.GZLBMC as c_BJGZLB_GZLBMC--�༶�������� �����������
      ,c.DJRYIDLB as c_BJGZLB_DJRYIDLB--�༶�������� �Ǽ���ԱID�б�
      ,c.DJRYXMLB as c_BJGZLB_DJRYXMLB--�༶�������� �Ǽ���Ա�����б�

FROM dbo.EDU_OAXT_36_A02_BJGZJC AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_36_A01_BJGZLB AS c ON a.GZLBID = c.ID /*�������ID*/
GO

--�豸�ͺű�
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_05_SBXH_DISP]
AS
SELECT a.[ID]--���
      ,a.[XX]--�ͺ�
      ,a.[LXID]--����ID
      ,a.[SCCJID]--��������ID
      ,a.[PY]--ƴ��
      ,a.[MS]--����
      ,a.[JG]--�۸�
      ,b.LXMC as b_SBXHLX_LXMC--�豸�ͺ����ͱ� ��������
      ,b.LXJC as b_SBXHLX_LXJC--�豸�ͺ����ͱ� ���ͼ��
      ,c.CJM as c_SCCJ_CJM--�������ұ� ������
      ,c.CJDZ as c_SCCJ_CJDZ--�������ұ� ���ҵ�ַ
      ,c.LXR as c_SCCJ_LXR--�������ұ� ��ϵ��
      ,c.LXDH as c_SCCJ_LXDH--�������ұ� ��ϵ�绰

FROM dbo.EDU_ZDGL_05_SBXH AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_03_SBXHLX AS b ON a.LXID = b.ID /*����ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_04_SCCJ AS c ON a.SCCJID = c.ID /*��������ID*/
GO

--�ͻ���
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_08_KH_DISP]
AS
SELECT a.[ID]--���
      ,a.[KHDM]--�ͻ�����
      ,a.[SZQYID]--��������ID
      ,a.[SSGSID]--������˾ID
      ,a.[DWMC]--��λ����
      ,a.[PY]--ƴ��
      ,a.[KHDZ]--�ͻ���ַ
      ,a.[LXR]--��ϵ��
      ,a.[DH]--�绰
      ,b.QHMC as b_XZQH_QHMC--���������� ��������
      ,b.QH as b_XZQH_QH--���������� ����
      ,c.GSDM as c_SSGS_GSDM--������˾�� ��˾����
      ,c.GSM as c_SSGS_GSM--������˾�� ��˾��

FROM dbo.EDU_ZDGL_08_KH AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_06_XZQH AS b ON a.SZQYID = b.QHM /*��������ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_07_SSGS AS c ON a.SSGSID = c.ID /*������˾ID*/
GO

--�ּ����α�
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_11_FJPC_DISP]
AS
SELECT a.[ID]--���
      ,a.[PCH]--���κ�
      ,a.[KHID]--�ͻ�ID
      ,a.[JSRQ]--��������
      ,a.[LRSJ]--¼��ʱ��
      ,a.[FJWGSJ]--�ּ��깤ʱ��
      ,a.[FJFZR]--�ּ�����
      ,a.[QRR]--ȷ����
      ,a.[QRRLXDH]--ȷ������ϵ�绰
      ,a.[QRSJ]--ȷ��ʱ��
      ,a.[CSJG]--���Խ��
      ,b.KHDM as b_KH_KHDM--�ͻ��� �ͻ�����
      ,b.SZQYID as b_KH_SZQYID--�ͻ��� ��������ID
      ,b.SSGSID as b_KH_SSGSID--�ͻ��� ������˾ID
      ,b.DWMC as b_KH_DWMC--�ͻ��� ��λ����
      ,b.PY as b_KH_PY--�ͻ��� ƴ��
      ,b.KHDZ as b_KH_KHDZ--�ͻ��� �ͻ���ַ
      ,b.LXR as b_KH_LXR--�ͻ��� ��ϵ��
      ,b.DH as b_KH_DH--�ͻ��� �绰

FROM dbo.EDU_ZDGL_11_FJPC AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_KH AS b ON a.KHID = b.ID /*�ͻ�ID*/
GO

--�ּ���ϸ��
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_12_FJXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[PCID]--����ID
      ,a.[XHID]--�ͺ�ID
      ,a.[SRSL]--��������
      ,a.[LPSL]--��Ʒ����
      ,a.[GZSL]--��������
      ,a.[BFSL]--��������
      ,a.[RWSHSL]--��Ϊ������
      ,a.[QT]--����
      ,a.[HJ]--�ϼ�
      ,a.[BZ]--��ע
      ,a.[JCFW]--��������
      ,a.[HK]--����
      ,a.[WX]--ά��
      ,a.[XDY]--�µ�Դ
      ,a.[JDY]--�ɵ�Դ
      ,a.[PJ]--���
      ,a.[TH]--�˻�
      ,a.[QTE]--������
      ,a.[WF]--δ��
      ,a.[FHRQ]--��������
      ,b.PCH as b_FJPC_PCH--�ּ����α� ���κ�
      ,b.KHID as b_FJPC_KHID--�ּ����α� �ͻ�ID
      ,b.JSRQ as b_FJPC_JSRQ--�ּ����α� ��������
      ,b.LRSJ as b_FJPC_LRSJ--�ּ����α� ¼��ʱ��
      ,b.FJWGSJ as b_FJPC_FJWGSJ--�ּ����α� �ּ��깤ʱ��
      ,b.FJFZR as b_FJPC_FJFZR--�ּ����α� �ּ�����
      ,b.QRR as b_FJPC_QRR--�ּ����α� ȷ����
      ,b.QRRLXDH as b_FJPC_QRRLXDH--�ּ����α� ȷ������ϵ�绰
      ,b.QRSJ as b_FJPC_QRSJ--�ּ����α� ȷ��ʱ��
      ,b.CSJG as b_FJPC_CSJG--�ּ����α� ���Խ��
      ,c.XX as c_SBXH_XX--�豸�ͺű� �ͺ�
      ,c.LXID as c_SBXH_LXID--�豸�ͺű� ����ID
      ,c.SCCJID as c_SBXH_SCCJID--�豸�ͺű� ��������ID
      ,c.PY as c_SBXH_PY--�豸�ͺű� ƴ��
      ,c.MS as c_SBXH_MS--�豸�ͺű� ����
      ,c.JG as c_SBXH_JG--�豸�ͺű� �۸�

FROM dbo.EDU_ZDGL_12_FJXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_11_FJPC AS b ON a.PCID = b.ID /*����ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_05_SBXH AS c ON a.XHID = c.ID /*�ͺ�ID*/
GO

--�������α�
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_13_FHPC_DISP]
AS
SELECT a.[ID]--���
      ,a.[FHPCH]--�������κ�
      ,a.[FHR]--������
      ,a.[WLGSID]--������˾ID
      ,a.[ZXS]--������
      ,a.[FHSJ]--����ʱ��
      ,a.[FJPCID]--�ּ�����ID
      ,a.[FHRID]--������ID
      ,b.GSDM as b_WLGS_GSDM--������˾�� ��˾����
      ,b.GSM as b_WLGS_GSM--������˾�� ��˾��
      ,b.GSLXR as b_WLGS_GSLXR--������˾�� ��˾��ϵ��
      ,b.LXDH as b_WLGS_LXDH--������˾�� ��ϵ�绰
      ,c.PCH as c_FJPC_PCH--�ּ����α� ���κ�
      ,c.KHID as c_FJPC_KHID--�ּ����α� �ͻ�ID
      ,c.JSRQ as c_FJPC_JSRQ--�ּ����α� ��������
      ,c.LRSJ as c_FJPC_LRSJ--�ּ����α� ¼��ʱ��
      ,c.FJWGSJ as c_FJPC_FJWGSJ--�ּ����α� �ּ��깤ʱ��
      ,c.FJFZR as c_FJPC_FJFZR--�ּ����α� �ּ�����
      ,c.QRR as c_FJPC_QRR--�ּ����α� ȷ����
      ,c.QRRLXDH as c_FJPC_QRRLXDH--�ּ����α� ȷ������ϵ�绰
      ,c.QRSJ as c_FJPC_QRSJ--�ּ����α� ȷ��ʱ��
      ,c.CSJG as c_FJPC_CSJG--�ּ����α� ���Խ��
      ,d.GH as d_FHR_GH--�����˱� ����
      ,d.XM as d_FHR_XM--�����˱� ����
      ,d.LXDH as d_FHR_LXDH--�����˱� ��ϵ�绰

FROM dbo.EDU_ZDGL_13_FHPC AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_15_WLGS AS b ON a.WLGSID = b.ID /*������˾ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_11_FJPC AS c ON a.FJPCID = c.ID /*�ּ�����ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_22_FHR AS d ON a.FHRID = d.ID /*������ID*/
GO

--������ϸ��
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_14_FHXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[FHPCID]--��������ID
      ,a.[FJXXID]--�ּ���ϸID
      ,a.[JCFW]--��������
      ,a.[HK]--����
      ,a.[WX]--ά��
      ,a.[XDY]--�µ�Դ
      ,a.[JDY]--�ɵ�Դ
      ,a.[PJ]--���
      ,a.[TH]--�˻�
      ,a.[QT]--����
      ,a.[WF]--δ��
      ,a.[FHRQ]--��������
      ,b.FHPCH as b_FHPC_FHPCH--�������α� �������κ�
      ,b.FHR as b_FHPC_FHR--�������α� ������
      ,b.WLGSID as b_FHPC_WLGSID--�������α� ������˾ID
      ,b.ZXS as b_FHPC_ZXS--�������α� ������
      ,b.FHSJ as b_FHPC_FHSJ--�������α� ����ʱ��
      ,b.FJPCID as b_FHPC_FJPCID--�������α� �ּ�����ID
      ,b.FHRID as b_FHPC_FHRID--�������α� ������ID
      ,c.PCID as c_FJXX_PCID--�ּ���ϸ�� ����ID
      ,c.XHID as c_FJXX_XHID--�ּ���ϸ�� �ͺ�ID
      ,c.SRSL as c_FJXX_SRSL--�ּ���ϸ�� ��������
      ,c.LPSL as c_FJXX_LPSL--�ּ���ϸ�� ��Ʒ����
      ,c.GZSL as c_FJXX_GZSL--�ּ���ϸ�� ��������
      ,c.BFSL as c_FJXX_BFSL--�ּ���ϸ�� ��������
      ,c.RWSHSL as c_FJXX_RWSHSL--�ּ���ϸ�� ��Ϊ������
      ,c.QT as c_FJXX_QT--�ּ���ϸ�� ����
      ,c.HJ as c_FJXX_HJ--�ּ���ϸ�� �ϼ�
      ,c.BZ as c_FJXX_BZ--�ּ���ϸ�� ��ע
      ,c.JCFW as c_FJXX_JCFW--�ּ���ϸ�� ��������
      ,c.HK as c_FJXX_HK--�ּ���ϸ�� ����
      ,c.WX as c_FJXX_WX--�ּ���ϸ�� ά��
      ,c.XDY as c_FJXX_XDY--�ּ���ϸ�� �µ�Դ
      ,c.JDY as c_FJXX_JDY--�ּ���ϸ�� �ɵ�Դ
      ,c.PJ as c_FJXX_PJ--�ּ���ϸ�� ���
      ,c.TH as c_FJXX_TH--�ּ���ϸ�� �˻�
      ,c.QTE as c_FJXX_QTE--�ּ���ϸ�� ������
      ,c.WF as c_FJXX_WF--�ּ���ϸ�� δ��
      ,c.FHRQ as c_FJXX_FHRQ--�ּ���ϸ�� ��������

FROM dbo.EDU_ZDGL_14_FHXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_13_FHPC AS b ON a.FHPCID = b.ID /*��������ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_12_FJXX AS c ON a.FJXXID = c.ID /*�ּ���ϸID*/
GO

--���յ���
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_16_JSD_DISP]
AS
SELECT a.[ID]--���
      ,a.[JSDH]--���յ���
      ,a.[SXDWID]--���޵�λID
      ,a.[SXRQ]--��������
      ,a.[BCZT]--����״̬
      ,a.[SFQR]--�Ƿ�ȷ��
      ,b.KHDM as b_KH_KHDM--�ͻ��� �ͻ�����
      ,b.SZQYID as b_KH_SZQYID--�ͻ��� ��������ID
      ,b.SSGSID as b_KH_SSGSID--�ͻ��� ������˾ID
      ,b.DWMC as b_KH_DWMC--�ͻ��� ��λ����
      ,b.PY as b_KH_PY--�ͻ��� ƴ��
      ,b.KHDZ as b_KH_KHDZ--�ͻ��� �ͻ���ַ
      ,b.LXR as b_KH_LXR--�ͻ��� ��ϵ��
      ,b.DH as b_KH_DH--�ͻ��� �绰
      ,c.MC as c_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZDGL_16_JSD AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_KH AS b ON a.SXDWID = b.ID /*���޵�λID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFQR = c.DM /*�Ƿ�ȷ��*/
GO

--���յ���ϸ��
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_17_JSDXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[XHID]--�ͺ�ID
      ,a.[XH]--���
      ,a.[SN]--SN��
      ,a.[SFECFX]--�Ƿ���η���
      ,a.[SXDWID]--���޵�λID
      ,a.[GZXXID]--������ϢID
      ,a.[WXXXID]--ά����ϢID
      ,a.[WXRID]--ά����ID
      ,a.[WXRQ]--ά������
      ,a.[JSDID]--���յ�ID
      ,b.XX as b_SBXH_XX--�豸�ͺű� �ͺ�
      ,b.LXID as b_SBXH_LXID--�豸�ͺű� ����ID
      ,b.SCCJID as b_SBXH_SCCJID--�豸�ͺű� ��������ID
      ,b.PY as b_SBXH_PY--�豸�ͺű� ƴ��
      ,b.MS as b_SBXH_MS--�豸�ͺű� ����
      ,b.JG as b_SBXH_JG--�豸�ͺű� �۸�
      ,c.MC as c_SFBZ_MC--�Ƿ��־����� ����
      ,d.KHDM as d_KH_KHDM--�ͻ��� �ͻ�����
      ,d.SZQYID as d_KH_SZQYID--�ͻ��� ��������ID
      ,d.SSGSID as d_KH_SSGSID--�ͻ��� ������˾ID
      ,d.DWMC as d_KH_DWMC--�ͻ��� ��λ����
      ,d.PY as d_KH_PY--�ͻ��� ƴ��
      ,d.KHDZ as d_KH_KHDZ--�ͻ��� �ͻ���ַ
      ,d.LXR as d_KH_LXR--�ͻ��� ��ϵ��
      ,d.DH as d_KH_DH--�ͻ��� �绰
      ,e.GZDM as e_GZDM_GZDM--���ϴ���� ���ϴ���
      ,e.GZXX as e_GZDM_GZXX--���ϴ���� ��������
      ,f.WXDM as f_WXDM_WXDM--ά�޴���� ά�޴���
      ,f.WXNR as f_WXDM_WXNR--ά�޴���� ά������
      ,f.WXJG as f_WXDM_WXJG--ά�޴���� ά�޽��
      ,g.GH as g_WXR_GH--ά���˱� ����
      ,g.XM as g_WXR_XM--ά���˱� ����
      ,g.LXDH as g_WXR_LXDH--ά���˱� ��ϵ�绰
      ,h.JSDH as h_JSD_JSDH--���յ��� ���յ���
      ,h.SXDWID as h_JSD_SXDWID--���յ��� ���޵�λID
      ,h.SXRQ as h_JSD_SXRQ--���յ��� ��������
      ,h.BCZT as h_JSD_BCZT--���յ��� ����״̬
      ,h.SFQR as h_JSD_SFQR--���յ��� �Ƿ�ȷ��
      ,[hb].MC as h_JSD_SFQR_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZDGL_17_JSDXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_05_SBXH AS b ON a.XHID = b.ID /*�ͺ�ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFECFX = c.DM /*�Ƿ���η���*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_KH AS d ON a.SXDWID = d.ID /*���޵�λID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_01_GZDM AS e ON a.GZXXID = e.ID /*������ϢID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_02_WXDM AS f ON a.WXXXID = f.ID /*ά����ϢID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_10_WXR AS g ON a.WXRID = g.ID /*ά����ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_16_JSD AS h ON a.JSDID = h.ID /*���յ�ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hb] ON h.SFQR = [hb].DM /*�Ƿ�ȷ��*/
GO

--��������
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_18_JFD_DISP]
AS
SELECT a.[ID]--���
      ,a.[JFDH]--��������
      ,a.[WXSID]--ά����ID
      ,a.[JFRQ]--��������
      ,a.[SXDWID]--���޵�λID
      ,b.WXSDM as b_WXS_WXSDM--ά���̱� ά���̴���
      ,b.WXSMC as b_WXS_WXSMC--ά���̱� ά��������
      ,b.LXR as b_WXS_LXR--ά���̱� ��ϵ��
      ,b.LXDM as b_WXS_LXDM--ά���̱� ��ϵ����
      ,b.DZ as b_WXS_DZ--ά���̱� ��ַ
      ,c.KHDM as c_KH_KHDM--�ͻ��� �ͻ�����
      ,c.SZQYID as c_KH_SZQYID--�ͻ��� ��������ID
      ,c.SSGSID as c_KH_SSGSID--�ͻ��� ������˾ID
      ,c.DWMC as c_KH_DWMC--�ͻ��� ��λ����
      ,c.PY as c_KH_PY--�ͻ��� ƴ��
      ,c.KHDZ as c_KH_KHDZ--�ͻ��� �ͻ���ַ
      ,c.LXR as c_KH_LXR--�ͻ��� ��ϵ��
      ,c.DH as c_KH_DH--�ͻ��� �绰

FROM dbo.EDU_ZDGL_18_JFD AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_09_WXS AS b ON a.WXSID = b.ID /*ά����ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_KH AS c ON a.SXDWID = c.ID /*���޵�λID*/
GO

--��������ϸ��
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_19_JFDXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[JFDID]--������ID
      ,a.[JSDXXID]--���յ���ϸID
      ,b.JFDH as b_JFD_JFDH--�������� ��������
      ,b.WXSID as b_JFD_WXSID--�������� ά����ID
      ,b.JFRQ as b_JFD_JFRQ--�������� ��������
      ,b.SXDWID as b_JFD_SXDWID--�������� ���޵�λID
      ,c.XHID as c_JSDXX_XHID--���յ���ϸ�� �ͺ�ID
      ,c.XH as c_JSDXX_XH--���յ���ϸ�� ���
      ,c.SN as c_JSDXX_SN--���յ���ϸ�� SN��
      ,c.SFECFX as c_JSDXX_SFECFX--���յ���ϸ�� �Ƿ���η���
      ,[cb].MC as c_JSDXX_SFECFX_MC--�Ƿ��־����� ����
      ,c.SXDWID as c_JSDXX_SXDWID--���յ���ϸ�� ���޵�λID
      ,c.GZXXID as c_JSDXX_GZXXID--���յ���ϸ�� ������ϢID
      ,c.WXXXID as c_JSDXX_WXXXID--���յ���ϸ�� ά����ϢID
      ,c.WXRID as c_JSDXX_WXRID--���յ���ϸ�� ά����ID
      ,c.WXRQ as c_JSDXX_WXRQ--���յ���ϸ�� ά������
      ,c.JSDID as c_JSDXX_JSDID--���յ���ϸ�� ���յ�ID

FROM dbo.EDU_ZDGL_19_JFDXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_18_JFD AS b ON a.JFDID = b.ID /*������ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_17_JSDXX AS c ON a.JSDXXID = c.ID /*���յ���ϸID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFECFX = [cb].DM /*�Ƿ���η���*/
GO

--���ص���
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_20_FHD_DISP]
AS
SELECT a.[ID]--���
      ,a.[FHDH]--���ص���
      ,a.[FHRQ]--��������
      ,a.[FHDWID]--���ص�λID
      ,b.KHDM as b_KH_KHDM--�ͻ��� �ͻ�����
      ,b.SZQYID as b_KH_SZQYID--�ͻ��� ��������ID
      ,b.SSGSID as b_KH_SSGSID--�ͻ��� ������˾ID
      ,b.DWMC as b_KH_DWMC--�ͻ��� ��λ����
      ,b.PY as b_KH_PY--�ͻ��� ƴ��
      ,b.KHDZ as b_KH_KHDZ--�ͻ��� �ͻ���ַ
      ,b.LXR as b_KH_LXR--�ͻ��� ��ϵ��
      ,b.DH as b_KH_DH--�ͻ��� �绰

FROM dbo.EDU_ZDGL_20_FHD AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_KH AS b ON a.FHDWID = b.ID /*���ص�λID*/
GO

--���ص���ϸ��
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_21_FHDXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[FHDID]--���ص�ID
      ,a.[JSDXXID]--���յ���ϸID
      ,b.FHDH as b_FHD_FHDH--���ص��� ���ص���
      ,b.FHRQ as b_FHD_FHRQ--���ص��� ��������
      ,b.FHDWID as b_FHD_FHDWID--���ص��� ���ص�λID
      ,c.XHID as c_JSDXX_XHID--���յ���ϸ�� �ͺ�ID
      ,c.XH as c_JSDXX_XH--���յ���ϸ�� ���
      ,c.SN as c_JSDXX_SN--���յ���ϸ�� SN��
      ,c.SFECFX as c_JSDXX_SFECFX--���յ���ϸ�� �Ƿ���η���
      ,[cb].MC as c_JSDXX_SFECFX_MC--�Ƿ��־����� ����
      ,c.SXDWID as c_JSDXX_SXDWID--���յ���ϸ�� ���޵�λID
      ,c.GZXXID as c_JSDXX_GZXXID--���յ���ϸ�� ������ϢID
      ,c.WXXXID as c_JSDXX_WXXXID--���յ���ϸ�� ά����ϢID
      ,c.WXRID as c_JSDXX_WXRID--���յ���ϸ�� ά����ID
      ,c.WXRQ as c_JSDXX_WXRQ--���յ���ϸ�� ά������
      ,c.JSDID as c_JSDXX_JSDID--���յ���ϸ�� ���յ�ID

FROM dbo.EDU_ZDGL_21_FHDXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_20_FHD AS b ON a.FHDID = b.ID /*���ص�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_17_JSDXX AS c ON a.JSDXXID = c.ID /*���յ���ϸID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFECFX = [cb].DM /*�Ƿ���η���*/
GO
