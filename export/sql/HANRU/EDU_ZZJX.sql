--�ռ�����EDU_ZZJX  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_01_01_ZYXX')
            and   type = 'U')
   drop table EDU_ZZJX_01_01_ZYXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_01_A01_KCPJ')
            and   type = 'U')
   drop table EDU_ZZJX_01_A01_KCPJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_01_02_KC')
            and   type = 'U')
   drop table EDU_ZZJX_01_02_KC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_01_A02_JSRK')
            and   type = 'U')
   drop table EDU_ZZJX_01_A02_JSRK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_02_01_ZZNJ')
            and   type = 'U')
   drop table EDU_ZZJX_02_01_ZZNJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_02_02_ZZBJ')
            and   type = 'U')
   drop table EDU_ZZJX_02_02_ZZBJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_03_01_ZTJXJH')
            and   type = 'U')
   drop table EDU_ZZJX_03_01_ZTJXJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_03_A01_XQXFGL')
            and   type = 'U')
   drop table EDU_ZZJX_03_A01_XQXFGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_03_02_JXJHFLXFYQ')
            and   type = 'U')
   drop table EDU_ZZJX_03_02_JXJHFLXFYQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_03_03_JXJHKCQD')
            and   type = 'U')
   drop table EDU_ZZJX_03_03_JXJHKCQD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_04_01_JCJBXX')
            and   type = 'U')
   drop table EDU_ZZJX_04_01_JCJBXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_04_02_JCXYXX')
            and   type = 'U')
   drop table EDU_ZZJX_04_02_JCXYXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_04_A03_JCLYJL')
            and   type = 'U')
   drop table EDU_ZZJX_04_A03_JCLYJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_04_A05_JCFK')
            and   type = 'U')
   drop table EDU_ZZJX_04_A05_JCFK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_04_A06_JCBF')
            and   type = 'U')
   drop table EDU_ZZJX_04_A06_JCBF
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_05_02_JSJXGZLTJ')
            and   type = 'U')
   drop table EDU_ZZJX_05_02_JSJXGZLTJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_08_A01_DGFSQ')
            and   type = 'U')
   drop table EDU_ZZJX_08_A01_DGFSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_09_A01_TKSQSJ')
            and   type = 'U')
   drop table EDU_ZZJX_09_A01_TKSQSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_10_A01_LWSJ')
            and   type = 'U')
   drop table EDU_ZZJX_10_A01_LWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_10_A02_KYHDSJ')
            and   type = 'U')
   drop table EDU_ZZJX_10_A02_KYHDSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_10_A03_CPXXSJ')
            and   type = 'U')
   drop table EDU_ZZJX_10_A03_CPXXSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_10_A04_KTSJ')
            and   type = 'U')
   drop table EDU_ZZJX_10_A04_KTSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_10_A05_KTJDSJ')
            and   type = 'U')
   drop table EDU_ZZJX_10_A05_KTJDSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_10_A06_LWLX')
            and   type = 'U')
   drop table EDU_ZZJX_10_A06_LWLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_20_A01_QYGL')
            and   type = 'U')
   drop table EDU_ZZJX_20_A01_QYGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_20_A02_XQHD')
            and   type = 'U')
   drop table EDU_ZZJX_20_A02_XQHD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_20_A03_GWXX')
            and   type = 'U')
   drop table EDU_ZZJX_20_A03_GWXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_21_A01_SXBJGL')
            and   type = 'U')
   drop table EDU_ZZJX_21_A01_SXBJGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_21_A02_SXSGL')
            and   type = 'U')
   drop table EDU_ZZJX_21_A02_SXSGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_21_A03_SXGW')
            and   type = 'U')
   drop table EDU_ZZJX_21_A03_SXGW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A01_SXJL')
            and   type = 'U')
   drop table EDU_ZZJX_22_A01_SXJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A03_SXWZJL')
            and   type = 'U')
   drop table EDU_ZZJX_22_A03_SXWZJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A04_SXJD')
            and   type = 'U')
   drop table EDU_ZZJX_22_A04_SXJD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A05_SXTS')
            and   type = 'U')
   drop table EDU_ZZJX_22_A05_SXTS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A06_SXRZ')
            and   type = 'U')
   drop table EDU_ZZJX_22_A06_SXRZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A07_ZFJL')
            and   type = 'U')
   drop table EDU_ZZJX_22_A07_ZFJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A08_SXSJL')
            and   type = 'U')
   drop table EDU_ZZJX_22_A08_SXSJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A09_JLTD')
            and   type = 'U')
   drop table EDU_ZZJX_22_A09_JLTD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A10_SXYB')
            and   type = 'U')
   drop table EDU_ZZJX_22_A10_SXYB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A11_SXMYKQJL')
            and   type = 'U')
   drop table EDU_ZZJX_22_A11_SXMYKQJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A12_YDHZJL')
            and   type = 'U')
   drop table EDU_ZZJX_22_A12_YDHZJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A13_YDPDZDPZ')
            and   type = 'U')
   drop table EDU_ZZJX_22_A13_YDPDZDPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A14_YDPDJL')
            and   type = 'U')
   drop table EDU_ZZJX_22_A14_YDPDJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_23_A01_DGSXYQLJLX')
            and   type = 'U')
   drop table EDU_ZZJX_23_A01_DGSXYQLJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_23_A02_DGSXYQLJ')
            and   type = 'U')
   drop table EDU_ZZJX_23_A02_DGSXYQLJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_23_A03_DGSXMHLM')
            and   type = 'U')
   drop table EDU_ZZJX_23_A03_DGSXMHLM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_23_A04_DGSXMHWZ')
            and   type = 'U')
   drop table EDU_ZZJX_23_A04_DGSXMHWZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_23_A05_DGSXXZZL')
            and   type = 'U')
   drop table EDU_ZZJX_23_A05_DGSXXZZL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_30_A01_CLASSROOM')
            and   type = 'U')
   drop table EDU_ZZJX_30_A01_CLASSROOM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_30_A02_EXAMROOM')
            and   type = 'U')
   drop table EDU_ZZJX_30_A02_EXAMROOM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_31_A01_KSSDLX')
            and   type = 'U')
   drop table EDU_ZZJX_31_A01_KSSDLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_31_A02_KSCC')
            and   type = 'U')
   drop table EDU_ZZJX_31_A02_KSCC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_32_A01_EXAM')
            and   type = 'U')
   drop table EDU_ZZJX_32_A01_EXAM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_32_A02_ZYKCPKJG')
            and   type = 'U')
   drop table EDU_ZZJX_32_A02_ZYKCPKJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_32_A03_XSPKJG')
            and   type = 'U')
   drop table EDU_ZZJX_32_A03_XSPKJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_33_A01_YJAP')
            and   type = 'U')
   drop table EDU_ZZJX_33_A01_YJAP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_34_A01_XSKCXF')
            and   type = 'U')
   drop table EDU_ZZJX_34_A01_XSKCXF
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_35_A01_TKXZ')
            and   type = 'U')
   drop table EDU_ZZJX_35_A01_TKXZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_35_A02_GKKSQ')
            and   type = 'U')
   drop table EDU_ZZJX_35_A02_GKKSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_36_A01_JXJH')
            and   type = 'U')
   drop table EDU_ZZJX_36_A01_JXJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_36_A02_JXBG')
            and   type = 'U')
   drop table EDU_ZZJX_36_A02_JXBG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_36_A03_JXPJ')
            and   type = 'U')
   drop table EDU_ZZJX_36_A03_JXPJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_37_A01_JNJDXM')
            and   type = 'U')
   drop table EDU_ZZJX_37_A01_JNJDXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_37_A02_JNJDAP')
            and   type = 'U')
   drop table EDU_ZZJX_37_A02_JNJDAP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_37_A03_JNJDCJ')
            and   type = 'U')
   drop table EDU_ZZJX_37_A03_JNJDCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_38_A01_ZZJXB')
            and   type = 'U')
   drop table EDU_ZZJX_38_A01_ZZJXB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_38_A02_ZZPKJGJL')
            and   type = 'U')
   drop table EDU_ZZJX_38_A02_ZZPKJGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_38_A03_XKJG')
            and   type = 'U')
   drop table EDU_ZZJX_38_A03_XKJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_50_A01_XXKCLB')
            and   type = 'U')
   drop table EDU_ZZJX_50_A01_XXKCLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_50_A02_KKSJ')
            and   type = 'U')
   drop table EDU_ZZJX_50_A02_KKSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_50_A03_JXBSJ')
            and   type = 'U')
   drop table EDU_ZZJX_50_A03_JXBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_50_A04_XSXKJL')
            and   type = 'U')
   drop table EDU_ZZJX_50_A04_XSXKJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_50_A05_XSXXKCJ')
            and   type = 'U')
   drop table EDU_ZZJX_50_A05_XSXXKCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_50_A06_KTDMB')
            and   type = 'U')
   drop table EDU_ZZJX_50_A06_KTDMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_50_A07_ECXKXS')
            and   type = 'U')
   drop table EDU_ZZJX_50_A07_ECXKXS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_50_A11_XKXSPJ')
            and   type = 'U')
   drop table EDU_ZZJX_50_A11_XKXSPJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_50_A12_PJPFFS')
            and   type = 'U')
   drop table EDU_ZZJX_50_A12_PJPFFS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_50_A13_PJPFXX')
            and   type = 'U')
   drop table EDU_ZZJX_50_A13_PJPFXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_50_A14_PJTM')
            and   type = 'U')
   drop table EDU_ZZJX_50_A14_PJTM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_50_A15_PJJG')
            and   type = 'U')
   drop table EDU_ZZJX_50_A15_PJJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_50_A16_PJTJJL')
            and   type = 'U')
   drop table EDU_ZZJX_50_A16_PJTJJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_50_A17_PJXSPJ')
            and   type = 'U')
   drop table EDU_ZZJX_50_A17_PJXSPJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_50_A21_XKJGFXPZ')
            and   type = 'U')
   drop table EDU_ZZJX_50_A21_XKJGFXPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_51_A01_YXKKC')
            and   type = 'U')
   drop table EDU_ZZJX_51_A01_YXKKC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_51_A02_XSYXKJL')
            and   type = 'U')
   drop table EDU_ZZJX_51_A02_XSYXKJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_55_A01_FZXX')
            and   type = 'U')
   drop table EDU_ZZJX_55_A01_FZXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_55_A02_XFPD')
            and   type = 'U')
   drop table EDU_ZZJX_55_A02_XFPD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_55_A03_JDPD')
            and   type = 'U')
   drop table EDU_ZZJX_55_A03_JDPD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_55_A04_ZYKCK')
            and   type = 'U')
   drop table EDU_ZZJX_55_A04_ZYKCK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_55_A05_KCPFLX')
            and   type = 'U')
   drop table EDU_ZZJX_55_A05_KCPFLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_55_A06_KCPFXM')
            and   type = 'U')
   drop table EDU_ZZJX_55_A06_KCPFXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_55_A07_ZYJXJH')
            and   type = 'U')
   drop table EDU_ZZJX_55_A07_ZYJXJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_55_A08_NJJXJH')
            and   type = 'U')
   drop table EDU_ZZJX_55_A08_NJJXJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_55_A09_XFLX')
            and   type = 'U')
   drop table EDU_ZZJX_55_A09_XFLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_55_A10_CJMX')
            and   type = 'U')
   drop table EDU_ZZJX_55_A10_CJMX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_55_A11_CJHZ')
            and   type = 'U')
   drop table EDU_ZZJX_55_A11_CJHZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_55_A12_BKCJ')
            and   type = 'U')
   drop table EDU_ZZJX_55_A12_BKCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_55_A90_XFHASH')
            and   type = 'U')
   drop table EDU_ZZJX_55_A90_XFHASH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_56_A01_Record')
            and   type = 'U')
   drop table EDU_ZZJX_56_A01_Record
go
--רҵ������Ϣ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_01_01_ZYXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_01_01_ZYXX](
	[ZYBH]  int  NOT NULL,--רҵ���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ZYDM]  nvarchar(6)  NULL,--רҵ����
	[ZYMC]  nvarchar(50)  NOT NULL,--רҵ����
	[ZYYWMC]  nvarchar(100)  NULL,--רҵӢ������
	[XZ]  nvarchar(20)  NOT NULL,--ѧ��
	[ZYFXMC]  nvarchar(100)  NOT NULL,--רҵ��������
	[ZYJC]  nvarchar(100)  NOT NULL,--רҵ���
	[JLNY]  nvarchar(6)  NOT NULL,--��������
	[ZYJSS]  decimal(3, 0)  NULL,--רҵ��ʦ��
	[KSJGH]  nvarchar(6)  NOT NULL,--���������
	[ZXF]  nvarchar(10)  NOT NULL,--��ѧ��
	[SSZYML]  nvarchar(1)  NULL,--����רҵĿ¼
	[ZYLB]  nvarchar(50)  NOT NULL,--רҵ�������
	[XXZ]  int  NOT NULL,--��ѧ��
	[XZXF]  decimal(6, 2)  NOT NULL,--����ѧ��
	[PYMB]  nvarchar(200)  NOT NULL,--����Ŀ��
	[PYGG]  nvarchar(200)  NOT NULL,--�������
	[ZKS]  int  NOT NULL,--�ܿ�ʱ
	[SFSY]  int  NOT NULL,--�Ƿ�ʹ��
