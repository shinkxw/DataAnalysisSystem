--空间名：EDU_OAXT  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_01_01_WJJBSJ')
            and   type = 'U')
   drop table EDU_OAXT_01_01_WJJBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_02_01_SWCL')
            and   type = 'U')
   drop table EDU_OAXT_02_01_SWCL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_02_02_WJYB')
            and   type = 'U')
   drop table EDU_OAXT_02_02_WJYB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_03_01_FWCL')
            and   type = 'U')
   drop table EDU_OAXT_03_01_FWCL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_03_02_HG')
            and   type = 'U')
   drop table EDU_OAXT_03_02_HG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_03_03_HQ')
            and   type = 'U')
   drop table EDU_OAXT_03_03_HQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_03_04_CP')
            and   type = 'U')
   drop table EDU_OAXT_03_04_CP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_04_01_WJQT')
            and   type = 'U')
   drop table EDU_OAXT_04_01_WJQT
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_05_01_WJXH')
            and   type = 'U')
   drop table EDU_OAXT_05_01_WJXH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_06_01_WJJQ')
            and   type = 'U')
   drop table EDU_OAXT_06_01_WJJQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_08_01_DADJ')
            and   type = 'U')
   drop table EDU_OAXT_08_01_DADJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_10_A01_TZ')
            and   type = 'U')
   drop table EDU_OAXT_10_A01_TZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_10_A02_TZYDJL')
            and   type = 'U')
   drop table EDU_OAXT_10_A02_TZYDJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_10_A03_GG')
            and   type = 'U')
   drop table EDU_OAXT_10_A03_GG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_10_A04_TZMB')
            and   type = 'U')
   drop table EDU_OAXT_10_A04_TZMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_11_A01_YJ')
            and   type = 'U')
   drop table EDU_OAXT_11_A01_YJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_11_A02_YJFSXZRS')
            and   type = 'U')
   drop table EDU_OAXT_11_A02_YJFSXZRS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_12_A01_SJFB')
            and   type = 'U')
   drop table EDU_OAXT_12_A01_SJFB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_13_A01_DWSJ')
            and   type = 'U')
   drop table EDU_OAXT_13_A01_DWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_14_A01_GRRCXX')
            and   type = 'U')
   drop table EDU_OAXT_14_A01_GRRCXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A01_ZCML')
            and   type = 'U')
   drop table EDU_OAXT_15_A01_ZCML
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A02_ZCDL')
            and   type = 'U')
   drop table EDU_OAXT_15_A02_ZCDL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A03_ZCKC')
            and   type = 'U')
   drop table EDU_OAXT_15_A03_ZCKC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A04_ZCRK')
            and   type = 'U')
   drop table EDU_OAXT_15_A04_ZCRK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A05_ZCJH')
            and   type = 'U')
   drop table EDU_OAXT_15_A05_ZCJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A06_ZCBG')
            and   type = 'U')
   drop table EDU_OAXT_15_A06_ZCBG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A07_BXLX')
            and   type = 'U')
   drop table EDU_OAXT_15_A07_BXLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A08_BXGL')
            and   type = 'U')
   drop table EDU_OAXT_15_A08_BXGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A09_WXJH')
            and   type = 'U')
   drop table EDU_OAXT_15_A09_WXJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A10_ZCBF')
            and   type = 'U')
   drop table EDU_OAXT_15_A10_ZCBF
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A11_ZCPD')
            and   type = 'U')
   drop table EDU_OAXT_15_A11_ZCPD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A12_ZCPDMX')
            and   type = 'U')
   drop table EDU_OAXT_15_A12_ZCPDMX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A13_WXJL')
            and   type = 'U')
   drop table EDU_OAXT_15_A13_WXJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A14_BXGZXX')
            and   type = 'U')
   drop table EDU_OAXT_15_A14_BXGZXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A15_ZCMLQX')
            and   type = 'U')
   drop table EDU_OAXT_15_A15_ZCMLQX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A01_LCMBLX')
            and   type = 'U')
   drop table EDU_OAXT_20_A01_LCMBLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A02_LCBDSJ')
            and   type = 'U')
   drop table EDU_OAXT_20_A02_LCBDSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A03_LCMB')
            and   type = 'U')
   drop table EDU_OAXT_20_A03_LCMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A04_LCBZ')
            and   type = 'U')
   drop table EDU_OAXT_20_A04_LCBZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A05_LCSL')
            and   type = 'U')
   drop table EDU_OAXT_20_A05_LCSL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A06_LCSHJL')
            and   type = 'U')
   drop table EDU_OAXT_20_A06_LCSHJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A07_LCMBLXPZ')
            and   type = 'U')
   drop table EDU_OAXT_20_A07_LCMBLXPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_21_A01_QJLX')
            and   type = 'U')
   drop table EDU_OAXT_21_A01_QJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_21_A02_QJSQ')
            and   type = 'U')
   drop table EDU_OAXT_21_A02_QJSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_21_A03_QJSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_21_A03_QJSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A01_HYSSJ')
            and   type = 'U')
   drop table EDU_OAXT_22_A01_HYSSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A02_HYSQ')
            and   type = 'U')
   drop table EDU_OAXT_22_A02_HYSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A03_HYSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_22_A03_HYSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A04_HYJY')
            and   type = 'U')
   drop table EDU_OAXT_22_A04_HYJY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A05_HYBZLX')
            and   type = 'U')
   drop table EDU_OAXT_22_A05_HYBZLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A06_HYJYMB')
            and   type = 'U')
   drop table EDU_OAXT_22_A06_HYJYMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_23_A01_GWSQ')
            and   type = 'U')
   drop table EDU_OAXT_23_A01_GWSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_23_A02_GWSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_23_A02_GWSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_24_A01_YCSQ')
            and   type = 'U')
   drop table EDU_OAXT_24_A01_YCSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_24_A02_YCSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_24_A02_YCSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_24_A03_CLSJ')
            and   type = 'U')
   drop table EDU_OAXT_24_A03_CLSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_25_A01_CGSQ')
            and   type = 'U')
   drop table EDU_OAXT_25_A01_CGSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_25_A02_CGSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_25_A02_CGSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_26_A01_SYSSJ')
            and   type = 'U')
   drop table EDU_OAXT_26_A01_SYSSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_26_A02_SYSQC')
            and   type = 'U')
   drop table EDU_OAXT_26_A02_SYSQC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_26_A03_SYSSQ')
            and   type = 'U')
   drop table EDU_OAXT_26_A03_SYSSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_26_A04_SYSSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_26_A04_SYSSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_30_A01_DSJ')
            and   type = 'U')
   drop table EDU_OAXT_30_A01_DSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_30_A02_DSJXX')
            and   type = 'U')
   drop table EDU_OAXT_30_A02_DSJXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_31_A01_GRTXL')
            and   type = 'U')
   drop table EDU_OAXT_31_A01_GRTXL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_31_A02_GRTXLZDPZ')
            and   type = 'U')
   drop table EDU_OAXT_31_A02_GRTXLZDPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_31_A03_XGRTXL')
            and   type = 'U')
   drop table EDU_OAXT_31_A03_XGRTXL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_32_A01_DCWJ')
            and   type = 'U')
   drop table EDU_OAXT_32_A01_DCWJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_32_A02_DCWJTM')
            and   type = 'U')
   drop table EDU_OAXT_32_A02_DCWJTM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_32_A03_DCWJTMXX')
            and   type = 'U')
   drop table EDU_OAXT_32_A03_DCWJTMXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_32_A04_DCWJJL')
            and   type = 'U')
   drop table EDU_OAXT_32_A04_DCWJJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_33_A01_GWJCXX')
            and   type = 'U')
   drop table EDU_OAXT_33_A01_GWJCXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_33_A02_GZ')
            and   type = 'U')
   drop table EDU_OAXT_33_A02_GZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_33_A03_FW')
            and   type = 'U')
   drop table EDU_OAXT_33_A03_FW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_33_A04_SW')
            and   type = 'U')
   drop table EDU_OAXT_33_A04_SW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_33_A05_HTWZ')
            and   type = 'U')
   drop table EDU_OAXT_33_A05_HTWZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_34_A01_WYLCJL')
            and   type = 'U')
   drop table EDU_OAXT_34_A01_WYLCJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_35_A01_RW')
            and   type = 'U')
   drop table EDU_OAXT_35_A01_RW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_35_A02_RWJSR')
            and   type = 'U')
   drop table EDU_OAXT_35_A02_RWJSR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_35_A03_HFJL')
            and   type = 'U')
   drop table EDU_OAXT_35_A03_HFJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_36_A01_BJGZLB')
            and   type = 'U')
   drop table EDU_OAXT_36_A01_BJGZLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_36_A02_BJGZJC')
            and   type = 'U')
   drop table EDU_OAXT_36_A02_BJGZJC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_37_A01_CYWDXX')
            and   type = 'U')
   drop table EDU_OAXT_37_A01_CYWDXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_37_A02_CYWDLX')
            and   type = 'U')
   drop table EDU_OAXT_37_A02_CYWDLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_38_A01_XWBSWZLB')
            and   type = 'U')
   drop table EDU_OAXT_38_A01_XWBSWZLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_38_A02_XWBSSQ')
            and   type = 'U')
   drop table EDU_OAXT_38_A02_XWBSSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_38_A03_XWBSSHJL')
            and   type = 'U')
   drop table EDU_OAXT_38_A03_XWBSSHJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_39_A01_GWLB')
            and   type = 'U')
   drop table EDU_OAXT_39_A01_GWLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_39_A02_SWB')
            and   type = 'U')
   drop table EDU_OAXT_39_A02_SWB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_39_A03_GWLZ')
            and   type = 'U')
   drop table EDU_OAXT_39_A03_GWLZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_39_A04_GWBHSZ')
            and   type = 'U')
   drop table EDU_OAXT_39_A04_GWBHSZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_40_A01_JCFKXX')
            and   type = 'U')
   drop table EDU_OAXT_40_A01_JCFKXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_41_A01_ZRGSLB')
            and   type = 'U')
   drop table EDU_OAXT_41_A01_ZRGSLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_41_A02_ZRGSNR')
            and   type = 'U')
   drop table EDU_OAXT_41_A02_ZRGSNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_41_A11_NJZGSLB')
            and   type = 'U')
   drop table EDU_OAXT_41_A11_NJZGSLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_41_A12_NJZGSNR')
            and   type = 'U')
   drop table EDU_OAXT_41_A12_NJZGSNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_41_A21_JYXXGSLB')
            and   type = 'U')
   drop table EDU_OAXT_41_A21_JYXXGSLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_41_A22_JYXXGSNR')
            and   type = 'U')
   drop table EDU_OAXT_41_A22_JYXXGSNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_41_A31_MZLYGSLB')
            and   type = 'U')
   drop table EDU_OAXT_41_A31_MZLYGSLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_41_A32_MZLYGSNR')
            and   type = 'U')
   drop table EDU_OAXT_41_A32_MZLYGSNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_41_A41_XXGGLB')
            and   type = 'U')
   drop table EDU_OAXT_41_A41_XXGGLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_41_A42_XXGGNR')
            and   type = 'U')
   drop table EDU_OAXT_41_A42_XXGGNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_50_A01_DFXM')
            and   type = 'U')
   drop table EDU_OAXT_50_A01_DFXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_50_A11_DFDL')
            and   type = 'U')
   drop table EDU_OAXT_50_A11_DFDL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_50_A12_DFJD')
            and   type = 'U')
   drop table EDU_OAXT_50_A12_DFJD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_50_A13_DFFS')
            and   type = 'U')
   drop table EDU_OAXT_50_A13_DFFS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_50_A14_DFXX')
            and   type = 'U')
   drop table EDU_OAXT_50_A14_DFXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_50_A15_DFJG')
            and   type = 'U')
   drop table EDU_OAXT_50_A15_DFJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_50_A16_FJZD')
            and   type = 'U')
   drop table EDU_OAXT_50_A16_FJZD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_50_A17_FJJL')
            and   type = 'U')
   drop table EDU_OAXT_50_A17_FJJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_50_A18_SHJL')
            and   type = 'U')
   drop table EDU_OAXT_50_A18_SHJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_50_A19_DFPC')
            and   type = 'U')
   drop table EDU_OAXT_50_A19_DFPC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_50_A50_DFTJSJJ')
            and   type = 'U')
   drop table EDU_OAXT_50_A50_DFTJSJJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_50_A51_DFTJZD')
            and   type = 'U')
   drop table EDU_OAXT_50_A51_DFTJZD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_50_A52_DFTJZDJSFS')
            and   type = 'U')
   drop table EDU_OAXT_50_A52_DFTJZDJSFS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_50_A53_DFTJSJ')
            and   type = 'U')
   drop table EDU_OAXT_50_A53_DFTJSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_50_A54_DFTJJGST')
            and   type = 'U')
   drop table EDU_OAXT_50_A54_DFTJJGST