CONSTRAINT [PK_EDU_ZZJX_01_01_ZYXX] PRIMARY KEY CLUSTERED
(
	[ZYBH] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�γ����۱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_01_A01_KCPJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_01_A01_KCPJ](
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[PJID]  int  NOT NULL,--����ID
	[KXH]  int  NOT NULL,--�����
	[PJR]  nvarchar(20)  NOT NULL,--������
	[PJSJ]  datetime  NOT NULL,--����ʱ��
	[PJNR]  text  NOT NULL,--��������
	[HF]  text  NOT NULL,--�ظ�
CONSTRAINT [PK_EDU_ZZJX_01_A01_KCPJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[PJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�γ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_01_02_KC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_01_02_KC](
	[KCH]  nvarchar(6)  NOT NULL,--�γ̺�
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[KCMC]  nvarchar(100)  NOT NULL,--�γ�����
	[KCYWM]  nvarchar(100)  NULL,--�γ�Ӣ����
	[KCBM]  nvarchar(100)  NULL,--�γ̱���
	[KCJS]  nvarchar(200)  NULL,--�γ̽���
	[XF]  decimal(2, 1)  NOT NULL,--ѧ��
	[ZXS]  decimal(2, 0)  NOT NULL,--��ѧʱ
	[LLXS]  decimal(2, 0)  NOT NULL,--����ѧʱ
	[SJXS]  decimal(2, 0)  NOT NULL,--ʵ��ѧʱ
	[QTXS]  decimal(2, 0)  NOT NULL,--����ѧʱ
	[CKSM]  text  NULL,--�ο���Ŀ
	[KKDW]  nvarchar(6)  NULL,--���ε�λ
	[KSXS]  nvarchar(1)  NOT NULL,--������ʽ
	[SKFSM]  nvarchar(1)  NOT NULL,--�ڿη�ʽ��
	[KCFY]  money  NULL,--�γ̷���
CONSTRAINT [PK_EDU_ZZJX_01_02_KC] PRIMARY KEY CLUSTERED
(
	[KCH] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ�οα�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_01_A02_JSRK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_01_A02_JSRK](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[KXH]  int  NOT NULL,--�����
	[JSID]  int  NOT NULL,--��ʦ��ID
	[KCH]  nvarchar(6)  NOT NULL,--�γ̺�
	[JHBH]  nvarchar(5)  NOT NULL,--�ƻ����
	[XQID]  int  NOT NULL,--ѧ��ID
	[JXDG]  text  NOT NULL,--��ѧ���
	[KCQDID]  int  NOT NULL,--�γ��嵥ID
	[SFZRLS]  nvarchar(1)  NOT NULL,--�Ƿ�������ʦ
	[ZYXXID]  int  NOT NULL,--רҵID
	[NJID]  nvarchar(4)  NOT NULL,--�꼶ID
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
CONSTRAINT [PK_EDU_ZZJX_01_A02_JSRK] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧУ�꼶���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_02_01_ZZNJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_02_01_ZZNJ](
	[NJDM]  nvarchar(4)  NOT NULL,--�꼶����
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[NJMC]  nvarchar(10)  NOT NULL,--�꼶����
	[SSNF]  nvarchar(4)  NOT NULL,--�������
	[NJZT]  nvarchar(1)  NOT NULL,--�꼶״̬
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZZJX_02_01_ZZNJ] PRIMARY KEY CLUSTERED
(
	[NJDM] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧУ�༶���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_02_02_ZZBJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_02_02_ZZBJ](
	[XZBDM]  nvarchar(10)  NOT NULL,--���������
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ZYXXID]  int  NOT NULL,--רҵ������Ϣ
	[ZZNJID]  nvarchar(4)  NOT NULL,--ѧУ�꼶���ݱ�
	[XZBMC]  nvarchar(50)  NOT NULL,--����������
	[JBNY]  nvarchar(6)  NOT NULL,--��������
	[BZRGH]  nvarchar(20)  NULL,--�����ι���
	[JSBH]  nvarchar(10)  NULL,--���ұ��
	[NANSRS]  decimal(4, 0)  NULL,--��������
	[NVSRS]  decimal(4, 0)  NULL,--Ů������
	[ZRS]  decimal(4, 0)  NULL,--������
	[BZXH]  nvarchar(20)  NULL,--�೤ѧ��
	[JXJH]  text  NOT NULL,--��ѧ�ƻ�
	[JGH]  nvarchar(6)  NOT NULL,--������
	[XQDM]  nvarchar(2)  NOT NULL,--У������
	[BZRID]  int  NULL,--������ID
	[PLSX]  int  NOT NULL,--����˳��
	[FullClassName]  nvarchar(50)  NOT NULL,--�����༶����
	[RecordID]  int  NOT NULL,--��¼ID
CONSTRAINT [PK_EDU_ZZJX_02_02_ZZBJ] PRIMARY KEY CLUSTERED
(
	[XZBDM] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����ѧ�ƻ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_03_01_ZTJXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_03_01_ZTJXJH](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JHBH]  nvarchar(5)  NOT NULL,--�ƻ����
	[JHNJ]  nvarchar(4)  NOT NULL,--�ƻ��꼶
	[ZYXXID]  int  NOT NULL,--רҵID
	[JHZYMC]  nvarchar(50)  NULL,--�ƻ�רҵ����
	[ZXFYQ]  decimal(3, 0)  NOT NULL,--��ѧ��Ҫ��
	[JLNY]  nvarchar(6)  NULL,--��������
	[SYXZ]  decimal(3, 1)  NULL,--����ѧ��
	[PYMB]  text  NULL,--����Ŀ��
	[SFKY]  nvarchar(1)  NOT NULL,--�Ƿ����
	[FJ]  text  NULL,--����
	[ZYRS]  int  NOT NULL,--רҵ����
CONSTRAINT [PK_EDU_ZZJX_03_01_ZTJXJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��ѧ�ֹ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_03_A01_XQXFGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_03_A01_XQXFGL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JXJHID]  int  NOT NULL,--��ѧ�ƻ�ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[JHBH]  nvarchar(5)  NOT NULL,--�ƻ����
	[ZDXF]  decimal(3, 1)  NULL,--���ѧ��
	[ZGXF]  decimal(3, 1)  NOT NULL,--���ѧ��
CONSTRAINT [PK_EDU_ZZJX_03_A01_XQXFGL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ѧ�ƻ�����ѧ��Ҫ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_03_02_JXJHFLXFYQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_03_02_JXJHFLXFYQ](
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[KCFLM]  nvarchar(1)  NOT NULL,--�γ̷�����
	[JXJHID]  int  NOT NULL,--��ѧ�ƻ�ID
	[XFYQ]  decimal(2, 1)  NOT NULL,--ѧ��Ҫ��
	[JHBH]  nvarchar(5)  NOT NULL,--�ƻ����
CONSTRAINT [PK_EDU_ZZJX_03_02_JXJHFLXFYQ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCFLM] ASC,
	[JHBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ѧ�ƻ��γ��嵥���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_03_03_JXJHKCQD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_03_03_JXJHKCQD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JXJHID]  int  NOT NULL,--��ѧ�ƻ�ID
	[KCH]  nvarchar(6)  NOT NULL,--�γ̺�
	[JHBH]  nvarchar(5)  NOT NULL,--�ƻ����
	[XQID]  int  NOT NULL,--ѧ��ID
	[KCMC]  nvarchar(100)  NOT NULL,--�γ�����
	[YXKC]  nvarchar(200)  NULL,--Ԥ�޿γ�
	[SFHXKC]  nvarchar(1)  NULL,--�Ƿ���ģ��Ǹɣ�
	[KCFLM]  nvarchar(1)  NOT NULL,--�γ̷�����
	[KCSXM]  nvarchar(1)  NOT NULL,--�γ�������
	[ZXXQ]  decimal(2, 0)  NOT NULL,--ִ��ѧ��
	[ZKS]  int  NOT NULL,--�ܿ�ʱ
	[LLKS]  int  NOT NULL,--���ۿ�ʱ
	[SJKS]  int  NOT NULL,--ʵ����ʱ
	[XF]  decimal(4, 1)  NOT NULL,--ѧ��
	[XFRDHGX]  decimal(5, 1)  NOT NULL,--ѧ���϶��ϸ���
	[JXDG]  text  NULL,--��ѧ���
CONSTRAINT [PK_EDU_ZZJX_03_03_JXJHKCQD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�̲Ļ�����Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_04_01_JCJBXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_04_01_JCJBXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JCDM]  nvarchar(13)  NOT NULL,--�̲Ĵ���
	[JCMC]  nvarchar(60)  NOT NULL,--�̲�����
	[CBH]  nvarchar(30)  NULL,--�����
	[DYZZ]  nvarchar(30)  NOT NULL,--��һ����
	[QTZZ]  nvarchar(90)  NULL,--��������
	[BC]  nvarchar(30)  NOT NULL,--���
	[YC]  nvarchar(2)  NULL,--ӡ��
	[JG]  decimal(8, 2)  NULL,--�۸�
	[CBS]  nvarchar(180)  NULL,--������
	[CBRQ]  nvarchar(8)  NULL,--��������
	[SFYLXC]  nvarchar(1)  NULL,--�Ƿ�����ϰ��
	[SFYJCJF]  nvarchar(1)  NULL,--�Ƿ��н̲ν̸�
	[NRJJ]  text  NULL,--���ݼ��
	[DQZT]  int  NOT NULL,--��ǰ״̬
	[ZDKC]  int  NOT NULL,--��Ϳ��
	[DQKC]  int  NOT NULL,--��ǰ���
CONSTRAINT [PK_EDU_ZZJX_04_01_JCJBXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�̲�ѡ����Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_04_02_JCXYXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_04_02_JCXYXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZYXXID]  int  NOT NULL,--רҵID
	[NJID]  nvarchar(4)  NOT NULL,--�꼶ID
	[KCID]  nvarchar(6)  NOT NULL,--�γ�ID
	[JCID]  int  NULL,--�̲�ID
	[XYSL]  int  NOT NULL,--ѡ������
	[SQRID]  int  NOT NULL,--������ID
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SHZT]  int  NOT NULL,--���״̬
	[SHRID]  int  NOT NULL,--�����ID
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[SFRK]  nvarchar(1)  NOT NULL,--�Ƿ����
CONSTRAINT [PK_EDU_ZZJX_04_02_JCXYXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�̲����ü�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_04_A03_JCLYJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_04_A03_JCLYJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZYXXID]  int  NOT NULL,--רҵID
	[NJID]  nvarchar(4)  NOT NULL,--�꼶ID
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[JCID]  int  NOT NULL,--�̲�ID
	[LYSL]  int  NOT NULL,--��������
	[LYR]  nvarchar(36)  NOT NULL,--������
	[LYSJ]  datetime  NOT NULL,--����ʱ��
	[JSRID]  int  NOT NULL,--������ID
CONSTRAINT [PK_EDU_ZZJX_04_A03_JCLYJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�̲ķ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_04_A05_JCFK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_04_A05_JCFK](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[JCID]  int  NULL,--�̲�ID
	[FKXX]  text  NOT NULL,--������Ϣ
	[FKSJ]  datetime  NOT NULL,--����ʱ��
	[FKJSID]  int  NOT NULL,--������ʦID
CONSTRAINT [PK_EDU_ZZJX_04_A05_JCFK] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�̲ı��ϱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_04_A06_JCBF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_04_A06_JCBF](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[JCID]  int  NULL,--�̲�ID
	[BFSL]  int  NOT NULL,--��������
	[BFYY]  text  NOT NULL,--����ԭ��
	[BFSJ]  datetime  NOT NULL,--����ʱ��
	[JSRID]  int  NOT NULL,--������ID
CONSTRAINT [PK_EDU_ZZJX_04_A06_JCBF] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ��ѧ������ͳ�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_05_02_JSJXGZLTJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_05_02_JSJXGZLTJ](
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JSID]  int  NOT NULL,--��ʦID
	[XQID]  int  NOT NULL,--ѧ��ID
	[XQMC]  nvarchar(10)  NOT NULL,--ѧ������
	[JSXM]  nvarchar(36)  NOT NULL,--��ʦ����
	[RJKCMS]  decimal(4, 0)  NOT NULL,--�ν̿γ�����
	[LLZXS]  decimal(4, 0)  NOT NULL,--������ѧʱ
	[SJZXS]  decimal(4, 0)  NOT NULL,--ʵ����ѧʱ
	[QTZXS]  decimal(4, 0)  NOT NULL,--������ѧʱ
	[XSZS]  decimal(4, 0)  NOT NULL,--ѧ������
	[ZXFS]  decimal(5, 1)  NOT NULL,--��ѧ����
CONSTRAINT [PK_EDU_ZZJX_05_02_JSJXGZLTJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JSID] ASC,
	[XQID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ܷ���ȡ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_08_A01_DGFSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_08_A01_DGFSQ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[YJJE]  decimal(10, 3)  NOT NULL,--�ѽɽ��
	[JFRQ]  datetime  NULL,--�ɷ�����
	[SFYSH]  nvarchar(1)  NOT NULL,--�Ƿ������
	[SHRID]  int  NOT NULL,--�����ԱID
CONSTRAINT [PK_EDU_ZZJX_08_A01_DGFSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_09_A01_TKSQSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_09_A01_TKSQSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JSID]  int  NOT NULL,--��ʦ
	[KCID]  nvarchar(6)  NOT NULL,--�γ�
	[TKLXID]  int  NOT NULL,--��������ID
	[TKQQSZ]  int  NOT NULL,--����ǰ��ʼ��
	[TKQJSZ]  int  NOT NULL,--����ǰ������
	[TKQXQ]  int  NOT NULL,--����ǰ����
	[TKQSD]  int  NOT NULL,--����ǰʱ��
	[TKQJC]  int  NOT NULL,--����ǰ�ڴ�
	[TKHQSZ]  int  NOT NULL,--���κ���ʼ��
	[TKHJSZ]  int  NOT NULL,--���κ������
	[TKHXQ]  int  NOT NULL,--���κ�����
	[TKHSD]  int  NOT NULL,--���κ�ʱ��
	[TKHJC]  int  NOT NULL,--���κ�ڴ�
	[ZT]  int  NOT NULL,--��ǰ״̬
	[BZ]  text  NOT NULL,--��ע
	[SQSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_ZZJX_09_A01_TKSQSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_10_A01_LWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_10_A01_LWSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[LWMC]  nvarchar(100)  NOT NULL,--��������
	[LWZY]  nvarchar(100)  NOT NULL,--����ժҪ
	[LWNR]  text  NOT NULL,--��������
	[SCJSID]  int  NOT NULL,--�ϴ���ʦID
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
	[LWLXID]  int  NOT NULL,--��������ID
CONSTRAINT [PK_EDU_ZZJX_10_A01_LWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���л���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_10_A02_KYHDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_10_A02_KYHDSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[HDMC]  nvarchar(50)  NOT NULL,--�����
	[HDNR]  text  NOT NULL,--�����
	[SFFB]  nvarchar(1)  NOT NULL,--�Ƿ񷢲�
	[SCJSID]  int  NOT NULL,--�ϴ���ʦID
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
CONSTRAINT [PK_EDU_ZZJX_10_A02_KYHDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������Ϣ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_10_A03_CPXXSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_10_A03_CPXXSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[XXMC]  nvarchar(50)  NOT NULL,--��Ϣ����
	[XXNR]  text  NOT NULL,--��Ϣ����
	[SFFB]  nvarchar(1)  NOT NULL,--�Ƿ񷢲�
	[SCJSID]  int  NOT NULL,--�ϴ���ʦID
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
CONSTRAINT [PK_EDU_ZZJX_10_A03_CPXXSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_10_A04_KTSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_10_A04_KTSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[KTMC]  nvarchar(50)  NOT NULL,--��������
	[KTZT]  nvarchar(200)  NOT NULL,--��������
	[KTNR]  text  NOT NULL,--��������
	[SQJSID]  int  NOT NULL,--�����ʦID
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SHZT]  int  NOT NULL,--���״̬
	[SHJSID]  int  NOT NULL,--��˽�ʦID
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[JXZT]  int  NOT NULL,--����״̬
	[JXSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_ZZJX_10_A04_KTSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����׶����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_10_A05_KTJDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_10_A05_KTJDSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KTID]  int  NOT NULL,--����ID
	[JDMC]  nvarchar(50)  NOT NULL,--�׶�����
	[JDGZNR]  text  NOT NULL,--�׶ι�������
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
CONSTRAINT [PK_EDU_ZZJX_10_A05_KTJDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_10_A06_LWLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_10_A06_LWLX](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LXMC]  nvarchar(100)  NULL,--��������
CONSTRAINT [PK_EDU_ZZJX_10_A06_LWLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ҵ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_20_A01_QYGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_20_A01_QYGL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[Name]  nvarchar(50)  NOT NULL,--��ҵ����
	[UserName]  nvarchar(50)  NOT NULL,--�û���
	[Password]  nvarchar(64)  NOT NULL,--����
	[UserID]  int  NOT NULL,--�û���id(Ԥ��)
	[QYXZ]  nvarchar(200)  NOT NULL,--��ҵ����
	[QYGM]  nvarchar(200)  NOT NULL,--��֯��ģ
	[ZZJG]  nvarchar(200)  NOT NULL,--��֯����
	[ZYJYFW]  nvarchar(500)  NOT NULL,--��Ҫ��Ӫ��Χ
	[License]  nvarchar(50)  NOT NULL,--Ӫҵִ��
	[CompanyType]  int  NOT NULL,--��ҵ����
	[QYRS]  nvarchar(50)  NOT NULL,--��ҵ����
	[Regcapital]  nvarchar(50)  NOT NULL,--ע���ʽ�
	[PostNum]  nvarchar(50)  NOT NULL,--�ʱ�
	[Fox]  nvarchar(50)  NOT NULL,--����
	[Manager]  nvarchar(50)  NOT NULL,--������
	[Job]  nvarchar(50)  NOT NULL,--ְλ
	[Cellphone]  nvarchar(50)  NOT NULL,--�ֻ�����
	[OfficNum]  nvarchar(50)  NOT NULL,--��˾�绰
	[Email]  nvarchar(50)  NOT NULL,--�����ʼ�
	[qq]  nvarchar(50)  NOT NULL,--qq
	[MSN]  nvarchar(100)  NOT NULL,--msn
	[Address]  nvarchar(200)  NOT NULL,--��˾��ַ
	[Website]  nvarchar(200)  NOT NULL,--��ַ
	[GSJJ]  nvarchar(500)  NOT NULL,--��˾���
	[Status]  int  NOT NULL,--���״̬
CONSTRAINT [PK_EDU_ZZJX_20_A01_QYGL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--У�󻥶���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_20_A02_XQHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_20_A02_XQHD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ComID]  int  NOT NULL,--��ҵID
	[ReactionTime]  datetime  NOT NULL,--����ʱ��
	[AdviseToSchool]  text  NOT NULL,--��ҵ��ѧУ��������
	[AdviseToArt]  text  NOT NULL,--��ҵ��ѧ��ְҵ���ܽ���
	[OtherAdvise]  text  NOT NULL,--��������
	[Retroaction]  text  NOT NULL,--��������
	[AdviseToStudent]  text  NOT NULL,--ʵϰ���������Ľ���
CONSTRAINT [PK_EDU_ZZJX_20_A02_XQHD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��λ��Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_20_A03_GWXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_20_A03_GWXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ComID]  int  NOT NULL,--��ҵID
	[JobName]  nvarchar(50)  NOT NULL,--��λ����
	[WorkType]  nvarchar(100)  NOT NULL,--������ʽ
	[Sex]  nvarchar(100)  NOT NULL,--�Ա�Ҫ��
	[monthlypay]  nvarchar(100)  NOT NULL,--��λн��
	[LanguageRequire]  nvarchar(100)  NOT NULL,--����Ҫ��
	[WorkPlace]  nvarchar(100)  NOT NULL,--�����ص�
	[Computer]  nvarchar(100)  NOT NULL,--�����ˮƽ
	[ZPRS]  nvarchar(100)  NOT NULL,--��Ƹ����
	[education]  nvarchar(100)  NOT NULL,--ѧ��Ҫ��
	[Age]  nvarchar(100)  NOT NULL,--����Ҫ��
	[GWJJ]  text  NOT NULL,--��λ���
	[Major]  nvarchar(100)  NOT NULL,--רҵҪ��
	[Base]  text  NOT NULL,--�������
	[experience]  nvarchar(200)  NOT NULL,--��������
	[GWSHZT]  int  NOT NULL,--��λ���״̬
	[Status]  int  NOT NULL,--��λ��ǰ״̬
	[SFZD]  int  NOT NULL,--�Ƿ��ö�
	[QYMC]  nvarchar(50)  NOT NULL,--��ҵ����
	[FBSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_ZZJX_20_A03_GWXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰ�༶�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_21_A01_SXBJGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_21_A01_SXBJGL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[BJMC]  nvarchar(50)  NOT NULL,--�༶����
	[BZRID]  int  NOT NULL,--������ID
CONSTRAINT [PK_EDU_ZZJX_21_A01_SXBJGL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰ�������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_21_A02_SXSGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_21_A02_SXSGL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SZBID]  int  NOT NULL,--ʵϰ��ID
	[StuID]  int  NOT NULL,--ѧ��ID
	[ZT]  int  NOT NULL,--ʵϰ��״̬
	[SFSJSXXYS]  int  NOT NULL,--�Ƿ��Ͻ�ʵϰЭ����
	[SXSXM]  nvarchar(36)  NOT NULL,--ʵϰ������
	[XQID]  int  NOT NULL,--ѧ��ID
	[DQSXGWID]  int  NOT NULL,--��ǰʵϰ��λID
	[ZGCS]  int  NOT NULL,--ת�ڴ���
CONSTRAINT [PK_EDU_ZZJX_21_A02_SXSGL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰ��λ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_21_A03_SXGW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_21_A03_SXGW](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SXSID]  int  NOT NULL,--ʵϰ��ID
	[JobID]  int  NOT NULL,--��λID
	[TypeID]  int  NOT NULL,--¼ȡ����
	[BZRSHZT]  int  NOT NULL,--���������״̬
	[QYSHZT]  int  NOT NULL,--��ҵ���״̬
	[TGLY]  text  NOT NULL,--�˸�����
	[ZT]  int  NOT NULL,--״̬
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SQSHSJ]  datetime  NOT NULL,--�������ʱ��
	[SQTGSJ]  datetime  NOT NULL,--�����˸�ʱ��
	[TGSHSJ]  datetime  NOT NULL,--�˸����ʱ��
CONSTRAINT [PK_EDU_ZZJX_21_A03_SXGW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰ��¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A01_SXJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A01_SXJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SXSID]  int  NOT NULL,--ʵϰ��ID
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[SXNR]  text  NOT NULL,--ʵϰ����
	[SXFS]  text  NOT NULL,--ʵϰ��˼
	[ZWPD]  int  NOT NULL,--��������
	[ZDSFXM]  nvarchar(50)  NOT NULL,--ָ��ʦ������
	[ZDSFPY]  text  NOT NULL,--ָ��ʦ������
	[ZDSFPDSJ]  datetime  NOT NULL,--ָ��ʦ������ʱ��
	[ZFPD]  int  NOT NULL,--ʦ������
	[ZDJSXM]  nvarchar(50)  NOT NULL,--ָ����ʦ����
	[ZDJSPY]  text  NOT NULL,--ָ����ʦ����
	[ZDJSPDSJ]  datetime  NOT NULL,--ָ����ʦ����ʱ��
	[JSPD]  int  NOT NULL,--��ʦ����
CONSTRAINT [PK_EDU_ZZJX_22_A01_SXJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰΥ�¼�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A03_SXWZJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A03_SXWZJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ComID]  int  NOT NULL,--��ҵID
	[SXSID]  int  NOT NULL,--ʵϰ��ID
	[WzTime]  datetime  NOT NULL,--Υ��ʱ��
	[WGWZJL]  nvarchar(300)  NOT NULL,--Υ��Υ�¼�¼
	[JYJXJGJCS]  nvarchar(300)  NOT NULL,--�����ѵ���Ľ���ʩ
CONSTRAINT [PK_EDU_ZZJX_22_A03_SXWZJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰ������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A04_SXJD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A04_SXJD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SXSID]  int  NOT NULL,--ʵϰ��ID
	[XF]  int  NOT NULL,--ѧ��
	[SFHZ]  int  NOT NULL,--�Ƿ����
	[JDRID]  int  NOT NULL,--������ID
	[SXJDCL]  text  NOT NULL,--ʵϰ��������
CONSTRAINT [PK_EDU_ZZJX_22_A04_SXJD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰͶ�߱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A05_SXTS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A05_SXTS](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ComID]  int  NOT NULL,--��ҵID
	[SXSID]  int  NOT NULL,--ʵϰ��ID
	[TsTime]  datetime  NOT NULL,--Ͷ��ʱ��
	[TsReason]  text  NOT NULL,--Ͷ��ԭ��
	[TsResult]  text  NOT NULL,--Ͷ�߽��
	[ComSuggest]  text  NOT NULL,--Ͷ�߽���
	[TypeID]  int  NOT NULL,--Ͷ������
CONSTRAINT [PK_EDU_ZZJX_22_A05_SXTS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰ��־��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A06_SXRZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A06_SXRZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SXSID]  int  NOT NULL,--ʵϰ��ID
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[RZBT]  nvarchar(50)  NOT NULL,--��־����
	[RZNR]  text  NOT NULL,--��־����
CONSTRAINT [PK_EDU_ZZJX_22_A06_SXRZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰ�߷ü�¼
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A07_ZFJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A07_ZFJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SXSID]  int  NOT NULL,--ʵϰ��ID
	[JSID]  int  NOT NULL,--��ʦID
	[ZFSJ]  datetime  NOT NULL,--�߷�ʱ��
	[ZFJL]  text  NOT NULL,--�߷ü�¼
CONSTRAINT [PK_EDU_ZZJX_22_A07_ZFJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A08_SXSJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A08_SXSJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SXSID]  int  NOT NULL,--ʵϰ��ID
	[JLMC]  nvarchar(50)  NOT NULL,--��������
	[JLNR]  text  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZZJX_22_A08_SXSJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ͷ�ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A09_JLTD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A09_JLTD](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SXSID]  int  NOT NULL,--ʵϰ��ID
	[ComID]  int  NOT NULL,--��ҵID
	[GWID]  int  NOT NULL,--��λID
	[JLNR]  text  NOT NULL,--��������
	[TDSJ]  datetime  NOT NULL,--Ͷ��ʱ��
	[SFCK]  int  NOT NULL,--�Ƿ�鿴
	[FKNR]  text  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZZJX_22_A09_JLTD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰ�±���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A10_SXYB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A10_SXYB](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SXSID]  int  NOT NULL,--ʵϰ��ID
	[GWXXID]  int  NOT NULL,--��λ��ϢID
	[GZXJ]  text  NOT NULL,--����С��
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[ZDSFXM]  nvarchar(50)  NOT NULL,--ָ��ʦ������
	[ZDSFPY]  nvarchar(500)  NOT NULL,--ָ��ʦ������
	[SFDH]  nvarchar(20)  NOT NULL,--ʦ���绰
	[SFPD]  int  NOT NULL,--ʦ������
	[ZDSFPDSJ]  datetime  NOT NULL,--ָ��ʦ������ʱ��
CONSTRAINT [PK_EDU_ZZJX_22_A10_SXYB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰÿ�¿��ڼ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A11_SXMYKQJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A11_SXMYKQJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SXSID]  int  NOT NULL,--ʵϰ��ID
	[QYID]  int  NOT NULL,--��ҵID
	[SJ]  datetime  NOT NULL,--ʱ��
	[SJGR]  decimal(4, 1)  NOT NULL,--ʵ�ʹ���
	[SJTS]  decimal(4, 1)  NOT NULL,--�¼�����
	[KGTS]  decimal(4, 1)  NOT NULL,--��������
	[BJTS]  decimal(4, 1)  NOT NULL,--��������
	[GXTS]  decimal(4, 1)  NOT NULL,--��������
	[CDTS]  decimal(4, 1)  NOT NULL,--�ٵ�����
	[ZTTS]  decimal(4, 1)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZZJX_22_A11_SXMYKQJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�¶Ȼ��ܼ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A12_YDHZJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A12_YDHZJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SXBID]  int  NOT NULL,--ʵϰ��ID
	[HZNR]  text  NOT NULL,--��������
	[TJSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZZJX_22_A12_YDHZJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�¶�������Ŀ���ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A13_YDPDZDPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A13_YDPDZDPZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ZDMC]  nvarchar(50)  NOT NULL,--��Ŀ����
	[SFSY]  int  NOT NULL,--�Ƿ�ʹ��
	[BZRNFTX]  int  NOT NULL,--�������ܷ���д
	[SXCNFTX]  int  NOT NULL,--ʵѵ���ܷ���д
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZZJX_22_A13_YDPDZDPZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�¶�������¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A14_YDPDJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A14_YDPDJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SXSID]  int  NOT NULL,--ʵϰ��ID
	[ZDPZID]  int  NOT NULL,--�ֶ�����ID
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[JG]  text  NOT NULL,--���
	[PDJSID]  int  NOT NULL,--������ʦID
CONSTRAINT [PK_EDU_ZZJX_22_A14_YDPDJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ʵϰ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_23_A01_DGSXYQLJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_23_A01_DGSXYQLJLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[NAME]  nvarchar(50)  NOT NULL,--������
CONSTRAINT [PK_EDU_ZZJX_23_A01_DGSXYQLJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ʵϰ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_23_A02_DGSXYQLJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_23_A02_DGSXYQLJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[YQLJLXID]  int  NOT NULL,--������������ID
	[TITLE]  nvarchar(50)  NOT NULL,--����
	[IMAGEURL]  nvarchar(500)  NULL,--ͼƬ
	[URL]  nvarchar(300)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZZJX_23_A02_DGSXYQLJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ʵϰ�Ż���Ŀ
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_23_A03_DGSXMHLM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_23_A03_DGSXMHLM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LMMC]  nvarchar(50)  NOT NULL,--��Ŀ����
	[LMLJ]  nvarchar(300)  NOT NULL,--��Ŀ����
	[CJ]  int  NOT NULL,--�㼶
	[FLMID]  int  NOT NULL,--����ĿID
	[SFQY]  int  NOT NULL,--�Ƿ�����
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZZJX_23_A03_DGSXMHLM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ʵϰ�Ż�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_23_A04_DGSXMHWZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_23_A04_DGSXMHWZ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LMID]  int  NOT NULL,--��ĿID
	[BT]  nvarchar(100)  NOT NULL,--����
	[FBR]  nvarchar(50)  NOT NULL,--������
	[ZZ]  nvarchar(50)  NOT NULL,--����
	[ZZBM]  nvarchar(50)  NOT NULL,--���߲���
	[FBSJ]  datetime  NOT NULL,--����ʱ��
	[ZY]  text  NOT NULL,--ժҪ
	[NR]  text  NOT NULL,--����
	[TP]  nvarchar(300)  NULL,--ͼƬ
	[DJL]  int  NOT NULL,--�����
	[SHZT]  int  NOT NULL,--���״̬
	[SHRID]  nvarchar(20)  NOT NULL,--�����ID
	[SHR]  nvarchar(50)  NOT NULL,--�����
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[ZDYXJ]  int  NOT NULL,--�ö����ȼ�
CONSTRAINT [PK_EDU_ZZJX_23_A04_DGSXMHWZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ʵϰ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_23_A05_DGSXXZZL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_23_A05_DGSXXZZL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BT]  nvarchar(100)  NOT NULL,--����
	[FBR]  nvarchar(50)  NOT NULL,--������
	[FBSJ]  datetime  NOT NULL,--����ʱ��
	[NR]  text  NOT NULL,--����
CONSTRAINT [PK_EDU_ZZJX_23_A05_DGSXXZZL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ұ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_30_A01_CLASSROOM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_30_A01_CLASSROOM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[Name]  nvarchar(128)  NOT NULL,--��������
	[Place]  nvarchar(128)  NOT NULL,--�ص�
	[Counts]  int  NOT NULL,--��λ��
	[FullPlaceName]  nvarchar(50)  NOT NULL,--�����ص�����
	[RecordID]  int  NOT NULL,--��¼ID
CONSTRAINT [PK_EDU_ZZJX_30_A01_CLASSROOM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_30_A02_EXAMROOM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_30_A02_EXAMROOM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[Name]  nvarchar(128)  NOT NULL,--��������
	[RoomID]  int  NOT NULL,--����ID
	[ExamID]  int  NOT NULL,--����ID
	[StuCount]  int  NOT NULL,--������������
CONSTRAINT [PK_EDU_ZZJX_30_A02_EXAMROOM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ʱ�����ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_31_A01_KSSDLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_31_A01_KSSDLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[TypeName]  nvarchar(128)  NOT NULL,--������
	[StartTime]  nvarchar(128)  NOT NULL,--��ʼʱ��
	[EndTime]  nvarchar(128)  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_ZZJX_31_A01_KSSDLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���Գ��α�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_31_A02_KSCC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_31_A02_KSCC](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ExamID]  int  NOT NULL,--����ID
	[Name]  nvarchar(128)  NOT NULL,--��������
	[TypeID]  int  NOT NULL,--����ʱ������
	[ExamDate]  datetime  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZZJX_31_A02_KSCC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���Ա�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_32_A01_EXAM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_32_A01_EXAM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[Name]  nvarchar(128)  NOT NULL,--��������
	[CJKSKMLM]  text  NOT NULL,--�μӿ��Կ�Ŀ�б�
	[StartDate]  datetime  NOT NULL,--��ʼ����
	[EndDate]  datetime  NOT NULL,--��ֹ����
	[XqID]  int  NOT NULL,--ѧ��ID
	[DffsID]  int  NOT NULL,--�Ƿַ�ʽ
CONSTRAINT [PK_EDU_ZZJX_32_A01_EXAM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--רҵ�γ��ſ������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_32_A02_ZYKCPKJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_32_A02_ZYKCPKJG](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ExamID]  int  NOT NULL,--����ID
	[EXAMROOMID]  int  NOT NULL,--����ID
	[CCID]  int  NOT NULL,--����ID
	[KCQDID]  int  NOT NULL,--���Կ�ĿID
	[ZYXXID]  int  NOT NULL,--רҵID
	[NJID]  nvarchar(4)  NOT NULL,--�꼶ID
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[CKRS]  int  NOT NULL,--�ο�����
	[SKRS]  int  NOT NULL,--ʵ������
	[ZJKLSID]  int  NOT NULL,--���࿼��ʦID
	[FJKLSID]  int  NOT NULL,--���࿼��ʦID
CONSTRAINT [PK_EDU_ZZJX_32_A02_ZYKCPKJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���ſ������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_32_A03_XSPKJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_32_A03_XSPKJG](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KCPKID]  int  NOT NULL,--רҵ�γ��ſ����ID
	[ExamID]  int  NOT NULL,--����ID
	[EXAMROOMID]  int  NOT NULL,--����ID
	[CCID]  int  NOT NULL,--����ID
	[KCQDID]  int  NOT NULL,--���Կ�ĿID
	[StudentID]  int  NOT NULL,--ѧ��ID
	[SeatID]  int  NOT NULL,--��λ��
	[AdmissionID]  nvarchar(24)  NOT NULL,--׼��֤��
	[ZYXXID]  int  NOT NULL,--רҵID
	[NJID]  nvarchar(4)  NOT NULL,--�꼶ID
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[KSSDLXID]  int  NOT NULL,--����ʱ������ID
CONSTRAINT [PK_EDU_ZZJX_32_A03_XSPKJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ľ��ű�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_33_A01_YJAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_33_A01_YJAP](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ZYKCPKJGID]  int  NOT NULL,--רҵ�γ��ſ����ID
	[TeacherID]  int  NOT NULL,--�ľ��ʦID
	[ExamID]  int  NOT NULL,--����ID
	[EXAMROOMID]  int  NOT NULL,--����ID
	[CCID]  int  NOT NULL,--����ID
	[ZYXXID]  int  NOT NULL,--רҵID
	[NJID]  nvarchar(4)  NOT NULL,--�꼶ID
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[KCQDID]  int  NOT NULL,--���Կ�ĿID
	[YJFS]  int  NOT NULL,--�ľ�ʽ
CONSTRAINT [PK_EDU_ZZJX_33_A01_YJAP] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���γ�ѧ�ֱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_34_A01_XSKCXF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_34_A01_XSKCXF](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[StudentID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZYXXID]  int  NOT NULL,--רҵID
	[NJID]  nvarchar(4)  NOT NULL,--�꼶ID
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[KCQDID]  int  NOT NULL,--���Կ�ĿID
	[XF]  decimal(4, 1)  NOT NULL,--���ѧ��
CONSTRAINT [PK_EDU_ZZJX_34_A01_XSKCXF] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����С��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_35_A01_TKXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_35_A01_TKXZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XZMC]  nvarchar(100)  NOT NULL,--С������
	[XZCY]  text  NOT NULL,--С���Ա
	[XZCYMC]  text  NOT NULL,--С���Ա����
CONSTRAINT [PK_EDU_ZZJX_35_A01_TKXZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_35_A02_GKKSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_35_A02_GKKSQ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KCMC]  nvarchar(100)  NOT NULL,--�γ�����
	[SKSJ]  datetime  NOT NULL,--�Ͽ�ʱ��
	[SKDD]  nvarchar(100)  NOT NULL,--�Ͽεص�
	[KCJJ]  text  NOT NULL,--�γ̼��
	[TKXZID]  int  NOT NULL,--����С��ID
	[SHZT]  int  NOT NULL,--���״̬
	[SFGS]  int  NOT NULL,--�Ƿ�ʾ
	[SQRID]  int  NOT NULL,--������ID
	[SHRID]  nvarchar(20)  NOT NULL,--�����ID
	[RJXK]  nvarchar(20)  NOT NULL,--�ν�ѧ��
	[XQ]  nvarchar(20)  NOT NULL,--����
	[JC]  nvarchar(20)  NOT NULL,--�ڴ�
	[KCBJ]  nvarchar(30)  NOT NULL,--���ΰ༶
CONSTRAINT [PK_EDU_ZZJX_35_A02_GKKSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ϰ�ƻ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_36_A01_JXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_36_A01_JXJH](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[JHMC]  nvarchar(100)  NOT NULL,--�ƻ�����
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[JXDWID]  int  NOT NULL,--��ϰ��λ
	[JXNR]  text  NOT NULL,--��ϰ����
	[JXXS]  text  NOT NULL,--��ϰѧ��
	[SFKQ]  int  NOT NULL,--�Ƿ���
CONSTRAINT [PK_EDU_ZZJX_36_A01_JXJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ϰ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_36_A02_JXBG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_36_A02_JXBG](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[JXJHID]  int  NOT NULL,--��ϰ�ƻ�ID
	[XSXXID]  int  NOT NULL,--ѧ����ϢID
	[BGNR]  text  NOT NULL,--��������
	[BGSJ]  datetime  NOT NULL,--����ʱ��
	[BGBT]  nvarchar(100)  NOT NULL,--�������
CONSTRAINT [PK_EDU_ZZJX_36_A02_JXBG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ϰ���۱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_36_A03_JXPJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_36_A03_JXPJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[JXJHID]  int  NOT NULL,--��ϰ�ƻ�ID
	[XSXXID]  int  NOT NULL,--ѧ����ϢID
	[PJNR]  text  NOT NULL,--��������
	[PJSJ]  datetime  NOT NULL,--����ʱ��
	[PJJSID]  int  NOT NULL,--���۽�ʦID
CONSTRAINT [PK_EDU_ZZJX_36_A03_JXPJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ܼ�����Ŀ
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_37_A01_JNJDXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_37_A01_JNJDXM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[JNMC]  nvarchar(100)  NOT NULL,--��������
	[JNZY]  nvarchar(100)  NOT NULL,--����רҵ
	[JNGZ]  nvarchar(100)  NOT NULL,--���ܹ���
	[JDJG]  nvarchar(100)  NOT NULL,--��������
	[SBZT]  int  NOT NULL,--�걨״̬
CONSTRAINT [PK_EDU_ZZJX_37_A01_JNJDXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ܼ�������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_37_A02_JNJDAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_37_A02_JNJDAP](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KSMC]  nvarchar(100)  NOT NULL,--��������
	[JDXMID]  int  NOT NULL,--������ĿID
	[KSSJ]  datetime  NOT NULL,--����ʱ��
	[KSDD]  text  NOT NULL,--���Եص�
	[KSXS]  text  NOT NULL,--����ѧ��
CONSTRAINT [PK_EDU_ZZJX_37_A02_JNJDAP] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ܼ����ɼ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_37_A03_JNJDCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_37_A03_JNJDCJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[JDXMID]  int  NOT NULL,--������ĿID
	[JNJDAPID]  int  NOT NULL,--���ܼ�������ID
	[XSXXID]  int  NOT NULL,--ѧ����ϢID
	[CJ]  int  NOT NULL,--�ɼ�
	[DJJSID]  int  NOT NULL,--�Ǽǽ�ʦID
	[DJSJ]  datetime  NOT NULL,--�Ǽ�ʱ��
CONSTRAINT [PK_EDU_ZZJX_37_A03_JNJDCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ְ��ѧ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_38_A01_ZZJXB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_38_A01_ZZJXB](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ZZXQID]  int  NOT NULL,--У��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZYXXID]  int  NOT NULL,--רҵID
	[NJID]  nvarchar(4)  NOT NULL,--�꼶ID
	[JXBMC]  nvarchar(100)  NOT NULL,--��ѧ�༶����
	[TEACHERID1]  int  NOT NULL,--������ʦID
	[TEACHERID2]  int  NOT NULL,--������ʦID
	[KCQDID]  int  NOT NULL,--�γ��嵥ID
	[KCH]  nvarchar(6)  NOT NULL,--�γ̺�
	[CLASSROOM]  int  NOT NULL,--����ID
	[ZDBJ]  text  NOT NULL,--ָ���༶
	[ZDBJMC]  text  NOT NULL,--ָ���༶����
	[RS]  int  NOT NULL,--����
	[T1NAME]  nvarchar(36)  NOT NULL,--������ʦ����
	[T2NAME]  nvarchar(36)  NOT NULL,--������ʦ����
	[SKFS]  int  NOT NULL,--�ڿη�ʽ
CONSTRAINT [PK_EDU_ZZJX_38_A01_ZZJXB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ְ�ſν����¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_38_A02_ZZPKJGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_38_A02_ZZPKJGJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ZZXQID]  int  NOT NULL,--У��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZYXXID]  int  NOT NULL,--רҵID
	[NJID]  nvarchar(4)  NOT NULL,--�꼶ID
	[JXBID]  int  NOT NULL,--��ѧ�༶ID
	[KCQDID]  int  NOT NULL,--�γ��嵥ID
	[KCH]  nvarchar(6)  NOT NULL,--�γ̺�
	[CLASSROOM]  int  NOT NULL,--����ID
	[ZZBJID]  nvarchar(10)  NOT NULL,--�����༶ID
	[WEEKDAY]  int  NOT NULL,--������ID
	[PERIOD]  int  NOT NULL,--ʱ��ID
	[SESSION]  int  NOT NULL,--�ڴ�ID
CONSTRAINT [PK_EDU_ZZJX_38_A02_ZZPKJGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѡ�ν����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_38_A03_XKJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_38_A03_XKJG](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[XQID]  int  NOT NULL,--ѧ��ID
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[JXBID]  int  NOT NULL,--��ѧ�༶ID
	[KCQDID]  int  NOT NULL,--�γ��嵥ID
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZZJX_38_A03_XKJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѡ�޿γ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_50_A01_XXKCLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_50_A01_XXKCLB](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LBMC]  nvarchar(100)  NOT NULL,--�������
	[JJ]  text  NOT NULL,--���
	[ZGTSXKSL]  int  NOT NULL,--���ͬʱѡ������
	[SFYXTMKCDX]  int  NOT NULL,--�Ƿ�����ͬ���γ̶�ѡ
CONSTRAINT [PK_EDU_ZZJX_50_A01_XXKCLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ʱ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_50_A02_KKSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_50_A02_KKSJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SKSJ]  nvarchar(50)  NOT NULL,--�Ͽ�ʱ��
	[SDIDLB]  text  NOT NULL,--ʱ��ID�б�
	[SDMCLB]  text  NOT NULL,--ʱ�������б�
CONSTRAINT [PK_EDU_ZZJX_50_A02_KKSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ѧ�����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_50_A03_JXBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_50_A03_JXBSJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XXKCLBID]  int  NOT NULL,--ѡ�޿γ����ID
	[KCMC]  nvarchar(50)  NOT NULL,--�γ�����
	[KCJS]  text  NOT NULL,--�γ̽���
	[JXJH]  text  NOT NULL,--��ѧ�ƻ�
	[ZKS]  int  NOT NULL,--�ܿ�ʱ
	[XF]  decimal(5, 1)  NOT NULL,--ѧ��
	[XQID]  int  NOT NULL,--ѧ��ID
	[NJID]  text  NOT NULL,--�꼶ID�б�
	[NJMCLB]  text  NOT NULL,--�꼶�����б�
	[DQZT]  int  NOT NULL,--��ǰ״̬
	[KKJSID]  int  NOT NULL,--���ν�ʦID
	[SKSJID]  int  NOT NULL,--�Ͽ�ʱ��ID
	[SKDD]  nvarchar(100)  NOT NULL,--�Ͽεص�
	[BJKRNRS]  int  NOT NULL,--�༶����������
	[ZDKBRS]  int  NOT NULL,--��Ϳ�������
	[BJIDLB]  text  NOT NULL,--�༶ID�б�
	[BJMCLB]  text  NOT NULL,--�༶�����б�
	[QTJSIDLB]  text  NOT NULL,--������ʦID�б�
	[QTJSMCLB]  text  NOT NULL,--������ʦ�����б�
	[WEEKKS]  int  NOT NULL,--�ܿ�ʱ
	[SKZCIDLB]  text  NOT NULL,--�Ͽ��ܴ�ID�б�
	[SKZCMCLB]  text  NOT NULL,--�Ͽ��ܴ������б�
CONSTRAINT [PK_EDU_ZZJX_50_A03_JXBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��ѡ�μ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_50_A04_XSXKJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_50_A04_XSXKJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSID]  int  NOT NULL,--ѧ��ID
	[JXBID]  int  NOT NULL,--��ѧ��ID
CONSTRAINT [PK_EDU_ZZJX_50_A04_XSXKJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��ѡ�޿γɼ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_50_A05_XSXXKCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_50_A05_XSXXKCJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSID]  int  NOT NULL,--ѧ��ID
	[JXBID]  int  NOT NULL,--��ѧ��ID
	[CJ]  decimal(5, 2)  NOT NULL,--�ɼ�
	[WBPJ]  nvarchar(50)  NOT NULL,--�ı�����
CONSTRAINT [PK_EDU_ZZJX_50_A05_XSXXKCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���õ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_50_A06_KTDMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_50_A06_KTDMB](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[JXBID]  int  NOT NULL,--��ѧ��ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[ZT]  int  NOT NULL,--״̬
	[SJ]  datetime  NOT NULL,--ʱ��
	[BZ]  nvarchar(100)  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZZJX_50_A06_KTDMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ѡ��ѧ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_50_A07_ECXKXS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_50_A07_ECXKXS](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[XSID]  int  NOT NULL,--ѧ��ID
CONSTRAINT [PK_EDU_ZZJX_50_A07_ECXKXS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѡ��ѧ�����̱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_50_A11_XKXSPJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_50_A11_XKXSPJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[PJMC]  nvarchar(50)  NOT NULL,--��������
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_ZZJX_50_A11_XKXSPJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ַ�ʽ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_50_A12_PJPFFS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_50_A12_PJPFFS](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[PFFSMC]  nvarchar(50)  NOT NULL,--���ַ�ʽ����
CONSTRAINT [PK_EDU_ZZJX_50_A12_PJPFFS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������ѡ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_50_A13_PJPFXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_50_A13_PJPFXX](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[PFFSID]  int  NOT NULL,--���ַ�ʽID
	[PFXXMC]  nvarchar(50)  NOT NULL,--����ѡ������
	[FZ]  int  NOT NULL,--��ֵ
CONSTRAINT [PK_EDU_ZZJX_50_A13_PJPFXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_50_A14_PJTM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_50_A14_PJTM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[PJID]  int  NOT NULL,--����ID
	[PFFSID]  int  NOT NULL,--���ַ�ʽID
	[TMMC]  nvarchar(200)  NOT NULL,--��Ŀ����
	[PJZB]  nvarchar(300)  NOT NULL,--����ָ��
CONSTRAINT [PK_EDU_ZZJX_50_A14_PJTM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���̽����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_50_A15_PJJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_50_A15_PJJG](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[PJID]  int  NOT NULL,--����ID
	[JXBID]  int  NOT NULL,--��ѧ��ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[TMID]  int  NOT NULL,--��ĿID
	[FZ]  int  NOT NULL,--��ֵ
	[PJJSID]  int  NOT NULL,--���۽�ʦID
CONSTRAINT [PK_EDU_ZZJX_50_A15_PJJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����ύ��¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_50_A16_PJTJJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_50_A16_PJTJJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[PJID]  int  NOT NULL,--����ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[TJSJ]  datetime  NOT NULL,--�ύʱ��
CONSTRAINT [PK_EDU_ZZJX_50_A16_PJTJJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ѧ�����۱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_50_A17_PJXSPJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_50_A17_PJXSPJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[PJID]  int  NOT NULL,--����ID
	[JXBID]  int  NOT NULL,--��ѧ��ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[PJNR]  text  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZZJX_50_A17_PJXSPJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѡ�ν���������ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_50_A21_XKJGFXPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_50_A21_XKJGFXPZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQ]  int  NOT NULL,--����
	[SFBXXK]  int  NOT NULL,--�Ƿ����ѡ��
	[XKSLSX]  int  NOT NULL,--ѡ����������
	[XKSLXX]  int  NOT NULL,--ѡ����������
CONSTRAINT [PK_EDU_ZZJX_50_A21_XKJGFXPZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--Ԥѡ�ογ̱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_51_A01_YXKKC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_51_A01_YXKKC](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KCMC]  nvarchar(50)  NOT NULL,--�γ�����
	[KKJSID]  int  NOT NULL,--���ν�ʦID
	[NJID]  nvarchar(200)  NOT NULL,--�꼶ID�б�
	[NJMCLB]  nvarchar(200)  NOT NULL,--�꼶�����б�
	[KCJS]  text  NOT NULL,--�γ̽���
CONSTRAINT [PK_EDU_ZZJX_51_A01_YXKKC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��Ԥѡ�μ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_51_A02_XSYXKJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_51_A02_XSYXKJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KCID]  int  NOT NULL,--�γ�ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[XKSJ]  datetime  NOT NULL,--ѡ��ʱ��
CONSTRAINT [PK_EDU_ZZJX_51_A02_XSYXKJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_55_A01_FZXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_55_A01_FZXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[FZMC]  nvarchar(20)  NOT NULL,--��������
	[ZDZ]  decimal(5, 2)  NOT NULL,--���ֵ
	[ZXZ]  decimal(5, 2)  NOT NULL,--��Сֵ
	[JGX]  decimal(5, 2)  NOT NULL,--������
	[MXF]  decimal(5, 2)  NOT NULL,--���޶�Ӧ��
	[MKF]  decimal(5, 2)  NOT NULL,--�⿼��Ӧ��
	[XFPDBIDLB]  text  NOT NULL,--ѧ��������ID�б�
	[JDPDBIDLB]  text  NOT NULL,--����������ID�б�
CONSTRAINT [PK_EDU_ZZJX_55_A01_FZXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_55_A02_XFPD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_55_A02_XFPD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[PDMC]  nvarchar(20)  NOT NULL,--��������
	[FSSX]  decimal(5, 2)  NOT NULL,--��������
	[FSXX]  decimal(5, 2)  NOT NULL,--��������
	[BL]  decimal(5, 2)  NOT NULL,--��ռ�γ�ѧ�ֱ���
	[PLSX]  int  NOT NULL,--����˳��
	[FZXXID]  int  NOT NULL,--������ϢID
CONSTRAINT [PK_EDU_ZZJX_55_A02_XFPD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_55_A03_JDPD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_55_A03_JDPD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[PDMC]  nvarchar(20)  NOT NULL,--��������
	[JCJD]  decimal(5, 2)  NOT NULL,--��������
	[FSSX]  decimal(5, 2)  NOT NULL,--��������
	[FSXX]  decimal(5, 2)  NOT NULL,--��������
	[LX]  int  NOT NULL,--����
	[JSGS]  int  NOT NULL,--���㹫ʽ
	[PLSX]  int  NOT NULL,--����˳��
	[FZXXID]  int  NOT NULL,--������ϢID
CONSTRAINT [PK_EDU_ZZJX_55_A03_JDPD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--רҵ�γ̿��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_55_A04_ZYKCK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_55_A04_ZYKCK](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ZYID]  int  NOT NULL,--רҵID
	[FZXXID]  int  NOT NULL,--������ϢID
	[KCPFLXID]  int  NOT NULL,--�γ���������ID
	[KCBH]  nvarchar(20)  NOT NULL,--�γ�����
	[ZXF]  decimal(5, 2)  NOT NULL,--��ѧ��
	[ZXS]  int  NOT NULL,--��ѧʱ
	[KKDW]  nvarchar(20)  NOT NULL,--���ε�λ
	[KSXS]  nvarchar(20)  NOT NULL,--������ʽ
	[SKFSM]  nvarchar(1)  NOT NULL,--�ڿη�ʽ��
	[JXDG]  text  NOT NULL,--��ѧ���
	[SFSY]  int  NOT NULL,--�Ƿ�ʹ��
	[FullCourseName]  nvarchar(50)  NOT NULL,--�����γ�����
	[RecordID]  int  NOT NULL,--��¼ID
CONSTRAINT [PK_EDU_ZZJX_55_A04_ZYKCK] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�γ��������ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_55_A05_KCPFLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_55_A05_KCPFLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LXMC]  nvarchar(20)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZZJX_55_A05_KCPFLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�γ�������Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_55_A06_KCPFXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_55_A06_KCPFXM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LXID]  int  NOT NULL,--����ID
	[FXMID]  int  NOT NULL,--����ĿID
	[XMMC]  nvarchar(20)  NOT NULL,--��Ŀ����
	[SFYZXM]  int  NOT NULL,--�Ƿ�������Ŀ
	[BL]  decimal(5, 2)  NOT NULL,--����
	[SFYXXG]  int  NOT NULL,--�Ƿ������޸�
	[XGSX]  decimal(5, 2)  NOT NULL,--�޸�����
	[XGXX]  decimal(5, 2)  NOT NULL,--�޸�����
	[LY]  nvarchar(20)  NOT NULL,--��Դ
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZZJX_55_A06_KCPFXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--רҵ��ѧ�ƻ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_55_A07_ZYJXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_55_A07_ZYJXJH](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ZYID]  int  NOT NULL,--רҵID
	[ZYKCKID]  int  NOT NULL,--רҵ�γ̿�ID
	[XQDH]  int  NOT NULL,--ѧ�ڴ���
	[XF]  decimal(5, 2)  NOT NULL,--ѧ��
	[KS]  int  NOT NULL,--��ʱ
CONSTRAINT [PK_EDU_ZZJX_55_A07_ZYJXJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�꼶��ѧ�ƻ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_55_A08_NJJXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_55_A08_NJJXJH](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZYID]  int  NOT NULL,--רҵID
	[NJID]  nvarchar(4)  NOT NULL,--�꼶ID
	[ZYKCKID]  int  NOT NULL,--רҵ�γ̿�ID
	[XF]  decimal(5, 2)  NOT NULL,--ѧ��
	[KS]  int  NOT NULL,--��ʱ
CONSTRAINT [PK_EDU_ZZJX_55_A08_NJJXJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�����ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_55_A09_XFLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_55_A09_XFLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LXMC]  nvarchar(20)  NOT NULL,--��������
	[XFLY]  nvarchar(20)  NOT NULL,--ѧ����Դ
CONSTRAINT [PK_EDU_ZZJX_55_A09_XFLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ɼ���ϸ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_55_A10_CJMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_55_A10_CJMX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[NJID]  nvarchar(4)  NOT NULL,--�꼶ID
	[ZYKCKID]  int  NOT NULL,--רҵ�γ̿�ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[PFXMID]  int  NOT NULL,--������ĿID
	[FZ]  decimal(5, 2)  NOT NULL,--��ֵ
	[DJRID]  nvarchar(20)  NOT NULL,--�Ǽ���ID
	[DJSJ]  datetime  NOT NULL,--�Ǽ�ʱ��
CONSTRAINT [PK_EDU_ZZJX_55_A10_CJMX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ɼ����ܱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_55_A11_CJHZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_55_A11_CJHZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[NJID]  nvarchar(4)  NOT NULL,--�꼶ID
	[ZYKCKID]  int  NOT NULL,--רҵ�γ̿�ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[CJLX]  int  NOT NULL,--�ɼ�����
	[ZHF]  decimal(5, 2)  NOT NULL,--�ۺϷ�
	[XF]  decimal(5, 2)  NOT NULL,--ѧ��
	[JD]  decimal(5, 2)  NOT NULL,--����
	[DJRID]  nvarchar(20)  NOT NULL,--�Ǽ���ID
	[DJSJ]  datetime  NOT NULL,--�Ǽ�ʱ��
CONSTRAINT [PK_EDU_ZZJX_55_A11_CJHZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����ɼ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_55_A12_BKCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_55_A12_BKCJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[NJID]  nvarchar(4)  NOT NULL,--�꼶ID
	[ZYKCKID]  int  NOT NULL,--רҵ�γ̿�ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[FZ]  decimal(5, 2)  NOT NULL,--��ֵ
	[CJLX]  int  NOT NULL,--�ɼ�����
	[DJRID]  nvarchar(20)  NOT NULL,--�Ǽ���ID
	[DJSJ]  datetime  NOT NULL,--�Ǽ�ʱ��
CONSTRAINT [PK_EDU_ZZJX_55_A12_BKCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�ֹ�ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_55_A90_XFHASH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_55_A90_XFHASH](
	[KEY]  int  NOT NULL,--��
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[VALUE]  text  NOT NULL,--ֵ
CONSTRAINT [PK_EDU_ZZJX_55_A90_XFHASH] PRIMARY KEY CLUSTERED
(
	[KEY] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_56_A01_Record]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_56_A01_Record](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SerialNumber]  int  NOT NULL,--���к�
	[Statu]  int  NOT NULL,--
	[ShortTitle1]  nvarchar(50)  NOT NULL,--�̱���һ
	[ShortTitle2]  nvarchar(50)  NOT NULL,--�̱����
	[Comment]  nvarchar(200)  NOT NULL,--����
	[Code]  int  NOT NULL,--
CONSTRAINT [PK_EDU_ZZJX_56_A01_Record] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ������Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵӢ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYYWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'XZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYFXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'JLNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ��ʦ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYJSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'KSJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZXF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����רҵĿ¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'SSZYML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'XXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'XZXF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'PYMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'PYGG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܿ�ʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�ʹ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'SFSY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ����۱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'PJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'KXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'PJR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'PJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'PJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ظ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'HF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�Ӣ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCYWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̱���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̽���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'ZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'LLXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ��ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'SJXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'QTXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ο���Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'CKSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ε�λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KKDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KSXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڿη�ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'SKFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̷���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCFY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ�οα�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'KXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'JXDG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ��嵥ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'KCQDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�������ʦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'SFZRLS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ�꼶���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'NJDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'NJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'SSNF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'NJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ�༶���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'XZBDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ������Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ�꼶���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'ZZNJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'XZBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'JBNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ι���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'BZRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ұ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'JSBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'NANSRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ů������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'NVSRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'ZRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�೤ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'BZXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ƻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'JXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'XQDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'BZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����༶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'FullClassName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ѧ�ƻ����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ��꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'JHNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ�רҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'JHZYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��Ҫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'ZXFYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'JLNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'SYXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'PYMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'SFKY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'ZYRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ѧ�ֹ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ƻ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'JXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'ZDXF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'ZGXF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ƻ�����ѧ��Ҫ����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̷�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'KCFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ƻ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'JXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��Ҫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'XFYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ƻ��γ��嵥���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ƻ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'JXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ԥ�޿γ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'YXKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ģ��Ǹɣ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'SFHXKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̷�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'KCFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'KCSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ִ��ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'ZXXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܿ�ʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'ZKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ۿ�ʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'LLKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ����ʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'SJKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���϶��ϸ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'XFRDHGX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'JXDG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲Ļ�����Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲Ĵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'JCDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'JCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'CBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��һ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'DYZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'QTZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'BC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ӡ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'YC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�۸�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'CBS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'CBRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�����ϰ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'SFYLXC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��н̲ν̸�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'SFYJCJF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ݼ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'NRJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ϳ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'ZDKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'DQKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲�ѡ����Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_02_JCXYXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'JCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'XYSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SFRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲����ü�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A03_JCLYJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'JCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'LYSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'LYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'LYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲ķ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A05_JCFK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'JCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'FKXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'FKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'FKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲ı��ϱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A06_JCBF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'JCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'BFSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'BFYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'BFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ��ѧ������ͳ�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'XQMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'JSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ν̿γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'RJKCMS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'LLZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ����ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'SJZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'QTZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'XSZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'ZXFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܷ���ȡ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ѽɽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'YJJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɷ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'JFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'SFYSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ǰ��ʼ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQQSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ǰ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQJSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ǰ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ǰʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ǰ�ڴ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���κ���ʼ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHQSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���κ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHJSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���κ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���κ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���κ�ڴ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'LWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ժҪ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'LWZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'LWNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ���ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'LWLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���л���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'HDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'HDNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ񷢲�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SFFB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ���ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ϣ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ϣ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XXNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ񷢲�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SFFB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ���ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'KTMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'KTZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'KTNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SQJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˽�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SHJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'JXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'JXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����׶����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'KTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�׶�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'JDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�׶ι�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'JDGZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A06_LWLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A06_LWLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A06_LWLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A06_LWLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���id(Ԥ��)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'QYXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֯��ģ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'QYGM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֯����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'ZZJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ҫ��Ӫ��Χ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'ZYJYFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӫҵִ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'License'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'CompanyType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'QYRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ע���ʽ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Regcapital'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'PostNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Fox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Manager'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְλ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Job'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֻ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Cellphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˾�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'OfficNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ʼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qq' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'qq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'msn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'MSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˾��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Website'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˾���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'GSJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У�󻥶���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'ComID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'ReactionTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��ѧУ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'AdviseToSchool'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��ѧ��ְҵ���ܽ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'AdviseToArt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'OtherAdvise'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'Retroaction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ���������Ľ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'AdviseToStudent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'ComID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'JobName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'WorkType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա�Ҫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λн��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'monthlypay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ҫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'LanguageRequire'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'WorkPlace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ˮƽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'Computer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƹ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'ZPRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��Ҫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'education'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ҫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'Age'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'GWJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵҪ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'Major'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'Base'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'experience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'GWSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��ǰ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��ö�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'SFZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'QYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ�༶�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A01_SXBJGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A01_SXBJGL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A01_SXBJGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A01_SXBJGL', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A01_SXBJGL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A01_SXBJGL', @level2type=N'COLUMN',@level2name=N'BJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A01_SXBJGL', @level2type=N'COLUMN',@level2name=N'BZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL', @level2type=N'COLUMN',@level2name=N'SZBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL', @level2type=N'COLUMN',@level2name=N'StuID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��Ͻ�ʵϰЭ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL', @level2type=N'COLUMN',@level2name=N'SFSJSXXYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL', @level2type=N'COLUMN',@level2name=N'SXSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰʵϰ��λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL', @level2type=N'COLUMN',@level2name=N'DQSXGWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ת�ڴ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL', @level2type=N'COLUMN',@level2name=N'ZGCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��λ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'SXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'JobID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'¼ȡ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'BZRSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'QYSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'TGLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'SQSHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'SQTGSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˸����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'TGSHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'SXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'SXNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��˼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'SXFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ZWPD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ָ��ʦ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ZDSFXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ָ��ʦ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ZDSFPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ָ��ʦ������ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ZDSFPDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʦ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ZFPD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ָ����ʦ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ZDJSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ָ����ʦ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ZDJSPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ָ����ʦ����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ZDJSPDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'JSPD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰΥ�¼�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A03_SXWZJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A03_SXWZJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A03_SXWZJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A03_SXWZJL', @level2type=N'COLUMN',@level2name=N'ComID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A03_SXWZJL', @level2type=N'COLUMN',@level2name=N'SXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Υ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A03_SXWZJL', @level2type=N'COLUMN',@level2name=N'WzTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Υ��Υ�¼�¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A03_SXWZJL', @level2type=N'COLUMN',@level2name=N'WGWZJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ѵ���Ľ���ʩ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A03_SXWZJL', @level2type=N'COLUMN',@level2name=N'JYJXJGJCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A04_SXJD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A04_SXJD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A04_SXJD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A04_SXJD', @level2type=N'COLUMN',@level2name=N'SXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A04_SXJD', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A04_SXJD', @level2type=N'COLUMN',@level2name=N'SFHZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A04_SXJD', @level2type=N'COLUMN',@level2name=N'JDRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A04_SXJD', @level2type=N'COLUMN',@level2name=N'SXJDCL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰͶ�߱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'ComID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'SXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ͷ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'TsTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ͷ��ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'TsReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ͷ�߽��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'TsResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ͷ�߽���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'ComSuggest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ͷ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��־��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXRZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXRZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXRZ', @level2type=N'COLUMN',@level2name=N'SXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXRZ', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��־����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXRZ', @level2type=N'COLUMN',@level2name=N'RZBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��־����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXRZ', @level2type=N'COLUMN',@level2name=N'RZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ�߷ü�¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A07_ZFJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A07_ZFJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A07_ZFJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A07_ZFJL', @level2type=N'COLUMN',@level2name=N'SXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A07_ZFJL', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�߷�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A07_ZFJL', @level2type=N'COLUMN',@level2name=N'ZFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�߷ü�¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A07_ZFJL', @level2type=N'COLUMN',@level2name=N'ZFJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A08_SXSJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A08_SXSJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A08_SXSJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A08_SXSJL', @level2type=N'COLUMN',@level2name=N'SXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A08_SXSJL', @level2type=N'COLUMN',@level2name=N'JLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A08_SXSJL', @level2type=N'COLUMN',@level2name=N'JLNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ͷ�ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A09_JLTD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A09_JLTD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A09_JLTD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A09_JLTD', @level2type=N'COLUMN',@level2name=N'SXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A09_JLTD', @level2type=N'COLUMN',@level2name=N'ComID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A09_JLTD', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A09_JLTD', @level2type=N'COLUMN',@level2name=N'JLNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ͷ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A09_JLTD', @level2type=N'COLUMN',@level2name=N'TDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�鿴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A09_JLTD', @level2type=N'COLUMN',@level2name=N'SFCK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A09_JLTD', @level2type=N'COLUMN',@level2name=N'FKNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ�±���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A10_SXYB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A10_SXYB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A10_SXYB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A10_SXYB', @level2type=N'COLUMN',@level2name=N'SXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A10_SXYB', @level2type=N'COLUMN',@level2name=N'GWXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����С��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A10_SXYB', @level2type=N'COLUMN',@level2name=N'GZXJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A10_SXYB', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ָ��ʦ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A10_SXYB', @level2type=N'COLUMN',@level2name=N'ZDSFXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ָ��ʦ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A10_SXYB', @level2type=N'COLUMN',@level2name=N'ZDSFPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʦ���绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A10_SXYB', @level2type=N'COLUMN',@level2name=N'SFDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʦ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A10_SXYB', @level2type=N'COLUMN',@level2name=N'SFPD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ָ��ʦ������ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A10_SXYB', @level2type=N'COLUMN',@level2name=N'ZDSFPDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰÿ�¿��ڼ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A11_SXMYKQJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A11_SXMYKQJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A11_SXMYKQJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A11_SXMYKQJL', @level2type=N'COLUMN',@level2name=N'SXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A11_SXMYKQJL', @level2type=N'COLUMN',@level2name=N'QYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A11_SXMYKQJL', @level2type=N'COLUMN',@level2name=N'SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ�ʹ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A11_SXMYKQJL', @level2type=N'COLUMN',@level2name=N'SJGR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�¼�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A11_SXMYKQJL', @level2type=N'COLUMN',@level2name=N'SJTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A11_SXMYKQJL', @level2type=N'COLUMN',@level2name=N'KGTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A11_SXMYKQJL', @level2type=N'COLUMN',@level2name=N'BJTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A11_SXMYKQJL', @level2type=N'COLUMN',@level2name=N'GXTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ٵ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A11_SXMYKQJL', @level2type=N'COLUMN',@level2name=N'CDTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A11_SXMYKQJL', @level2type=N'COLUMN',@level2name=N'ZTTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�¶Ȼ��ܼ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A12_YDHZJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A12_YDHZJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A12_YDHZJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A12_YDHZJL', @level2type=N'COLUMN',@level2name=N'SXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A12_YDHZJL', @level2type=N'COLUMN',@level2name=N'HZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A12_YDHZJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�¶�������Ŀ���ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A13_YDPDZDPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A13_YDPDZDPZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A13_YDPDZDPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A13_YDPDZDPZ', @level2type=N'COLUMN',@level2name=N'ZDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�ʹ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A13_YDPDZDPZ', @level2type=N'COLUMN',@level2name=N'SFSY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ܷ���д' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A13_YDPDZDPZ', @level2type=N'COLUMN',@level2name=N'BZRNFTX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵѵ���ܷ���д' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A13_YDPDZDPZ', @level2type=N'COLUMN',@level2name=N'SXCNFTX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A13_YDPDZDPZ', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�¶�������¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A14_YDPDJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A14_YDPDJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A14_YDPDJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A14_YDPDJL', @level2type=N'COLUMN',@level2name=N'SXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֶ�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A14_YDPDJL', @level2type=N'COLUMN',@level2name=N'ZDPZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A14_YDPDJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A14_YDPDJL', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A14_YDPDJL', @level2type=N'COLUMN',@level2name=N'PDJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵϰ������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A01_DGSXYQLJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A01_DGSXYQLJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A01_DGSXYQLJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A01_DGSXYQLJLX', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵϰ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A02_DGSXYQLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A02_DGSXYQLJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A02_DGSXYQLJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A02_DGSXYQLJ', @level2type=N'COLUMN',@level2name=N'YQLJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A02_DGSXYQLJ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A02_DGSXYQLJ', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A02_DGSXYQLJ', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵϰ�Ż���Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A03_DGSXMHLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A03_DGSXMHLM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A03_DGSXMHLM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A03_DGSXMHLM', @level2type=N'COLUMN',@level2name=N'LMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A03_DGSXMHLM', @level2type=N'COLUMN',@level2name=N'LMLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�㼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A03_DGSXMHLM', @level2type=N'COLUMN',@level2name=N'CJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A03_DGSXMHLM', @level2type=N'COLUMN',@level2name=N'FLMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A03_DGSXMHLM', @level2type=N'COLUMN',@level2name=N'SFQY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A03_DGSXMHLM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵϰ�Ż�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'LMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'FBR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'ZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���߲���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'ZZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ժҪ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'ZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'TP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'DJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'SHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ö����ȼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A04_DGSXMHWZ', @level2type=N'COLUMN',@level2name=N'ZDYXJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵϰ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A05_DGSXXZZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A05_DGSXXZZL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A05_DGSXXZZL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A05_DGSXXZZL', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A05_DGSXXZZL', @level2type=N'COLUMN',@level2name=N'FBR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A05_DGSXXZZL', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_23_A05_DGSXXZZL', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ұ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_30_A01_CLASSROOM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_30_A01_CLASSROOM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_30_A01_CLASSROOM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_30_A01_CLASSROOM', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_30_A01_CLASSROOM', @level2type=N'COLUMN',@level2name=N'Place'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_30_A01_CLASSROOM', @level2type=N'COLUMN',@level2name=N'Counts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ص�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_30_A01_CLASSROOM', @level2type=N'COLUMN',@level2name=N'FullPlaceName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_30_A01_CLASSROOM', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_30_A02_EXAMROOM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_30_A02_EXAMROOM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_30_A02_EXAMROOM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_30_A02_EXAMROOM', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_30_A02_EXAMROOM', @level2type=N'COLUMN',@level2name=N'RoomID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_30_A02_EXAMROOM', @level2type=N'COLUMN',@level2name=N'ExamID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_30_A02_EXAMROOM', @level2type=N'COLUMN',@level2name=N'StuCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ�����ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_31_A01_KSSDLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_31_A01_KSSDLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_31_A01_KSSDLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_31_A01_KSSDLX', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_31_A01_KSSDLX', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_31_A01_KSSDLX', @level2type=N'COLUMN',@level2name=N'EndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Գ��α�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_31_A02_KSCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_31_A02_KSCC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_31_A02_KSCC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_31_A02_KSCC', @level2type=N'COLUMN',@level2name=N'ExamID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_31_A02_KSCC', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_31_A02_KSCC', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_31_A02_KSCC', @level2type=N'COLUMN',@level2name=N'ExamDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ա�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A01_EXAM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A01_EXAM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A01_EXAM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A01_EXAM', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�μӿ��Կ�Ŀ�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A01_EXAM', @level2type=N'COLUMN',@level2name=N'CJKSKMLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A01_EXAM', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֹ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A01_EXAM', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A01_EXAM', @level2type=N'COLUMN',@level2name=N'XqID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿַ�ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A01_EXAM', @level2type=N'COLUMN',@level2name=N'DffsID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ�γ��ſ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A02_ZYKCPKJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A02_ZYKCPKJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A02_ZYKCPKJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A02_ZYKCPKJG', @level2type=N'COLUMN',@level2name=N'ExamID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A02_ZYKCPKJG', @level2type=N'COLUMN',@level2name=N'EXAMROOMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A02_ZYKCPKJG', @level2type=N'COLUMN',@level2name=N'CCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Կ�ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A02_ZYKCPKJG', @level2type=N'COLUMN',@level2name=N'KCQDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A02_ZYKCPKJG', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A02_ZYKCPKJG', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A02_ZYKCPKJG', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ο�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A02_ZYKCPKJG', @level2type=N'COLUMN',@level2name=N'CKRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A02_ZYKCPKJG', @level2type=N'COLUMN',@level2name=N'SKRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���࿼��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A02_ZYKCPKJG', @level2type=N'COLUMN',@level2name=N'ZJKLSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���࿼��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A02_ZYKCPKJG', @level2type=N'COLUMN',@level2name=N'FJKLSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ſ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A03_XSPKJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A03_XSPKJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A03_XSPKJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ�γ��ſ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A03_XSPKJG', @level2type=N'COLUMN',@level2name=N'KCPKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A03_XSPKJG', @level2type=N'COLUMN',@level2name=N'ExamID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A03_XSPKJG', @level2type=N'COLUMN',@level2name=N'EXAMROOMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A03_XSPKJG', @level2type=N'COLUMN',@level2name=N'CCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Կ�ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A03_XSPKJG', @level2type=N'COLUMN',@level2name=N'KCQDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A03_XSPKJG', @level2type=N'COLUMN',@level2name=N'StudentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A03_XSPKJG', @level2type=N'COLUMN',@level2name=N'SeatID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'׼��֤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A03_XSPKJG', @level2type=N'COLUMN',@level2name=N'AdmissionID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A03_XSPKJG', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A03_XSPKJG', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A03_XSPKJG', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_32_A03_XSPKJG', @level2type=N'COLUMN',@level2name=N'KSSDLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ľ��ű�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_33_A01_YJAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_33_A01_YJAP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_33_A01_YJAP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ�γ��ſ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_33_A01_YJAP', @level2type=N'COLUMN',@level2name=N'ZYKCPKJGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ľ��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_33_A01_YJAP', @level2type=N'COLUMN',@level2name=N'TeacherID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_33_A01_YJAP', @level2type=N'COLUMN',@level2name=N'ExamID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_33_A01_YJAP', @level2type=N'COLUMN',@level2name=N'EXAMROOMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_33_A01_YJAP', @level2type=N'COLUMN',@level2name=N'CCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_33_A01_YJAP', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_33_A01_YJAP', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_33_A01_YJAP', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Կ�ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_33_A01_YJAP', @level2type=N'COLUMN',@level2name=N'KCQDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ľ�ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_33_A01_YJAP', @level2type=N'COLUMN',@level2name=N'YJFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���γ�ѧ�ֱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_34_A01_XSKCXF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_34_A01_XSKCXF', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_34_A01_XSKCXF', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_34_A01_XSKCXF', @level2type=N'COLUMN',@level2name=N'StudentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_34_A01_XSKCXF', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_34_A01_XSKCXF', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_34_A01_XSKCXF', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_34_A01_XSKCXF', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Կ�ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_34_A01_XSKCXF', @level2type=N'COLUMN',@level2name=N'KCQDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_34_A01_XSKCXF', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����С��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A01_TKXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A01_TKXZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A01_TKXZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'С������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A01_TKXZ', @level2type=N'COLUMN',@level2name=N'XZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'С���Ա' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A01_TKXZ', @level2type=N'COLUMN',@level2name=N'XZCY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'С���Ա����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A01_TKXZ', @level2type=N'COLUMN',@level2name=N'XZCYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A02_GKKSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ͽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ͽεص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SKDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'KCJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����С��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'TKXZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�ʾ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SFGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ν�ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'RJXK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'XQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڴ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'JC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ΰ༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'KCBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϰ�ƻ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A01_JXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A01_JXJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A01_JXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A01_JXJH', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A01_JXJH', @level2type=N'COLUMN',@level2name=N'JHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A01_JXJH', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A01_JXJH', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϰ��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A01_JXJH', @level2type=N'COLUMN',@level2name=N'JXDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϰ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A01_JXJH', @level2type=N'COLUMN',@level2name=N'JXNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϰѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A01_JXJH', @level2type=N'COLUMN',@level2name=N'JXXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A01_JXJH', @level2type=N'COLUMN',@level2name=N'SFKQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϰ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A02_JXBG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A02_JXBG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A02_JXBG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϰ�ƻ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A02_JXBG', @level2type=N'COLUMN',@level2name=N'JXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A02_JXBG', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A02_JXBG', @level2type=N'COLUMN',@level2name=N'BGNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A02_JXBG', @level2type=N'COLUMN',@level2name=N'BGSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A02_JXBG', @level2type=N'COLUMN',@level2name=N'BGBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϰ���۱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A03_JXPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A03_JXPJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A03_JXPJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϰ�ƻ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A03_JXPJ', @level2type=N'COLUMN',@level2name=N'JXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A03_JXPJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A03_JXPJ', @level2type=N'COLUMN',@level2name=N'PJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A03_JXPJ', @level2type=N'COLUMN',@level2name=N'PJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���۽�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_36_A03_JXPJ', @level2type=N'COLUMN',@level2name=N'PJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܼ�����Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A01_JNJDXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A01_JNJDXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A01_JNJDXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A01_JNJDXM', @level2type=N'COLUMN',@level2name=N'JNMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����רҵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A01_JNJDXM', @level2type=N'COLUMN',@level2name=N'JNZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܹ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A01_JNJDXM', @level2type=N'COLUMN',@level2name=N'JNGZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A01_JNJDXM', @level2type=N'COLUMN',@level2name=N'JDJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�걨״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A01_JNJDXM', @level2type=N'COLUMN',@level2name=N'SBZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܼ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A02_JNJDAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A02_JNJDAP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A02_JNJDAP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A02_JNJDAP', @level2type=N'COLUMN',@level2name=N'KSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A02_JNJDAP', @level2type=N'COLUMN',@level2name=N'JDXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A02_JNJDAP', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Եص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A02_JNJDAP', @level2type=N'COLUMN',@level2name=N'KSDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A02_JNJDAP', @level2type=N'COLUMN',@level2name=N'KSXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܼ����ɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A03_JNJDCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A03_JNJDCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A03_JNJDCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A03_JNJDCJ', @level2type=N'COLUMN',@level2name=N'JDXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܼ�������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A03_JNJDCJ', @level2type=N'COLUMN',@level2name=N'JNJDAPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A03_JNJDCJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A03_JNJDCJ', @level2type=N'COLUMN',@level2name=N'CJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽǽ�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A03_JNJDCJ', @level2type=N'COLUMN',@level2name=N'DJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_37_A03_JNJDCJ', @level2type=N'COLUMN',@level2name=N'DJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ��ѧ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'ZZXQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�༶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'JXBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'TEACHERID1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'TEACHERID2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ��嵥ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'KCQDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'CLASSROOM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ָ���༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'ZDBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ָ���༶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'ZDBJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'RS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʦ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'T1NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʦ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'T2NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڿη�ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A01_ZZJXB', @level2type=N'COLUMN',@level2name=N'SKFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ�ſν����¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A02_ZZPKJGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A02_ZZPKJGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A02_ZZPKJGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A02_ZZPKJGJL', @level2type=N'COLUMN',@level2name=N'ZZXQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A02_ZZPKJGJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A02_ZZPKJGJL', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A02_ZZPKJGJL', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A02_ZZPKJGJL', @level2type=N'COLUMN',@level2name=N'JXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ��嵥ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A02_ZZPKJGJL', @level2type=N'COLUMN',@level2name=N'KCQDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A02_ZZPKJGJL', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A02_ZZPKJGJL', @level2type=N'COLUMN',@level2name=N'CLASSROOM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A02_ZZPKJGJL', @level2type=N'COLUMN',@level2name=N'ZZBJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A02_ZZPKJGJL', @level2type=N'COLUMN',@level2name=N'WEEKDAY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A02_ZZPKJGJL', @level2type=N'COLUMN',@level2name=N'PERIOD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڴ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A02_ZZPKJGJL', @level2type=N'COLUMN',@level2name=N'SESSION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ�ν����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A03_XKJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A03_XKJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A03_XKJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A03_XKJG', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A03_XKJG', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A03_XKJG', @level2type=N'COLUMN',@level2name=N'JXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ��嵥ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A03_XKJG', @level2type=N'COLUMN',@level2name=N'KCQDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_38_A03_XKJG', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ�޿γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A01_XXKCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A01_XXKCLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A01_XXKCLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A01_XXKCLB', @level2type=N'COLUMN',@level2name=N'LBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A01_XXKCLB', @level2type=N'COLUMN',@level2name=N'JJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ͬʱѡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A01_XXKCLB', @level2type=N'COLUMN',@level2name=N'ZGTSXKSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�����ͬ���γ̶�ѡ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A01_XXKCLB', @level2type=N'COLUMN',@level2name=N'SFYXTMKCDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A02_KKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A02_KKSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A02_KKSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ͽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A02_KKSJ', @level2type=N'COLUMN',@level2name=N'SKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A02_KKSJ', @level2type=N'COLUMN',@level2name=N'SDIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ�������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A02_KKSJ', @level2type=N'COLUMN',@level2name=N'SDMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ�޿γ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'XXKCLBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̽���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'KCJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ƻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'JXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܿ�ʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'ZKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'NJMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ν�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'KKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ͽ�ʱ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'SKSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ͽεص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'SKDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'BJKRNRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ϳ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'ZDKBRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'BJIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'BJMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʦID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'QTJSIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʦ�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'QTJSMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܿ�ʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'WEEKKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ͽ��ܴ�ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'SKZCIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ͽ��ܴ������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'SKZCMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ѡ�μ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A04_XSXKJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A04_XSXKJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A04_XSXKJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A04_XSXKJL', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A04_XSXKJL', @level2type=N'COLUMN',@level2name=N'JXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ѡ�޿γɼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A05_XSXXKCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A05_XSXXKCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A05_XSXXKCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A05_XSXXKCJ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A05_XSXXKCJ', @level2type=N'COLUMN',@level2name=N'JXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A05_XSXXKCJ', @level2type=N'COLUMN',@level2name=N'CJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ı�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A05_XSXXKCJ', @level2type=N'COLUMN',@level2name=N'WBPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���õ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A06_KTDMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'JXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѡ��ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A07_ECXKXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A07_ECXKXS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A07_ECXKXS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A07_ECXKXS', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A07_ECXKXS', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ��ѧ�����̱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A11_XKXSPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A11_XKXSPJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A11_XKXSPJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A11_XKXSPJ', @level2type=N'COLUMN',@level2name=N'PJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A11_XKXSPJ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A11_XKXSPJ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ַ�ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A12_PJPFFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A12_PJPFFS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A12_PJPFFS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ַ�ʽ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A12_PJPFFS', @level2type=N'COLUMN',@level2name=N'PFFSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ѡ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A13_PJPFXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A13_PJPFXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A13_PJPFXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ַ�ʽID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A13_PJPFXX', @level2type=N'COLUMN',@level2name=N'PFFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A13_PJPFXX', @level2type=N'COLUMN',@level2name=N'PFXXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A13_PJPFXX', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A14_PJTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A14_PJTM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A14_PJTM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A14_PJTM', @level2type=N'COLUMN',@level2name=N'PJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ַ�ʽID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A14_PJTM', @level2type=N'COLUMN',@level2name=N'PFFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A14_PJTM', @level2type=N'COLUMN',@level2name=N'TMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ָ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A14_PJTM', @level2type=N'COLUMN',@level2name=N'PJZB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���̽����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A15_PJJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A15_PJJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A15_PJJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A15_PJJG', @level2type=N'COLUMN',@level2name=N'PJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A15_PJJG', @level2type=N'COLUMN',@level2name=N'JXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A15_PJJG', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A15_PJJG', @level2type=N'COLUMN',@level2name=N'TMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A15_PJJG', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���۽�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A15_PJJG', @level2type=N'COLUMN',@level2name=N'PJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ύ��¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A16_PJTJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A16_PJTJJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A16_PJTJJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A16_PJTJJL', @level2type=N'COLUMN',@level2name=N'PJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A16_PJTJJL', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ύʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A16_PJTJJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ�����۱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A17_PJXSPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A17_PJXSPJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A17_PJXSPJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A17_PJXSPJ', @level2type=N'COLUMN',@level2name=N'PJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A17_PJXSPJ', @level2type=N'COLUMN',@level2name=N'JXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A17_PJXSPJ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A17_PJXSPJ', @level2type=N'COLUMN',@level2name=N'PJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ�ν���������ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A21_XKJGFXPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A21_XKJGFXPZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A21_XKJGFXPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A21_XKJGFXPZ', @level2type=N'COLUMN',@level2name=N'XQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����ѡ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A21_XKJGFXPZ', @level2type=N'COLUMN',@level2name=N'SFBXXK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A21_XKJGFXPZ', @level2type=N'COLUMN',@level2name=N'XKSLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_50_A21_XKJGFXPZ', @level2type=N'COLUMN',@level2name=N'XKSLXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ԥѡ�ογ̱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_51_A01_YXKKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_51_A01_YXKKC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_51_A01_YXKKC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_51_A01_YXKKC', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ν�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_51_A01_YXKKC', @level2type=N'COLUMN',@level2name=N'KKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_51_A01_YXKKC', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_51_A01_YXKKC', @level2type=N'COLUMN',@level2name=N'NJMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̽���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_51_A01_YXKKC', @level2type=N'COLUMN',@level2name=N'KCJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��Ԥѡ�μ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_51_A02_XSYXKJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_51_A02_XSYXKJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_51_A02_XSYXKJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_51_A02_XSYXKJL', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_51_A02_XSYXKJL', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_51_A02_XSYXKJL', @level2type=N'COLUMN',@level2name=N'XKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A01_FZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A01_FZXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A01_FZXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A01_FZXX', @level2type=N'COLUMN',@level2name=N'FZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A01_FZXX', @level2type=N'COLUMN',@level2name=N'ZDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Сֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A01_FZXX', @level2type=N'COLUMN',@level2name=N'ZXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A01_FZXX', @level2type=N'COLUMN',@level2name=N'JGX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޶�Ӧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A01_FZXX', @level2type=N'COLUMN',@level2name=N'MXF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�⿼��Ӧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A01_FZXX', @level2type=N'COLUMN',@level2name=N'MKF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��������ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A01_FZXX', @level2type=N'COLUMN',@level2name=N'XFPDBIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A01_FZXX', @level2type=N'COLUMN',@level2name=N'JDPDBIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A02_XFPD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A02_XFPD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A02_XFPD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A02_XFPD', @level2type=N'COLUMN',@level2name=N'PDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A02_XFPD', @level2type=N'COLUMN',@level2name=N'FSSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A02_XFPD', @level2type=N'COLUMN',@level2name=N'FSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ռ�γ�ѧ�ֱ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A02_XFPD', @level2type=N'COLUMN',@level2name=N'BL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A02_XFPD', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A02_XFPD', @level2type=N'COLUMN',@level2name=N'FZXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A03_JDPD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A03_JDPD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A03_JDPD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A03_JDPD', @level2type=N'COLUMN',@level2name=N'PDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A03_JDPD', @level2type=N'COLUMN',@level2name=N'JCJD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A03_JDPD', @level2type=N'COLUMN',@level2name=N'FSSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A03_JDPD', @level2type=N'COLUMN',@level2name=N'FSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A03_JDPD', @level2type=N'COLUMN',@level2name=N'LX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���㹫ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A03_JDPD', @level2type=N'COLUMN',@level2name=N'JSGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A03_JDPD', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A03_JDPD', @level2type=N'COLUMN',@level2name=N'FZXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ�γ̿��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A04_ZYKCK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A04_ZYKCK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A04_ZYKCK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A04_ZYKCK', @level2type=N'COLUMN',@level2name=N'ZYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A04_ZYKCK', @level2type=N'COLUMN',@level2name=N'FZXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ���������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A04_ZYKCK', @level2type=N'COLUMN',@level2name=N'KCPFLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A04_ZYKCK', @level2type=N'COLUMN',@level2name=N'KCBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A04_ZYKCK', @level2type=N'COLUMN',@level2name=N'ZXF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A04_ZYKCK', @level2type=N'COLUMN',@level2name=N'ZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ε�λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A04_ZYKCK', @level2type=N'COLUMN',@level2name=N'KKDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A04_ZYKCK', @level2type=N'COLUMN',@level2name=N'KSXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڿη�ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A04_ZYKCK', @level2type=N'COLUMN',@level2name=N'SKFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A04_ZYKCK', @level2type=N'COLUMN',@level2name=N'JXDG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�ʹ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A04_ZYKCK', @level2type=N'COLUMN',@level2name=N'SFSY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A04_ZYKCK', @level2type=N'COLUMN',@level2name=N'FullCourseName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A04_ZYKCK', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ��������ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A05_KCPFLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A05_KCPFLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A05_KCPFLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A05_KCPFLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�������Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A06_KCPFXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A06_KCPFXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A06_KCPFXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A06_KCPFXM', @level2type=N'COLUMN',@level2name=N'LXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A06_KCPFXM', @level2type=N'COLUMN',@level2name=N'FXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A06_KCPFXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�������Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A06_KCPFXM', @level2type=N'COLUMN',@level2name=N'SFYZXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A06_KCPFXM', @level2type=N'COLUMN',@level2name=N'BL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ������޸�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A06_KCPFXM', @level2type=N'COLUMN',@level2name=N'SFYXXG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A06_KCPFXM', @level2type=N'COLUMN',@level2name=N'XGSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A06_KCPFXM', @level2type=N'COLUMN',@level2name=N'XGXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A06_KCPFXM', @level2type=N'COLUMN',@level2name=N'LY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A06_KCPFXM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ��ѧ�ƻ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A07_ZYJXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A07_ZYJXJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A07_ZYJXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A07_ZYJXJH', @level2type=N'COLUMN',@level2name=N'ZYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ�γ̿�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A07_ZYJXJH', @level2type=N'COLUMN',@level2name=N'ZYKCKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�ڴ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A07_ZYJXJH', @level2type=N'COLUMN',@level2name=N'XQDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A07_ZYJXJH', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A07_ZYJXJH', @level2type=N'COLUMN',@level2name=N'KS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶��ѧ�ƻ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A08_NJJXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A08_NJJXJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A08_NJJXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A08_NJJXJH', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A08_NJJXJH', @level2type=N'COLUMN',@level2name=N'ZYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A08_NJJXJH', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ�γ̿�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A08_NJJXJH', @level2type=N'COLUMN',@level2name=N'ZYKCKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A08_NJJXJH', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A08_NJJXJH', @level2type=N'COLUMN',@level2name=N'KS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�����ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A09_XFLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A09_XFLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A09_XFLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A09_XFLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Դ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A09_XFLX', @level2type=N'COLUMN',@level2name=N'XFLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ���ϸ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A10_CJMX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A10_CJMX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A10_CJMX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A10_CJMX', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A10_CJMX', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ�γ̿�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A10_CJMX', @level2type=N'COLUMN',@level2name=N'ZYKCKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A10_CJMX', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A10_CJMX', @level2type=N'COLUMN',@level2name=N'PFXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A10_CJMX', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A10_CJMX', @level2type=N'COLUMN',@level2name=N'DJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A10_CJMX', @level2type=N'COLUMN',@level2name=N'DJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ����ܱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A11_CJHZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A11_CJHZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A11_CJHZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A11_CJHZ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A11_CJHZ', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ�γ̿�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A11_CJHZ', @level2type=N'COLUMN',@level2name=N'ZYKCKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A11_CJHZ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A11_CJHZ', @level2type=N'COLUMN',@level2name=N'CJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ۺϷ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A11_CJHZ', @level2type=N'COLUMN',@level2name=N'ZHF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A11_CJHZ', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A11_CJHZ', @level2type=N'COLUMN',@level2name=N'JD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A11_CJHZ', @level2type=N'COLUMN',@level2name=N'DJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A11_CJHZ', @level2type=N'COLUMN',@level2name=N'DJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ɼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A12_BKCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A12_BKCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A12_BKCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A12_BKCJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A12_BKCJ', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ�γ̿�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A12_BKCJ', @level2type=N'COLUMN',@level2name=N'ZYKCKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A12_BKCJ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A12_BKCJ', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A12_BKCJ', @level2type=N'COLUMN',@level2name=N'CJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A12_BKCJ', @level2type=N'COLUMN',@level2name=N'DJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A12_BKCJ', @level2type=N'COLUMN',@level2name=N'DJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�ֹ�ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A90_XFHASH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A90_XFHASH', @level2type=N'COLUMN',@level2name=N'KEY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A90_XFHASH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_55_A90_XFHASH', @level2type=N'COLUMN',@level2name=N'VALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_56_A01_Record'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_56_A01_Record', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_56_A01_Record', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���к�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_56_A01_Record', @level2type=N'COLUMN',@level2name=N'SerialNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̱���һ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_56_A01_Record', @level2type=N'COLUMN',@level2name=N'ShortTitle1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̱����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_56_A01_Record', @level2type=N'COLUMN',@level2name=N'ShortTitle2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_56_A01_Record', @level2type=N'COLUMN',@level2name=N'Comment'
GO