go
--文件基本数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_01_01_WJJBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_01_01_WJJBSJ](
	[SCHOOLID]  int  NOT NULL,--学校名
	[ID]  int  NOT NULL,--文件ID
	[WJBH]  nvarchar(10)  NOT NULL,--文件编号
	[WJWH]  nvarchar(24)  NOT NULL,--文件文号
	[BT]  nvarchar(60)  NOT NULL,--标题
	[ZTC]  text  NOT NULL,--主题词
	[MJM]  nvarchar(1)  NOT NULL,--密级码
	[JJCDM]  nvarchar(1)  NOT NULL,--紧急程度码
	[YS]  decimal(6, 0)  NULL,--页数
	[WJFLM]  nvarchar(2)  NOT NULL,--文件分类码
	[ZW]  text  NOT NULL,--正文
	[FJ]  text  NOT NULL,--附件
	[FWRQ]  nvarchar(8)  NOT NULL,--发文日期
	[CSDW]  text  NOT NULL,--抄送单位
CONSTRAINT [PK_EDU_OAXT_01_01_WJJBSJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--收文处理子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_02_01_SWCL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_02_01_SWCL](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[QSRID]  nvarchar(20)  NOT NULL,--签收人ID
	[CFRID]  nvarchar(20)  NOT NULL,--拆封人ID
	[DJRID]  nvarchar(20)  NOT NULL,--登记人ID
	[QSRGH]  nvarchar(20)  NOT NULL,--签收人工号
	[CFRGH]  nvarchar(20)  NOT NULL,--拆封人工号
	[DJRGH]  nvarchar(20)  NOT NULL,--登记人工号
	[SWRQ]  nvarchar(8)  NOT NULL,--收文日期
	[LWDW]  nvarchar(60)  NOT NULL,--来文单位
	[FS]  decimal(3, 0)  NOT NULL,--份数
	[CLQK]  text  NOT NULL,--处理情况
	[FYFS]  decimal(4, 0)  NULL,--翻印份数
CONSTRAINT [PK_EDU_OAXT_02_01_SWCL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--文件阅办子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_02_02_WJYB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_02_02_WJYB](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[YBRID]  nvarchar(20)  NOT NULL,--阅办人ID
	[YBLBM]  nvarchar(1)  NULL,--阅办类别码
	[YBJB]  nvarchar(30)  NULL,--阅办级别
	[YBDW]  nvarchar(60)  NULL,--阅办单位
	[YBDWBH]  nvarchar(10)  NULL,--阅办单位编号
	[YBRGH]  nvarchar(20)  NULL,--阅办人工号
	[YBYJ]  text  NOT NULL,--阅办意见
	[YBRQ]  nvarchar(8)  NULL,--阅办日期
CONSTRAINT [PK_EDU_OAXT_02_02_WJYB] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--发文处理子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_03_01_FWCL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_03_01_FWCL](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[NGRID]  nvarchar(20)  NOT NULL,--拟稿人ID
	[QFRID]  nvarchar(20)  NOT NULL,--签发人ID
	[DJRID]  nvarchar(20)  NOT NULL,--登记人ID
	[DZRID]  nvarchar(20)  NOT NULL,--打字人ID
	[JDRID]  nvarchar(20)  NOT NULL,--校对人ID
	[NGRGH]  nvarchar(20)  NOT NULL,--拟稿人工号
	[NGRQ]  nvarchar(8)  NULL,--拟稿日期
	[QFRGH]  nvarchar(20)  NOT NULL,--签发人工号
	[QFRQ]  nvarchar(8)  NOT NULL,--签发日期
	[FSFW]  nvarchar(60)  NOT NULL,--发送范围
	[FSFSM]  nvarchar(1)  NOT NULL,--发送方式码
	[DJRGH]  nvarchar(20)  NOT NULL,--登记人工号
	[DJRQ]  nvarchar(8)  NOT NULL,--登记日期
	[FWJS]  decimal(4, 0)  NOT NULL,--发文件数
	[GWFWRQ]  nvarchar(8)  NOT NULL,--公文发文日期
	[CLQK]  text  NOT NULL,--处理情况
	[DZRGH]  nvarchar(20)  NULL,--打字人工号
	[JDRGH]  nvarchar(20)  NULL,--校对人工号
	[FZFSM]  nvarchar(1)  NOT NULL,--封装方式码
CONSTRAINT [PK_EDU_OAXT_03_01_FWCL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--核稿子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_03_02_HG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_03_02_HG](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[HGRID]  nvarchar(20)  NOT NULL,--核稿人ID
	[HGRGH]  nvarchar(20)  NOT NULL,--核稿人工号
	[HGDW]  nvarchar(60)  NOT NULL,--核稿单位
	[HGYJ]  text  NOT NULL,--核稿意见
	[HGRQ]  nvarchar(8)  NOT NULL,--核稿日期
CONSTRAINT [PK_EDU_OAXT_03_02_HG] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--会签子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_03_03_HQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_03_03_HQ](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[HQRID]  nvarchar(20)  NOT NULL,--会签人ID
	[HQR]  nvarchar(36)  NOT NULL,--会签人
	[HQDW]  nvarchar(60)  NOT NULL,--会签单位
	[HQYJ]  text  NOT NULL,--会签意见
	[HQRQ]  nvarchar(8)  NOT NULL,--会签日期
CONSTRAINT [PK_EDU_OAXT_03_03_HQ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--呈批子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_03_04_CP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_03_04_CP](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[PFRID]  nvarchar(20)  NOT NULL,--批复人ID
	[PFR]  nvarchar(36)  NOT NULL,--批复人
	[PFDW]  nvarchar(60)  NOT NULL,--批复单位
	[PFYJ]  text  NOT NULL,--批复意见
	[PFRQ]  nvarchar(8)  NOT NULL,--批复日期
CONSTRAINT [PK_EDU_OAXT_03_04_CP] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--文件清退数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_04_01_WJQT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_04_01_WJQT](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[JBRID]  nvarchar(20)  NOT NULL,--经办人ID
	[QTRQ]  nvarchar(8)  NOT NULL,--清退日期
	[QTFW]  nvarchar(180)  NOT NULL,--清退范围
	[QTSM]  text  NULL,--清退说明
	[JBRGH]  nvarchar(20)  NOT NULL,--经办人工号
CONSTRAINT [PK_EDU_OAXT_04_01_WJQT] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--文件销毁数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_05_01_WJXH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_05_01_WJXH](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[XHSPRID]  nvarchar(20)  NOT NULL,--销毁审批人ID
	[JBRID]  nvarchar(20)  NOT NULL,--经办人ID
	[XHRQ]  nvarchar(8)  NOT NULL,--销毁日期
	[XHSPRGH]  nvarchar(20)  NOT NULL,--销毁审批人工号
	[XHSM]  text  NULL,--销毁说明
	[JBRGH]  nvarchar(20)  NOT NULL,--经办人工号
CONSTRAINT [PK_EDU_OAXT_05_01_WJXH] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--文件借阅数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_06_01_WJJQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_06_01_WJJQ](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[JYSPRID]  nvarchar(20)  NOT NULL,--借阅审批人ID
	[JYJBRID]  nvarchar(20)  NOT NULL,--借阅经办人ID
	[JYR]  nvarchar(36)  NOT NULL,--借阅人
	[JYRQ]  nvarchar(8)  NOT NULL,--借阅日期
	[JYSPRGH]  nvarchar(20)  NOT NULL,--借阅审批人工号
	[JYJBRGH]  nvarchar(20)  NOT NULL,--借阅经办人工号
	[JYYY]  nvarchar(80)  NULL,--借阅原因
CONSTRAINT [PK_EDU_OAXT_06_01_WJJQ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--档案登记数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_08_01_DADJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_08_01_DADJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[QZH]  nvarchar(10)  NOT NULL,--全宗号
	[ND]  nvarchar(4)  NOT NULL,--年度
	[MLH]  nvarchar(5)  NOT NULL,--目录号
	[AJH]  nvarchar(5)  NOT NULL,--案卷号
	[TM]  nvarchar(120)  NOT NULL,--题名
	[ZTC]  text  NOT NULL,--主题词
	[QSRQ]  datetime  NULL,--起始日期
	[JZRQ]  datetime  NULL,--截止日期
	[BGQXM]  nvarchar(1)  NOT NULL,--保管期限码
	[MJM]  nvarchar(1)  NULL,--密级码
	[YS]  decimal(6, 0)  NOT NULL,--页数
	[FS]  decimal(8, 0)  NOT NULL,--份数
	[BZDW]  nvarchar(60)  NULL,--编制单位
	[CFWZ]  nvarchar(60)  NOT NULL,--存放位置
	[DAFLM]  nvarchar(2)  NOT NULL,--档案分类码
CONSTRAINT [PK_EDU_OAXT_08_01_DADJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--通知数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_10_A01_TZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_10_A01_TZ](
	[ID]  int  NOT NULL,--通知ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[FSRID]  nvarchar(20)  NOT NULL,--发送人ID
	[FSRLB]  int  NOT NULL,--发送人类别
	[BT]  nvarchar(100)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
	[FJ]  nvarchar(500)  NULL,--附件
	[TJRQ]  datetime  NOT NULL,--添加日期
	[JSRS]  int  NOT NULL,--接收人数
	[JSRIDLB]  text  NOT NULL,--接收人ID列表
	[JSRMZLB]  text  NOT NULL,--接收人名字列表
	[YYDRIDLB]  text  NULL,--已阅读人ID列表
	[YYDRMZLB]  text  NOT NULL,--已阅读人名字列表
	[FSZT]  int  NOT NULL,--发送状态
CONSTRAINT [PK_EDU_OAXT_10_A01_TZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--通知阅读记录
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_10_A02_TZYDJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_10_A02_TZYDJL](
	[ID]  int  NOT NULL,--通知阅读记录ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[TZID]  int  NOT NULL,--通知ID
	[BTZRID]  nvarchar(20)  NOT NULL,--被通知人ID
	[YDRQ]  datetime  NOT NULL,--阅读日期
	[SFYD]  nvarchar(1)  NOT NULL,--是否已阅读
	[SCZT]  int  NOT NULL,--删除状态
CONSTRAINT [PK_EDU_OAXT_10_A02_TZYDJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--公告数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_10_A03_GG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_10_A03_GG](
	[ID]  int  NOT NULL,--公告ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[FBRID]  nvarchar(20)  NOT NULL,--发布人ID
	[FBBM]  nvarchar(100)  NOT NULL,--发布部门
	[FBSJ]  datetime  NOT NULL,--发布时间
	[BT]  nvarchar(200)  NOT NULL,--公告标题
	[NR]  text  NOT NULL,--公告内容
	[ZT]  int  NOT NULL,--公告状态
CONSTRAINT [PK_EDU_OAXT_10_A03_GG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--通知模板表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_10_A04_TZMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_10_A04_TZMB](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[MBMC]  nvarchar(50)  NOT NULL,--模板名称
	[MBNR]  text  NOT NULL,--模板内容
CONSTRAINT [PK_EDU_OAXT_10_A04_TZMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--邮件数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_11_A01_YJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_11_A01_YJ](
	[ID]  int  NOT NULL,--邮件ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[YYZID]  nvarchar(20)  NOT NULL,--拥有者ID
	[FSRID]  nvarchar(20)  NOT NULL,--发送人ID
	[JSRID]  nvarchar(20)  NOT NULL,--接收人ID
	[FSRMC]  nvarchar(100)  NOT NULL,--发送人名称
	[JSRMC]  nvarchar(100)  NOT NULL,--接收人名称
	[JSRIDLB]  text  NOT NULL,--接收人ID列表
	[JSRMCLB]  text  NOT NULL,--接收人名称列表
	[BT]  nvarchar(200)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
	[FJ]  nvarchar(200)  NOT NULL,--附件
	[FSSJ]  datetime  NOT NULL,--发送时间
	[SFYD]  nvarchar(1)  NOT NULL,--是否已阅读
	[YJLX]  int  NOT NULL,--邮件类型
CONSTRAINT [PK_EDU_OAXT_11_A01_YJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--邮件发送限制人数表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_11_A02_YJFSXZRS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_11_A02_YJFSXZRS](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[YHID]  nvarchar(20)  NOT NULL,--用户ID
	[FSRSSX]  int  NOT NULL,--发送人数上限
CONSTRAINT [PK_EDU_OAXT_11_A02_YJFSXZRS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--数据发布类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_12_A01_SJFB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_12_A01_SJFB](
	[ID]  int  identity,--数据发布ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[FBRID]  nvarchar(20)  NOT NULL,--发布人ID
	[FBBZRID]  nvarchar(20)  NOT NULL,--发布批准人ID
	[FBH]  nvarchar(10)  NOT NULL,--发布号
	[XXBT]  nvarchar(100)  NOT NULL,--数据标题
	[FBLMH]  nvarchar(2)  NOT NULL,--发布栏目号
	[SJNR]  text  NOT NULL,--数据内容
	[FJS]  decimal(2, 0)  NOT NULL,--附件数
	[FBRQ]  nvarchar(8)  NOT NULL,--发布日期
	[FBDW]  nvarchar(10)  NOT NULL,--发布单位号
	[FBRGH]  nvarchar(20)  NULL,--发布人工号
	[FBFW]  nvarchar(200)  NULL,--发布范围
	[FBBZRH]  nvarchar(10)  NOT NULL,--发布批准人号
	[SJZT]  nvarchar(10)  NOT NULL,--数据状态
CONSTRAINT [PK_EDU_OAXT_12_A01_SJFB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--单位数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_13_A01_DWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_13_A01_DWSJ](
	[ID]  int  NOT NULL,--单位ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[SJDWID]  int  NULL,--上级单位ID
	[DWFZRID]  nvarchar(20)  NULL,--单位负责人ID
	[DWMC]  nvarchar(60)  NULL,--单位名称
	[DWCYIDLB]  text  NULL,--单位成员ID列表
CONSTRAINT [PK_EDU_OAXT_13_A01_DWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--个人日程信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_14_A01_GRRCXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_14_A01_GRRCXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[YHID]  nvarchar(20)  NOT NULL,--用户ID
	[BT]  nvarchar(200)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[SFTS]  nvarchar(1)  NOT NULL,--是否提示
	[ZT]  int  NOT NULL,--状态
CONSTRAINT [PK_EDU_OAXT_14_A01_GRRCXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产目录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A01_ZCML]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A01_ZCML](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[Name]  nvarchar(100)  NOT NULL,--校产目录
	[Superid]  int  NOT NULL,--父目录ID
	[Remark]  nvarchar(100)  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_15_A01_ZCML] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产大类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A02_ZCDL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A02_ZCDL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[Name]  nvarchar(100)  NOT NULL,--校产类型
	[Remark]  nvarchar(100)  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_15_A02_ZCDL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产库存表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A03_ZCKC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A03_ZCKC](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[TypeID]  int  NOT NULL,--资产目录表ID
	[ClassID]  int  NOT NULL,--资产大类表ID
	[Name]  nvarchar(200)  NOT NULL,--资产名称
	[Info]  nvarchar(200)  NOT NULL,--资产规格
	[Productdate]  datetime  NOT NULL,--出厂时间
	[Price]  decimal(10, 2)  NOT NULL,--单价
	[SumCount]  decimal(8, 2)  NOT NULL,--数量
	[Merchant]  nvarchar(200)  NOT NULL,--供应商
	[Vender]  nvarchar(200)  NOT NULL,--厂家
	[Remark]  nvarchar(100)  NOT NULL,--备注
	[AllCount]  decimal(8, 2)  NOT NULL,--资产总量
	[RKL]  decimal(8, 2)  NOT NULL,--入库量
	[RQ]  datetime  NOT NULL,--日期
	[DW]  nvarchar(100)  NOT NULL,--单位
	[ZJ]  decimal(10, 2)  NOT NULL,--总价
	[SYBM]  nvarchar(100)  NOT NULL,--使用部门
	[CFDW]  nvarchar(200)  NOT NULL,--存放单位
	[FZR]  nvarchar(50)  NOT NULL,--负责人
	[CZFS]  nvarchar(200)  NOT NULL,--处置方式
CONSTRAINT [PK_EDU_OAXT_15_A03_ZCKC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产入库表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A04_ZCRK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A04_ZCRK](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[TypeID]  int  NOT NULL,--资产目录表ID
	[ClassID]  int  NOT NULL,--资产大类表ID
	[Name]  nvarchar(200)  NOT NULL,--校产名称
	[Info]  nvarchar(200)  NOT NULL,--资产规格
	[Productdate]  datetime  NOT NULL,--出厂时间
	[Price]  decimal(10, 2)  NOT NULL,--单价
	[SumCount]  decimal(8, 2)  NOT NULL,--数量
	[Merchant]  nvarchar(200)  NOT NULL,--供应商
	[Vender]  nvarchar(200)  NOT NULL,--厂家
	[Registdate]  datetime  NOT NULL,--登记时间
	[Remark]  nvarchar(100)  NOT NULL,--备注
	[Status]  int  NOT NULL,--审核状态
	[RQ]  datetime  NOT NULL,--日期
	[DW]  nvarchar(100)  NOT NULL,--单位
	[ZJ]  decimal(10, 2)  NOT NULL,--总价
	[SYBM]  nvarchar(100)  NOT NULL,--使用部门
	[CFDW]  nvarchar(200)  NOT NULL,--存放单位
	[FZR]  nvarchar(50)  NOT NULL,--负责人
	[CZFS]  nvarchar(200)  NOT NULL,--处置方式
CONSTRAINT [PK_EDU_OAXT_15_A04_ZCRK] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产借还表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A05_ZCJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A05_ZCJH](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[TypeID]  int  NOT NULL,--资产目录表ID
	[ClassID]  int  NOT NULL,--资产大类表ID
	[AID]  int  NOT NULL,--库存表ID
	[SumCount]  decimal(8, 2)  NOT NULL,--数量
	[Unit]  nvarchar(10)  NOT NULL,--单位
	[Borrower]  nvarchar(200)  NOT NULL,--借用方
	[Remark]  nvarchar(100)  NOT NULL,--备注
	[Registdate]  datetime  NOT NULL,--登记时间
CONSTRAINT [PK_EDU_OAXT_15_A05_ZCJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产变更表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A06_ZCBG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A06_ZCBG](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[TypeID]  int  NOT NULL,--类别(领用、借用、报损)
	[TypeName]  nvarchar(100)  NOT NULL,--类别名称
	[AID]  int  NOT NULL,--库存表ID
	[Name]  nvarchar(200)  NOT NULL,--资产名称
	[Option]  nvarchar(200)  NOT NULL,--操作
	[RegistTime]  datetime  NOT NULL,--登记时间
	[Remark]  nvarchar(100)  NOT NULL,--备注
	[SumCount]  decimal(8, 2)  NOT NULL,--数量
CONSTRAINT [PK_EDU_OAXT_15_A06_ZCBG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--报修类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A07_BXLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A07_BXLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[TypeName]  nvarchar(50)  NOT NULL,--类型名称
	[Remark]  nvarchar(300)  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_15_A07_BXLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--报修管理表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A08_BXGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A08_BXGL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[AID]  int  NOT NULL,--库存表ID
	[TypeID]  int  NOT NULL,--报修类型ID
	[Title]  nvarchar(300)  NOT NULL,--报修主题
	[Telephone]  nvarchar(20)  NOT NULL,--联系电话
	[Repairplace]  nvarchar(20)  NOT NULL,--报修地点
	[Repaircontent]  nvarchar(20)  NOT NULL,--报修内容
	[Repairpeople]  nvarchar(20)  NOT NULL,--维修人
	[RepairDate]  datetime  NOT NULL,--维修时间
	[ReadrID]  nvarchar(200)  NOT NULL,--阅读情况
	[Readr]  nvarchar(200)  NOT NULL,--阅读情况
	[Applicant]  nvarchar(20)  NOT NULL,--申请人
	[Approver]  nvarchar(20)  NULL,--审批人
	[Evaluate]  nvarchar(200)  NOT NULL,--评价
	[StartDate]  datetime  NOT NULL,--开始时间
	[Status]  int  NOT NULL,--状态
	[Remark]  nvarchar(300)  NOT NULL,--备注
	[SumCount]  decimal(8, 2)  NOT NULL,--数量
	[GZTP]  text  NOT NULL,--故障图片
	[WCZT]  int  NOT NULL,--完成状态
	[SCZT]  int  NOT NULL,--删除状态
CONSTRAINT [PK_EDU_OAXT_15_A08_BXGL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--维修计划表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A09_WXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A09_WXJH](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[AID]  int  NOT NULL,--库存表ID
	[Title]  nvarchar(100)  NOT NULL,--计划标题
	[Content]  text  NOT NULL,--维修内容
CONSTRAINT [PK_EDU_OAXT_15_A09_WXJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产报废表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A10_ZCBF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A10_ZCBF](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[AID]  int  NOT NULL,--库存表ID
	[Sum]  decimal(8, 2)  NOT NULL,--数量
	[Reporter]  nvarchar(100)  NOT NULL,--申报人
	[Remark]  nvarchar(100)  NOT NULL,--备注
	[RegsterID]  nvarchar(20)  NOT NULL,--登记人ID
	[Statu]  int  NOT NULL,--状态
	[Registdate]  datetime  NOT NULL,--登记时间
CONSTRAINT [PK_EDU_OAXT_15_A10_ZCBF] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产盘点表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A11_ZCPD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A11_ZCPD](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[Title]  nvarchar(100)  NOT NULL,--盘点名称
	[PanDate]  datetime  NOT NULL,--盘点日期
	[PanTypeIDs]  text  NOT NULL,--盘点目录ID列表
	[Remark]  text  NOT NULL,--备注
	[Statu]  int  NOT NULL,--状态
CONSTRAINT [PK_EDU_OAXT_15_A11_ZCPD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产盘点明细表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A12_ZCPDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A12_ZCPDMX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[AID]  int  NOT NULL,--库存表ID
	[PID]  int  NOT NULL,--盘点表ID
	[PUserID]  nvarchar(20)  NOT NULL,--盘点人ID
	[Storesum]  decimal(8, 2)  NOT NULL,--库存数
	[RealSum]  decimal(8, 2)  NOT NULL,--实存数
	[Name]  nvarchar(200)  NOT NULL,--资产名称
	[AllCount]  decimal(8, 2)  NOT NULL,--资产总量
	[Remark]  text  NOT NULL,--备注
	[BorrowCount]  decimal(8, 2)  NOT NULL,--借用数量
CONSTRAINT [PK_EDU_OAXT_15_A12_ZCPDMX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--维修记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A13_WXJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A13_WXJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[WPID]  int  NOT NULL,--物品ID
	[WXZT]  int  NOT NULL,--维修状态
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_15_A13_WXJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--报修故障信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A14_BXGZXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A14_BXGZXX](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BXLXID]  int  NOT NULL,--报修类型ID
	[GZXX]  nvarchar(500)  NOT NULL,--故障信息
CONSTRAINT [PK_EDU_OAXT_15_A14_BXGZXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产目录权限表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A15_ZCMLQX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A15_ZCMLQX](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[YHID]  nvarchar(20)  NOT NULL,--用户ID
	[MLIDLB]  text  NULL,--目录ID列表
	[MLMCLB]  text  NULL,--目录名称列表
CONSTRAINT [PK_EDU_OAXT_15_A15_ZCMLQX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--流程模板类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A01_LCMBLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A01_LCMBLX](
	[ID]  int  NOT NULL,--编号
	[LXMC]  nvarchar(100)  NOT NULL,--类型名称
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_20_A01_LCMBLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--流程表单数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A02_LCBDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A02_LCBDSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BDMC]  nvarchar(100)  NOT NULL,--表单名称
	[BDNR]  text  NOT NULL,--表单内容
	[TJSJ]  datetime  NOT NULL,--添加时间
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_20_A02_LCBDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--流程模板表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A03_LCMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A03_LCMB](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MBLXID]  int  NOT NULL,--模板类型ID
	[MBMC]  nvarchar(100)  NOT NULL,--模板名称
	[BDID]  int  NOT NULL,--表单ID
	[QSBZID]  int  NOT NULL,--起始步骤ID
	[JSBZID]  int  NOT NULL,--结束步骤ID
	[TJSJ]  datetime  NOT NULL,--添加时间
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_20_A03_LCMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--流程步骤表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A04_LCBZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A04_LCBZ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BZMC]  nvarchar(100)  NOT NULL,--步骤名称
	[LCMBID]  int  NOT NULL,--流程模板ID
	[SPRIDLB]  text  NOT NULL,--审批人ID列表
	[SPRMCLB]  text  NOT NULL,--审批人名称列表
	[SYBZID]  int  NOT NULL,--上一步骤ID
	[XYBZID]  int  NOT NULL,--下一步骤ID
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_20_A04_LCBZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--流程实例表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A05_LCSL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A05_LCSL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LCMBID]  int  NOT NULL,--流程模板ID
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[SPRID]  nvarchar(20)  NOT NULL,--审批人ID
	[SQSJ]  datetime  NOT NULL,--申请时间
	[DQBZID]  int  NOT NULL,--当前步骤ID
	[DQBZZXZT]  int  NOT NULL,--当前步骤执行状态
	[YXQ]  datetime  NOT NULL,--有效期
	[SLZT]  int  NOT NULL,--实例状态
	[FJ]  nvarchar(500)  NOT NULL,--附件
	[BZ]  text  NOT NULL,--备注
	[LXID]  int  NOT NULL,--类型ID
	[LXMC]  nvarchar(100)  NULL,--类型名称
CONSTRAINT [PK_EDU_OAXT_20_A05_LCSL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--流程审核记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A06_LCSHJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A06_LCSHJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LCMBMC]  nvarchar(100)  NOT NULL,--流程模板名称
	[LCSLID]  int  NOT NULL,--流程实例ID
	[BZMC]  nvarchar(100)  NOT NULL,--步骤名称
	[BZID]  int  NOT NULL,--步骤ID
	[LCMBLXID]  int  NOT NULL,--流程模板类型ID
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[SPRID]  nvarchar(20)  NOT NULL,--审批人ID
	[SHZT]  int  NOT NULL,--审核状态
	[TJSJ]  datetime  NOT NULL,--添加时间
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_20_A06_LCSHJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--流程模板类型配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A07_LCMBLXPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A07_LCMBLXPZ](
	[LCMBLXID]  int  NOT NULL,--流程模板类型ID
	[SCHOOLID]  int  NOT NULL,--学校
	[BSYLC]  int  NOT NULL,--不使用流程
CONSTRAINT [PK_EDU_OAXT_20_A07_LCMBLXPZ] PRIMARY KEY CLUSTERED
(
	[LCMBLXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--请假类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_21_A01_QJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_21_A01_QJLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LXMC]  nvarchar(50)  NOT NULL,--类型名称
	[BZ]  text  NOT NULL,--备注
	[JSDW]  nvarchar(50)  NOT NULL,--计时单位
	[ZCSJ]  decimal(8, 2)  NOT NULL,--最长时间
CONSTRAINT [PK_EDU_OAXT_21_A01_QJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--请假申请表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_21_A02_QJSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_21_A02_QJSQ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LCSLID]  int  NOT NULL,--流程实例ID
	[QJLXID]  int  NOT NULL,--请假类型ID
	[QJYY]  nvarchar(300)  NOT NULL,--请假原因
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[QJTS]  decimal(18, 2)  NOT NULL,--请假天数
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQZT]  int  NOT NULL,--申请状态
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[BZ]  text  NOT NULL,--备注
	[BJ]  int  NOT NULL,--补假
	[XJ]  int  NOT NULL,--销假
	[XJRID]  nvarchar(20)  NOT NULL,--销假人ID
	[XJSJ]  datetime  NOT NULL,--销假时间
CONSTRAINT [PK_EDU_OAXT_21_A02_QJSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--请假申请修改记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_21_A03_QJSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_21_A03_QJSQXGJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SQID]  int  NOT NULL,--请假申请表ID
	[XGYHID]  nvarchar(20)  NOT NULL,--修改用户ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--修改用户姓名
	[QJLXID]  int  NOT NULL,--请假类型ID
	[QJLXMC]  nvarchar(200)  NOT NULL,--请假类型名称
	[QJYY]  nvarchar(300)  NOT NULL,--请假原因
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[QJTS]  decimal(5, 2)  NOT NULL,--请假天数
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQZT]  int  NOT NULL,--申请状态
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[BZ]  text  NOT NULL,--备注
	[LCSLID]  int  NOT NULL,--流程实例ID
	[LCSLZT]  int  NULL,--流程实例状态
	[LCMBID]  int  NOT NULL,--流程模板ID
	[LCMBMC]  nvarchar(200)  NOT NULL,--流程模板名称
	[DQBZID]  int  NULL,--当前步骤ID
	[DQBZMC]  nvarchar(200)  NOT NULL,--当前步骤名称
	[DQBZSHZT]  int  NULL,--当前步骤审核状态
	[SQRBMID]  int  NULL,--申请人部门ID
CONSTRAINT [PK_EDU_OAXT_21_A03_QJSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--会议室数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A01_HYSSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A01_HYSSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[FJMC]  nvarchar(50)  NOT NULL,--房间名称
	[FJDZ]  nvarchar(200)  NOT NULL,--房间地址
	[ZDRNRS]  int  NOT NULL,--最大容纳人数
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_22_A01_HYSSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--会议申请表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A02_HYSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A02_HYSQ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LCSLID]  int  NOT NULL,--流程实例ID
	[HYMC]  nvarchar(200)  NOT NULL,--会议名称
	[HYNR]  text  NOT NULL,--会议内容
	[ZCRID]  nvarchar(20)  NOT NULL,--主持人
	[JLRID]  nvarchar(20)  NOT NULL,--记录人
	[HYJB]  nvarchar(10)  NOT NULL,--会议级别
	[HYDDID]  int  NOT NULL,--会议地点ID
	[HYDZ]  nvarchar(50)  NOT NULL,--会议地址
	[YHRYIDLB]  text  NOT NULL,--与会人员ID列表
	[YHRYXMLB]  text  NOT NULL,--与会人员姓名列表
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQZT]  int  NOT NULL,--申请状态
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[BZ]  text  NOT NULL,--备注
	[FJ]  nvarchar(300)  NULL,--附件
CONSTRAINT [PK_EDU_OAXT_22_A02_HYSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--会议申请修改记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A03_HYSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A03_HYSQXGJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SQID]  int  NOT NULL,--会议申请表ID
	[XGYHID]  nvarchar(20)  NOT NULL,--修改用户ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--修改用户姓名
	[HYMC]  nvarchar(200)  NOT NULL,--会议名称
	[HYNR]  text  NOT NULL,--会议内容
	[ZCRID]  nvarchar(20)  NOT NULL,--主持人
	[JLRID]  nvarchar(20)  NOT NULL,--记录人
	[HYJB]  nvarchar(10)  NOT NULL,--会议级别
	[HYDZID]  int  NOT NULL,--会议地点ID
	[HYDZ]  nvarchar(50)  NOT NULL,--会议地址
	[YHRYIDLB]  text  NOT NULL,--与会人员ID列表
	[YHRYXMLB]  text  NOT NULL,--与会人员姓名列表
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQZT]  int  NOT NULL,--申请状态
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[BZ]  text  NOT NULL,--备注
	[FJ]  nvarchar(300)  NULL,--附件
	[LCSLID]  int  NOT NULL,--流程实例ID
	[LCSLZT]  int  NULL,--流程实例状态
	[LCMBID]  int  NOT NULL,--流程模板ID
	[LCMBMC]  nvarchar(200)  NOT NULL,--流程模板名称
	[DQBZID]  int  NULL,--当前步骤ID
	[DQBZMC]  nvarchar(200)  NOT NULL,--当前步骤名称
	[DQBZSHZT]  int  NULL,--当前步骤审核状态
	[SQRBMID]  int  NULL,--申请人部门ID
CONSTRAINT [PK_EDU_OAXT_22_A03_HYSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--会议纪要表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A04_HYJY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A04_HYJY](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[HYID]  int  NOT NULL,--会议ID
	[HYJYNR]  text  NOT NULL,--会议纪要内容
	[JLRID]  nvarchar(20)  NOT NULL,--记录人
	[JLSJ]  datetime  NOT NULL,--记录时间
CONSTRAINT [PK_EDU_OAXT_22_A04_HYJY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--会议备注类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A05_HYBZLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A05_HYBZLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MC]  nvarchar(100)  NOT NULL,--名称
	[LX]  int  NOT NULL,--类型
CONSTRAINT [PK_EDU_OAXT_22_A05_HYBZLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--会议纪要模板表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A06_HYJYMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A06_HYJYMB](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MBMC]  nvarchar(50)  NOT NULL,--模板名称
	[MBNR]  text  NOT NULL,--模板内容
CONSTRAINT [PK_EDU_OAXT_22_A06_HYJYMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--公文申请表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_23_A01_GWSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_23_A01_GWSQ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LCSLID]  int  NOT NULL,--流程实例ID
	[GWBT]  nvarchar(200)  NOT NULL,--公文标题
	[GWNR]  text  NOT NULL,--公文内容
	[FJ]  nvarchar(200)  NOT NULL,--附件
	[SJRIDLB]  text  NOT NULL,--收件人ID列表
	[SJRXMLB]  text  NOT NULL,--收件人姓名列表
	[YDQK]  nvarchar(200)  NOT NULL,--阅读情况
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[SQZT]  int  NOT NULL,--申请状态
	[BZ]  text  NOT NULL,--备注
	[SWDW]  nvarchar(50)  NOT NULL,--收文单位
	[YGDCS]  int  NOT NULL,--已归档次数
	[WJBH]  nvarchar(50)  NOT NULL,--文件编号
CONSTRAINT [PK_EDU_OAXT_23_A01_GWSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--公文申请修改记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_23_A02_GWSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_23_A02_GWSQXGJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SQID]  int  NOT NULL,--公文申请表ID
	[XGYHID]  nvarchar(20)  NOT NULL,--修改用户ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--修改用户姓名
	[GWBT]  nvarchar(200)  NOT NULL,--公文标题
	[GWNR]  text  NOT NULL,--公文内容
	[FJ]  nvarchar(200)  NOT NULL,--附件
	[SJRIDLB]  text  NOT NULL,--收件人ID列表
	[SJRXMLB]  text  NOT NULL,--收件人姓名列表
	[YDQK]  nvarchar(200)  NOT NULL,--阅读情况
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[SQZT]  int  NOT NULL,--申请状态
	[BZ]  text  NOT NULL,--备注
	[SWDW]  nvarchar(50)  NOT NULL,--收文单位
	[LCSLID]  int  NOT NULL,--流程实例ID
	[LCSLZT]  int  NULL,--流程实例状态
	[LCMBID]  int  NOT NULL,--流程模板ID
	[LCMBMC]  nvarchar(200)  NOT NULL,--流程模板名称
	[DQBZID]  int  NULL,--当前步骤ID
	[DQBZMC]  nvarchar(200)  NOT NULL,--当前步骤名称
	[DQBZSHZT]  int  NULL,--当前步骤审核状态
	[SQRBMID]  int  NULL,--申请人部门ID
CONSTRAINT [PK_EDU_OAXT_23_A02_GWSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--用车申请表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_24_A01_YCSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_24_A01_YCSQ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LCSLID]  int  NOT NULL,--流程实例ID
	[YCYY]  nvarchar(300)  NOT NULL,--用车原因
	[WCRS]  int  NOT NULL,--外出人数
	[KSSJ]  datetime  NOT NULL,--开始时间
	[SYTS]  int  NOT NULL,--使用天数
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[SQZT]  int  NOT NULL,--申请状态
	[BZ]  text  NOT NULL,--备注
	[SQCLID]  int  NOT NULL,--申请车辆ID
	[JSSJ]  datetime  NOT NULL,--结束时间
CONSTRAINT [PK_EDU_OAXT_24_A01_YCSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--用车申请修改记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_24_A02_YCSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_24_A02_YCSQXGJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SQID]  int  NOT NULL,--用车申请表ID
	[XGYHID]  nvarchar(20)  NOT NULL,--修改用户ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--修改用户姓名
	[YCYY]  nvarchar(300)  NOT NULL,--用车原因
	[WCRS]  int  NOT NULL,--外出人数
	[KSSJ]  datetime  NOT NULL,--开始时间
	[SYTS]  int  NOT NULL,--使用天数
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[SQZT]  int  NOT NULL,--申请状态
	[BZ]  text  NOT NULL,--备注
	[LCSLID]  int  NOT NULL,--流程实例ID
	[LCSLZT]  int  NULL,--流程实例状态
	[LCMBID]  int  NOT NULL,--流程模板ID
	[LCMBMC]  nvarchar(200)  NOT NULL,--流程模板名称
	[DQBZID]  int  NULL,--当前步骤ID
	[DQBZMC]  nvarchar(200)  NOT NULL,--当前步骤名称
	[DQBZSHZT]  int  NULL,--当前步骤审核状态
	[SQRBMID]  int  NULL,--申请人部门ID
	[SQCLID]  int  NOT NULL,--申请车辆ID
	[JSSJ]  datetime  NOT NULL,--结束时间
CONSTRAINT [PK_EDU_OAXT_24_A02_YCSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--车辆数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_24_A03_CLSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_24_A03_CLSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[CLMC]  nvarchar(50)  NOT NULL,--车辆名称
	[CLPP]  nvarchar(200)  NOT NULL,--车辆品牌
	[CLCPH]  nvarchar(200)  NOT NULL,--车辆车牌号
	[ZDRNRS]  int  NOT NULL,--最大可载人数
	[CLZT]  int  NOT NULL,--车辆状态
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_24_A03_CLSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--采购申请表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_25_A01_CGSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_25_A01_CGSQ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LCSLID]  int  NOT NULL,--流程实例ID
	[CGDMC]  nvarchar(200)  NOT NULL,--采购单名称
	[CGNR]  text  NOT NULL,--采购内容
	[FJ]  nvarchar(300)  NOT NULL,--附件
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[CGZT]  int  NOT NULL,--采购状态
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_25_A01_CGSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--采购申请修改记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_25_A02_CGSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_25_A02_CGSQXGJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SQID]  int  NOT NULL,--采购申请表ID
	[XGYHID]  nvarchar(20)  NOT NULL,--修改用户ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--修改用户姓名
	[CGDMC]  nvarchar(200)  NOT NULL,--采购单名称
	[CGNR]  text  NOT NULL,--采购内容
	[FJ]  nvarchar(300)  NOT NULL,--附件
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[CGZT]  int  NOT NULL,--采购状态
	[BZ]  text  NOT NULL,--备注
	[LCSLID]  int  NOT NULL,--流程实例ID
	[LCSLZT]  int  NULL,--流程实例状态
	[LCMBID]  int  NOT NULL,--流程模板ID
	[LCMBMC]  nvarchar(200)  NOT NULL,--流程模板名称
	[DQBZID]  int  NULL,--当前步骤ID
	[DQBZMC]  nvarchar(200)  NOT NULL,--当前步骤名称
	[DQBZSHZT]  int  NULL,--当前步骤审核状态
	[SQRBMID]  int  NULL,--申请人部门ID
CONSTRAINT [PK_EDU_OAXT_25_A02_CGSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实验室数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_26_A01_SYSSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_26_A01_SYSSJ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MC]  nvarchar(50)  NOT NULL,--名称
	[DD]  nvarchar(200)  NOT NULL,--地点
	[FZR]  nvarchar(36)  NOT NULL,--负责人
CONSTRAINT [PK_EDU_OAXT_26_A01_SYSSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实验室器材表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_26_A02_SYSQC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_26_A02_SYSQC](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[QCMC]  nvarchar(50)  NOT NULL,--器材名称
CONSTRAINT [PK_EDU_OAXT_26_A02_SYSQC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实验室申请表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_26_A03_SYSSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_26_A03_SYSSQ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SYSID]  int  NOT NULL,--实验室ID
	[LCSLID]  int  NOT NULL,--流程实例ID
	[SYQC]  text  NOT NULL,--实验器材
	[SYMC]  nvarchar(200)  NOT NULL,--实验名称
	[KM]  nvarchar(50)  NOT NULL,--科目
	[BJ]  nvarchar(50)  NOT NULL,--班级
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQZT]  int  NOT NULL,--申请状态
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_26_A03_SYSSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实验室申请修改记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_26_A04_SYSSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_26_A04_SYSSQXGJL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SQID]  int  NOT NULL,--实验室申请表ID
	[XGYHID]  nvarchar(20)  NOT NULL,--修改用户ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--修改用户姓名
	[XGSJ]  datetime  NOT NULL,--修改时间
CONSTRAINT [PK_EDU_OAXT_26_A04_SYSSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--大事记表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_30_A01_DSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_30_A01_DSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BT]  nvarchar(100)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
CONSTRAINT [PK_EDU_OAXT_30_A01_DSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--大事记信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_30_A02_DSJXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_30_A02_DSJXX](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BT]  nvarchar(200)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
	[FBRID]  nvarchar(20)  NOT NULL,--发布人ID
	[TJSJ]  datetime  NOT NULL,--添加时间
	[SHZT]  int  NOT NULL,--审核状态
	[ZZ]  nvarchar(50)  NOT NULL,--作者
CONSTRAINT [PK_EDU_OAXT_30_A02_DSJXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--个人通讯录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_31_A01_GRTXL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_31_A01_GRTXL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[GRID]  nvarchar(20)  NOT NULL,--个人ID
	[LXRXM]  nvarchar(50)  NOT NULL,--联系人姓名
	[LXRDH]  nvarchar(50)  NOT NULL,--联系人电话
CONSTRAINT [PK_EDU_OAXT_31_A01_GRTXL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--个人通讯录字段配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_31_A02_GRTXLZDPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_31_A02_GRTXLZDPZ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ZDMC]  nvarchar(200)  NOT NULL,--字段名称
CONSTRAINT [PK_EDU_OAXT_31_A02_GRTXLZDPZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--新个人通讯录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_31_A03_XGRTXL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_31_A03_XGRTXL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[TXLID]  int  NOT NULL,--通讯录ID
	[ZDPZID]  int  NOT NULL,--字段配置表ID
	[NR]  nvarchar(200)  NOT NULL,--内容
CONSTRAINT [PK_EDU_OAXT_31_A03_XGRTXL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--调查问卷数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_32_A01_DCWJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_32_A01_DCWJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[Title]  nvarchar(300)  NOT NULL,--问卷名称
	[Users]  text  NOT NULL,--参选人员
	[StartTime]  datetime  NOT NULL,--开始时间
	[EndTime]  datetime  NOT NULL,--结束时间
	[IsStart]  int  NOT NULL,--是否开启
	[JJ]  text  NOT NULL,--简介
CONSTRAINT [PK_EDU_OAXT_32_A01_DCWJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--调查问卷题目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_32_A02_DCWJTM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_32_A02_DCWJTM](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[WJID]  int  NOT NULL,--所属问卷
	[TypeID]  int  NOT NULL,--题目类型
	[Title]  nvarchar(300)  NOT NULL,--题目
	[SSDL]  nvarchar(100)  NOT NULL,--所属大类
CONSTRAINT [PK_EDU_OAXT_32_A02_DCWJTM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--问卷题目选项表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_32_A03_DCWJTMXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_32_A03_DCWJTMXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[TMID]  int  NOT NULL,--所属题目
	[WJID]  int  NOT NULL,--所属问卷
	[SelectItem]  nvarchar(100)  NOT NULL,--选项
	[XXFZ]  int  NOT NULL,--选项分值
CONSTRAINT [PK_EDU_OAXT_32_A03_DCWJTMXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--问卷结果记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_32_A04_DCWJJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_32_A04_DCWJJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[YHID]  nvarchar(20)  NOT NULL,--用户ID
	[WJID]  int  NOT NULL,--所属问卷ID
	[TMID]  int  NOT NULL,--所属题目ID
	[XXID]  int  NOT NULL,--选项ID
	[XXFZ]  int  NOT NULL,--选项分值
	[TJZT]  int  NOT NULL,--提交状态
CONSTRAINT [PK_EDU_OAXT_32_A04_DCWJJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--公文基础信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_33_A01_GWJCXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_33_A01_GWJCXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[HTWZ]  nvarchar(100)  NOT NULL,--红头文字
	[GWBT]  nvarchar(100)  NOT NULL,--公文标题
	[SJ]  datetime  NOT NULL,--时间
	[ZW]  text  NOT NULL,--正文
	[BH]  nvarchar(30)  NOT NULL,--编号
CONSTRAINT [PK_EDU_OAXT_33_A01_GWJCXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--公章信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_33_A02_GZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_33_A02_GZ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[QZTPLJ]  text  NOT NULL,--签章图片路径
CONSTRAINT [PK_EDU_OAXT_33_A02_GZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--发文表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_33_A03_FW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_33_A03_FW](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[GWID]  int  NOT NULL,--公文ID
	[FZ]  nvarchar(300)  NOT NULL,--附注
	[SHRID]  nvarchar(20)  NOT NULL,--审核人ID
	[DXTZZT]  int  NOT NULL,--短信通知状态
	[SHPZ]  nvarchar(500)  NOT NULL,--审核批注
	[GZID]  int  NOT NULL,--公章ID
	[ZYCD]  int  NOT NULL,--重要程度
	[SFHF]  int  NOT NULL,--是否需要回复
	[FSDW]  nvarchar(50)  NOT NULL,--发送单位或科室
	[FSZLY]  nvarchar(500)  NOT NULL,--发送者留言
	[FSRID]  nvarchar(20)  NOT NULL,--发送人ID
	[BSZT]  int  NOT NULL,--报审状态
	[SHZT]  int  NOT NULL,--审核状态
	[FSZT]  int  NOT NULL,--发送状态
	[BJZT]  int  NOT NULL,--办结状态
CONSTRAINT [PK_EDU_OAXT_33_A03_FW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--收文表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_33_A04_SW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_33_A04_SW](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[GWID]  int  NOT NULL,--公文ID
	[XFRID]  nvarchar(20)  NOT NULL,--下发人ID
	[JSRID]  nvarchar(20)  NOT NULL,--接受人ID
	[XFSJ]  datetime  NOT NULL,--下发时间
	[QSZT]  int  NOT NULL,--签收状态
	[DXTZZT]  int  NOT NULL,--短信通知状态
	[HFZT]  int  NOT NULL,--回复状态
	[HFXX]  nvarchar(500)  NOT NULL,--回复信息
	[HFFJ]  text  NOT NULL,--回复附件
	[CLZT]  int  NOT NULL,--处理状态
	[SCZT]  int  NOT NULL,--删除状态
CONSTRAINT [PK_EDU_OAXT_33_A04_SW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--红头文字表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_33_A05_HTWZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_33_A05_HTWZ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[HTWZ]  nvarchar(100)  NOT NULL,--红头文字
CONSTRAINT [PK_EDU_OAXT_33_A05_HTWZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--文印流程记录
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_34_A01_WYLCJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_34_A01_WYLCJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[WYBT]  nvarchar(50)  NOT NULL,--文印标题
	[NR]  text  NOT NULL,--内容
	[BZ]  nvarchar(300)  NOT NULL,--备注
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SHZT]  int  NOT NULL,--审核状态
	[SHRID]  nvarchar(20)  NOT NULL,--审核人ID
	[SHSJ]  datetime  NOT NULL,--审核时间
	[SHBZ]  nvarchar(300)  NOT NULL,--审核备注
	[SHLBSFXS]  int  NOT NULL,--审核列表是否显示
	[DYZT]  int  NOT NULL,--打印状态
	[DYSJ]  datetime  NOT NULL,--打印时间
	[DYBZ]  nvarchar(300)  NOT NULL,--打印备注
	[DYLBSFXS]  int  NOT NULL,--打印列表是否显示
CONSTRAINT [PK_EDU_OAXT_34_A01_WYLCJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--任务表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_35_A01_RW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_35_A01_RW](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[RWBT]  nvarchar(100)  NOT NULL,--任务标题
	[JSYHIDLB]  text  NOT NULL,--接收用户ID列表
	[JSYHXMLB]  text  NOT NULL,--接收用户姓名列表
	[JZRQ]  datetime  NOT NULL,--截止日期
	[NR]  text  NOT NULL,--内容
	[FBRID]  nvarchar(20)  NOT NULL,--发布人ID
	[FBRXM]  nvarchar(36)  NOT NULL,--发布人姓名
	[FBBMMC]  nvarchar(60)  NOT NULL,--发布部门名称
	[FBSJ]  datetime  NOT NULL,--发布时间
	[RWZT]  int  NOT NULL,--任务状态
CONSTRAINT [PK_EDU_OAXT_35_A01_RW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--任务接收人表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_35_A02_RWJSR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_35_A02_RWJSR](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[RWID]  int  NOT NULL,--任务ID
	[JSRID]  nvarchar(20)  NOT NULL,--接收人ID
	[YDZT]  int  NOT NULL,--阅读状态
	[WCZT]  int  NOT NULL,--完成状态
	[SCZT]  int  NOT NULL,--删除状态
	[TJZT]  int  NOT NULL,--提交状态
	[FJ]  text  NOT NULL,--附件
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_35_A02_RWJSR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--回复记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_35_A03_HFJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_35_A03_HFJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[RWID]  int  NOT NULL,--任务ID
	[HFRID]  nvarchar(20)  NOT NULL,--回复人ID
	[HFNR]  text  NOT NULL,--回复内容
	[HSSJ]  datetime  NOT NULL,--回复时间
CONSTRAINT [PK_EDU_OAXT_35_A03_HFJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--班级工作类别表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_36_A01_BJGZLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_36_A01_BJGZLB](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[GZLBMC]  nvarchar(100)  NOT NULL,--工作类别名称
	[DJRYIDLB]  text  NOT NULL,--登记人员ID列表
	[DJRYXMLB]  text  NOT NULL,--登记人员姓名列表
CONSTRAINT [PK_EDU_OAXT_36_A01_BJGZLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--班级工作检查表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_36_A02_BJGZJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_36_A02_BJGZJC](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[GZLBID]  int  NOT NULL,--工作类别ID
	[BJ]  nvarchar(50)  NOT NULL,--班级
	[RQ]  datetime  NOT NULL,--日期
	[JG]  int  NOT NULL,--结果
	[BJMC]  nvarchar(50)  NOT NULL,--班级名称
CONSTRAINT [PK_EDU_OAXT_36_A02_BJGZJC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--常用文档信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_37_A01_CYWDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_37_A01_CYWDXX](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[BT]  nvarchar(200)  NOT NULL,--标题
	[FBRXM]  nvarchar(50)  NOT NULL,--发布人姓名
	[FBRID]  nvarchar(20)  NOT NULL,--发布人ID
	[FBSJ]  datetime  NOT NULL,--发布时间
	[NR]  text  NOT NULL,--内容
	[LLRC]  int  NOT NULL,--浏览人次
	[WDLXID]  int  NOT NULL,--文档类型ID
CONSTRAINT [PK_EDU_OAXT_37_A01_CYWDXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--常用文档类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_37_A02_CYWDLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_37_A02_CYWDLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LXMC]  nvarchar(200)  NOT NULL,--类型名称
	[PLSX]  int  NOT NULL,--排列顺序
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_37_A02_CYWDLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--新闻报送文章类别
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_38_A01_XWBSWZLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_38_A01_XWBSWZLB](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LBMC]  nvarchar(200)  NOT NULL,--类别名称
CONSTRAINT [PK_EDU_OAXT_38_A01_XWBSWZLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--新闻报送申请
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_38_A02_XWBSSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_38_A02_XWBSSQ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LCSLID]  int  NOT NULL,--流程实例ID
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[SQZT]  int  NOT NULL,--申请状态
	[BZ]  text  NOT NULL,--备注
	[BSR]  nvarchar(100)  NOT NULL,--报送人
	[SSBM]  nvarchar(100)  NOT NULL,--所属部门
	[WZBT]  nvarchar(300)  NOT NULL,--文章标题
	[NR]  text  NOT NULL,--内容
	[WZLBID]  int  NOT NULL,--文章类别ID
	[ZS]  nvarchar(100)  NOT NULL,--字数
	[SFLY]  nvarchar(1)  NOT NULL,--是否录用
	[LYMT]  nvarchar(300)  NOT NULL,--录用媒体
	[JLJE]  nvarchar(100)  NOT NULL,--奖励金额（元）
	[FBSJ]  datetime  NOT NULL,--发布时间
CONSTRAINT [PK_EDU_OAXT_38_A02_XWBSSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--新闻报送审核记录
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_38_A03_XWBSSHJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_38_A03_XWBSSHJL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[SQID]  int  NOT NULL,--申请ID
	[XGYHID]  nvarchar(20)  NOT NULL,--修改用户ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--修改用户姓名
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[LCSLID]  int  NOT NULL,--流程实例ID
	[LCSLZT]  int  NULL,--流程实例状态
	[LCMBID]  int  NOT NULL,--流程模板ID
	[LCMBMC]  nvarchar(200)  NOT NULL,--流程模板名称
	[DQBZID]  int  NULL,--当前步骤ID
	[DQBZMC]  nvarchar(200)  NOT NULL,--当前步骤名称
	[DQBZSHZT]  int  NULL,--当前步骤审核状态
	[SQRBMID]  int  NULL,--申请人部门ID
	[SQZT]  int  NOT NULL,--申请状态
	[BZ]  text  NOT NULL,--备注
	[BSR]  nvarchar(100)  NOT NULL,--报送人
	[SSBM]  nvarchar(100)  NOT NULL,--所属部门
	[WZBT]  nvarchar(300)  NOT NULL,--文章标题
	[NR]  text  NOT NULL,--内容
	[WZLBID]  int  NOT NULL,--文章类别ID
	[ZS]  nvarchar(100)  NOT NULL,--字数
	[SFLY]  nvarchar(1)  NOT NULL,--是否录用
	[LYMT]  nvarchar(300)  NOT NULL,--录用媒体
	[JLJE]  nvarchar(100)  NOT NULL,--奖励金额（元）
	[FBSJ]  datetime  NOT NULL,--发布时间
CONSTRAINT [PK_EDU_OAXT_38_A03_XWBSSHJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--公文类别表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_39_A01_GWLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_39_A01_GWLB](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LBMC]  nvarchar(200)  NOT NULL,--类别名称
CONSTRAINT [PK_EDU_OAXT_39_A01_GWLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--收文表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_39_A02_SWB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_39_A02_SWB](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LBID]  int  NOT NULL,--类别ID
	[LWDW]  nvarchar(50)  NOT NULL,--来文单位
	[LWRQ]  datetime  NOT NULL,--来文日期
	[LWWH]  nvarchar(50)  NOT NULL,--来文文号
	[WJBT]  nvarchar(50)  NOT NULL,--文件标题
	[WJNR]  text  NOT NULL,--文件内容
	[PSYJ]  nvarchar(200)  NOT NULL,--批示意见
	[SFSH]  nvarchar(1)  NOT NULL,--是否收回
	[XFWDLX]  int  NOT NULL,--下发文档类型
	[SBWH]  nvarchar(20)  NOT NULL,--收编文号
CONSTRAINT [PK_EDU_OAXT_39_A02_SWB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--公文流转表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_39_A03_GWLZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_39_A03_GWLZ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SWBID]  int  NOT NULL,--收文表ID
	[XFRID]  nvarchar(20)  NOT NULL,--下发人ID
	[JSRID]  nvarchar(20)  NOT NULL,--接收人ID
	[XFSJ]  datetime  NOT NULL,--下发时间
	[QSZT]  int  NOT NULL,--签收状态
	[QSSJ]  datetime  NOT NULL,--签收时间
	[DXTZZT]  int  NOT NULL,--短信通知状态
	[CLZT]  int  NOT NULL,--处理状态
	[CLJG]  nvarchar(500)  NOT NULL,--处理结果
	[FJ]  text  NOT NULL,--附件
	[SCZT]  int  NOT NULL,--删除状态
	[SHZT]  int  NOT NULL,--收回状态
CONSTRAINT [PK_EDU_OAXT_39_A03_GWLZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--公文编号设置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_39_A04_GWBHSZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_39_A04_GWBHSZ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BHQZ]  nvarchar(200)  NOT NULL,--编号前缀
	[BHHZ]  nvarchar(200)  NOT NULL,--编号后缀
	[DQLSH]  int  NOT NULL,--当前流水号
CONSTRAINT [PK_EDU_OAXT_39_A04_GWBHSZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--检查反馈信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_40_A01_JCFKXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_40_A01_JCFKXX](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[FBRID]  nvarchar(20)  NOT NULL,--发布人ID
	[FBBM]  nvarchar(100)  NOT NULL,--发布部门
	[FBSJ]  datetime  NOT NULL,--发布时间
	[BT]  nvarchar(200)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
CONSTRAINT [PK_EDU_OAXT_40_A01_JCFKXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--值日公示类别表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_41_A01_ZRGSLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_41_A01_ZRGSLB](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LBMC]  nvarchar(50)  NOT NULL,--类别名称
CONSTRAINT [PK_EDU_OAXT_41_A01_ZRGSLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--值日公示内容表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_41_A02_ZRGSNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_41_A02_ZRGSNR](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LBID]  int  NOT NULL,--类别ID
	[FBYHID]  nvarchar(20)  NOT NULL,--发布用户ID
	[FBSJ]  datetime  NOT NULL,--发布时间
	[BT]  nvarchar(200)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
CONSTRAINT [PK_EDU_OAXT_41_A02_ZRGSNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--年级组公示类别表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_41_A11_NJZGSLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_41_A11_NJZGSLB](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LBMC]  nvarchar(50)  NOT NULL,--类别名称
CONSTRAINT [PK_EDU_OAXT_41_A11_NJZGSLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--年级组公示内容表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_41_A12_NJZGSNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_41_A12_NJZGSNR](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LBID]  int  NOT NULL,--类别ID
	[FBYHID]  nvarchar(20)  NOT NULL,--发布用户ID
	[FBSJ]  datetime  NOT NULL,--发布时间
	[BT]  nvarchar(200)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
CONSTRAINT [PK_EDU_OAXT_41_A12_NJZGSNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教研信息公示类别表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_41_A21_JYXXGSLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_41_A21_JYXXGSLB](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LBMC]  nvarchar(50)  NOT NULL,--类别名称
CONSTRAINT [PK_EDU_OAXT_41_A21_JYXXGSLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教研信息公示内容表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_41_A22_JYXXGSNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_41_A22_JYXXGSNR](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LBID]  int  NOT NULL,--类别ID
	[FBYHID]  nvarchar(20)  NOT NULL,--发布用户ID
	[FBSJ]  datetime  NOT NULL,--发布时间
	[BT]  nvarchar(200)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
CONSTRAINT [PK_EDU_OAXT_41_A22_JYXXGSNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--每周礼仪公示类别表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_41_A31_MZLYGSLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_41_A31_MZLYGSLB](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LBMC]  nvarchar(50)  NOT NULL,--类别名称
CONSTRAINT [PK_EDU_OAXT_41_A31_MZLYGSLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--每周礼仪公示内容表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_41_A32_MZLYGSNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_41_A32_MZLYGSNR](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LBID]  int  NOT NULL,--类别ID
	[FBYHID]  nvarchar(20)  NOT NULL,--发布用户ID
	[FBSJ]  datetime  NOT NULL,--发布时间
	[BT]  nvarchar(200)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
CONSTRAINT [PK_EDU_OAXT_41_A32_MZLYGSNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学校公告类别表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_41_A41_XXGGLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_41_A41_XXGGLB](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LBMC]  nvarchar(50)  NOT NULL,--类别名称
CONSTRAINT [PK_EDU_OAXT_41_A41_XXGGLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学校公告内容表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_41_A42_XXGGNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_41_A42_XXGGNR](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LBID]  int  NOT NULL,--类别ID
	[FBYHID]  nvarchar(20)  NOT NULL,--发布用户ID
	[FBSJ]  datetime  NOT NULL,--发布时间
	[BT]  nvarchar(200)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
CONSTRAINT [PK_EDU_OAXT_41_A42_XXGGNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--打分项目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_50_A01_DFXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_50_A01_DFXM](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XMMC]  nvarchar(50)  NOT NULL,--项目名称
	[APPID]  int  NOT NULL,--所在应用ID
CONSTRAINT [PK_EDU_OAXT_50_A01_DFXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--打分大类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_50_A11_DFDL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_50_A11_DFDL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XMID]  int  NOT NULL,--项目ID
	[GJDID]  int  NOT NULL,--根节点ID
	[DFDXZID]  int  NOT NULL,--打分对象组ID
	[SFXYSH]  int  NOT NULL,--是否需要审核
	[SHFS]  int  NOT NULL,--审核方式
	[SFKQ]  int  NOT NULL,--是否开启
CONSTRAINT [PK_EDU_OAXT_50_A11_DFDL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[XMID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--打分节点表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_50_A12_DFJD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_50_A12_DFJD](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XMID]  int  NOT NULL,--项目ID
	[DLID]  int  NOT NULL,--大类ID
	[FJDID]  int  NOT NULL,--父节点ID
	[SFDFX]  int  NOT NULL,--是否打分项
	[JDMC]  nvarchar(50)  NOT NULL,--节点名称
	[SFJCSJSZ]  int  NOT NULL,--是否继承上级设置
	[DFDXJDBMJH]  text  NOT NULL,--打分对象节点编码集合
	[DFJSLBIDLB]  text  NOT NULL,--打分角色类别ID列表
	[SHJSLBIDLB]  text  NOT NULL,--审核角色类别ID列表
	[DFFSID]  int  NOT NULL,--打分方式ID
	[DFDXCJ]  int  NOT NULL,--打分对象层级
	[DFPC]  int  NOT NULL,--打分频次
	[DFZB]  text  NOT NULL,--打分指标
	[DFDXJDMCLB]  text  NOT NULL,--打分对象节点名称列表
	[DFJSLBMCLB]  text  NOT NULL,--打分角色类别名称列表
	[SHJSLBMCLB]  text  NOT NULL,--审核角色类别名称列表
	[DFDXCJMC]  nvarchar(50)  NOT NULL,--打分对象层级名称
	[CKJSLBIDLB]  text  NOT NULL,--查看角色类别ID列表
	[CKJSLBMCLB]  text  NOT NULL,--查看角色类别名称列表
	[SFPLDF]  int  NOT NULL,--是否批量打分
	[XQKBFDW]  int  NOT NULL,--向前可补分单位
	[XHYDFDW]  int  NOT NULL,--向后预打分单位
CONSTRAINT [PK_EDU_OAXT_50_A12_DFJD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[XMID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--打分方式表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_50_A13_DFFS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_50_A13_DFFS](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XMID]  int  NOT NULL,--项目ID
	[DFFSMC]  nvarchar(50)  NOT NULL,--打分方式名称
	[DFLX]  int  NOT NULL,--打分类型
	[ZDZ]  decimal(5, 1)  NOT NULL,--最大值
	[ZXZ]  decimal(5, 1)  NOT NULL,--最小值
	[MRZ]  decimal(5, 1)  NOT NULL,--默认值
CONSTRAINT [PK_EDU_OAXT_50_A13_DFFS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[XMID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--打分选项表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_50_A14_DFXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_50_A14_DFXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XMID]  int  NOT NULL,--项目ID
	[DFFSID]  int  NOT NULL,--打分方式ID
	[XXMC]  nvarchar(50)  NOT NULL,--选项名称
	[XXFZ]  decimal(5, 1)  NOT NULL,--选项分值
	[PLSX]  int  NOT NULL,--排列顺序
CONSTRAINT [PK_EDU_OAXT_50_A14_DFXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[XMID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--打分结果表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_50_A15_DFJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_50_A15_DFJG](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XMID]  int  NOT NULL,--项目ID
	[DFDLID]  int  NOT NULL,--打分大类ID
	[DFJDID]  int  NOT NULL,--打分节点ID
	[DFPCID]  int  NOT NULL,--打分批次ID
	[XQID]  int  NOT NULL,--学期ID
	[BDFDXBM]  nvarchar(50)  NOT NULL,--被打分对象编码
	[BDFDXMC]  nvarchar(50)  NOT NULL,--被打分对象名称
	[DFXXID]  int  NOT NULL,--打分选项ID
	[WBZ]  nvarchar(50)  NOT NULL,--文本值
	[FZ]  decimal(5, 1)  NOT NULL,--分值
	[DFYHID]  nvarchar(20)  NOT NULL,--打分用户ID
	[CKSJ]  datetime  NOT NULL,--参考时间
	[TJSJ]  datetime  NOT NULL,--添加时间
	[SHZT]  int  NOT NULL,--审核状态
	[SHJLID]  int  NOT NULL,--审核记录ID
	[CKSJMC]  nvarchar(50)  NOT NULL,--参考时间名称
CONSTRAINT [PK_EDU_OAXT_50_A15_DFJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[XMID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--附加字段表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_50_A16_FJZD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_50_A16_FJZD](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XMID]  int  NOT NULL,--项目ID
	[DFJDID]  int  NOT NULL,--打分节点ID
	[ZDMC]  nvarchar(50)  NOT NULL,--字段名称
	[MRZ]  nvarchar(500)  NOT NULL,--默认值
	[PLSX]  int  NOT NULL,--排列顺序
CONSTRAINT [PK_EDU_OAXT_50_A16_FJZD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[XMID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--附加记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_50_A17_FJJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_50_A17_FJJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XMID]  int  NOT NULL,--项目ID
	[DFJDID]  int  NOT NULL,--打分节点ID
	[DFPCID]  int  NOT NULL,--打分批次ID
	[DFJGID]  int  NOT NULL,--打分结果ID
	[FJZDID]  int  NOT NULL,--附加字段ID
	[FJZ]  nvarchar(500)  NOT NULL,--附加值
CONSTRAINT [PK_EDU_OAXT_50_A17_FJJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[XMID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--审核记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_50_A18_SHJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_50_A18_SHJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XMID]  int  NOT NULL,--项目ID
	[SHJDID]  int  NOT NULL,--审核节点ID
	[DFJGID]  int  NOT NULL,--打分结果ID
	[SHJG]  int  NOT NULL,--审核结果
	[SHYHID]  nvarchar(20)  NOT NULL,--审核用户ID
	[SHSJ]  datetime  NOT NULL,--审核时间
	[BZ]  nvarchar(500)  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_50_A18_SHJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[XMID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--打分批次表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_50_A19_DFPC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_50_A19_DFPC](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XMID]  int  NOT NULL,--项目ID
	[DFDLID]  int  NOT NULL,--打分大类ID
	[DFJDID]  int  NOT NULL,--打分节点ID
	[XQID]  int  NOT NULL,--学期ID
	[DFPCMC]  nvarchar(50)  NOT NULL,--打分批次名称
	[CKSJ]  datetime  NOT NULL,--参考时间
	[TJSJ]  datetime  NOT NULL,--添加时间
CONSTRAINT [PK_EDU_OAXT_50_A19_DFPC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[XMID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--打分统计数据集表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_50_A50_DFTJSJJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_50_A50_DFTJSJJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XMID]  int  NOT NULL,--项目ID
	[SJJMC]  nvarchar(50)  NOT NULL,--数据集名称
	[DFDXZID]  int  NOT NULL,--打分对象组ID
	[DFDXZMC]  nvarchar(50)  NOT NULL,--打分对象组名称
	[TJDXJDBMJH]  text  NOT NULL,--统计对象节点编码集合
	[TJDXJDMCLB]  text  NOT NULL,--统计对象节点名称列表
	[QSSJ]  datetime  NOT NULL,--起始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[SJJCJ]  int  NOT NULL,--数据集层级
	[SJJPC]  int  NOT NULL,--数据集频次
	[SJJCJMC]  nvarchar(200)  NOT NULL,--数据集层级名称
	[SJJPCMC]  nvarchar(200)  NOT NULL,--数据集频次名称
	[SJSCZT]  int  NOT NULL,--数据生成状态
	[DQPCBH]  int  NOT NULL,--当前批次编号
CONSTRAINT [PK_EDU_OAXT_50_A50_DFTJSJJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[XMID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--打分统计字段表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_50_A51_DFTJZD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_50_A51_DFTJZD](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XMID]  int  NOT NULL,--项目ID
	[SJJID]  int  NOT NULL,--数据集ID
	[ZDMC]  nvarchar(50)  NOT NULL,--字段名称
	[ZDLX]  int  NOT NULL,--字段类型
	[SJLYLX]  int  NOT NULL,--数据来源类型
	[SJLYID]  int  NOT NULL,--数据来源ID
	[SJLYMC]  nvarchar(200)  NOT NULL,--数据来源名称
	[SJLYDXCJ]  int  NOT NULL,--数据来源对象层级
	[SJLYSJPC]  int  NOT NULL,--数据来源时间频次
	[SJLYDXCJMC]  nvarchar(200)  NOT NULL,--数据来源对象层级名称
	[SJLYSJPCMC]  nvarchar(200)  NOT NULL,--数据来源时间频次名称
	[DXCJSFFS]  int  NOT NULL,--对象层级缩放方式
	[SJPCSFFS]  int  NOT NULL,--时间频次缩放方式
	[SZMRZ]  decimal(14, 4)  NOT NULL,--数值默认值
	[LJMRZ]  int  NOT NULL,--逻辑默认值
	[QZXX]  decimal(14, 4)  NOT NULL,--取值下限
	[QZSX]  decimal(14, 4)  NOT NULL,--取值上限
	[YXJ]  int  NOT NULL,--优先级
CONSTRAINT [PK_EDU_OAXT_50_A51_DFTJZD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[XMID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--打分统计字段计算方式表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_50_A52_DFTJZDJSFS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_50_A52_DFTJZDJSFS](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XMID]  int  NOT NULL,--项目ID
	[SJJID]  int  NOT NULL,--数据集ID
	[ZDID]  int  NOT NULL,--字段ID
	[JSLX]  int  NOT NULL,--计算类型
	[ZDYID]  int  NOT NULL,--字段一ID
	[ZDEID]  int  NOT NULL,--字段二ID
	[SZY]  decimal(14, 4)  NOT NULL,--数值一
	[SZE]  decimal(14, 4)  NOT NULL,--数值二
	[JSCS]  text  NOT NULL,--计算参数
	[JSFSSM]  nvarchar(500)  NOT NULL,--计算方式说明
CONSTRAINT [PK_EDU_OAXT_50_A52_DFTJZDJSFS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[XMID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--打分统计数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_50_A53_DFTJSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_50_A53_DFTJSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XMID]  int  NOT NULL,--项目ID
	[SJJID]  int  NOT NULL,--数据集ID
	[ZDID]  int  NOT NULL,--字段ID
	[PCBH]  int  NOT NULL,--批次编号
	[SFSDXG]  int  NOT NULL,--是否手动修改
	[BDFDXBM]  nvarchar(50)  NOT NULL,--被打分对象编码
	[BDFDXMC]  nvarchar(50)  NOT NULL,--被打分对象名称
	[XQID]  int  NOT NULL,--学期ID
	[CKSJ]  datetime  NOT NULL,--参考时间
	[FZ]  decimal(14, 4)  NOT NULL,--分值
	[TJSJ]  datetime  NOT NULL,--添加时间
CONSTRAINT [PK_EDU_OAXT_50_A53_DFTJSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[XMID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--打分统计结果视图表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_50_A54_DFTJJGST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_50_A54_DFTJJGST](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XMID]  int  NOT NULL,--项目ID
	[SJJID]  int  NOT NULL,--数据集ID
	[STMC]  nvarchar(50)  NOT NULL,--视图名称
	[ZSZDIDLB]  text  NOT NULL,--展示字段ID列表
	[ZSZDMCLB]  text  NOT NULL,--展示字段名称列表
	[ZSDXJDBMJH]  text  NOT NULL,--展示对象节点编码集合
	[ZSDXJDMCLB]  text  NOT NULL,--展示对象节点名称列表
	[ZSSJQSSJ]  datetime  NOT NULL,--展示数据起始时间
	[ZSSJJSSJ]  datetime  NOT NULL,--展示数据结束时间
	[SDWZ]  int  NOT NULL,--锁定维度
	[SFKGXZ]  int  NOT NULL,--是否可供选择
	[SDDX]  nvarchar(200)  NOT NULL,--锁定对象
	[KCKYHIDLB]  text  NOT NULL,--可查看用户ID列表
	[KCKYHXMLB]  text  NOT NULL,--可查看用户姓名列表
	[ZSKQSJ]  datetime  NOT NULL,--展示开启时间
	[ZSGBSJ]  datetime  NOT NULL,--展示关闭时间
CONSTRAINT [PK_EDU_OAXT_50_A54_DFTJJGST] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[XMID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件基本数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'WJBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件文号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'WJWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主题词' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'ZTC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密级码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'MJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'紧急程度码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'JJCDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'YS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件分类码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'WJFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'正文' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'ZW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'FWRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抄送单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'CSDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文处理子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签收人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'QSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拆封人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'CFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'DJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签收人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'QSRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拆封人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'CFRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'DJRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'SWRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来文单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'LWDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'份数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'FS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'CLQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'翻印份数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'FYFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件阅办子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅办人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅办类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅办级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBJB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅办单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅办单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBDWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅办人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅办意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅办日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文处理子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拟稿人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'NGRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'QFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打字人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校对人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'JDRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拟稿人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'NGRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拟稿日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'NGRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'QFRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'QFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送范围' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'FSFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送方式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'FSFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DJRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DJRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文件数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'FWJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文发文日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'GWFWRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'CLQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打字人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DZRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校对人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'JDRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'封装方式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'FZFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核稿子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核稿人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核稿人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核稿单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核稿意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核稿日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会签子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会签人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会签人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会签单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会签意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会签日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'呈批子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批复人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批复人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批复单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批复意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批复日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件清退数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'JBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'清退日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'QTRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'清退范围' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'QTFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'清退说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'QTSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'JBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件销毁数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销毁审批人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'XHSPRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'JBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销毁日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'XHRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销毁审批人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'XHSPRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销毁说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'XHSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'JBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件借阅数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借阅审批人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYSPRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借阅经办人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYJBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借阅人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借阅日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借阅审批人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYSPRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借阅经办人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYJBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借阅原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'档案登记数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全宗号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'QZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'ND'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目录号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'MLH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案卷号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'AJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'题名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'TM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主题词' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'ZTC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'起始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'QSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'截止日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'JZRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保管期限码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'BGQXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密级码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'MJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'YS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'份数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'FS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编制单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'BZDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存放位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'CFWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'档案分类码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'DAFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'FSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送人类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'FSRLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'TJRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'JSRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'JSRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人名字列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'JSRMZLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已阅读人ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'YYDRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已阅读人名字列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'YYDRMZLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'FSZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知阅读记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知阅读记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'TZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被通知人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'BTZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'YDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已阅读' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'SFYD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'SCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'FBBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知模板表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A04_TZMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A04_TZMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A04_TZMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A04_TZMB', @level2type=N'COLUMN',@level2name=N'MBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A04_TZMB', @level2type=N'COLUMN',@level2name=N'MBNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拥有者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'YYZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送人名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FSRMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已阅读' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'SFYD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'YJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件发送限制人数表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A02_YJFSXZRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A02_YJFSXZRS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A02_YJFSXZRS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A02_YJFSXZRS', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送人数上限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A02_YJFSXZRS', @level2type=N'COLUMN',@level2name=N'FSRSSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据发布类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据发布ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布批准人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBBZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'XXBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布栏目号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBLMH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'SJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布单位号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布范围' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布批准人号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBBZRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'SJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'SJDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位负责人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'DWFZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'DWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位成员ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'DWCYIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人日程信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否提示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'SFTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产目录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校产目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父目录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML', @level2type=N'COLUMN',@level2name=N'Superid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产大类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A02_ZCDL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A02_ZCDL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A02_ZCDL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校产类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A02_ZCDL', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A02_ZCDL', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产库存表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产目录表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产大类表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'ClassID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Info'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出厂时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Productdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'SumCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Merchant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂家' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Vender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产总量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'AllCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'RKL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'DW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'ZJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'SYBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存放单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'CFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'FZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处置方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'CZFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产入库表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产目录表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产大类表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'ClassID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校产名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Info'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出厂时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Productdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'SumCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Merchant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂家' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Vender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Registdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'DW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'ZJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'SYBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存放单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'CFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'FZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处置方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'CZFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产借还表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产目录表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产大类表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'ClassID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'SumCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借用方' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'Borrower'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'Registdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产变更表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别(领用、借用、报损)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'Option'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'RegistTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'SumCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A07_BXLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A07_BXLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A07_BXLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A07_BXLX', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A07_BXLX', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修管理表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修主题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Telephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Repairplace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Repaircontent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Repairpeople'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'RepairDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'ReadrID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Readr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Applicant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Approver'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Evaluate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'SumCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'GZTP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'WCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'SCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修计划表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产报废表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'Sum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申报人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'Reporter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'RegsterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'Statu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'Registdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产盘点表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'PanDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点目录ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'PanTypeIDs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'Statu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产盘点明细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'PID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'PUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'Storesum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实存数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'RealSum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产总量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'AllCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借用数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'BorrowCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物品ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL', @level2type=N'COLUMN',@level2name=N'WPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL', @level2type=N'COLUMN',@level2name=N'WXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修故障信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A14_BXGZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A14_BXGZXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A14_BXGZXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A14_BXGZXX', @level2type=N'COLUMN',@level2name=N'BXLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A14_BXGZXX', @level2type=N'COLUMN',@level2name=N'GZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产目录权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A15_ZCMLQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A15_ZCMLQX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A15_ZCMLQX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A15_ZCMLQX', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目录ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A15_ZCMLQX', @level2type=N'COLUMN',@level2name=N'MLIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目录名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A15_ZCMLQX', @level2type=N'COLUMN',@level2name=N'MLMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A01_LCMBLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A01_LCMBLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A01_LCMBLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A01_LCMBLX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程表单数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'BDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'BDNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'MBLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'MBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'BDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'起始步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'QSBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'JSBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程步骤表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'BZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批人ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'SPRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批人名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'SPRMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上一步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'SYBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下一步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'XYBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'SPRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤执行状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'DQBZZXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'YXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实例状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'SLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'LXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程审核记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'BZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'BZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'LCMBLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'SPRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板类型配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A07_LCMBLXPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A07_LCMBLXPZ', @level2type=N'COLUMN',@level2name=N'LCMBLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A07_LCMBLXPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'不使用流程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A07_LCMBLXPZ', @level2type=N'COLUMN',@level2name=N'BSYLC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计时单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'JSDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最长时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'ZCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假申请表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'QJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'QJYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假天数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'QJTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'补假' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销假' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'XJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销假人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'XJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销假时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'XJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假申请修改记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假申请表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'QJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'QJLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'QJYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假天数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'QJTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRBMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议室数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'FJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'FJDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大容纳人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'ZDRNRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议申请表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'HYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'HYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主持人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'ZCRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'JLRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'HYJB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议地点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'HYDDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'HYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'与会人员ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'YHRYIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'与会人员姓名列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'YHRYXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议申请修改记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议申请表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'HYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'HYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主持人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'ZCRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'JLRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'HYJB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议地点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'HYDZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'HYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'与会人员ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'YHRYIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'与会人员姓名列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'YHRYXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRBMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议纪要表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'HYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议纪要内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'HYJYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'JLRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'JLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议备注类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A05_HYBZLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A05_HYBZLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A05_HYBZLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A05_HYBZLX', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A05_HYBZLX', @level2type=N'COLUMN',@level2name=N'LX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议纪要模板表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A06_HYJYMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A06_HYJYMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A06_HYJYMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A06_HYJYMB', @level2type=N'COLUMN',@level2name=N'MBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A06_HYJYMB', @level2type=N'COLUMN',@level2name=N'MBNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文申请表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'GWBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'GWNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SJRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人姓名列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SJRXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'YDQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SWDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已归档次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'YGDCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'WJBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文申请修改记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文申请表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'GWBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'GWNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SJRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人姓名列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SJRXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'YDQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SWDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRBMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用车申请表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用车原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'YCYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外出人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'WCRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用天数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SYTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请车辆ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SQCLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用车申请修改记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用车申请表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用车原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'YCYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外出人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'WCRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用天数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SYTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRBMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请车辆ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQCLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'CLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆品牌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'CLPP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆车牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'CLCPH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大可载人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'ZDRNRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'CLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购申请表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'CGDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'CGNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'CGZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购申请修改记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购申请表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'CGDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'CGNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'CGZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRBMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实验室数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ', @level2type=N'COLUMN',@level2name=N'DD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ', @level2type=N'COLUMN',@level2name=N'FZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实验室器材表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A02_SYSQC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A02_SYSQC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A02_SYSQC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'器材名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A02_SYSQC', @level2type=N'COLUMN',@level2name=N'QCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实验室申请表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实验室ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SYSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实验器材' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SYQC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实验名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'KM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实验室申请修改记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实验室申请表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'XGSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大事记表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A01_DSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A01_DSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A01_DSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A01_DSJ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A01_DSJ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大事记信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A02_DSJXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A02_DSJXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A02_DSJXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A02_DSJXX', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A02_DSJXX', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A02_DSJXX', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A02_DSJXX', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A02_DSJXX', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A02_DSJXX', @level2type=N'COLUMN',@level2name=N'ZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人通讯录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL', @level2type=N'COLUMN',@level2name=N'GRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL', @level2type=N'COLUMN',@level2name=N'LXRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL', @level2type=N'COLUMN',@level2name=N'LXRDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人通讯录字段配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A02_GRTXLZDPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A02_GRTXLZDPZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A02_GRTXLZDPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A02_GRTXLZDPZ', @level2type=N'COLUMN',@level2name=N'ZDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新个人通讯录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A03_XGRTXL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A03_XGRTXL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A03_XGRTXL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通讯录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A03_XGRTXL', @level2type=N'COLUMN',@level2name=N'TXLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段配置表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A03_XGRTXL', @level2type=N'COLUMN',@level2name=N'ZDPZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A03_XGRTXL', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调查问卷数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问卷名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参选人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'EndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'IsStart'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'JJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调查问卷题目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属问卷' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'题目类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'题目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属大类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'SSDL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问卷题目选项表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属题目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'TMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属问卷' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'SelectItem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'XXFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问卷结果记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属问卷ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属题目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'TMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'XXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'XXFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提交状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'TJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文基础信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'红头文字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'HTWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'GWBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'正文' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'ZW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'BH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公章信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A02_GZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A02_GZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A02_GZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签章图片路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A02_GZ', @level2type=N'COLUMN',@level2name=N'QZTPLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信通知状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'DXTZZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核批注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'SHPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'GZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'重要程度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'ZYCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否需要回复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'SFHF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送单位或科室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'FSDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送者留言' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'FSZLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'FSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报审状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'BSZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'FSZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'办结状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'BJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下发人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'XFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接受人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下发时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'XFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签收状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'QSZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信通知状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'DXTZZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'HFZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'HFXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'HFFJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'CLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'SCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'红头文字表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A05_HTWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A05_HTWZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A05_HTWZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'红头文字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A05_HTWZ', @level2type=N'COLUMN',@level2name=N'HTWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文印流程记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文印标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'WYBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SHBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核列表是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SHLBSFXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打印状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'DYZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打印时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'DYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打印备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'DYBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打印列表是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'DYLBSFXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'RWBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收用户ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'JSYHIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收用户姓名列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'JSYHXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'截止日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'JZRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'FBRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布部门名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'FBBMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'RWZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务接收人表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'RWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'YDZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'WCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'SCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提交状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'TJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'RWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'HFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'HFNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'HSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级工作类别表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB', @level2type=N'COLUMN',@level2name=N'GZLBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人员ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB', @level2type=N'COLUMN',@level2name=N'DJRYIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人员姓名列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB', @level2type=N'COLUMN',@level2name=N'DJRYXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级工作检查表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'GZLBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'BJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'常用文档信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_37_A01_CYWDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_37_A01_CYWDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_37_A01_CYWDXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_37_A01_CYWDXX', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_37_A01_CYWDXX', @level2type=N'COLUMN',@level2name=N'FBRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_37_A01_CYWDXX', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_37_A01_CYWDXX', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_37_A01_CYWDXX', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览人次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_37_A01_CYWDXX', @level2type=N'COLUMN',@level2name=N'LLRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文档类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_37_A01_CYWDXX', @level2type=N'COLUMN',@level2name=N'WDLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'常用文档类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_37_A02_CYWDLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_37_A02_CYWDLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_37_A02_CYWDLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_37_A02_CYWDLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_37_A02_CYWDLX', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_37_A02_CYWDLX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新闻报送文章类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A01_XWBSWZLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A01_XWBSWZLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A01_XWBSWZLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A01_XWBSWZLB', @level2type=N'COLUMN',@level2name=N'LBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新闻报送申请' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报送人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'BSR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'SSBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'WZBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'WZLBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'ZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否录用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'SFLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录用媒体' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'LYMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖励金额（元）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'JLJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A02_XWBSSQ', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新闻报送审核记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'LCSLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'DQBZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'DQBZSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'SQRBMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报送人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'BSR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'SSBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'WZBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'WZLBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'ZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否录用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'SFLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录用媒体' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'LYMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖励金额（元）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'JLJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_38_A03_XWBSSHJL', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文类别表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A01_GWLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A01_GWLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A01_GWLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A01_GWLB', @level2type=N'COLUMN',@level2name=N'LBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A02_SWB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A02_SWB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A02_SWB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A02_SWB', @level2type=N'COLUMN',@level2name=N'LBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来文单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A02_SWB', @level2type=N'COLUMN',@level2name=N'LWDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来文日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A02_SWB', @level2type=N'COLUMN',@level2name=N'LWRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来文文号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A02_SWB', @level2type=N'COLUMN',@level2name=N'LWWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A02_SWB', @level2type=N'COLUMN',@level2name=N'WJBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A02_SWB', @level2type=N'COLUMN',@level2name=N'WJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批示意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A02_SWB', @level2type=N'COLUMN',@level2name=N'PSYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否收回' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A02_SWB', @level2type=N'COLUMN',@level2name=N'SFSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下发文档类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A02_SWB', @level2type=N'COLUMN',@level2name=N'XFWDLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收编文号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A02_SWB', @level2type=N'COLUMN',@level2name=N'SBWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文流转表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A03_GWLZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A03_GWLZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A03_GWLZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A03_GWLZ', @level2type=N'COLUMN',@level2name=N'SWBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下发人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A03_GWLZ', @level2type=N'COLUMN',@level2name=N'XFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A03_GWLZ', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下发时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A03_GWLZ', @level2type=N'COLUMN',@level2name=N'XFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签收状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A03_GWLZ', @level2type=N'COLUMN',@level2name=N'QSZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签收时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A03_GWLZ', @level2type=N'COLUMN',@level2name=N'QSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信通知状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A03_GWLZ', @level2type=N'COLUMN',@level2name=N'DXTZZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A03_GWLZ', @level2type=N'COLUMN',@level2name=N'CLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A03_GWLZ', @level2type=N'COLUMN',@level2name=N'CLJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A03_GWLZ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A03_GWLZ', @level2type=N'COLUMN',@level2name=N'SCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收回状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A03_GWLZ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文编号设置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A04_GWBHSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A04_GWBHSZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A04_GWBHSZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号前缀' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A04_GWBHSZ', @level2type=N'COLUMN',@level2name=N'BHQZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号后缀' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A04_GWBHSZ', @level2type=N'COLUMN',@level2name=N'BHHZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_39_A04_GWBHSZ', @level2type=N'COLUMN',@level2name=N'DQLSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检查反馈信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_40_A01_JCFKXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_40_A01_JCFKXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_40_A01_JCFKXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_40_A01_JCFKXX', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_40_A01_JCFKXX', @level2type=N'COLUMN',@level2name=N'FBBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_40_A01_JCFKXX', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_40_A01_JCFKXX', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_40_A01_JCFKXX', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值日公示类别表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A01_ZRGSLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A01_ZRGSLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A01_ZRGSLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A01_ZRGSLB', @level2type=N'COLUMN',@level2name=N'LBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值日公示内容表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A02_ZRGSNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A02_ZRGSNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A02_ZRGSNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A02_ZRGSNR', @level2type=N'COLUMN',@level2name=N'LBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A02_ZRGSNR', @level2type=N'COLUMN',@level2name=N'FBYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A02_ZRGSNR', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A02_ZRGSNR', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A02_ZRGSNR', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级组公示类别表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A11_NJZGSLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A11_NJZGSLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A11_NJZGSLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A11_NJZGSLB', @level2type=N'COLUMN',@level2name=N'LBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级组公示内容表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A12_NJZGSNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A12_NJZGSNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A12_NJZGSNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A12_NJZGSNR', @level2type=N'COLUMN',@level2name=N'LBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A12_NJZGSNR', @level2type=N'COLUMN',@level2name=N'FBYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A12_NJZGSNR', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A12_NJZGSNR', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A12_NJZGSNR', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教研信息公示类别表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A21_JYXXGSLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A21_JYXXGSLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A21_JYXXGSLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A21_JYXXGSLB', @level2type=N'COLUMN',@level2name=N'LBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教研信息公示内容表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A22_JYXXGSNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A22_JYXXGSNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A22_JYXXGSNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A22_JYXXGSNR', @level2type=N'COLUMN',@level2name=N'LBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A22_JYXXGSNR', @level2type=N'COLUMN',@level2name=N'FBYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A22_JYXXGSNR', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A22_JYXXGSNR', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A22_JYXXGSNR', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每周礼仪公示类别表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A31_MZLYGSLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A31_MZLYGSLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A31_MZLYGSLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A31_MZLYGSLB', @level2type=N'COLUMN',@level2name=N'LBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每周礼仪公示内容表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A32_MZLYGSNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A32_MZLYGSNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A32_MZLYGSNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A32_MZLYGSNR', @level2type=N'COLUMN',@level2name=N'LBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A32_MZLYGSNR', @level2type=N'COLUMN',@level2name=N'FBYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A32_MZLYGSNR', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A32_MZLYGSNR', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A32_MZLYGSNR', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校公告类别表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A41_XXGGLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A41_XXGGLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A41_XXGGLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A41_XXGGLB', @level2type=N'COLUMN',@level2name=N'LBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校公告内容表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A42_XXGGNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A42_XXGGNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A42_XXGGNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A42_XXGGNR', @level2type=N'COLUMN',@level2name=N'LBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A42_XXGGNR', @level2type=N'COLUMN',@level2name=N'FBYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A42_XXGGNR', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A42_XXGGNR', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_41_A42_XXGGNR', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分项目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A01_DFXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A01_DFXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A01_DFXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A01_DFXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A01_DFXM', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分大类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A11_DFDL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A11_DFDL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A11_DFDL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A11_DFDL', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'根节点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A11_DFDL', @level2type=N'COLUMN',@level2name=N'GJDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分对象组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A11_DFDL', @level2type=N'COLUMN',@level2name=N'DFDXZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否需要审核' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A11_DFDL', @level2type=N'COLUMN',@level2name=N'SFXYSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A11_DFDL', @level2type=N'COLUMN',@level2name=N'SHFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A11_DFDL', @level2type=N'COLUMN',@level2name=N'SFKQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分节点表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'DLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'FJDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否打分项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'SFDFX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'JDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否继承上级设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'SFJCSJSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分对象节点编码集合' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'DFDXJDBMJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分角色类别ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'DFJSLBIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核角色类别ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'SHJSLBIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分方式ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'DFFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分对象层级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'DFDXCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分频次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'DFPC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分指标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'DFZB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分对象节点名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'DFDXJDMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分角色类别名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'DFJSLBMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核角色类别名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'SHJSLBMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分对象层级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'DFDXCJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'查看角色类别ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'CKJSLBIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'查看角色类别名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'CKJSLBMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否批量打分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'SFPLDF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'向前可补分单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'XQKBFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'向后预打分单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A12_DFJD', @level2type=N'COLUMN',@level2name=N'XHYDFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分方式表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A13_DFFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A13_DFFS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A13_DFFS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A13_DFFS', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分方式名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A13_DFFS', @level2type=N'COLUMN',@level2name=N'DFFSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A13_DFFS', @level2type=N'COLUMN',@level2name=N'DFLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A13_DFFS', @level2type=N'COLUMN',@level2name=N'ZDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最小值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A13_DFFS', @level2type=N'COLUMN',@level2name=N'ZXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A13_DFFS', @level2type=N'COLUMN',@level2name=N'MRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分选项表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A14_DFXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A14_DFXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A14_DFXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A14_DFXX', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分方式ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A14_DFXX', @level2type=N'COLUMN',@level2name=N'DFFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A14_DFXX', @level2type=N'COLUMN',@level2name=N'XXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A14_DFXX', @level2type=N'COLUMN',@level2name=N'XXFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A14_DFXX', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分结果表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分大类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'DFDLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分节点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'DFJDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分批次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'DFPCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被打分对象编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'BDFDXBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被打分对象名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'BDFDXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分选项ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'DFXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文本值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'WBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'DFYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参考时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'CKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'SHJLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参考时间名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A15_DFJG', @level2type=N'COLUMN',@level2name=N'CKSJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附加字段表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A16_FJZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A16_FJZD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A16_FJZD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A16_FJZD', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分节点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A16_FJZD', @level2type=N'COLUMN',@level2name=N'DFJDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A16_FJZD', @level2type=N'COLUMN',@level2name=N'ZDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A16_FJZD', @level2type=N'COLUMN',@level2name=N'MRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A16_FJZD', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附加记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A17_FJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A17_FJJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A17_FJJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A17_FJJL', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分节点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A17_FJJL', @level2type=N'COLUMN',@level2name=N'DFJDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分批次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A17_FJJL', @level2type=N'COLUMN',@level2name=N'DFPCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分结果ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A17_FJJL', @level2type=N'COLUMN',@level2name=N'DFJGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附加字段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A17_FJJL', @level2type=N'COLUMN',@level2name=N'FJZDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附加值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A17_FJJL', @level2type=N'COLUMN',@level2name=N'FJZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A18_SHJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A18_SHJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A18_SHJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A18_SHJL', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核节点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A18_SHJL', @level2type=N'COLUMN',@level2name=N'SHJDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分结果ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A18_SHJL', @level2type=N'COLUMN',@level2name=N'DFJGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A18_SHJL', @level2type=N'COLUMN',@level2name=N'SHJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A18_SHJL', @level2type=N'COLUMN',@level2name=N'SHYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A18_SHJL', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A18_SHJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分批次表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A19_DFPC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A19_DFPC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A19_DFPC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A19_DFPC', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分大类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A19_DFPC', @level2type=N'COLUMN',@level2name=N'DFDLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分节点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A19_DFPC', @level2type=N'COLUMN',@level2name=N'DFJDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A19_DFPC', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分批次名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A19_DFPC', @level2type=N'COLUMN',@level2name=N'DFPCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参考时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A19_DFPC', @level2type=N'COLUMN',@level2name=N'CKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A19_DFPC', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分统计数据集表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ', @level2type=N'COLUMN',@level2name=N'SJJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分对象组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ', @level2type=N'COLUMN',@level2name=N'DFDXZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分对象组名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ', @level2type=N'COLUMN',@level2name=N'DFDXZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'统计对象节点编码集合' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ', @level2type=N'COLUMN',@level2name=N'TJDXJDBMJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'统计对象节点名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ', @level2type=N'COLUMN',@level2name=N'TJDXJDMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'起始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ', @level2type=N'COLUMN',@level2name=N'QSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集层级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ', @level2type=N'COLUMN',@level2name=N'SJJCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集频次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ', @level2type=N'COLUMN',@level2name=N'SJJPC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集层级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ', @level2type=N'COLUMN',@level2name=N'SJJCJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集频次名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ', @level2type=N'COLUMN',@level2name=N'SJJPCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据生成状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ', @level2type=N'COLUMN',@level2name=N'SJSCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前批次编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A50_DFTJSJJ', @level2type=N'COLUMN',@level2name=N'DQPCBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分统计字段表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'SJJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'ZDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'ZDLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据来源类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'SJLYLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据来源ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'SJLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据来源名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'SJLYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据来源对象层级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'SJLYDXCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据来源时间频次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'SJLYSJPC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据来源对象层级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'SJLYDXCJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据来源时间频次名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'SJLYSJPCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象层级缩放方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'DXCJSFFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间频次缩放方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'SJPCSFFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数值默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'SZMRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'LJMRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'取值下限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'QZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'取值上限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'QZSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'优先级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A51_DFTJZD', @level2type=N'COLUMN',@level2name=N'YXJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分统计字段计算方式表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A52_DFTJZDJSFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A52_DFTJZDJSFS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A52_DFTJZDJSFS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A52_DFTJZDJSFS', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A52_DFTJZDJSFS', @level2type=N'COLUMN',@level2name=N'SJJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A52_DFTJZDJSFS', @level2type=N'COLUMN',@level2name=N'ZDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计算类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A52_DFTJZDJSFS', @level2type=N'COLUMN',@level2name=N'JSLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段一ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A52_DFTJZDJSFS', @level2type=N'COLUMN',@level2name=N'ZDYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段二ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A52_DFTJZDJSFS', @level2type=N'COLUMN',@level2name=N'ZDEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数值一' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A52_DFTJZDJSFS', @level2type=N'COLUMN',@level2name=N'SZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数值二' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A52_DFTJZDJSFS', @level2type=N'COLUMN',@level2name=N'SZE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计算参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A52_DFTJZDJSFS', @level2type=N'COLUMN',@level2name=N'JSCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计算方式说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A52_DFTJZDJSFS', @level2type=N'COLUMN',@level2name=N'JSFSSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分统计数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A53_DFTJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A53_DFTJSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A53_DFTJSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A53_DFTJSJ', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A53_DFTJSJ', @level2type=N'COLUMN',@level2name=N'SJJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A53_DFTJSJ', @level2type=N'COLUMN',@level2name=N'ZDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A53_DFTJSJ', @level2type=N'COLUMN',@level2name=N'PCBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否手动修改' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A53_DFTJSJ', @level2type=N'COLUMN',@level2name=N'SFSDXG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被打分对象编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A53_DFTJSJ', @level2type=N'COLUMN',@level2name=N'BDFDXBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被打分对象名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A53_DFTJSJ', @level2type=N'COLUMN',@level2name=N'BDFDXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A53_DFTJSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参考时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A53_DFTJSJ', @level2type=N'COLUMN',@level2name=N'CKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A53_DFTJSJ', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A53_DFTJSJ', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分统计结果视图表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'SJJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视图名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'STMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'展示字段ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'ZSZDIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'展示字段名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'ZSZDMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'展示对象节点编码集合' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'ZSDXJDBMJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'展示对象节点名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'ZSDXJDMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'展示数据起始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'ZSSJQSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'展示数据结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'ZSSJJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'锁定维度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'SDWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可供选择' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'SFKGXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'锁定对象' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'SDDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可查看用户ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'KCKYHIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可查看用户姓名列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'KCKYHXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'展示开启时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'ZSKQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'展示关闭时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_50_A54_DFTJJGST', @level2type=N'COLUMN',@level2name=N'ZSGBSJ'
GO
