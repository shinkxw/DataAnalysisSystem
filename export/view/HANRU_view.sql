--ɾ����ͼ
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_01_USER_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_01_USER_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_01_APP_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_01_APP_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_01_SCHOOL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_01_SCHOOL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_01_XQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_01_XQ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_02_YHFZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_02_YHFZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_03_APPRZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_03_APPRZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_03_APPLL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_03_APPLL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_10_A01_TZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_10_A01_TZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_10_A02_TZYDJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_10_A02_TZYDJL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_10_A03_GG_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_10_A03_GG_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_11_A01_YJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_11_A01_YJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_01_01_WJJBSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_01_01_WJJBSJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_02_01_SWCL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_02_01_SWCL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_02_02_WJYB_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_02_02_WJYB_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_03_01_FWCL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_03_01_FWCL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_03_02_HG_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_03_02_HG_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_03_03_HQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_03_03_HQ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_03_04_CP_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_03_04_CP_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_04_01_WJQT_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_04_01_WJQT_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_05_01_WJXH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_05_01_WJXH_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_06_01_WJJQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_06_01_WJJQ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_12_A01_SJFB_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_12_A01_SJFB_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_13_A01_DWSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_13_A01_DWSJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_SYS_01_XN_DISP')
            and   type = 'V')
   drop view VIEW_EDU_SYS_01_XN_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_VIP_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_VIP_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_TPXT_TPYS_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_TPXT_TPYS_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_TPXT_TPXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_TPXT_TPXX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_TPXT_TPTM_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_TPXT_TPTM_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_TPXT_TPSZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_TPXT_TPSZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_TPXT_TPJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_TPXT_TPJL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_YQLJLX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_YQLJLX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_YQLJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_YQLJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_WZYS_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_WZYS_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_WZWZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_WZWZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_WZPJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_WZPJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_WZPZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_WZPZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_WZLM_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_WZLM_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_WZGG_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_WZGG_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_FWLL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_FWLL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_FBQX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_FBQX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZJ_ZJZY_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZJ_ZJZY_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_04_A01_ZZGW_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_04_A01_ZZGW_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_04_A02_ZZRYAP_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_04_A02_ZZRYAP_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_04_A03_ZZGWFP_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_04_A03_ZZGWFP_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_04_A04_GWFPMB_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_04_A04_GWFPMB_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_04_A05_TBZZJS_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_04_A05_TBZZJS_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_04_A06_ZZZC_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_04_A06_ZZZC_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_04_A07_MBFPNR_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_04_A07_MBFPNR_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_05_A01_ZZDFDL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_05_A01_ZZDFDL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_05_A02_ZZDFXZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_05_A02_ZZDFXZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_05_A03_ZZDFD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_05_A03_ZZDFD_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_06_A01_ZZXJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_06_A01_ZZXJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_06_A02_GQXJH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_06_A02_GQXJH_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXJX_01_01_KC_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXJX_01_01_KC_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXJX_05_A01_KS_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXJX_05_A01_KS_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXJX_05_A02_KSKM_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXJX_05_A02_KSKM_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXJX_06_A01_MPJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXJX_06_A01_MPJL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXJZ_01_01_JZGJBSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXJZ_01_01_JZGJBSJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXJZ_02_A01_XNGWSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXJZ_02_A01_XNGWSJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXJZ_07_02_RKSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXJZ_07_02_RKSJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXS_01_01_XSXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXS_01_01_XSXX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXS_01_06_XSJTCY_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXS_01_06_XSJTCY_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXS_02_A01_XSJTXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXS_02_A01_XSJTXX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXS_02_06_ZXKSCJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXS_02_06_ZXKSCJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXS_07_A02_XJYD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXS_07_A02_XJYD_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXX_01_01_ZXXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXX_01_01_ZXXX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXX_02_01_NJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXX_02_01_NJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXX_03_01_BJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXX_03_01_BJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXX_04_01_JG_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXX_04_01_JG_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXX_04_A01_JGGW_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXX_04_A01_JGGW_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZFC_02_01_JZWJBSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZFC_02_01_JZWJBSJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZFC_08_01_XSSS_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZFC_08_01_XSSS_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZFC_08_A01_SSCW_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZFC_08_A01_SSCW_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZFC_08_A03_ZWHCY_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZFC_08_A03_ZWHCY_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZFC_08_A02_YHZSJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZFC_08_A02_YHZSJL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJG_01_01_JZGJBSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJG_01_01_JZGJBSJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJG_02_02_XNGWSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJG_02_02_XNGWSJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJG_07_01_JZGZYNL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJG_07_01_JZGZYNL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJG_04_A01_JBDJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJG_04_A01_JBDJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJG_01_A01_JZGKZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJG_01_A01_JZGKZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_02_02_ZZBJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_02_02_ZZBJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_02_01_ZZNJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_02_01_ZZNJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_01_01_ZYXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_01_01_ZYXX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_08_A01_DGFSQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_08_A01_DGFSQ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_05_02_JSJXGZLTJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_05_02_JSJXGZLTJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_03_A01_XQXFGL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_03_A01_XQXFGL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_03_03_JXJHKCQD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_03_03_JXJHKCQD_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_03_02_JXJHFLXFYQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_03_02_JXJHFLXFYQ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_03_01_ZTJXJH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_03_01_ZTJXJH_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_01_A02_JSRK_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_01_A02_JSRK_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_01_A01_KCPJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_01_A01_KCPJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_01_02_KC_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_01_02_KC_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_07_01_XWSXJDXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_07_01_XWSXJDXX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_07_03_XSXWSXQK_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_07_03_XSXWSXQK_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_07_A11_SXJC_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_07_A11_SXJC_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_07_A10_SXJD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_07_A10_SXJD_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_07_A09_SXRZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_07_A09_SXRZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_07_A08_SXTS_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_07_A08_SXTS_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_07_A07_SXZG_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_07_A07_SXZG_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_07_A06_XQHD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_07_A06_XQHD_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_07_A05_XSYP_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_07_A05_XSYP_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_07_A04_SXGW_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_07_A04_SXGW_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_07_A03_XXSXZY_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_07_A03_XXSXZY_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_07_A02_XXSXJD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_07_A02_XXSXJD_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_07_A01_XXSXJH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_07_A01_XXSXJH_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZXS_07_01_XJSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZXS_07_01_XJSJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZXS_02_A02_XSJTJJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZXS_02_A02_XSJTJJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZXS_02_A01_XSLXR_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZXS_02_A01_XSLXR_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZXS_02_02_XSJTCY_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZXS_02_02_XSJTCY_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZXS_02_01_XSJTXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZXS_02_01_XSJTXX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZXS_01_A01_XSXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZXS_01_A01_XSXX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZXS_01_01_XSXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZXS_01_01_XSXX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZXS_07_03_XSZCXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZXS_07_03_XSZCXX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZXS_07_02_XJYD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZXS_07_02_XJYD_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZXS_06_01_XSCJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZXS_06_01_XSCJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZXS_13_A01_XSJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZXS_13_A01_XSJL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZXX_03_01_XNJG_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZXX_03_01_XNJG_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZXX_01_01_ZZXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZXX_01_01_ZZXX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZXX_03_A01_JGGW_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZXX_03_A01_JGGW_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZZS_02_01_RXCJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZZS_02_01_RXCJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZZS_01_A01_ZSJH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZZS_01_A01_ZSJH_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZZS_01_01_ZSXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZZS_01_01_ZSXX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZZS_03_01_KSKMCJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZZS_03_01_KSKMCJ_DISP
go

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
      ,c.SCHOOLID as c_APP_SCHOOLID--Ӧ�ñ� ѧУID
      ,c.NAME as c_APP_NAME--Ӧ�ñ� Ӧ������
      ,c.URL as c_APP_URL--Ӧ�ñ� ��ַ
      ,c.AUTHIP as c_APP_AUTHIP--Ӧ�ñ� ����IP
      ,c.SM as c_APP_SM--Ӧ�ñ� ˵��
      ,c.DLFS as c_APP_DLFS--Ӧ�ñ� ��¼��ʽ
      ,c.STATUS as c_APP_STATUS--Ӧ�ñ� Ӧ��״̬

FROM dbo.EDU_ELE_01_USER AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*Ӧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO

--Ӧ�ñ�
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_APP_DISP]
AS
SELECT a.[ID]--Ӧ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[NAME]--Ӧ������
      ,a.[URL]--��ַ
      ,a.[AUTHIP]--����IP
      ,a.[SM]--˵��
      ,a.[DLFS]--��¼��ʽ
      ,a.[STATUS]--Ӧ��״̬

FROM dbo.EDU_ELE_01_APP AS a
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
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,cb.MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������

FROM dbo.EDU_ELE_01_SCHOOL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/
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

--�û������
CREATE VIEW [dbo].[VIEW_EDU_ELE_02_YHFZ_DISP]
AS
SELECT a.[ID]--����ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[APPID]--Ӧ��ID
      ,a.[YHID]--�û�ID
      ,a.[SJFZID]--�ϼ�����ID
      ,a.[FZMC]--��������
      ,a.[FZYHID]--�����û�ID�б�
      ,c.SCHOOLID as c_APP_SCHOOLID--Ӧ�ñ� ѧУID
      ,c.NAME as c_APP_NAME--Ӧ�ñ� Ӧ������
      ,c.URL as c_APP_URL--Ӧ�ñ� ��ַ
      ,c.AUTHIP as c_APP_AUTHIP--Ӧ�ñ� ����IP
      ,c.SM as c_APP_SM--Ӧ�ñ� ˵��
      ,c.DLFS as c_APP_DLFS--Ӧ�ñ� ��¼��ʽ
      ,c.STATUS as c_APP_STATUS--Ӧ�ñ� Ӧ��״̬
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
      ,e.SCHOOLID as e_YHFZ_SCHOOLID--�û������ ѧУID
      ,e.APPID as e_YHFZ_APPID--�û������ Ӧ��ID
      ,e.YHID as e_YHFZ_YHID--�û������ �û�ID
      ,e.SJFZID as e_YHFZ_SJFZID--�û������ �ϼ�����ID
      ,e.FZMC as e_YHFZ_FZMC--�û������ ��������
      ,e.FZYHID as e_YHFZ_FZYHID--�û������ �����û�ID�б�

FROM dbo.EDU_ELE_02_YHFZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*Ӧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YHID = d.LOGINNAME /*�û�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_02_YHFZ AS e ON a.SJFZID = e.ID /*�ϼ�����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ AND a.APPID = e.APPID /*Ӧ��ID*/
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

FROM dbo.EDU_ELE_03_APPLL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*�����û�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
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
      ,f.MC as f_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_OAXT_11_A01_YJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YYZID = c.LOGINNAME /*ӵ����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.FSRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JSRID = e.LOGINNAME /*������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFYD = f.DM /*�Ƿ����Ķ�*/
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
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
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

FROM dbo.EDU_OAXT_02_01_SWCL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.QSRID = d.LOGINNAME /*ǩ����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.CFRID = e.LOGINNAME /*�����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.DJRID = f.LOGINNAME /*�Ǽ���ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/
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
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
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
      ,e.MC as e_YBLB_MC--�İ�������� ����
      ,e.SM as e_YBLB_SM--�İ�������� ˵��

FROM dbo.EDU_OAXT_02_02_WJYB AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YBRID = d.LOGINNAME /*�İ���ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_YBLB AS e ON a.YBLBM = e.DM /*�İ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/
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
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
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
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/
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
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
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

FROM dbo.EDU_OAXT_03_02_HG AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.HGRID = d.LOGINNAME /*�˸���ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/
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
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
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

FROM dbo.EDU_OAXT_03_03_HQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.HQRID = d.LOGINNAME /*��ǩ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/
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
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
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

FROM dbo.EDU_OAXT_03_04_CP AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.PFRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/
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
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
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

FROM dbo.EDU_OAXT_04_01_WJQT AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JBRID = d.LOGINNAME /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/
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
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
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

FROM dbo.EDU_OAXT_05_01_WJXH AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.XHSPRID = d.LOGINNAME /*����������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JBRID = e.LOGINNAME /*������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/
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
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--���ױ��ܵȼ��������ʶ ����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ױ��ܵȼ��������ʶ ���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--���ױ��ܵȼ��������ʶ ����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�ļ������������ �����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--�����̶ȴ���� ����
      ,c.YS as c_WJJBSJ_YS--�ļ������������ ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ������������ �ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--�ļ��������� ����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--�ļ��������� ˵��
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

FROM dbo.EDU_OAXT_06_01_WJJQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JYSPRID = d.LOGINNAME /*����������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JYJBRID = e.LOGINNAME /*���ľ�����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/
GO

--���ݷ������
CREATE VIEW [dbo].[VIEW_EDU_OAXT_12_A01_SJFB_DISP]
AS
SELECT a.[ID]--���ݷ���ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[FBRID]--������ID
      ,a.[FBBZRID]--������׼��ID
      ,a.[FBH]--������
      ,a.[XXBT]--���ݱ���
      ,a.[FBLMH]--������Ŀ��
      ,a.[SJNR]--��������
      ,a.[FJS]--������
      ,a.[FBRQ]--��������
      ,a.[FBDW]--������λ��
      ,a.[FBRGH]--�����˹���
      ,a.[FBFW]--������Χ
      ,a.[FBBZRH]--������׼�˺�
      ,a.[SJZT]--����״̬
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ

FROM dbo.EDU_OAXT_12_A01_SJFB AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
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

FROM dbo.EDU_OAXT_13_A01_DWSJ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_13_A01_DWSJ AS c ON a.SJDWID = c.ID /*�ϼ���λID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.DWFZRID = d.LOGINNAME /*��λ������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/
GO

--ѧ���
CREATE VIEW [dbo].[VIEW_EDU_SYS_01_XN_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XN]--ѧ��

FROM dbo.EDU_SYS_01_XN AS a
GO

--��վ��Ա
CREATE VIEW [dbo].[VIEW_EDU_WZXT_VIP_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[LOGINNAME]--�û���
      ,a.[LOGINPWD]--����
      ,a.[REALNAME]--����
      ,a.[EMAIL]--��������
      ,a.[MOBILE]--��ϵ�绰
      ,a.[QQ]--QQ����
      ,a.[AUDITSTATU]--���״̬
      ,a.[AUDITOR]--�����ID
      ,a.[AUDITORNAME]--�����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ

FROM dbo.EDU_WZXT_VIP AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO

--ͶƱ��ʽ��
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPYS_DISP]
AS
SELECT a.[ID]--��ʽID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[NAME]--��ʽ��
      ,a.[SHOWIMG]--Ч��ͼ
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ

FROM dbo.EDU_WZXT_TPXT_TPYS AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO

--ͶƱ��Ŀѡ��
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPXX_DISP]
AS
SELECT a.[ID]--ͶƱ��Ŀѡ��ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[TPID]--ͶƱ
      ,a.[TMID]--ͶƱ��Ŀ
      ,a.[TITLE]--����
      ,a.[SUMTP]--��ѡ����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,d.SCHOOLID as d_TPSZ_SCHOOLID--ͶƱ���� ѧУ��
      ,d.WEBID as d_TPSZ_WEBID--ͶƱ���� ��վID
      ,d.TITLE as d_TPSZ_TITLE--ͶƱ���� ����
      ,d.CONTENT as d_TPSZ_CONTENT--ͶƱ���� ����
      ,d.SHOWSTYLEID as d_TPSZ_SHOWSTYLEID--ͶƱ���� ��ʾ��ʽ
      ,d.CSSID as d_TPSZ_CSSID--ͶƱ���� ��ʾ��ʽ
      ,d.LOGINNAMELIST as d_TPSZ_LOGINNAMELIST--ͶƱ���� ͶƱ��
      ,d.STARTSTATU as d_TPSZ_STARTSTATU--ͶƱ���� �Ƿ���
      ,e.SCHOOLID as e_TPTM_SCHOOLID--ͶƱ��Ŀ ѧУ��
      ,e.WEBID as e_TPTM_WEBID--ͶƱ��Ŀ ��վID
      ,e.TPID as e_TPTM_TPID--ͶƱ��Ŀ ͶƱ
      ,e.TYPEID as e_TPTM_TYPEID--ͶƱ��Ŀ ͶƱ��ʽ
      ,e.TITLE as e_TPTM_TITLE--ͶƱ��Ŀ ����
      ,e.CONTENT as e_TPTM_CONTENT--ͶƱ��Ŀ ����

FROM dbo.EDU_WZXT_TPXT_TPXX AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPSZ AS d ON a.TPID = d.ID /*ͶƱ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPTM AS e ON a.TMID = e.ID /*ͶƱ��Ŀ*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ AND a.WEBID = e.WEBID /*��վID*/
GO

--ͶƱ��Ŀ
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPTM_DISP]
AS
SELECT a.[ID]--ͶƱ��ĿID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[TPID]--ͶƱ
      ,a.[TYPEID]--ͶƱ��ʽ
      ,a.[TITLE]--����
      ,a.[CONTENT]--����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,d.SCHOOLID as d_TPSZ_SCHOOLID--ͶƱ���� ѧУ��
      ,d.WEBID as d_TPSZ_WEBID--ͶƱ���� ��վID
      ,d.TITLE as d_TPSZ_TITLE--ͶƱ���� ����
      ,d.CONTENT as d_TPSZ_CONTENT--ͶƱ���� ����
      ,d.SHOWSTYLEID as d_TPSZ_SHOWSTYLEID--ͶƱ���� ��ʾ��ʽ
      ,d.CSSID as d_TPSZ_CSSID--ͶƱ���� ��ʾ��ʽ
      ,d.LOGINNAMELIST as d_TPSZ_LOGINNAMELIST--ͶƱ���� ͶƱ��
      ,d.STARTSTATU as d_TPSZ_STARTSTATU--ͶƱ���� �Ƿ���

FROM dbo.EDU_WZXT_TPXT_TPTM AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPSZ AS d ON a.TPID = d.ID /*ͶƱ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/
GO

--ͶƱ����
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPSZ_DISP]
AS
SELECT a.[ID]--ͶƱ����ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[TITLE]--����
      ,a.[CONTENT]--����
      ,a.[SHOWSTYLEID]--��ʾ��ʽ
      ,a.[CSSID]--��ʾ��ʽ
      ,a.[LOGINNAMELIST]--ͶƱ��
      ,a.[STARTSTATU]--�Ƿ���
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,d.SCHOOLID as d_TPYS_SCHOOLID--ͶƱ��ʽ�� ѧУ��
      ,d.WEBID as d_TPYS_WEBID--ͶƱ��ʽ�� ��վID
      ,d.NAME as d_TPYS_NAME--ͶƱ��ʽ�� ��ʽ��
      ,d.SHOWIMG as d_TPYS_SHOWIMG--ͶƱ��ʽ�� Ч��ͼ

FROM dbo.EDU_WZXT_TPXT_TPSZ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPYS AS d ON a.CSSID = d.ID /*��ʾ��ʽ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/
GO

--ͶƱ��¼
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPJL_DISP]
AS
SELECT a.[ID]--ͶƱ��¼ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[TPID]--ͶƱ
      ,a.[TPIP]--ͶƱ��
      ,a.[TPTIME]--ͶƱʱ��
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,d.SCHOOLID as d_TPSZ_SCHOOLID--ͶƱ���� ѧУ��
      ,d.WEBID as d_TPSZ_WEBID--ͶƱ���� ��վID
      ,d.TITLE as d_TPSZ_TITLE--ͶƱ���� ����
      ,d.CONTENT as d_TPSZ_CONTENT--ͶƱ���� ����
      ,d.SHOWSTYLEID as d_TPSZ_SHOWSTYLEID--ͶƱ���� ��ʾ��ʽ
      ,d.CSSID as d_TPSZ_CSSID--ͶƱ���� ��ʾ��ʽ
      ,d.LOGINNAMELIST as d_TPSZ_LOGINNAMELIST--ͶƱ���� ͶƱ��
      ,d.STARTSTATU as d_TPSZ_STARTSTATU--ͶƱ���� �Ƿ���

FROM dbo.EDU_WZXT_TPXT_TPJL AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPSZ AS d ON a.TPID = d.ID /*ͶƱ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/
GO

--������������
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_YQLJLX_DISP]
AS
SELECT a.[ID]--������������ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[NAME]--������
      ,a.[SHOWSTYLE]--��ʾ��ʽ
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ

FROM dbo.EDU_WZXT_MHXT_YQLJLX AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO

--��������
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_YQLJ_DISP]
AS
SELECT a.[ID]--��������ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[TITLE]--����
      ,a.[TYPEID]--����
      ,a.[IMAGEURL]--ͼƬ
      ,a.[URL]--����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,d.SCHOOLID as d_YQLJLX_SCHOOLID--������������ ѧУ��
      ,d.WEBID as d_YQLJLX_WEBID--������������ ��վID
      ,d.NAME as d_YQLJLX_NAME--������������ ������
      ,d.SHOWSTYLE as d_YQLJLX_SHOWSTYLE--������������ ��ʾ��ʽ

FROM dbo.EDU_WZXT_MHXT_YQLJ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_YQLJLX AS d ON a.TYPEID = d.ID /*����*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/
GO

--��ʽ��
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZYS_DISP]
AS
SELECT a.[ID]--��ʽ��ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[NAME]--��ʽ��
      ,a.[SHOWIMG]--Ч��ͼ
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ

FROM dbo.EDU_WZXT_MHXT_WZYS AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO

--��վ����
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZWZ_DISP]
AS
SELECT a.[ID]--��վ����ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[TYPENAME]--��������
      ,a.[LMID]--��Ŀ
      ,a.[TITLE]--����
      ,a.[PUBLISHERNAME]--������
      ,a.[AUTHOR]--����
      ,a.[AUTHORDEPART]--���߲���
      ,a.[PUBLISHDATE]--����ʱ��
      ,a.[CONTENT]--����
      ,a.[URL]--����
      ,a.[IMAGEURL]--ͼƬ
      ,a.[ATTACHMENTNAME]--������
      ,a.[ATTACHMENT]--����
      ,a.[CHICKNUB]--�����
      ,a.[AUDITSTATU]--���״̬
      ,a.[AUDITOR]--�����ID
      ,a.[AUDITORNAME]--�����
      ,a.[AUDITTIME]--���ʱ��
      ,a.[REMARK]--��ע
      ,a.[SUMMARY]--ժҪ
      ,a.[DISPLAYTYPE]--������
      ,a.[OPENFLAG]--����״̬
      ,a.[LLQX]--���Ȩ��
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,d.SCHOOLID as d_WZLM_SCHOOLID--��վ��Ŀ�������� ѧУ��
      ,d.WEBID as d_WZLM_WEBID--��վ��Ŀ�������� ��վID
      ,d.LMSHOWSTYLE as d_WZLM_LMSHOWSTYLE--��վ��Ŀ�������� ��Ŀʹ������
      ,d.NAME as d_WZLM_NAME--��վ��Ŀ�������� ��Ŀ����
      ,d.URL as d_WZLM_URL--��վ��Ŀ�������� ��Ŀ����
      ,d.IMAGEURL as d_WZLM_IMAGEURL--��վ��Ŀ�������� ͼƬ����
      ,d.DEPTH as d_WZLM_DEPTH--��վ��Ŀ�������� �㼶
      ,d.PID as d_WZLM_PID--��վ��Ŀ�������� ��Ŀ¼
      ,d.LISTSHOWSTYLE as d_WZLM_LISTSHOWSTYLE--��վ��Ŀ�������� �б���ʾ��ʽ
      ,d.ORDERTYPE as d_WZLM_ORDERTYPE--��վ��Ŀ�������� ����ʽ
      ,d.SHOWNUMBER as d_WZLM_SHOWNUMBER--��վ��Ŀ�������� ��ʾ����
      ,d.OPENFLAG as d_WZLM_OPENFLAG--��վ��Ŀ�������� ����״̬
      ,d.LLQX as d_WZLM_LLQX--��վ��Ŀ�������� ���Ȩ��

FROM dbo.EDU_WZXT_MHXT_WZWZ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZLM AS d ON a.LMID = d.ID /*��Ŀ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/
GO

--�������۱�
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZPJ_DISP]
AS
SELECT a.[ID]--����ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[WEBID]--��վID
      ,a.[WZID]--��վ����ID
      ,a.[PJR]--������
      ,a.[YJDZ]--�ʼ���ַ
      ,a.[PJSJ]--����ʱ��
      ,a.[PJNR]--��������
      ,a.[PJZT]--����״̬
      ,a.[SHR]--�����
      ,a.[HF]--�ظ�
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,d.SCHOOLID as d_WZWZ_SCHOOLID--��վ���� ѧУ��
      ,d.WEBID as d_WZWZ_WEBID--��վ���� ��վID
      ,d.TYPENAME as d_WZWZ_TYPENAME--��վ���� ��������
      ,d.LMID as d_WZWZ_LMID--��վ���� ��Ŀ
      ,d.TITLE as d_WZWZ_TITLE--��վ���� ����
      ,d.PUBLISHERNAME as d_WZWZ_PUBLISHERNAME--��վ���� ������
      ,d.AUTHOR as d_WZWZ_AUTHOR--��վ���� ����
      ,d.AUTHORDEPART as d_WZWZ_AUTHORDEPART--��վ���� ���߲���
      ,d.PUBLISHDATE as d_WZWZ_PUBLISHDATE--��վ���� ����ʱ��
      ,d.CONTENT as d_WZWZ_CONTENT--��վ���� ����
      ,d.URL as d_WZWZ_URL--��վ���� ����
      ,d.IMAGEURL as d_WZWZ_IMAGEURL--��վ���� ͼƬ
      ,d.ATTACHMENTNAME as d_WZWZ_ATTACHMENTNAME--��վ���� ������
      ,d.ATTACHMENT as d_WZWZ_ATTACHMENT--��վ���� ����
      ,d.CHICKNUB as d_WZWZ_CHICKNUB--��վ���� �����
      ,d.AUDITSTATU as d_WZWZ_AUDITSTATU--��վ���� ���״̬
      ,d.AUDITOR as d_WZWZ_AUDITOR--��վ���� �����ID
      ,d.AUDITORNAME as d_WZWZ_AUDITORNAME--��վ���� �����
      ,d.AUDITTIME as d_WZWZ_AUDITTIME--��վ���� ���ʱ��
      ,d.REMARK as d_WZWZ_REMARK--��վ���� ��ע
      ,d.SUMMARY as d_WZWZ_SUMMARY--��վ���� ժҪ
      ,d.DISPLAYTYPE as d_WZWZ_DISPLAYTYPE--��վ���� ������
      ,d.OPENFLAG as d_WZWZ_OPENFLAG--��վ���� ����״̬
      ,d.LLQX as d_WZWZ_LLQX--��վ���� ���Ȩ��

FROM dbo.EDU_WZXT_MHXT_WZPJ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZWZ AS d ON a.WZID = d.ID /*��վ����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ AND a.WEBID = d.WEBID /*��վID*/
GO

--��վ����
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZPZ_DISP]
AS
SELECT a.[WEBID]--��վID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBNAME]--��վ��
      ,a.[STATUID]--�Ƿ���
      ,a.[WEBURL]--��ַ
      ,a.[CSSID]--��վ��ʽ
      ,b.SCHOOLID as b_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,b.WEBNAME as b_WZPZ_WEBNAME--��վ���� ��վ��
      ,b.STATUID as b_WZPZ_STATUID--��վ���� �Ƿ���
      ,b.WEBURL as b_WZPZ_WEBURL--��վ���� ��ַ
      ,b.CSSID as b_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,d.SCHOOLID as d_WZYS_SCHOOLID--��ʽ�� ѧУ��
      ,d.WEBID as d_WZYS_WEBID--��ʽ�� ��վID
      ,d.NAME as d_WZYS_NAME--��ʽ�� ��ʽ��
      ,d.SHOWIMG as d_WZYS_SHOWIMG--��ʽ�� Ч��ͼ

FROM dbo.EDU_WZXT_MHXT_WZPZ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS b ON a.WEBID = b.WEBID /*��վID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZYS AS d ON a.CSSID = d.ID /*��վ��ʽ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/
GO

--��վ��Ŀ��������
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZLM_DISP]
AS
SELECT a.[ID]--��վ��Ŀ��������ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[LMSHOWSTYLE]--��Ŀʹ������
      ,a.[NAME]--��Ŀ����
      ,a.[URL]--��Ŀ����
      ,a.[IMAGEURL]--ͼƬ����
      ,a.[DEPTH]--�㼶
      ,a.[PID]--��Ŀ¼
      ,a.[LISTSHOWSTYLE]--�б���ʾ��ʽ
      ,a.[ORDERTYPE]--����ʽ
      ,a.[SHOWNUMBER]--��ʾ����
      ,a.[OPENFLAG]--����״̬
      ,a.[LLQX]--���Ȩ��
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,d.SCHOOLID as d_WZLM_SCHOOLID--��վ��Ŀ�������� ѧУ��
      ,d.WEBID as d_WZLM_WEBID--��վ��Ŀ�������� ��վID
      ,d.LMSHOWSTYLE as d_WZLM_LMSHOWSTYLE--��վ��Ŀ�������� ��Ŀʹ������
      ,d.NAME as d_WZLM_NAME--��վ��Ŀ�������� ��Ŀ����
      ,d.URL as d_WZLM_URL--��վ��Ŀ�������� ��Ŀ����
      ,d.IMAGEURL as d_WZLM_IMAGEURL--��վ��Ŀ�������� ͼƬ����
      ,d.DEPTH as d_WZLM_DEPTH--��վ��Ŀ�������� �㼶
      ,d.PID as d_WZLM_PID--��վ��Ŀ�������� ��Ŀ¼
      ,d.LISTSHOWSTYLE as d_WZLM_LISTSHOWSTYLE--��վ��Ŀ�������� �б���ʾ��ʽ
      ,d.ORDERTYPE as d_WZLM_ORDERTYPE--��վ��Ŀ�������� ����ʽ
      ,d.SHOWNUMBER as d_WZLM_SHOWNUMBER--��վ��Ŀ�������� ��ʾ����
      ,d.OPENFLAG as d_WZLM_OPENFLAG--��վ��Ŀ�������� ����״̬
      ,d.LLQX as d_WZLM_LLQX--��վ��Ŀ�������� ���Ȩ��

FROM dbo.EDU_WZXT_MHXT_WZLM AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZLM AS d ON a.PID = d.ID /*��Ŀ¼*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/
GO

--��վ���
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZGG_DISP]
AS
SELECT a.[ID]--��վ���ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[SHOWTYPE]--��ʾ��ʽ
      ,a.[ADCONTENT]--�������
      ,a.[GGLJ]--�������
      ,a.[SHOWSTATU]--�Ƿ���ʾ
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ

FROM dbo.EDU_WZXT_MHXT_WZGG AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO

--��������
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_FWLL_DISP]
AS
SELECT a.[ID]--��������ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[ACCESSIP]--����IP
      ,a.[ACCESSURL]--��������
      ,a.[ACCESSTIME]--����ʱ��
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ

FROM dbo.EDU_WZXT_MHXT_FWLL AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO

--����Ȩ��
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_FBQX_DISP]
AS
SELECT a.[ID]--����Ȩ��ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[LOGINNAME]--�û���
      ,a.[LMLIST]--��Ŀ
      ,a.[LMNAMELIST]--��Ŀ����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ

FROM dbo.EDU_WZXT_MHXT_FBQX AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO

--�Խ�רҵ����
CREATE VIEW [dbo].[VIEW_EDU_ZJ_ZJZY_DISP]
AS
SELECT a.[DM]--����
      ,a.[ZYMLLB]--רҵĿ¼���
      ,a.[MC]--����
      ,b.MC as b_ZYML_MC--רҵĿ¼���� ����

FROM dbo.EDU_ZJ_ZJZY AS a LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS b ON a.ZYMLLB = b.DM /*רҵĿ¼���*/
GO

--ֵ�ܸ�λ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A01_ZZGW_DISP]
AS
SELECT a.[ID]--ֵ�ܸ�λ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[GWGZNR]--��λ��������
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,cb.MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������

FROM dbo.EDU_ZXDY_04_A01_ZZGW AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/
GO

--ֵ����Ա���ű�
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A02_ZZRYAP_DISP]
AS
SELECT a.[ID]--ֵ����Ա���ű�ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[ZCID]--�ܴ�ID
      ,a.[KSRQ]--��ʼ����
      ,a.[JSRQ]--��������
      ,a.[ZZBJ]--ֵ�ܰ༶���
      ,a.[ZZID]--�鳤ID
      ,a.[ZYIDLB]--��ԱID�б�
      ,a.[ZYMCLB]--��Ա�����б�
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,cb.MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--ֵ���ܴα� ѧУID
      ,d.XQID as d_ZZZC_XQID--ֵ���ܴα� ѧ��ID
      ,d.ZCM as d_ZZZC_ZCM--ֵ���ܴα� �ܴ���
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--ֵ���ܴα� ��ʼ����
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--ֵ���ܴα� ��������
      ,e.SCHOOLID as e_BJ_SCHOOLID--�༶������� ѧУ��
      ,e.NJ as e_BJ_NJ--�༶������� �꼶��
      ,e.BJ as e_BJ_BJ--�༶������� �༶����
      ,e.JBNY as e_BJ_JBNY--�༶������� ��������
      ,e.BZRGH as e_BJ_BZRGH--�༶������� �����ι���
      ,e.BZXH as e_BJ_BZXH--�༶������� �೤ѧ��
      ,e.BJRYCH as e_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,e.XZ as e_BJ_XZ--�༶������� ѧ��
      ,e.BJLXM as e_BJ_BJLXM--�༶������� �༶������
      ,eb.MC as e_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,e.WLLX as e_BJ_WLLX--�༶������� ��������
      ,e.BYRQ as e_BJ_BYRQ--�༶������� ��ҵ����
      ,e.SFSSMZSYJXB as e_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,ec.MC as e_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,e.SYJXMSM as e_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,ed.MC as e_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,ed.SM as e_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
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

FROM dbo.EDU_ZXDY_04_A02_ZZRYAP AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*�ܴ�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS e ON a.ZZBJ = e.BH /*ֵ�ܰ༶���*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.ZZID = f.LOGINNAME /*�鳤ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS eb ON e.BJLXM = eb.DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ec ON e.SFSSMZSYJXB = ec.DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS ed ON e.SYJXMSM = ed.DM /*˫���ѧģʽ��*/
GO

--ֵ�ܸ�λ�����
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A03_ZZGWFP_DISP]
AS
SELECT a.[ID]--ֵ�ܸ�λ�����ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[ZCID]--�ܴ�ID
      ,a.[GZR]--������
      ,a.[GWID]--��λID
      ,a.[JSID]--��ʦID
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,cb.MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--ֵ���ܴα� ѧУID
      ,d.XQID as d_ZZZC_XQID--ֵ���ܴα� ѧ��ID
      ,d.ZCM as d_ZZZC_ZCM--ֵ���ܴα� �ܴ���
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--ֵ���ܴα� ��ʼ����
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--ֵ���ܴα� ��������
      ,e.SCHOOLID as e_ZZGW_SCHOOLID--ֵ�ܸ�λ���ݱ� ѧУID
      ,e.XQID as e_ZZGW_XQID--ֵ�ܸ�λ���ݱ� ѧ��ID
      ,e.GWGZNR as e_ZZGW_GWGZNR--ֵ�ܸ�λ���ݱ� ��λ��������
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

FROM dbo.EDU_ZXDY_04_A03_ZZGWFP AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*�ܴ�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A01_ZZGW AS e ON a.GWID = e.ID /*��λID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.JSID = f.LOGINNAME /*��ʦID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/
GO

--��λ����ģ���
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A04_GWFPMB_DISP]
AS
SELECT a.[ID]--��λ����ģ���ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[MBMC]--ģ������

FROM dbo.EDU_ZXDY_04_A04_GWFPMB AS a
GO

--�ر�ֵ�ܽ�ʦ��
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A05_TBZZJS_DISP]
AS
SELECT a.[ID]--�ر�ֵ�ܽ�ʦ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[JSLX]--��ʦ����
      ,a.[JSID]--��ʦID
      ,a.[YXRQ]--��Ч����
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,cb.MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
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

FROM dbo.EDU_ZXDY_04_A05_TBZZJS AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JSID = d.LOGINNAME /*��ʦID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/
GO

--ֵ���ܴα�
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A06_ZZZC_DISP]
AS
SELECT a.[ID]--�ܴα�ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[ZCM]--�ܴ���
      ,a.[XQKSRQ]--��ʼ����
      ,a.[XQJSRQ]--��������
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,cb.MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������

FROM dbo.EDU_ZXDY_04_A06_ZZZC AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/
GO

--ģ��������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A07_MBFPNR_DISP]
AS
SELECT a.[ID]--ģ�����ݱ�ID
      ,a.[MBID]--ģ���ID
      ,a.[GZR]--������
      ,a.[GWID]--��λID
      ,a.[DYRYH]--��Ӧ��Ա��
      ,b.SCHOOLID as b_GWFPMB_SCHOOLID--��λ����ģ��� ѧУID
      ,b.MBMC as b_GWFPMB_MBMC--��λ����ģ��� ģ������
      ,c.SCHOOLID as c_ZZGW_SCHOOLID--ֵ�ܸ�λ���ݱ� ѧУID
      ,c.XQID as c_ZZGW_XQID--ֵ�ܸ�λ���ݱ� ѧ��ID
      ,c.GWGZNR as c_ZZGW_GWGZNR--ֵ�ܸ�λ���ݱ� ��λ��������

FROM dbo.EDU_ZXDY_04_A07_MBFPNR AS a LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A04_GWFPMB AS b ON a.MBID = b.ID /*ģ���ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A01_ZZGW AS c ON a.GWID = c.ID /*��λID*/
GO

--ֵ�ܴ�ִ����
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_05_A01_ZZDFDL_DISP]
AS
SELECT a.[ID]--ֵ�ܴ�ִ����ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[DLMC]--��������
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,cb.MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������

FROM dbo.EDU_ZXDY_05_A01_ZZDFDL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/
GO

--ֵ�ܴ��ϸ���
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_05_A02_ZZDFXZ_DISP]
AS
SELECT a.[ID]--ֵ�ܴ��ϸ���ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[SSDLID]--��������ID
      ,a.[XZNR]--ϸ������
      ,a.[XZFZ]--ϸ���ֵ
      ,c.SCHOOLID as c_ZZDFDL_SCHOOLID--ֵ�ܴ�ִ���� ѧУID
      ,c.XQID as c_ZZDFDL_XQID--ֵ�ܴ�ִ���� ѧ��ID
      ,c.DLMC as c_ZZDFDL_DLMC--ֵ�ܴ�ִ���� ��������

FROM dbo.EDU_ZXDY_05_A02_ZZDFXZ AS a LEFT OUTER JOIN
      dbo.EDU_ZXDY_05_A01_ZZDFDL AS c ON a.SSDLID = c.ID /*��������ID*/
GO

--ֵ�ܴ�ֵ���
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_05_A03_ZZDFD_DISP]
AS
SELECT a.[ID]--ֵ�ܴ�ֵ���ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[ZCID]--�ܴ�ID
      ,a.[BJ]--�༶
      ,a.[XSIDLB]--ѧ��ID�б�
      ,a.[XSMCLB]--ѧ�������б�
      ,a.[SSXZID]--����ϸ��
      ,a.[DFFZ]--��ַ�ֵ
      ,a.[FSSJ]--����ʱ��
      ,a.[DFSJ]--���ʱ��
      ,a.[DFJSID]--��ֽ�ʦID
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,cb.MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--ֵ���ܴα� ѧУID
      ,d.XQID as d_ZZZC_XQID--ֵ���ܴα� ѧ��ID
      ,d.ZCM as d_ZZZC_ZCM--ֵ���ܴα� �ܴ���
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--ֵ���ܴα� ��ʼ����
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--ֵ���ܴα� ��������
      ,e.SCHOOLID as e_BJ_SCHOOLID--�༶������� ѧУ��
      ,e.NJ as e_BJ_NJ--�༶������� �꼶��
      ,e.BJ as e_BJ_BJ--�༶������� �༶����
      ,e.JBNY as e_BJ_JBNY--�༶������� ��������
      ,e.BZRGH as e_BJ_BZRGH--�༶������� �����ι���
      ,e.BZXH as e_BJ_BZXH--�༶������� �೤ѧ��
      ,e.BJRYCH as e_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,e.XZ as e_BJ_XZ--�༶������� ѧ��
      ,e.BJLXM as e_BJ_BJLXM--�༶������� �༶������
      ,eb.MC as e_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,e.WLLX as e_BJ_WLLX--�༶������� ��������
      ,e.BYRQ as e_BJ_BYRQ--�༶������� ��ҵ����
      ,e.SFSSMZSYJXB as e_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,ec.MC as e_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,e.SYJXMSM as e_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,ed.MC as e_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,ed.SM as e_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,f.SCHOOLID as f_ZZDFXZ_SCHOOLID--ֵ�ܴ��ϸ��� ѧУID
      ,f.SSDLID as f_ZZDFXZ_SSDLID--ֵ�ܴ��ϸ��� ��������ID
      ,f.XZNR as f_ZZDFXZ_XZNR--ֵ�ܴ��ϸ��� ϸ������
      ,f.XZFZ as f_ZZDFXZ_XZFZ--ֵ�ܴ��ϸ��� ϸ���ֵ
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

FROM dbo.EDU_ZXDY_05_A03_ZZDFD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*�ܴ�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS e ON a.BJ = e.BH /*�༶*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_05_A02_ZZDFXZ AS f ON a.SSXZID = f.ID /*����ϸ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.DFJSID = g.LOGINNAME /*��ֽ�ʦID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS eb ON e.BJLXM = eb.DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ec ON e.SFSSMZSYJXB = ec.DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS ed ON e.SYJXMSM = ed.DM /*˫���ѧģʽ��*/
GO

--ֵ��С���
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_06_A01_ZZXJ_DISP]
AS
SELECT a.[ID]--ֵ��С���ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[ZCID]--�ܴ�ID
      ,a.[SZDS]--���ܴ���
      ,a.[ZZJCQKFK]--ֵ�ܼ���������
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,cb.MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--ֵ���ܴα� ѧУID
      ,d.XQID as d_ZZZC_XQID--ֵ���ܴα� ѧ��ID
      ,d.ZCM as d_ZZZC_ZCM--ֵ���ܴα� �ܴ���
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--ֵ���ܴα� ��ʼ����
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--ֵ���ܴα� ��������

FROM dbo.EDU_ZXDY_06_A01_ZZXJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*�ܴ�ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/
GO

--�����½�����
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_06_A02_GQXJH_DISP]
AS
SELECT a.[ID]--�����½�����ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[ZCID]--�ܴ�ID
      ,a.[JHZT]--��������
      ,a.[JHNR]--��������
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,cb.MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--ֵ���ܴα� ѧУID
      ,d.XQID as d_ZZZC_XQID--ֵ���ܴα� ѧ��ID
      ,d.ZCM as d_ZZZC_ZCM--ֵ���ܴα� �ܴ���
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--ֵ���ܴα� ��ʼ����
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--ֵ���ܴα� ��������

FROM dbo.EDU_ZXDY_06_A02_GQXJH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*�ܴ�ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/
GO

--�γ�������
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_01_01_KC_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[KCH]--�γ̺�
      ,a.[KCMC]--�γ�����
      ,a.[KCM]--�γ���
      ,a.[KCDJM]--�γ̵ȼ���
      ,a.[KCBM]--�γ̱���
      ,a.[KCJJ]--�γ̼��
      ,a.[KCYQ]--�γ�Ҫ��
      ,a.[ZXS]--��ѧʱ
      ,a.[ZHXS]--��ѧʱ
      ,a.[ZXXS]--��ѧѧʱ
      ,a.[SKFSM]--�ڿη�ʽ��
      ,a.[JCBM]--�̲ı���
      ,a.[CKSM]--�ο���Ŀ
      ,a.[CDXZ]--��������
      ,a.[SFZK]--�Ƿ�����
      ,c.MC as c_ZXXKC_MC--��Сѧ�γ̴���� ����
      ,c.SYXX as c_ZXXKC_SYXX--��Сѧ�γ̴���� ����ѧУ
      ,d.MC as d_ZXXKCDJ_MC--��Сѧ�γ̵ȼ������ ����
      ,e.MC as e_SKFS_MC--�ڿη�ʽ����� ����
      ,f.MC as f_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZXJX_01_01_KC AS a LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS c ON a.KCM = c.DM /*�γ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS d ON a.KCDJM = d.DM /*�γ̵ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS e ON a.SKFSM = e.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFZK = f.DM /*�Ƿ�����*/
GO

--�������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_05_A01_KS_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XNID]--ѧ��
      ,a.[XQID]--ѧ��
      ,a.[KSMC]--��������
      ,a.[KSKSSJ]--���Կ�ʼʱ��
      ,a.[KSJSSJ]--���Խ���ʱ��
      ,a.[DFKSSJ]--�Ƿֿ�ʼʱ��
      ,a.[DFJSSJ]--�Ƿֽ���ʱ��
      ,c.SCHOOLID as c_XN_SCHOOLID--ѧ��� ѧУ��
      ,c.XN as c_XN_XN--ѧ��� ѧ��
      ,d.SCHOOLID as d_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,d.XNID as d_XQ_XNID--ѧ�����ݱ� ѧ��
      ,d.XQM as d_XQ_XQM--ѧ�����ݱ� ѧ����
      ,db.MC as d_XQ_XQM_MC--ѧ�ڴ���� ����
      ,d.XQMC as d_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,d.XQKSRQ as d_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,d.XQJSRQ as d_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������

FROM dbo.EDU_ZXJX_05_A01_KS AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*ѧ��*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*ѧ��*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS db ON d.XQM = db.DM /*ѧ����*/
GO

--���Կ�Ŀ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_05_A02_KSKM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[SSKSID]--��������ID
      ,a.[JSRKID]--��ʦ�οα��
      ,a.[KCMC]--�γ�����
      ,a.[NJMC]--�꼶����
      ,a.[BJMC]--�༶����
      ,a.[CJZF]--�ɼ��ܷ�
      ,c.SCHOOLID as c_KS_SCHOOLID--�������ݱ� ѧУ��
      ,c.XNID as c_KS_XNID--�������ݱ� ѧ��
      ,c.XQID as c_KS_XQID--�������ݱ� ѧ��
      ,c.KSMC as c_KS_KSMC--�������ݱ� ��������
      ,c.KSKSSJ as c_KS_KSKSSJ--�������ݱ� ���Կ�ʼʱ��
      ,c.KSJSSJ as c_KS_KSJSSJ--�������ݱ� ���Խ���ʱ��
      ,c.DFKSSJ as c_KS_DFKSSJ--�������ݱ� �Ƿֿ�ʼʱ��
      ,c.DFJSSJ as c_KS_DFJSSJ--�������ݱ� �Ƿֽ���ʱ��
      ,d.SCHOOLID as d_RKSJ_SCHOOLID--�ο���������� ѧУ��
      ,d.JZGJBSJID as d_RKSJ_JZGJBSJID--�ο���������� ��ְ���������������
      ,d.RKKCH as d_RKSJ_RKKCH--�ο���������� �οογ̺�
      ,d.RKQSNY as d_RKSJ_RKQSNY--�ο���������� �ο���ʼ����
      ,d.RKZZNY as d_RKSJ_RKZZNY--�ο���������� �ο���ֹ����
      ,d.RKZXS as d_RKSJ_RKZXS--�ο���������� �ο���ѧʱ
      ,d.RKXDM as d_RKSJ_RKXDM--�ο���������� �ο�ѧ����
      ,db.MC as d_RKSJ_RKXDM_MC--�ο�ѧ�δ���� ����
      ,d.RKJSM as d_RKSJ_RKJSM--�ο���������� �ον�ɫ��
      ,dc.MC as d_RKSJ_RKJSM_MC--�ον�ɫ����� ����
      ,d.SKBJ as d_RKSJ_SKBJ--�ο���������� �ڿΰ༶
      ,d.SKRS as d_RKSJ_SKRS--�ο���������� �ڿ�����
      ,d.ZKS as d_RKSJ_ZKS--�ο���������� �ܿ�ʱ
      ,d.SFLT as d_RKSJ_SFLT--�ο���������� �Ƿ�����
      ,dd.MC as d_RKSJ_SFLT_MC--�Ƿ��־����� ����
      ,d.NJID as d_RKSJ_NJID--�ο���������� �꼶��
      ,d.XQID as d_RKSJ_XQID--�ο���������� ѧ��
      ,d.XNID as d_RKSJ_XNID--�ο���������� ѧ��

FROM dbo.EDU_ZXJX_05_A02_KSKM AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_05_A01_KS AS c ON a.SSKSID = c.ID /*��������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_07_02_RKSJ AS d ON a.JSRKID = d.ID /*��ʦ�οα��*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS db ON d.RKXDM = db.DM /*�ο�ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKJS AS dc ON d.RKJSM = dc.DM /*�ον�ɫ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dd ON d.SFLT = dd.DM /*�Ƿ�����*/
GO

--������¼��
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_06_A01_MPJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[MPJS]--������ʦ
      ,a.[MPKC]--�����γ�
      ,a.[MPXS]--����ѧ��
      ,a.[XNID]--ѧ��
      ,a.[XQID]--ѧ��
      ,a.[NJID]--�꼶
      ,a.[BJID]--�༶
      ,a.[MPJG]--�������
      ,a.[MPSJ]--����ʱ��
      ,a.[RRSJ]--¼��ʱ��
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,c.GH as c_JZGJBSJ_GH--��ְ��������������� ����
      ,c.XM as c_JZGJBSJ_XM--��ְ��������������� ����
      ,c.YWXM as c_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--��ְ��������������� ������
      ,c.XBM as c_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,cb.MC as c_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,c.CSDM as c_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,cc.MC as c_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_JZGJBSJ_JG--��ְ��������������� ����
      ,c.MZM as c_JZGJBSJ_MZM--��ְ��������������� ������
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,ce.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,ce.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,ce.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,cf.MC as c_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,c.HYZKM as c_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,cg.MC as c_JZGJBSJ_HYZKM_MC--����״������ ����
      ,c.GATQWM as c_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,ch.MC as c_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,ch.SM as c_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,ci.MC as c_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,ci.JC as c_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,cj.MC as c_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,cj.SM as c_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.XYZJM as c_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,ck.MC as c_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,c.XXM as c_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,cl.MC as c_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,cl.JC as c_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,c.ZP as c_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,c.SFZJYXQ as c_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,c.JGH as c_JZGJBSJ_JGH--��ְ��������������� ������
      ,c.JTZZ as c_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,c.XZZ as c_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,c.HKSZD as c_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,c.HKXZM as c_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,cm.MC as c_JZGJBSJ_HKXZM_MC--���������� ����
      ,c.XLM as c_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,cn.MC as c_JZGJBSJ_XLM_MC--ѧ������ ����
      ,c.GZNY as c_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,c.LXNY as c_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,c.CJNY as c_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,co.MC as c_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,c.DABH as c_JZGJBSJ_DABH--��ְ��������������� �������
      ,c.DAWB as c_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,c.TXDZ as c_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,c.LXDH as c_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,c.YZBM as c_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,c.DZXX as c_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,c.ZYDZ as c_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,c.TC as c_JZGJBSJ_TC--��ְ��������������� �س�
      ,c.GWZYM as c_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,cp.MC as c_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,c.ZYRKXD as c_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,cq.MC as c_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,d.SCHOOLID as d_KC_SCHOOLID--�γ������� ѧУ��
      ,d.KCMC as d_KC_KCMC--�γ������� �γ�����
      ,d.KCM as d_KC_KCM--�γ������� �γ���
      ,db.MC as d_KC_KCM_MC--��Сѧ�γ̴���� ����
      ,db.SYXX as d_KC_KCM_SYXX--��Сѧ�γ̴���� ����ѧУ
      ,d.KCDJM as d_KC_KCDJM--�γ������� �γ̵ȼ���
      ,dc.MC as d_KC_KCDJM_MC--��Сѧ�γ̵ȼ������ ����
      ,d.KCBM as d_KC_KCBM--�γ������� �γ̱���
      ,d.KCJJ as d_KC_KCJJ--�γ������� �γ̼��
      ,d.KCYQ as d_KC_KCYQ--�γ������� �γ�Ҫ��
      ,d.ZXS as d_KC_ZXS--�γ������� ��ѧʱ
      ,d.ZHXS as d_KC_ZHXS--�γ������� ��ѧʱ
      ,d.ZXXS as d_KC_ZXXS--�γ������� ��ѧѧʱ
      ,d.SKFSM as d_KC_SKFSM--�γ������� �ڿη�ʽ��
      ,dd.MC as d_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,d.JCBM as d_KC_JCBM--�γ������� �̲ı���
      ,d.CKSM as d_KC_CKSM--�γ������� �ο���Ŀ
      ,d.CDXZ as d_KC_CDXZ--�γ������� ��������
      ,d.SFZK as d_KC_SFZK--�γ������� �Ƿ�����
      ,de.MC as d_KC_SFZK_MC--�Ƿ��־����� ����
      ,e.SCHOOLID as e_XSXX_SCHOOLID--ѧ��������������� ѧУ��
      ,e.XH as e_XSXX_XH--ѧ��������������� ѧ��
      ,e.XM as e_XSXX_XM--ѧ��������������� ����
      ,e.YWXM as e_XSXX_YWXM--ѧ��������������� Ӣ������
      ,e.XMPY as e_XSXX_XMPY--ѧ��������������� ����ƴ��
      ,e.CYM as e_XSXX_CYM--ѧ��������������� ������
      ,e.XBM as e_XSXX_XBM--ѧ��������������� �Ա���
      ,eb.MC as e_XSXX_XBM_MC--�˵��Ա���� ����
      ,e.CSRQ as e_XSXX_CSRQ--ѧ��������������� ��������
      ,e.CSDM as e_XSXX_CSDM--ѧ��������������� ��������
      ,ec.MC as e_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,e.JG as e_XSXX_JG--ѧ��������������� ����
      ,e.MZM as e_XSXX_MZM--ѧ��������������� ������
      ,ed.MZMC as e_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,ed.ZMDM as e_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,e.GJDQM as e_XSXX_GJDQM--ѧ��������������� ����/������
      ,ee.GJDQMCJC as e_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,ee.EZMDM as e_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,ee.SZMDM as e_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,e.SFZJLXM as e_XSXX_SFZJLXM--ѧ��������������� ���֤��������
      ,ef.MC as e_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,e.SFZJH as e_XSXX_SFZJH--ѧ��������������� ���֤����
      ,e.HYZKM as e_XSXX_HYZKM--ѧ��������������� ����״����
      ,eg.MC as e_XSXX_HYZKM_MC--����״������ ����
      ,e.GATQWM as e_XSXX_GATQWM--ѧ��������������� �۰�̨������
      ,eh.MC as e_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,eh.SM as e_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,e.ZZMMM as e_XSXX_ZZMMM--ѧ��������������� ������ò��
      ,ei.MC as e_XSXX_ZZMMM_MC--������ò���� ����
      ,ei.JC as e_XSXX_ZZMMM_JC--������ò���� ���
      ,e.JKZKM as e_XSXX_JKZKM--ѧ��������������� ����״����
      ,ej.MC as e_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,ej.SM as e_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,e.XYZJM as e_XSXX_XYZJM--ѧ��������������� �����ڽ���
      ,ek.MC as e_XSXX_XYZJM_MC--�ڽ��������� ����
      ,e.XXM as e_XSXX_XXM--ѧ��������������� Ѫ����
      ,el.MC as e_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,el.JC as e_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,e.ZP as e_XSXX_ZP--ѧ��������������� ��Ƭ
      ,e.SFZJYXQ as e_XSXX_SFZJYXQ--ѧ��������������� ���֤����Ч��
      ,e.DSZYBZ as e_XSXX_DSZYBZ--ѧ��������������� ������Ů��־
      ,em.MC as e_XSXX_DSZYBZ_MC--�Ƿ��־����� ����
      ,e.RXNY as e_XSXX_RXNY--ѧ��������������� ��ѧ����
      ,e.NJ as e_XSXX_NJ--ѧ��������������� �꼶
      ,e.BH as e_XSXX_BH--ѧ��������������� ���
      ,e.XSLBM as e_XSXX_XSLBM--ѧ��������������� ѧ�������
      ,en.MC as e_XSXX_XSLBM_MC--ѧ��������� ����
      ,en.SM as e_XSXX_XSLBM_SM--ѧ��������� ˵��
      ,e.XZZ as e_XSXX_XZZ--ѧ��������������� ��סַ
      ,e.HKSZD as e_XSXX_HKSZD--ѧ��������������� �������ڵ�
      ,e.HKXZM as e_XSXX_HKXZM--ѧ��������������� ����������
      ,eo.MC as e_XSXX_HKXZM_MC--���������� ����
      ,e.SFLDRK as e_XSXX_SFLDRK--ѧ��������������� �Ƿ������˿�
      ,ep.MC as e_XSXX_SFLDRK_MC--�Ƿ��־����� ����
      ,e.TC as e_XSXX_TC--ѧ��������������� �س�
      ,e.LXDH as e_XSXX_LXDH--ѧ��������������� ��ϵ�绰
      ,e.TXDZ as e_XSXX_TXDZ--ѧ��������������� ͨ�ŵ�ַ
      ,e.YZBM as e_XSXX_YZBM--ѧ��������������� ��������
      ,e.DZXX as e_XSXX_DZXX--ѧ��������������� ��������
      ,e.ZYDZ as e_XSXX_ZYDZ--ѧ��������������� ��ҳ��ַ
      ,e.XJH as e_XSXX_XJH--ѧ��������������� ѧ����
      ,f.SCHOOLID as f_XN_SCHOOLID--ѧ��� ѧУ��
      ,f.XN as f_XN_XN--ѧ��� ѧ��
      ,g.SCHOOLID as g_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,g.XNID as g_XQ_XNID--ѧ�����ݱ� ѧ��
      ,g.XQM as g_XQ_XQM--ѧ�����ݱ� ѧ����
      ,gb.MC as g_XQ_XQM_MC--ѧ�ڴ���� ����
      ,g.XQMC as g_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,g.XQKSRQ as g_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,g.XQJSRQ as g_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,h.SCHOOLID as h_NJ_SCHOOLID--�꼶������� ѧУ��
      ,h.NJMC as h_NJ_NJMC--�꼶������� �꼶����
      ,i.SCHOOLID as i_BJ_SCHOOLID--�༶������� ѧУ��
      ,i.NJ as i_BJ_NJ--�༶������� �꼶��
      ,i.BJ as i_BJ_BJ--�༶������� �༶����
      ,i.JBNY as i_BJ_JBNY--�༶������� ��������
      ,i.BZRGH as i_BJ_BZRGH--�༶������� �����ι���
      ,i.BZXH as i_BJ_BZXH--�༶������� �೤ѧ��
      ,i.BJRYCH as i_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,i.XZ as i_BJ_XZ--�༶������� ѧ��
      ,i.BJLXM as i_BJ_BJLXM--�༶������� �༶������
      ,ib.MC as i_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,i.WLLX as i_BJ_WLLX--�༶������� ��������
      ,i.BYRQ as i_BJ_BYRQ--�༶������� ��ҵ����
      ,i.SFSSMZSYJXB as i_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,ic.MC as i_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,i.SYJXMSM as i_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,id.MC as i_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,id.SM as i_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��

FROM dbo.EDU_ZXJX_06_A01_MPJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS c ON a.MPJS = c.ID /*������ʦ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS d ON a.MPKC = d.KCH /*�����γ�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS e ON a.MPXS = e.ID /*����ѧ��*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS f ON a.XNID = f.ID /*ѧ��*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS g ON a.XQID = g.ID /*ѧ��*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS h ON a.NJID = h.NJ /*�꼶*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS i ON a.BJID = i.BH /*�༶*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cb ON c.XBM = cb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.CSDM = cc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ce ON c.GJDQM = ce.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cf ON c.SFZJLXM = cf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ch ON c.GATQWM = ch.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ci ON c.ZZMMM = ci.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ck ON c.XYZJM = ck.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cl ON c.XXM = cl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKXZM = cm.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS cn ON c.XLM = cn.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS co ON c.BZLBM = co.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS cp ON c.GWZYM = cp.DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS cq ON c.ZYRKXD = cq.DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS db ON d.KCM = db.DM /*�γ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS dc ON d.KCDJM = dc.DM /*�γ̵ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dd ON d.SKFSM = dd.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS de ON d.SFZK = de.DM /*�Ƿ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS eb ON e.XBM = eb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ec ON e.CSDM = ec.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ed ON e.MZM = ed.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ee ON e.GJDQM = ee.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ef ON e.SFZJLXM = ef.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS eg ON e.HYZKM = eg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS eh ON e.GATQWM = eh.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ei ON e.ZZMMM = ei.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ej ON e.JKZKM = ej.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ek ON e.XYZJM = ek.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS el ON e.XXM = el.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS em ON e.DSZYBZ = em.DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS en ON e.XSLBM = en.DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS eo ON e.HKXZM = eo.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ep ON e.SFLDRK = ep.DM /*�Ƿ������˿�*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS gb ON g.XQM = gb.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS ib ON i.BJLXM = ib.DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ic ON i.SFSSMZSYJXB = ic.DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS id ON i.SYJXMSM = id.DM /*˫���ѧģʽ��*/
GO

--��ְ���������������
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_01_01_JZGJBSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[GH]--����
      ,a.[XM]--����
      ,a.[YWXM]--Ӣ������
      ,a.[XMPY]--����ƴ��
      ,a.[CYM]--������
      ,a.[XBM]--�Ա���
      ,a.[CSRQ]--��������
      ,a.[CSDM]--��������
      ,a.[JG]--����
      ,a.[MZM]--������
      ,a.[GJDQM]--����/������
      ,a.[SFZJLXM]--���֤��������
      ,a.[SFZJH]--���֤����
      ,a.[HYZKM]--����״����
      ,a.[GATQWM]--�۰�̨������
      ,a.[ZZMMM]--������ò��
      ,a.[JKZKM]--����״����
      ,a.[XYZJM]--�����ڽ���
      ,a.[XXM]--Ѫ����
      ,a.[ZP]--��Ƭ
      ,a.[SFZJYXQ]--���֤����Ч��
      ,a.[JGH]--������
      ,a.[JTZZ]--��ͥסַ
      ,a.[XZZ]--��סַ
      ,a.[HKSZD]--�������ڵ�
      ,a.[HKXZM]--����������
      ,a.[XLM]--ѧ����
      ,a.[GZNY]--�μӹ�������
      ,a.[LXNY]--��У����
      ,a.[CJNY]--�ӽ�����
      ,a.[BZLBM]--���������
      ,a.[DABH]--�������
      ,a.[DAWB]--�����ı�
      ,a.[TXDZ]--ͨ�ŵ�ַ
      ,a.[LXDH]--��ϵ�绰
      ,a.[YZBM]--��������
      ,a.[DZXX]--��������
      ,a.[ZYDZ]--��ҳ��ַ
      ,a.[TC]--�س�
      ,a.[GWZYM]--��λְҵ��
      ,a.[ZYRKXD]--��Ҫ�ο�ѧ��
      ,c.MC as c_RDXB_MC--�˵��Ա���� ����
      ,d.MC as d_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--��������͵������ƴ��� ����ĸ����
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--��������͵������ƴ��� ����ĸ����
      ,g.MC as g_SFZJLX_MC--���֤�����ʹ���� ����
      ,h.MC as h_HYZZ_MC--����״������ ����
      ,i.MC as i_GATQW_MC--�۰�̨�������� ����
      ,i.SM as i_GATQW_SM--�۰�̨�������� ˵��
      ,j.MC as j_ZZMM_MC--������ò���� ����
      ,j.JC as j_ZZMM_JC--������ò���� ���
      ,k.MC as k_JKZKYWSZ_MC--����״��1λ���ִ��� ����
      ,k.SM as k_JKZKYWSZ_SM--����״��1λ���ִ��� ˵��
      ,l.MC as l_ZJXY_MC--�ڽ��������� ����
      ,m.MC as m_XX_MC--Ѫ�ʹ���� ����
      ,m.JC as m_XX_JC--Ѫ�ʹ���� ���
      ,n.MC as n_HKLB_MC--���������� ����
      ,o.MC as o_XL_MC--ѧ������ ����
      ,p.MC as p_ZXXBZLB_MC--��Сѧ����������� ����
      ,q.MC as q_GWZY_MC--��λְҵ����� ����
      ,r.MC as r_RKXD_MC--�ο�ѧ�δ���� ����

FROM dbo.EDU_ZXJZ_01_01_JZGJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS c ON a.XBM = c.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.CSDM = d.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS f ON a.GJDQM = f.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS g ON a.SFZJLXM = g.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS h ON a.HYZKM = h.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS i ON a.GATQWM = i.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS j ON a.ZZMMM = j.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS k ON a.JKZKM = k.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS l ON a.XYZJM = l.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS m ON a.XXM = m.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS n ON a.HKXZM = n.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS o ON a.XLM = o.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS p ON a.BZLBM = p.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS q ON a.GWZYM = q.DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS r ON a.ZYRKXD = r.DM /*��Ҫ�ο�ѧ��*/
GO

--У�ڸ�λ���������
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_02_A01_XNGWSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[GWID]--��λ��ID
      ,a.[JZGJBSJID]--��ְ���������������
      ,a.[GWQSNY]--��λ��ʼ����
      ,a.[GWJSNY]--��λ��������
      ,a.[SFZG]--�Ƿ��ڸ�
      ,a.[ZWMC]--ְ������
      ,a.[JGH]--������
      ,c.SCHOOLID as c_JGGW_SCHOOLID--������λ�� ѧУID
      ,c.JGH as c_JGGW_JGH--������λ�� ������
      ,c.GWBH as c_JGGW_GWBH--������λ�� ��λ���
      ,c.GWMC as c_JGGW_GWMC--������λ�� ��λ����
      ,c.GWSM as c_JGGW_GWSM--������λ�� ��λ˵��
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,d.GH as d_JZGJBSJ_GH--��ְ��������������� ����
      ,d.XM as d_JZGJBSJ_XM--��ְ��������������� ����
      ,d.YWXM as d_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,d.XMPY as d_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,d.CYM as d_JZGJBSJ_CYM--��ְ��������������� ������
      ,d.XBM as d_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,db.MC as d_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,d.CSRQ as d_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,d.CSDM as d_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,dc.MC as d_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,d.JG as d_JZGJBSJ_JG--��ְ��������������� ����
      ,d.MZM as d_JZGJBSJ_MZM--��ְ��������������� ������
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,d.GJDQM as d_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,d.SFZJH as d_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,d.HYZKM as d_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,dg.MC as d_JZGJBSJ_HYZKM_MC--����״������ ����
      ,d.GATQWM as d_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,dh.MC as d_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,dh.SM as d_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,di.MC as d_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,di.JC as d_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,d.JKZKM as d_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,dj.MC as d_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,dj.SM as d_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,d.XYZJM as d_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,dk.MC as d_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,d.XXM as d_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,dl.MC as d_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,dl.JC as d_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,d.ZP as d_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,d.JGH as d_JZGJBSJ_JGH--��ְ��������������� ������
      ,d.JTZZ as d_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,d.XZZ as d_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,d.HKSZD as d_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,d.HKXZM as d_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,dm.MC as d_JZGJBSJ_HKXZM_MC--���������� ����
      ,d.XLM as d_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,dn.MC as d_JZGJBSJ_XLM_MC--ѧ������ ����
      ,d.GZNY as d_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,d.LXNY as d_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,d.CJNY as d_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,d.BZLBM as d_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,do.MC as d_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,d.DABH as d_JZGJBSJ_DABH--��ְ��������������� �������
      ,d.DAWB as d_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,d.TXDZ as d_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,d.LXDH as d_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,d.YZBM as d_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,d.DZXX as d_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,d.TC as d_JZGJBSJ_TC--��ְ��������������� �س�
      ,d.GWZYM as d_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,dp.MC as d_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,dq.MC as d_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,e.MC as e_SFBZ_MC--�Ƿ��־����� ����
      ,f.SCHOOLID as f_JG_SCHOOLID--����������� ѧУ��
      ,f.LSJGH as f_JG_LSJGH--����������� ����������
      ,f.JGMC as f_JG_JGMC--����������� ��������
      ,f.JGJC as f_JG_JGJC--����������� �������
      ,f.FZRGH as f_JG_FZRGH--����������� �����˹���

FROM dbo.EDU_ZXJZ_02_A01_XNGWSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_A01_JGGW AS c ON a.GWID = c.ID /*��λ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.JZGJBSJID = d.ID /*��ְ���������������*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFZG = e.DM /*�Ƿ��ڸ�*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS f ON a.JGH = f.JGH /*������*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZKM = dg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dh ON d.GATQWM = dh.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS di ON d.ZZMMM = di.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS dj ON d.JKZKM = dj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dk ON d.XYZJM = dk.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dl ON d.XXM = dl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dm ON d.HKXZM = dm.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS dn ON d.XLM = dn.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS do ON d.BZLBM = do.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS dp ON d.GWZYM = dp.DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS dq ON d.ZYRKXD = dq.DM /*��Ҫ�ο�ѧ��*/
GO

--�ο����������
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_07_02_RKSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[JZGJBSJID]--��ְ���������������
      ,a.[RKKCH]--�οογ̺�
      ,a.[RKQSNY]--�ο���ʼ����
      ,a.[RKZZNY]--�ο���ֹ����
      ,a.[RKZXS]--�ο���ѧʱ
      ,a.[RKXDM]--�ο�ѧ����
      ,a.[RKJSM]--�ον�ɫ��
      ,a.[SKBJ]--�ڿΰ༶
      ,a.[SKRS]--�ڿ�����
      ,a.[ZKS]--�ܿ�ʱ
      ,a.[SFLT]--�Ƿ�����
      ,a.[NJID]--�꼶��
      ,a.[XQID]--ѧ��
      ,a.[XNID]--ѧ��
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,c.GH as c_JZGJBSJ_GH--��ְ��������������� ����
      ,c.XM as c_JZGJBSJ_XM--��ְ��������������� ����
      ,c.YWXM as c_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--��ְ��������������� ������
      ,c.XBM as c_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,cb.MC as c_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,c.CSDM as c_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,cc.MC as c_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_JZGJBSJ_JG--��ְ��������������� ����
      ,c.MZM as c_JZGJBSJ_MZM--��ְ��������������� ������
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,ce.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,ce.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,ce.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,cf.MC as c_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,c.HYZKM as c_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,cg.MC as c_JZGJBSJ_HYZKM_MC--����״������ ����
      ,c.GATQWM as c_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,ch.MC as c_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,ch.SM as c_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,ci.MC as c_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,ci.JC as c_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,cj.MC as c_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,cj.SM as c_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.XYZJM as c_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,ck.MC as c_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,c.XXM as c_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,cl.MC as c_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,cl.JC as c_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,c.ZP as c_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,c.SFZJYXQ as c_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,c.JGH as c_JZGJBSJ_JGH--��ְ��������������� ������
      ,c.JTZZ as c_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,c.XZZ as c_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,c.HKSZD as c_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,c.HKXZM as c_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,cm.MC as c_JZGJBSJ_HKXZM_MC--���������� ����
      ,c.XLM as c_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,cn.MC as c_JZGJBSJ_XLM_MC--ѧ������ ����
      ,c.GZNY as c_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,c.LXNY as c_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,c.CJNY as c_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,co.MC as c_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,c.DABH as c_JZGJBSJ_DABH--��ְ��������������� �������
      ,c.DAWB as c_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,c.TXDZ as c_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,c.LXDH as c_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,c.YZBM as c_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,c.DZXX as c_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,c.ZYDZ as c_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,c.TC as c_JZGJBSJ_TC--��ְ��������������� �س�
      ,c.GWZYM as c_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,cp.MC as c_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,c.ZYRKXD as c_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,cq.MC as c_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,d.SCHOOLID as d_KC_SCHOOLID--�γ������� ѧУ��
      ,d.KCMC as d_KC_KCMC--�γ������� �γ�����
      ,d.KCM as d_KC_KCM--�γ������� �γ���
      ,db.MC as d_KC_KCM_MC--��Сѧ�γ̴���� ����
      ,db.SYXX as d_KC_KCM_SYXX--��Сѧ�γ̴���� ����ѧУ
      ,d.KCDJM as d_KC_KCDJM--�γ������� �γ̵ȼ���
      ,dc.MC as d_KC_KCDJM_MC--��Сѧ�γ̵ȼ������ ����
      ,d.KCBM as d_KC_KCBM--�γ������� �γ̱���
      ,d.KCJJ as d_KC_KCJJ--�γ������� �γ̼��
      ,d.KCYQ as d_KC_KCYQ--�γ������� �γ�Ҫ��
      ,d.ZXS as d_KC_ZXS--�γ������� ��ѧʱ
      ,d.ZHXS as d_KC_ZHXS--�γ������� ��ѧʱ
      ,d.ZXXS as d_KC_ZXXS--�γ������� ��ѧѧʱ
      ,d.SKFSM as d_KC_SKFSM--�γ������� �ڿη�ʽ��
      ,dd.MC as d_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,d.JCBM as d_KC_JCBM--�γ������� �̲ı���
      ,d.CKSM as d_KC_CKSM--�γ������� �ο���Ŀ
      ,d.CDXZ as d_KC_CDXZ--�γ������� ��������
      ,d.SFZK as d_KC_SFZK--�γ������� �Ƿ�����
      ,de.MC as d_KC_SFZK_MC--�Ƿ��־����� ����
      ,e.MC as e_RKXD_MC--�ο�ѧ�δ���� ����
      ,f.MC as f_RKJS_MC--�ον�ɫ����� ����
      ,g.SCHOOLID as g_BJ_SCHOOLID--�༶������� ѧУ��
      ,g.NJ as g_BJ_NJ--�༶������� �꼶��
      ,g.BJ as g_BJ_BJ--�༶������� �༶����
      ,g.JBNY as g_BJ_JBNY--�༶������� ��������
      ,g.BZRGH as g_BJ_BZRGH--�༶������� �����ι���
      ,g.BZXH as g_BJ_BZXH--�༶������� �೤ѧ��
      ,g.BJRYCH as g_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,g.XZ as g_BJ_XZ--�༶������� ѧ��
      ,g.BJLXM as g_BJ_BJLXM--�༶������� �༶������
      ,gb.MC as g_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,g.WLLX as g_BJ_WLLX--�༶������� ��������
      ,g.BYRQ as g_BJ_BYRQ--�༶������� ��ҵ����
      ,g.SFSSMZSYJXB as g_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,gc.MC as g_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,g.SYJXMSM as g_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,gd.MC as g_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,gd.SM as g_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,h.MC as h_SFBZ_MC--�Ƿ��־����� ����
      ,i.SCHOOLID as i_NJ_SCHOOLID--�꼶������� ѧУ��
      ,i.NJMC as i_NJ_NJMC--�꼶������� �꼶����
      ,j.SCHOOLID as j_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,j.XNID as j_XQ_XNID--ѧ�����ݱ� ѧ��
      ,j.XQM as j_XQ_XQM--ѧ�����ݱ� ѧ����
      ,jb.MC as j_XQ_XQM_MC--ѧ�ڴ���� ����
      ,j.XQMC as j_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,j.XQKSRQ as j_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,j.XQJSRQ as j_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,k.SCHOOLID as k_XN_SCHOOLID--ѧ��� ѧУ��
      ,k.XN as k_XN_XN--ѧ��� ѧ��

FROM dbo.EDU_ZXJZ_07_02_RKSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*��ְ���������������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS d ON a.RKKCH = d.KCH /*�οογ̺�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS e ON a.RKXDM = e.DM /*�ο�ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKJS AS f ON a.RKJSM = f.DM /*�ον�ɫ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS g ON a.SKBJ = g.BH /*�ڿΰ༶*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS h ON a.SFLT = h.DM /*�Ƿ�����*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS i ON a.NJID = i.NJ /*�꼶��*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS j ON a.XQID = j.ID /*ѧ��*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS k ON a.XNID = k.ID /*ѧ��*/ AND a.SCHOOLID = k.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cb ON c.XBM = cb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.CSDM = cc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ce ON c.GJDQM = ce.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cf ON c.SFZJLXM = cf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ch ON c.GATQWM = ch.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ci ON c.ZZMMM = ci.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ck ON c.XYZJM = ck.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cl ON c.XXM = cl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKXZM = cm.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS cn ON c.XLM = cn.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS co ON c.BZLBM = co.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS cp ON c.GWZYM = cp.DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS cq ON c.ZYRKXD = cq.DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS db ON d.KCM = db.DM /*�γ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS dc ON d.KCDJM = dc.DM /*�γ̵ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dd ON d.SKFSM = dd.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS de ON d.SFZK = de.DM /*�Ƿ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS gb ON g.BJLXM = gb.DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS gc ON g.SFSSMZSYJXB = gc.DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS gd ON g.SYJXMSM = gd.DM /*˫���ѧģʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS jb ON j.XQM = jb.DM /*ѧ����*/
GO

--ѧ���������������
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_01_01_XSXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XH]--ѧ��
      ,a.[XM]--����
      ,a.[YWXM]--Ӣ������
      ,a.[XMPY]--����ƴ��
      ,a.[CYM]--������
      ,a.[XBM]--�Ա���
      ,a.[CSRQ]--��������
      ,a.[CSDM]--��������
      ,a.[JG]--����
      ,a.[MZM]--������
      ,a.[GJDQM]--����/������
      ,a.[SFZJLXM]--���֤��������
      ,a.[SFZJH]--���֤����
      ,a.[HYZKM]--����״����
      ,a.[GATQWM]--�۰�̨������
      ,a.[ZZMMM]--������ò��
      ,a.[JKZKM]--����״����
      ,a.[XYZJM]--�����ڽ���
      ,a.[XXM]--Ѫ����
      ,a.[ZP]--��Ƭ
      ,a.[SFZJYXQ]--���֤����Ч��
      ,a.[DSZYBZ]--������Ů��־
      ,a.[RXNY]--��ѧ����
      ,a.[NJ]--�꼶
      ,a.[BH]--���
      ,a.[XSLBM]--ѧ�������
      ,a.[XZZ]--��סַ
      ,a.[HKSZD]--�������ڵ�
      ,a.[HKXZM]--����������
      ,a.[SFLDRK]--�Ƿ������˿�
      ,a.[TC]--�س�
      ,a.[LXDH]--��ϵ�绰
      ,a.[TXDZ]--ͨ�ŵ�ַ
      ,a.[YZBM]--��������
      ,a.[DZXX]--��������
      ,a.[ZYDZ]--��ҳ��ַ
      ,a.[XJH]--ѧ����
      ,c.MC as c_RDXB_MC--�˵��Ա���� ����
      ,d.MC as d_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--��������͵������ƴ��� ����ĸ����
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--��������͵������ƴ��� ����ĸ����
      ,g.MC as g_SFZJLX_MC--���֤�����ʹ���� ����
      ,h.MC as h_HYZZ_MC--����״������ ����
      ,i.MC as i_GATQW_MC--�۰�̨�������� ����
      ,i.SM as i_GATQW_SM--�۰�̨�������� ˵��
      ,j.MC as j_ZZMM_MC--������ò���� ����
      ,j.JC as j_ZZMM_JC--������ò���� ���
      ,k.MC as k_JKZKYWSZ_MC--����״��1λ���ִ��� ����
      ,k.SM as k_JKZKYWSZ_SM--����״��1λ���ִ��� ˵��
      ,l.MC as l_ZJXY_MC--�ڽ��������� ����
      ,m.MC as m_XX_MC--Ѫ�ʹ���� ����
      ,m.JC as m_XX_JC--Ѫ�ʹ���� ���
      ,n.MC as n_SFBZ_MC--�Ƿ��־����� ����
      ,o.SCHOOLID as o_NJ_SCHOOLID--�꼶������� ѧУ��
      ,o.NJMC as o_NJ_NJMC--�꼶������� �꼶����
      ,p.SCHOOLID as p_BJ_SCHOOLID--�༶������� ѧУ��
      ,p.NJ as p_BJ_NJ--�༶������� �꼶��
      ,p.BJ as p_BJ_BJ--�༶������� �༶����
      ,p.JBNY as p_BJ_JBNY--�༶������� ��������
      ,p.BZRGH as p_BJ_BZRGH--�༶������� �����ι���
      ,p.BZXH as p_BJ_BZXH--�༶������� �೤ѧ��
      ,p.BJRYCH as p_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,p.XZ as p_BJ_XZ--�༶������� ѧ��
      ,p.BJLXM as p_BJ_BJLXM--�༶������� �༶������
      ,pb.MC as p_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,p.WLLX as p_BJ_WLLX--�༶������� ��������
      ,p.BYRQ as p_BJ_BYRQ--�༶������� ��ҵ����
      ,p.SFSSMZSYJXB as p_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,pc.MC as p_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,p.SYJXMSM as p_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,pd.MC as p_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,pd.SM as p_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,q.MC as q_XSLB_MC--ѧ��������� ����
      ,q.SM as q_XSLB_SM--ѧ��������� ˵��
      ,r.MC as r_HKLB_MC--���������� ����
      ,s.MC as s_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZXXS_01_01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS c ON a.XBM = c.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.CSDM = d.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS f ON a.GJDQM = f.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS g ON a.SFZJLXM = g.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS h ON a.HYZKM = h.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS i ON a.GATQWM = i.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS j ON a.ZZMMM = j.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS k ON a.JKZKM = k.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS l ON a.XYZJM = l.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS m ON a.XXM = m.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS n ON a.DSZYBZ = n.DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS o ON a.NJ = o.NJ /*�꼶*/ AND a.SCHOOLID = o.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS p ON a.BH = p.BH /*���*/ AND a.SCHOOLID = p.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS q ON a.XSLBM = q.DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS r ON a.HKXZM = r.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS s ON a.SFLDRK = s.DM /*�Ƿ������˿�*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS pb ON p.BJLXM = pb.DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS pc ON p.SFSSMZSYJXB = pc.DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS pd ON p.SYJXMSM = pd.DM /*˫���ѧģʽ��*/
GO

--ѧ����ͥ��Ա���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_01_06_XSJTCY_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XSXXID]--ѧ����Ϣ���ݱ�
      ,a.[GXM]--��ϵ��
      ,a.[CYXM]--��Ա����
      ,a.[CSNY]--��������
      ,a.[MZM]--������
      ,a.[GJDQM]--����/������
      ,a.[JKZKM]--����״����
      ,a.[CYGZDW]--��Ա������λ
      ,a.[CYM]--��ҵ��
      ,a.[ZYJSZWM]--רҵ����ְ����
      ,a.[ZWJBM]--ְ�񼶱���
      ,a.[DH]--�绰
      ,a.[DZXX]--��������
      ,a.[SFJHR]--�Ƿ�໤��
      ,a.[XBM]--�Ա���
      ,a.[XLM]--ѧ����
      ,a.[LXDZ]--��ϵ��ַ
      ,a.[SJHM]--�ֻ�����
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ��������������� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��������������� ѧ��
      ,c.XM as c_XSXX_XM--ѧ��������������� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ��������������� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ��������������� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ��������������� ������
      ,c.XBM as c_XSXX_XBM--ѧ��������������� �Ա���
      ,cb.MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.CSRQ as c_XSXX_CSRQ--ѧ��������������� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ��������������� ��������
      ,cc.MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ��������������� ����
      ,c.MZM as c_XSXX_MZM--ѧ��������������� ������
      ,cd.MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cd.ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ��������������� ����/������
      ,ce.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,ce.EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,ce.SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ��������������� ���֤��������
      ,cf.MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ��������������� ���֤����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ��������������� ����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ��������������� �۰�̨������
      ,ch.MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,ch.SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ��������������� ������ò��
      ,ci.MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,ci.JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.JKZKM as c_XSXX_JKZKM--ѧ��������������� ����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,cj.SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.XYZJM as c_XSXX_XYZJM--ѧ��������������� �����ڽ���
      ,ck.MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.XXM as c_XSXX_XXM--ѧ��������������� Ѫ����
      ,cl.MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,cl.JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.ZP as c_XSXX_ZP--ѧ��������������� ��Ƭ
      ,c.SFZJYXQ as c_XSXX_SFZJYXQ--ѧ��������������� ���֤����Ч��
      ,c.DSZYBZ as c_XSXX_DSZYBZ--ѧ��������������� ������Ů��־
      ,cm.MC as c_XSXX_DSZYBZ_MC--�Ƿ��־����� ����
      ,c.RXNY as c_XSXX_RXNY--ѧ��������������� ��ѧ����
      ,c.NJ as c_XSXX_NJ--ѧ��������������� �꼶
      ,c.BH as c_XSXX_BH--ѧ��������������� ���
      ,c.XSLBM as c_XSXX_XSLBM--ѧ��������������� ѧ�������
      ,cn.MC as c_XSXX_XSLBM_MC--ѧ��������� ����
      ,cn.SM as c_XSXX_XSLBM_SM--ѧ��������� ˵��
      ,c.XZZ as c_XSXX_XZZ--ѧ��������������� ��סַ
      ,c.HKSZD as c_XSXX_HKSZD--ѧ��������������� �������ڵ�
      ,c.HKXZM as c_XSXX_HKXZM--ѧ��������������� ����������
      ,co.MC as c_XSXX_HKXZM_MC--���������� ����
      ,c.SFLDRK as c_XSXX_SFLDRK--ѧ��������������� �Ƿ������˿�
      ,cp.MC as c_XSXX_SFLDRK_MC--�Ƿ��־����� ����
      ,c.TC as c_XSXX_TC--ѧ��������������� �س�
      ,c.LXDH as c_XSXX_LXDH--ѧ��������������� ��ϵ�绰
      ,c.TXDZ as c_XSXX_TXDZ--ѧ��������������� ͨ�ŵ�ַ
      ,c.YZBM as c_XSXX_YZBM--ѧ��������������� ��������
      ,c.DZXX as c_XSXX_DZXX--ѧ��������������� ��������
      ,c.ZYDZ as c_XSXX_ZYDZ--ѧ��������������� ��ҳ��ַ
      ,c.XJH as c_XSXX_XJH--ѧ��������������� ѧ����
      ,d.MC as d_JTGX_MC--��ͥ��ϵ���� ����
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--��������͵������ƴ��� ����ĸ����
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--��������͵������ƴ��� ����ĸ����
      ,g.MC as g_JKZKYWSZ_MC--����״��1λ���ִ��� ����
      ,g.SM as g_JKZKYWSZ_SM--����״��1λ���ִ��� ˵��
      ,h.MC as h_CYZK_MC--��ҵ״����������ݣ����� ����
      ,h.SM as h_CYZK_SM--��ҵ״����������ݣ����� ˵��
      ,i.MC as i_ZYJSZW_MC--רҵ����ְ����� ����
      ,j.MC as j_ZWJBDM_MC--ְ�񼶱���� ����
      ,k.MC as k_SFBZ_MC--�Ƿ��־����� ����
      ,l.MC as l_RDXB_MC--�˵��Ա���� ����
      ,m.MC as m_XL_MC--ѧ������ ����

FROM dbo.EDU_ZXXS_01_06_XSJTCY AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JTGX AS d ON a.GXM = d.DM /*��ϵ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS f ON a.GJDQM = f.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS g ON a.JKZKM = g.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_CYZK AS h ON a.CYM = h.DM /*��ҵ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZYJSZW AS i ON a.ZYJSZWM = i.DM /*רҵ����ְ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZWJBDM AS j ON a.ZWJBM = j.DM /*ְ�񼶱���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS k ON a.SFJHR = k.DM /*�Ƿ�໤��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS l ON a.XBM = l.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS m ON a.XLM = m.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cb ON c.XBM = cb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.CSDM = cc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ce ON c.GJDQM = ce.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cf ON c.SFZJLXM = cf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ch ON c.GATQWM = ch.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ci ON c.ZZMMM = ci.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ck ON c.XYZJM = ck.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cl ON c.XXM = cl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cm ON c.DSZYBZ = cm.DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS cn ON c.XSLBM = cn.DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS co ON c.HKXZM = co.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cp ON c.SFLDRK = cp.DM /*�Ƿ������˿�*/
GO

--ѧ����ͥ��Ϣ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_02_A01_XSJTXX_DISP]
AS
SELECT a.[XSXXID]--ѧ����Ϣ���ݱ�
      ,a.[SCHOOLID]--ѧУ��
      ,a.[JTZZ]--��ͥסַ
      ,a.[JTYZBM]--��ͥ��������
      ,a.[JTDH]--��ͥ�绰
      ,a.[JTLXR]--��ͥ��ϵ��
      ,a.[JTDZXX]--��ͥ��������
      ,a.[JTRK]--��ͥ�˿�
      ,a.[JTZYSRLY]--��ͥ��Ҫ������Դ
      ,a.[JTYSRJE]--��ͥ��������
      ,a.[JTNSRJE]--��ͥ��������
      ,a.[LJZJHCZ]--��������վ
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ��������������� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��������������� ѧ��
      ,b.XM as b_XSXX_XM--ѧ��������������� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ��������������� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ��������������� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ��������������� ������
      ,b.XBM as b_XSXX_XBM--ѧ��������������� �Ա���
      ,bb.MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.CSRQ as b_XSXX_CSRQ--ѧ��������������� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ��������������� ��������
      ,bc.MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ��������������� ����
      ,b.MZM as b_XSXX_MZM--ѧ��������������� ������
      ,bd.MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,bd.ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ��������������� ����/������
      ,be.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,be.EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,be.SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ��������������� ���֤��������
      ,bf.MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ��������������� ���֤����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ��������������� ����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ��������������� �۰�̨������
      ,bh.MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,bh.SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ��������������� ������ò��
      ,bi.MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,bi.JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.JKZKM as b_XSXX_JKZKM--ѧ��������������� ����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,bj.SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.XYZJM as b_XSXX_XYZJM--ѧ��������������� �����ڽ���
      ,bk.MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.XXM as b_XSXX_XXM--ѧ��������������� Ѫ����
      ,bl.MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,bl.JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.ZP as b_XSXX_ZP--ѧ��������������� ��Ƭ
      ,b.SFZJYXQ as b_XSXX_SFZJYXQ--ѧ��������������� ���֤����Ч��
      ,b.DSZYBZ as b_XSXX_DSZYBZ--ѧ��������������� ������Ů��־
      ,bm.MC as b_XSXX_DSZYBZ_MC--�Ƿ��־����� ����
      ,b.RXNY as b_XSXX_RXNY--ѧ��������������� ��ѧ����
      ,b.NJ as b_XSXX_NJ--ѧ��������������� �꼶
      ,b.BH as b_XSXX_BH--ѧ��������������� ���
      ,b.XSLBM as b_XSXX_XSLBM--ѧ��������������� ѧ�������
      ,bn.MC as b_XSXX_XSLBM_MC--ѧ��������� ����
      ,bn.SM as b_XSXX_XSLBM_SM--ѧ��������� ˵��
      ,b.XZZ as b_XSXX_XZZ--ѧ��������������� ��סַ
      ,b.HKSZD as b_XSXX_HKSZD--ѧ��������������� �������ڵ�
      ,b.HKXZM as b_XSXX_HKXZM--ѧ��������������� ����������
      ,bo.MC as b_XSXX_HKXZM_MC--���������� ����
      ,b.SFLDRK as b_XSXX_SFLDRK--ѧ��������������� �Ƿ������˿�
      ,bp.MC as b_XSXX_SFLDRK_MC--�Ƿ��־����� ����
      ,b.TC as b_XSXX_TC--ѧ��������������� �س�
      ,b.LXDH as b_XSXX_LXDH--ѧ��������������� ��ϵ�绰
      ,b.TXDZ as b_XSXX_TXDZ--ѧ��������������� ͨ�ŵ�ַ
      ,b.YZBM as b_XSXX_YZBM--ѧ��������������� ��������
      ,b.DZXX as b_XSXX_DZXX--ѧ��������������� ��������
      ,b.ZYDZ as b_XSXX_ZYDZ--ѧ��������������� ��ҳ��ַ
      ,b.XJH as b_XSXX_XJH--ѧ��������������� ѧ����

FROM dbo.EDU_ZXXS_02_A01_XSJTXX AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bb ON b.XBM = bb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bc ON b.CSDM = bc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bd ON b.MZM = bd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS be ON b.GJDQM = be.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bf ON b.SFZJLXM = bf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bh ON b.GATQWM = bh.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bi ON b.ZZMMM = bi.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bk ON b.XYZJM = bk.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bl ON b.XXM = bl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bm ON b.DSZYBZ = bm.DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS bn ON b.XSLBM = bn.DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bo ON b.HKXZM = bo.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bp ON b.SFLDRK = bp.DM /*�Ƿ������˿�*/
GO

--��У���Գɼ����������
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_02_06_ZXKSCJ_DISP]
AS
SELECT a.[ID]--���Գɼ���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XSXXID]--ѧ��ID
      ,a.[XN]--ѧ�꣨�ȣ�
      ,a.[XQM]--ѧ����
      ,a.[KSRQ]--��������
      ,a.[KCH]--�γ̺�
      ,a.[RKJSID]--�ον�ʦID
      ,a.[CJLRRID]--�ɼ�¼����ID
      ,a.[KSFSM]--���Է�ʽ��
      ,a.[KSXZM]--����������
      ,a.[KSXSM]--������ʽ��
      ,a.[FSLKSCJ]--�����࿼�Գɼ�
      ,a.[DJLKSCJ]--�ȼ��࿼�Գɼ�
      ,a.[KCCJ]--�γ̳ɼ�
      ,a.[KCDJCJM]--�γ̵ȼ��ɼ���
      ,a.[RKJSGH]--�ον�ʦ����
      ,a.[CJLRRH]--�ɼ�¼���˺�
      ,a.[CJLRRQ]--�ɼ�¼������
      ,a.[CJLRSJ]--�ɼ�¼��ʱ��
      ,a.[XQID]--ѧ��
      ,a.[XNID]--ѧ��
      ,a.[NJID]--�꼶
      ,a.[BJID]--�༶
      ,a.[SSKSID]--��������ID
      ,a.[SSKSKMID]--�������Կ�ĿID
      ,a.[SJID]--�Ծ�ID
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ��������������� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��������������� ѧ��
      ,c.XM as c_XSXX_XM--ѧ��������������� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ��������������� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ��������������� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ��������������� ������
      ,c.XBM as c_XSXX_XBM--ѧ��������������� �Ա���
      ,cb.MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.CSRQ as c_XSXX_CSRQ--ѧ��������������� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ��������������� ��������
      ,cc.MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ��������������� ����
      ,c.MZM as c_XSXX_MZM--ѧ��������������� ������
      ,cd.MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cd.ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ��������������� ����/������
      ,ce.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,ce.EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,ce.SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ��������������� ���֤��������
      ,cf.MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ��������������� ���֤����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ��������������� ����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ��������������� �۰�̨������
      ,ch.MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,ch.SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ��������������� ������ò��
      ,ci.MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,ci.JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.JKZKM as c_XSXX_JKZKM--ѧ��������������� ����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,cj.SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.XYZJM as c_XSXX_XYZJM--ѧ��������������� �����ڽ���
      ,ck.MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.XXM as c_XSXX_XXM--ѧ��������������� Ѫ����
      ,cl.MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,cl.JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.ZP as c_XSXX_ZP--ѧ��������������� ��Ƭ
      ,c.SFZJYXQ as c_XSXX_SFZJYXQ--ѧ��������������� ���֤����Ч��
      ,c.DSZYBZ as c_XSXX_DSZYBZ--ѧ��������������� ������Ů��־
      ,cm.MC as c_XSXX_DSZYBZ_MC--�Ƿ��־����� ����
      ,c.RXNY as c_XSXX_RXNY--ѧ��������������� ��ѧ����
      ,c.NJ as c_XSXX_NJ--ѧ��������������� �꼶
      ,c.BH as c_XSXX_BH--ѧ��������������� ���
      ,c.XSLBM as c_XSXX_XSLBM--ѧ��������������� ѧ�������
      ,cn.MC as c_XSXX_XSLBM_MC--ѧ��������� ����
      ,cn.SM as c_XSXX_XSLBM_SM--ѧ��������� ˵��
      ,c.XZZ as c_XSXX_XZZ--ѧ��������������� ��סַ
      ,c.HKSZD as c_XSXX_HKSZD--ѧ��������������� �������ڵ�
      ,c.HKXZM as c_XSXX_HKXZM--ѧ��������������� ����������
      ,co.MC as c_XSXX_HKXZM_MC--���������� ����
      ,c.SFLDRK as c_XSXX_SFLDRK--ѧ��������������� �Ƿ������˿�
      ,cp.MC as c_XSXX_SFLDRK_MC--�Ƿ��־����� ����
      ,c.TC as c_XSXX_TC--ѧ��������������� �س�
      ,c.LXDH as c_XSXX_LXDH--ѧ��������������� ��ϵ�绰
      ,c.TXDZ as c_XSXX_TXDZ--ѧ��������������� ͨ�ŵ�ַ
      ,c.YZBM as c_XSXX_YZBM--ѧ��������������� ��������
      ,c.DZXX as c_XSXX_DZXX--ѧ��������������� ��������
      ,c.ZYDZ as c_XSXX_ZYDZ--ѧ��������������� ��ҳ��ַ
      ,c.XJH as c_XSXX_XJH--ѧ��������������� ѧ����
      ,d.MC as d_XQ_MC--ѧ�ڴ���� ����
      ,e.SCHOOLID as e_KC_SCHOOLID--�γ������� ѧУ��
      ,e.KCMC as e_KC_KCMC--�γ������� �γ�����
      ,e.KCM as e_KC_KCM--�γ������� �γ���
      ,eb.MC as e_KC_KCM_MC--��Сѧ�γ̴���� ����
      ,eb.SYXX as e_KC_KCM_SYXX--��Сѧ�γ̴���� ����ѧУ
      ,e.KCDJM as e_KC_KCDJM--�γ������� �γ̵ȼ���
      ,ec.MC as e_KC_KCDJM_MC--��Сѧ�γ̵ȼ������ ����
      ,e.KCBM as e_KC_KCBM--�γ������� �γ̱���
      ,e.KCJJ as e_KC_KCJJ--�γ������� �γ̼��
      ,e.KCYQ as e_KC_KCYQ--�γ������� �γ�Ҫ��
      ,e.ZXS as e_KC_ZXS--�γ������� ��ѧʱ
      ,e.ZHXS as e_KC_ZHXS--�γ������� ��ѧʱ
      ,e.ZXXS as e_KC_ZXXS--�γ������� ��ѧѧʱ
      ,e.SKFSM as e_KC_SKFSM--�γ������� �ڿη�ʽ��
      ,ed.MC as e_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,e.JCBM as e_KC_JCBM--�γ������� �̲ı���
      ,e.CKSM as e_KC_CKSM--�γ������� �ο���Ŀ
      ,e.CDXZ as e_KC_CDXZ--�γ������� ��������
      ,e.SFZK as e_KC_SFZK--�γ������� �Ƿ�����
      ,ee.MC as e_KC_SFZK_MC--�Ƿ��־����� ����
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,f.GH as f_JZGJBSJ_GH--��ְ��������������� ����
      ,f.XM as f_JZGJBSJ_XM--��ְ��������������� ����
      ,f.YWXM as f_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,f.XMPY as f_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,f.CYM as f_JZGJBSJ_CYM--��ְ��������������� ������
      ,f.XBM as f_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,fb.MC as f_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,f.CSRQ as f_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,f.CSDM as f_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,fc.MC as f_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,f.JG as f_JZGJBSJ_JG--��ְ��������������� ����
      ,f.MZM as f_JZGJBSJ_MZM--��ְ��������������� ������
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.GJDQM as f_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,fe.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,fe.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,fe.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,ff.MC as f_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,f.SFZJH as f_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,f.HYZKM as f_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,fg.MC as f_JZGJBSJ_HYZKM_MC--����״������ ����
      ,f.GATQWM as f_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,fh.MC as f_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,fh.SM as f_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,fi.MC as f_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,fi.JC as f_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,f.JKZKM as f_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,fj.MC as f_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,fj.SM as f_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,f.XYZJM as f_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,fk.MC as f_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,f.XXM as f_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,fl.MC as f_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,fl.JC as f_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,f.ZP as f_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,f.JGH as f_JZGJBSJ_JGH--��ְ��������������� ������
      ,f.JTZZ as f_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,f.XZZ as f_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,f.HKSZD as f_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,f.HKXZM as f_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,fm.MC as f_JZGJBSJ_HKXZM_MC--���������� ����
      ,f.XLM as f_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,fn.MC as f_JZGJBSJ_XLM_MC--ѧ������ ����
      ,f.GZNY as f_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,f.LXNY as f_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,f.CJNY as f_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,f.BZLBM as f_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,fo.MC as f_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,f.DABH as f_JZGJBSJ_DABH--��ְ��������������� �������
      ,f.DAWB as f_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,f.TXDZ as f_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,f.LXDH as f_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,f.YZBM as f_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,f.DZXX as f_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,f.TC as f_JZGJBSJ_TC--��ְ��������������� �س�
      ,f.GWZYM as f_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,fp.MC as f_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,fq.MC as f_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,g.GH as g_JZGJBSJ_GH--��ְ��������������� ����
      ,g.XM as g_JZGJBSJ_XM--��ְ��������������� ����
      ,g.YWXM as g_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,g.XMPY as g_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,g.CYM as g_JZGJBSJ_CYM--��ְ��������������� ������
      ,g.XBM as g_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,gb.MC as g_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,g.CSRQ as g_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,g.CSDM as g_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,gc.MC as g_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,g.JG as g_JZGJBSJ_JG--��ְ��������������� ����
      ,g.MZM as g_JZGJBSJ_MZM--��ְ��������������� ������
      ,gd.MZMC as g_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,gd.ZMDM as g_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,g.GJDQM as g_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,ge.GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,ge.EZMDM as g_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,ge.SZMDM as g_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,gf.MC as g_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,g.SFZJH as g_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,g.HYZKM as g_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,gg.MC as g_JZGJBSJ_HYZKM_MC--����״������ ����
      ,g.GATQWM as g_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,gh.MC as g_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,gh.SM as g_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,gi.MC as g_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,gi.JC as g_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,g.JKZKM as g_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,gj.MC as g_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,gj.SM as g_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,g.XYZJM as g_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,gk.MC as g_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,g.XXM as g_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,gl.MC as g_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,gl.JC as g_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,g.ZP as g_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,g.SFZJYXQ as g_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,g.JGH as g_JZGJBSJ_JGH--��ְ��������������� ������
      ,g.JTZZ as g_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,g.XZZ as g_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,g.HKSZD as g_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,g.HKXZM as g_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,gm.MC as g_JZGJBSJ_HKXZM_MC--���������� ����
      ,g.XLM as g_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,gn.MC as g_JZGJBSJ_XLM_MC--ѧ������ ����
      ,g.GZNY as g_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,g.LXNY as g_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,g.CJNY as g_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,g.BZLBM as g_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,go.MC as g_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,g.DABH as g_JZGJBSJ_DABH--��ְ��������������� �������
      ,g.DAWB as g_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,g.TXDZ as g_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,g.LXDH as g_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,g.YZBM as g_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,g.DZXX as g_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,g.ZYDZ as g_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,g.TC as g_JZGJBSJ_TC--��ְ��������������� �س�
      ,g.GWZYM as g_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,gp.MC as g_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,g.ZYRKXD as g_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,gq.MC as g_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,h.MC as h_KSFS_MC--���Է�ʽ����� ����
      ,h.SM as h_KSFS_SM--���Է�ʽ����� ˵��
      ,i.MC as i_KSXZ_MC--�������ʴ���� ����
      ,i.SM as i_KSXZ_SM--�������ʴ���� ˵��
      ,j.MC as j_KSXS_MC--������ʽ����� ����
      ,k.SCHOOLID as k_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,k.XNID as k_XQ_XNID--ѧ�����ݱ� ѧ��
      ,k.XQM as k_XQ_XQM--ѧ�����ݱ� ѧ����
      ,kb.MC as k_XQ_XQM_MC--ѧ�ڴ���� ����
      ,k.XQMC as k_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,k.XQKSRQ as k_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,k.XQJSRQ as k_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,l.SCHOOLID as l_XN_SCHOOLID--ѧ��� ѧУ��
      ,l.XN as l_XN_XN--ѧ��� ѧ��
      ,m.SCHOOLID as m_NJ_SCHOOLID--�꼶������� ѧУ��
      ,m.NJMC as m_NJ_NJMC--�꼶������� �꼶����
      ,n.SCHOOLID as n_BJ_SCHOOLID--�༶������� ѧУ��
      ,n.NJ as n_BJ_NJ--�༶������� �꼶��
      ,n.BJ as n_BJ_BJ--�༶������� �༶����
      ,n.JBNY as n_BJ_JBNY--�༶������� ��������
      ,n.BZRGH as n_BJ_BZRGH--�༶������� �����ι���
      ,n.BZXH as n_BJ_BZXH--�༶������� �೤ѧ��
      ,n.BJRYCH as n_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,n.XZ as n_BJ_XZ--�༶������� ѧ��
      ,n.BJLXM as n_BJ_BJLXM--�༶������� �༶������
      ,nb.MC as n_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,n.WLLX as n_BJ_WLLX--�༶������� ��������
      ,n.BYRQ as n_BJ_BYRQ--�༶������� ��ҵ����
      ,n.SFSSMZSYJXB as n_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,nc.MC as n_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,n.SYJXMSM as n_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,nd.MC as n_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,nd.SM as n_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,o.SCHOOLID as o_KS_SCHOOLID--�������ݱ� ѧУ��
      ,o.XNID as o_KS_XNID--�������ݱ� ѧ��
      ,o.XQID as o_KS_XQID--�������ݱ� ѧ��
      ,o.KSMC as o_KS_KSMC--�������ݱ� ��������
      ,o.KSKSSJ as o_KS_KSKSSJ--�������ݱ� ���Կ�ʼʱ��
      ,o.KSJSSJ as o_KS_KSJSSJ--�������ݱ� ���Խ���ʱ��
      ,o.DFKSSJ as o_KS_DFKSSJ--�������ݱ� �Ƿֿ�ʼʱ��
      ,o.DFJSSJ as o_KS_DFJSSJ--�������ݱ� �Ƿֽ���ʱ��
      ,p.SCHOOLID as p_KSKM_SCHOOLID--���Կ�Ŀ���ݱ� ѧУ��
      ,p.SSKSID as p_KSKM_SSKSID--���Կ�Ŀ���ݱ� ��������ID
      ,p.JSRKID as p_KSKM_JSRKID--���Կ�Ŀ���ݱ� ��ʦ�οα��
      ,p.KCMC as p_KSKM_KCMC--���Կ�Ŀ���ݱ� �γ�����
      ,p.NJMC as p_KSKM_NJMC--���Կ�Ŀ���ݱ� �꼶����
      ,p.BJMC as p_KSKM_BJMC--���Կ�Ŀ���ݱ� �༶����
      ,p.CJZF as p_KSKM_CJZF--���Կ�Ŀ���ݱ� �ɼ��ܷ�

FROM dbo.EDU_ZXXS_02_06_ZXKSCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS d ON a.XQM = d.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS e ON a.KCH = e.KCH /*�γ̺�*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.RKJSID = f.ID /*�ον�ʦID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS g ON a.CJLRRID = g.ID /*�ɼ�¼����ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSFS AS h ON a.KSFSM = h.DM /*���Է�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXZ AS i ON a.KSXZM = i.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS j ON a.KSXSM = j.DM /*������ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS k ON a.XQID = k.ID /*ѧ��*/ AND a.SCHOOLID = k.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS l ON a.XNID = l.ID /*ѧ��*/ AND a.SCHOOLID = l.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS m ON a.NJID = m.NJ /*�꼶*/ AND a.SCHOOLID = m.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS n ON a.BJID = n.BH /*�༶*/ AND a.SCHOOLID = n.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_05_A01_KS AS o ON a.SSKSID = o.ID /*��������ID*/ AND a.SCHOOLID = o.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_05_A02_KSKM AS p ON a.SSKSKMID = p.ID /*�������Կ�ĿID*/ AND a.SCHOOLID = p.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cb ON c.XBM = cb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.CSDM = cc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ce ON c.GJDQM = ce.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cf ON c.SFZJLXM = cf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ch ON c.GATQWM = ch.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ci ON c.ZZMMM = ci.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ck ON c.XYZJM = ck.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cl ON c.XXM = cl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cm ON c.DSZYBZ = cm.DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS cn ON c.XSLBM = cn.DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS co ON c.HKXZM = co.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cp ON c.SFLDRK = cp.DM /*�Ƿ������˿�*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS eb ON e.KCM = eb.DM /*�γ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS ec ON e.KCDJM = ec.DM /*�γ̵ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS ed ON e.SKFSM = ed.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ee ON e.SFZK = ee.DM /*�Ƿ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fb ON f.XBM = fb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fc ON f.CSDM = fc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fe ON f.GJDQM = fe.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ff ON f.SFZJLXM = ff.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS fg ON f.HYZKM = fg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fh ON f.GATQWM = fh.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fi ON f.ZZMMM = fi.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS fj ON f.JKZKM = fj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fk ON f.XYZJM = fk.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fl ON f.XXM = fl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS fm ON f.HKXZM = fm.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS fn ON f.XLM = fn.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS fo ON f.BZLBM = fo.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS fp ON f.GWZYM = fp.DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS fq ON f.ZYRKXD = fq.DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS gb ON g.XBM = gb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gc ON g.CSDM = gc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS gd ON g.MZM = gd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ge ON g.GJDQM = ge.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS gf ON g.SFZJLXM = gf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS gg ON g.HYZKM = gg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS gh ON g.GATQWM = gh.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS gi ON g.ZZMMM = gi.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS gj ON g.JKZKM = gj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS gk ON g.XYZJM = gk.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS gl ON g.XXM = gl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS gm ON g.HKXZM = gm.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS gn ON g.XLM = gn.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS go ON g.BZLBM = go.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS gp ON g.GWZYM = gp.DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS gq ON g.ZYRKXD = gq.DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS kb ON k.XQM = kb.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS nb ON n.BJLXM = nb.DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS nc ON n.SFSSMZSYJXB = nc.DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS nd ON n.SYJXMSM = nd.DM /*˫���ѧģʽ��*/
GO

--ѧ���춯���������
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_07_A02_XJYD_DISP]
AS
SELECT a.[ID]--ѧ���춯����
      ,a.[XSXXID]--ѧ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[YDLBM]--�춯�����
      ,a.[YDRQ]--�춯����
      ,a.[YDYYM]--�춯ԭ����
      ,a.[SPRQ]--��������
      ,a.[SPWH]--�����ĺ�
      ,a.[JBRID]--������ID
      ,a.[JBRGH]--�����˹���
      ,a.[YDLYXXM]--�춯��ԴѧУ��
      ,a.[YDQXXXM]--�춯ȥ��ѧУ��
      ,a.[YDSM]--�춯˵��
      ,a.[YBH]--ԭ���
      ,a.[YNJ]--ԭ�꼶
      ,a.[XBH]--�ְ��
      ,a.[XNJ]--���꼶
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ��������������� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��������������� ѧ��
      ,b.XM as b_XSXX_XM--ѧ��������������� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ��������������� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ��������������� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ��������������� ������
      ,b.XBM as b_XSXX_XBM--ѧ��������������� �Ա���
      ,bb.MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.CSRQ as b_XSXX_CSRQ--ѧ��������������� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ��������������� ��������
      ,bc.MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ��������������� ����
      ,b.MZM as b_XSXX_MZM--ѧ��������������� ������
      ,bd.MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,bd.ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ��������������� ����/������
      ,be.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,be.EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,be.SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ��������������� ���֤��������
      ,bf.MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ��������������� ���֤����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ��������������� ����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ��������������� �۰�̨������
      ,bh.MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,bh.SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ��������������� ������ò��
      ,bi.MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,bi.JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.JKZKM as b_XSXX_JKZKM--ѧ��������������� ����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,bj.SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.XYZJM as b_XSXX_XYZJM--ѧ��������������� �����ڽ���
      ,bk.MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.XXM as b_XSXX_XXM--ѧ��������������� Ѫ����
      ,bl.MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,bl.JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.ZP as b_XSXX_ZP--ѧ��������������� ��Ƭ
      ,b.SFZJYXQ as b_XSXX_SFZJYXQ--ѧ��������������� ���֤����Ч��
      ,b.DSZYBZ as b_XSXX_DSZYBZ--ѧ��������������� ������Ů��־
      ,bm.MC as b_XSXX_DSZYBZ_MC--�Ƿ��־����� ����
      ,b.RXNY as b_XSXX_RXNY--ѧ��������������� ��ѧ����
      ,b.NJ as b_XSXX_NJ--ѧ��������������� �꼶
      ,b.BH as b_XSXX_BH--ѧ��������������� ���
      ,b.XSLBM as b_XSXX_XSLBM--ѧ��������������� ѧ�������
      ,bn.MC as b_XSXX_XSLBM_MC--ѧ��������� ����
      ,bn.SM as b_XSXX_XSLBM_SM--ѧ��������� ˵��
      ,b.XZZ as b_XSXX_XZZ--ѧ��������������� ��סַ
      ,b.HKSZD as b_XSXX_HKSZD--ѧ��������������� �������ڵ�
      ,b.HKXZM as b_XSXX_HKXZM--ѧ��������������� ����������
      ,bo.MC as b_XSXX_HKXZM_MC--���������� ����
      ,b.SFLDRK as b_XSXX_SFLDRK--ѧ��������������� �Ƿ������˿�
      ,bp.MC as b_XSXX_SFLDRK_MC--�Ƿ��־����� ����
      ,b.TC as b_XSXX_TC--ѧ��������������� �س�
      ,b.LXDH as b_XSXX_LXDH--ѧ��������������� ��ϵ�绰
      ,b.TXDZ as b_XSXX_TXDZ--ѧ��������������� ͨ�ŵ�ַ
      ,b.YZBM as b_XSXX_YZBM--ѧ��������������� ��������
      ,b.DZXX as b_XSXX_DZXX--ѧ��������������� ��������
      ,b.ZYDZ as b_XSXX_ZYDZ--ѧ��������������� ��ҳ��ַ
      ,b.XJH as b_XSXX_XJH--ѧ��������������� ѧ����
      ,d.MC as d_XJYDLB_MC--ѧ���춯������� ����
      ,e.MC as e_XJYDYY_MC--ѧ���춯ԭ������ ����
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,f.GH as f_JZGJBSJ_GH--��ְ��������������� ����
      ,f.XM as f_JZGJBSJ_XM--��ְ��������������� ����
      ,f.YWXM as f_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,f.XMPY as f_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,f.CYM as f_JZGJBSJ_CYM--��ְ��������������� ������
      ,f.XBM as f_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,fb.MC as f_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,f.CSRQ as f_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,f.CSDM as f_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,fc.MC as f_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,f.JG as f_JZGJBSJ_JG--��ְ��������������� ����
      ,f.MZM as f_JZGJBSJ_MZM--��ְ��������������� ������
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.GJDQM as f_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,fe.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,fe.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,fe.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,ff.MC as f_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,f.SFZJH as f_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,f.HYZKM as f_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,fg.MC as f_JZGJBSJ_HYZKM_MC--����״������ ����
      ,f.GATQWM as f_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,fh.MC as f_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,fh.SM as f_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,fi.MC as f_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,fi.JC as f_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,f.JKZKM as f_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,fj.MC as f_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,fj.SM as f_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,f.XYZJM as f_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,fk.MC as f_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,f.XXM as f_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,fl.MC as f_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,fl.JC as f_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,f.ZP as f_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,f.JGH as f_JZGJBSJ_JGH--��ְ��������������� ������
      ,f.JTZZ as f_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,f.XZZ as f_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,f.HKSZD as f_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,f.HKXZM as f_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,fm.MC as f_JZGJBSJ_HKXZM_MC--���������� ����
      ,f.XLM as f_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,fn.MC as f_JZGJBSJ_XLM_MC--ѧ������ ����
      ,f.GZNY as f_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,f.LXNY as f_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,f.CJNY as f_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,f.BZLBM as f_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,fo.MC as f_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,f.DABH as f_JZGJBSJ_DABH--��ְ��������������� �������
      ,f.DAWB as f_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,f.TXDZ as f_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,f.LXDH as f_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,f.YZBM as f_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,f.DZXX as f_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,f.TC as f_JZGJBSJ_TC--��ְ��������������� �س�
      ,f.GWZYM as f_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,fp.MC as f_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,fq.MC as f_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,g.SCHOOLID as g_BJ_SCHOOLID--�༶������� ѧУ��
      ,g.NJ as g_BJ_NJ--�༶������� �꼶��
      ,g.BJ as g_BJ_BJ--�༶������� �༶����
      ,g.JBNY as g_BJ_JBNY--�༶������� ��������
      ,g.BZRGH as g_BJ_BZRGH--�༶������� �����ι���
      ,g.BZXH as g_BJ_BZXH--�༶������� �೤ѧ��
      ,g.BJRYCH as g_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,g.XZ as g_BJ_XZ--�༶������� ѧ��
      ,g.BJLXM as g_BJ_BJLXM--�༶������� �༶������
      ,gb.MC as g_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,g.WLLX as g_BJ_WLLX--�༶������� ��������
      ,g.BYRQ as g_BJ_BYRQ--�༶������� ��ҵ����
      ,g.SFSSMZSYJXB as g_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,gc.MC as g_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,g.SYJXMSM as g_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,gd.MC as g_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,gd.SM as g_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,h.SCHOOLID as h_NJ_SCHOOLID--�꼶������� ѧУ��
      ,h.NJMC as h_NJ_NJMC--�꼶������� �꼶����
      ,i.SCHOOLID as i_BJ_SCHOOLID--�༶������� ѧУ��
      ,i.NJ as i_BJ_NJ--�༶������� �꼶��
      ,i.BJ as i_BJ_BJ--�༶������� �༶����
      ,i.JBNY as i_BJ_JBNY--�༶������� ��������
      ,i.BZRGH as i_BJ_BZRGH--�༶������� �����ι���
      ,i.BZXH as i_BJ_BZXH--�༶������� �೤ѧ��
      ,i.BJRYCH as i_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,i.XZ as i_BJ_XZ--�༶������� ѧ��
      ,i.BJLXM as i_BJ_BJLXM--�༶������� �༶������
      ,ib.MC as i_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,i.WLLX as i_BJ_WLLX--�༶������� ��������
      ,i.BYRQ as i_BJ_BYRQ--�༶������� ��ҵ����
      ,i.SFSSMZSYJXB as i_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,ic.MC as i_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,i.SYJXMSM as i_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,id.MC as i_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,id.SM as i_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,j.SCHOOLID as j_NJ_SCHOOLID--�꼶������� ѧУ��
      ,j.NJMC as j_NJ_NJMC--�꼶������� �꼶����

FROM dbo.EDU_ZXXS_07_A02_XJYD AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ��ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDLB AS d ON a.YDLBM = d.DM /*�춯�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDYY AS e ON a.YDYYM = e.DM /*�춯ԭ����*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.JBRID = f.ID /*������ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS g ON a.YBH = g.BH /*ԭ���*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS h ON a.YNJ = h.NJ /*ԭ�꼶*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS i ON a.XBH = i.BH /*�ְ��*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS j ON a.XNJ = j.NJ /*���꼶*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bb ON b.XBM = bb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bc ON b.CSDM = bc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bd ON b.MZM = bd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS be ON b.GJDQM = be.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bf ON b.SFZJLXM = bf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bh ON b.GATQWM = bh.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bi ON b.ZZMMM = bi.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bk ON b.XYZJM = bk.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bl ON b.XXM = bl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bm ON b.DSZYBZ = bm.DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS bn ON b.XSLBM = bn.DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bo ON b.HKXZM = bo.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bp ON b.SFLDRK = bp.DM /*�Ƿ������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fb ON f.XBM = fb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fc ON f.CSDM = fc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fe ON f.GJDQM = fe.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ff ON f.SFZJLXM = ff.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS fg ON f.HYZKM = fg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fh ON f.GATQWM = fh.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fi ON f.ZZMMM = fi.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS fj ON f.JKZKM = fj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fk ON f.XYZJM = fk.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fl ON f.XXM = fl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS fm ON f.HKXZM = fm.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS fn ON f.XLM = fn.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS fo ON f.BZLBM = fo.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS fp ON f.GWZYM = fp.DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS fq ON f.ZYRKXD = fq.DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS gb ON g.BJLXM = gb.DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS gc ON g.SFSSMZSYJXB = gc.DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS gd ON g.SYJXMSM = gd.DM /*˫���ѧģʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS ib ON i.BJLXM = ib.DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ic ON i.SFSSMZSYJXB = ic.DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS id ON i.SYJXMSM = id.DM /*˫���ѧģʽ��*/
GO

--ѧУ�������������
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_01_01_ZXXX_DISP]
AS
SELECT a.[ID]--ѧУID
      ,a.[XXDM]--ѧУ����
      ,a.[XXMC]--ѧУ����
      ,a.[XXYWMC]--ѧУӢ������
      ,a.[XXDZ]--ѧУ��ַ
      ,a.[XXYZBM]--ѧУ��������
      ,a.[XZQHM]--����������
      ,a.[JXNY]--��У����
      ,a.[XQR]--У����
      ,a.[XXBXLXM]--ѧУ��ѧ������
      ,a.[XXZGBMM]--ѧУ���ܲ�����
      ,a.[FDDBRH]--���������˺�
      ,a.[FRZSH]--����֤���
      ,a.[XZGH]--У������
      ,a.[XZXM]--У������
      ,a.[DWFZRH]--��ί�����˺�
      ,a.[ZZJGM]--��֯������
      ,a.[LXDH]--��ϵ�绰
      ,a.[CZDH]--����绰
      ,a.[DZXX]--��������
      ,a.[ZYDZ]--��ҳ��ַ
      ,a.[LSYG]--��ʷ�ظ�
      ,a.[XXBBM]--ѧУ�����
      ,a.[SSZGDWM]--�������ܵ�λ��
      ,a.[SZDCXLXM]--���ڵس���������
      ,a.[SZDJJSXM]--���ڵؾ���������
      ,a.[SZDMZSX]--���ڵ���������
      ,a.[XXXZ]--Сѧѧ��
      ,a.[XXRXNL]--Сѧ��ѧ����
      ,a.[CZXZ]--����ѧ��
      ,a.[CZRXNL]--������ѧ����
      ,a.[GZXZ]--����ѧ��
      ,a.[ZJXYYM]--����ѧ������
      ,a.[FJXYYM]--����ѧ������
      ,a.[ZSBJ]--�����뾶
      ,b.MC as b_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,c.MC as c_BXLX_MC--��ѧ���ʹ���� ����
      ,c.SM as c_BXLX_SM--��ѧ���ʹ���� ˵��
      ,d.MC as d_XXJYJGJBZ_MC--ѧУ�������������ٰ��ߴ���� ����
      ,d.SM as d_XXJYJGJBZ_SM--ѧУ�������������ٰ��ߴ���� ˵��
      ,e.MC as e_XXBB_MC--ѧУ������� ����
      ,f.MC as f_XXJYJGJBZ_MC--ѧУ�������������ٰ��ߴ���� ����
      ,f.SM as f_XXJYJGJBZ_SM--ѧУ�������������ٰ��ߴ���� ˵��
      ,g.MC as g_SZDCXLX_MC--���ڵس������ʹ���� ����
      ,h.MC as h_SZDQJJSX_MC--���ڵ����������Դ���� ����
      ,i.MC as i_SFBZ_MC--�Ƿ��־����� ����
      ,j.MC as j_ZGYZ_MC--�й����ִ��� ����
      ,j.ZMDM as j_ZGYZ_ZMDM--�й����ִ��� ��ĸ����
      ,k.MC as k_ZGYZ_MC--�й����ִ��� ����
      ,k.ZMDM as k_ZGYZ_ZMDM--�й����ִ��� ��ĸ����

FROM dbo.EDU_ZXXX_01_01_ZXXX AS a LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS b ON a.XZQHM = b.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS c ON a.XXBXLXM = c.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS d ON a.XXZGBMM = d.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS e ON a.XXBBM = e.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS f ON a.SSZGDWM = f.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS g ON a.SZDCXLXM = g.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS h ON a.SZDJJSXM = h.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS i ON a.SZDMZSX = i.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS j ON a.ZJXYYM = j.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS k ON a.FJXYYM = k.DM /*����ѧ������*/
GO

--�꼶�������
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_02_01_NJ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[NJ]--�꼶��
      ,a.[NJMC]--�꼶����

FROM dbo.EDU_ZXXX_02_01_NJ AS a
GO

--�༶�������
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_03_01_BJ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[BH]--���
      ,a.[NJ]--�꼶��
      ,a.[BJ]--�༶����
      ,a.[JBNY]--��������
      ,a.[BZRGH]--�����ι���
      ,a.[BZXH]--�೤ѧ��
      ,a.[BJRYCH]--�༶�����ƺ�
      ,a.[XZ]--ѧ��
      ,a.[BJLXM]--�༶������
      ,a.[WLLX]--��������
      ,a.[BYRQ]--��ҵ����
      ,a.[SFSSMZSYJXB]--�Ƿ���������˫���ѧ��
      ,a.[SYJXMSM]--˫���ѧģʽ��
      ,c.SCHOOLID as c_NJ_SCHOOLID--�꼶������� ѧУ��
      ,c.NJMC as c_NJ_NJMC--�꼶������� �꼶����
      ,d.MC as d_ZXXBJLX_MC--��Сѧ�༶���ʹ���� ����
      ,e.MC as e_SFBZ_MC--�Ƿ��־����� ����
      ,f.MC as f_SSMZSYJXMS_MC--��������˫���ѧģʽ����� ����
      ,f.SM as f_SSMZSYJXMS_SM--��������˫���ѧģʽ����� ˵��

FROM dbo.EDU_ZXXX_03_01_BJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS c ON a.NJ = c.NJ /*�꼶��*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS d ON a.BJLXM = d.DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFSSMZSYJXB = e.DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS f ON a.SYJXMSM = f.DM /*˫���ѧģʽ��*/
GO

--�����������
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_04_01_JG_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[JGH]--������
      ,a.[LSJGH]--����������
      ,a.[JGMC]--��������
      ,a.[JGJC]--�������
      ,a.[FZRGH]--�����˹���
      ,c.SCHOOLID as c_JG_SCHOOLID--����������� ѧУ��
      ,c.LSJGH as c_JG_LSJGH--����������� ����������
      ,c.JGMC as c_JG_JGMC--����������� ��������
      ,c.JGJC as c_JG_JGJC--����������� �������
      ,c.FZRGH as c_JG_FZRGH--����������� �����˹���

FROM dbo.EDU_ZXXX_04_01_JG AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS c ON a.LSJGH = c.JGH /*����������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO

--������λ��
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_04_A01_JGGW_DISP]
AS
SELECT a.[ID]--��λ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[JGH]--������
      ,a.[GWBH]--��λ���
      ,a.[GWMC]--��λ����
      ,a.[GWSM]--��λ˵��
      ,c.SCHOOLID as c_JG_SCHOOLID--����������� ѧУ��
      ,c.LSJGH as c_JG_LSJGH--����������� ����������
      ,c.JGMC as c_JG_JGMC--����������� ��������
      ,c.JGJC as c_JG_JGJC--����������� �������
      ,c.FZRGH as c_JG_FZRGH--����������� �����˹���

FROM dbo.EDU_ZXXX_04_A01_JGGW AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS c ON a.JGH = c.JGH /*������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO

--����������������
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_02_01_JZWJBSJ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[ID]--������ID
      ,a.[JZWH]--�������
      ,a.[JZWMC]--����������
      ,a.[SYZKM]--ʹ��״����
      ,a.[FWCQ]--���ݲ�Ȩ
      ,a.[XQH]--У����
      ,a.[JZWFLM]--�����������
      ,a.[JZWJGM]--������ṹ��
      ,a.[JZWCS]--���������
      ,a.[JCNY]--��������
      ,a.[JZWTZZE]--������Ͷ���ܶ�
      ,a.[JFLYM]--������Դ��
      ,a.[ZJZMJ]--�ܽ������
      ,a.[ZSYMJ]--��ʹ�����
      ,a.[KZSFLDM]--��������Ҷ���
      ,a.[KZSFBZM]--���������׼��
      ,a.[JZWDZ]--�������ַ
      ,a.[JZWZKM]--������״����
      ,a.[JZWTP]--������ͼƬ
      ,a.[JZWPMT]--������ƽ��ͼ
      ,a.[XXDWCCM]--ѧУ��λ�����
      ,a.[JZWWZZK]--������λ��״��
      ,a.[GHSPWH]--�滮�����ĺ�
      ,a.[ZHFZNL]--�ۺϷ�������
      ,a.[GHSYNX]--�滮ʹ������
      ,a.[SFYYJBXCS]--�Ƿ���Ԥ�����մ�ʩ
      ,a.[SFKYYYJBNCS]--�Ƿ������Ӧ�����ѳ���
      ,a.[CQZH]--��Ȩ֤��
      ,a.[JZWYTM]--��������;��
      ,a.[JZWZGD]--�������ܸ߶�
      ,a.[WFJDBM]--Σ����������
      ,a.[WFJDWH]--Σ�������ĺ�
      ,a.[WFJDRQ]--Σ����������
      ,a.[GNFSM]--��ů��ʽ��
      ,a.[JZWJCXSM]--�����������ʽ��
      ,a.[JZWPMXSM]--������ƽ����ʽ��
      ,a.[JZWLBXSM]--������¥����ʽ��
      ,a.[SFYGZZ]--�Ƿ��й�����
      ,a.[QL]--Ȧ��
      ,a.[ZJAQGZWCRQ]--�����ȫ�����������
      ,a.[ZJAQGZHYJSYNX]--�����ȫ�����Ԥ��ʹ������
      ,a.[ZXLXM]--ר������
      ,a.[ZYZXTZBZMCM]--����ר��Ͷ�ʲ���������
      ,a.[WWJZDJM]--���ｨ���ȼ���
      ,a.[JXJFZYF]--��ѧ�������÷�
      ,a.[QZJS]--���н���
      ,a.[QZSYS]--����ʵ����
      ,a.[QZTSS]--����ͼ����
      ,a.[QZWJS]--����΢����
      ,a.[QZYYS]--����������
      ,a.[QZTYHDS]--�����������
      ,a.[QZQTJFYF]--���������̸��÷�
      ,a.[SHYF]--�����÷�
      ,a.[QZXSSS]--����ѧ������
      ,a.[QZST]--����ʳ��
      ,a.[QZCS]--���в���
      ,a.[QZGLF]--���й�¯��(��ˮ��)
      ,a.[QZYS]--����ԡ��
      ,a.[QZJGSS]--���н̹�����
      ,a.[QZQTSHYF]--�������������÷�
      ,a.[XZBGYF]--�����칫�÷�
      ,a.[QZJSBGS]--���н�ְ���칫��
      ,a.[QZWSBJS]--��������������
      ,a.[QZQTXZBGYF]--�������������칫�÷�
      ,a.[QTYF]--�����÷�
      ,c.MC as c_SYZK_MC--ʹ��״������� ����
      ,d.MC as d_CQ_MC--��Ȩ����� ����
      ,e.MC as e_JZWFL_MC--������������� ����
      ,f.MC as f_JZWJG_MC--������ṹ����� ����
      ,g.MC as g_JFLY_MC--������Դ����� ����
      ,h.JC as h_KZSFLD_JC--��������Ҷȴ��� ���
      ,h.MC as h_KZSFLD_MC--��������Ҷȴ��� ����
      ,i.JC as i_KZSFBZ_JC--���������׼���� ���
      ,i.MC as i_KZSFBZ_MC--���������׼���� ����
      ,i.SM as i_KZSFBZ_SM--���������׼���� ˵��
      ,j.MC as j_JZWZK_MC--������״������� ����
      ,j.SM as j_JZWZK_SM--������״������� ˵��
      ,k.MC as k_XXDWCC_MC--ѧУ��λ��δ���� ����
      ,l.MC as l_SFBZ_MC--�Ƿ��־����� ����
      ,m.MC as m_SFBZ_MC--�Ƿ��־����� ����
      ,n.MC as n_JZWYT_MC--��������;����� ����
      ,o.MC as o_GNFS_MC--��ů��ʽ����� ����
      ,p.MC as p_JZWJCXS_MC--�����������ʽ����� ����
      ,q.MC as q_JZWPMXS_MC--������ƽ����ʽ����� ����
      ,r.MC as r_JZWLBXS_MC--������¥����ʽ����� ����
      ,s.MC as s_SFBZ_MC--�Ƿ��־����� ����
      ,t.MC as t_SFBZ_MC--�Ƿ��־����� ����
      ,u.MC as u_ZYZXTZBZMC_MC--����ר��Ͷ�ʲ������ƴ���� ����
      ,v.MC as v_WWJZDJ_MC--���ｨ���ȼ������ ����

FROM dbo.EDU_ZZFC_02_01_JZWJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS c ON a.SYZKM = c.DM /*ʹ��״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS d ON a.FWCQ = d.DM /*���ݲ�Ȩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS e ON a.JZWFLM = e.DM /*�����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS f ON a.JZWJGM = f.DM /*������ṹ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS g ON a.JFLYM = g.DM /*������Դ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS h ON a.KZSFLDM = h.DM /*��������Ҷ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS i ON a.KZSFBZM = i.DM /*���������׼��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS j ON a.JZWZKM = j.DM /*������״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS k ON a.XXDWCCM = k.DM /*ѧУ��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS l ON a.SFYYJBXCS = l.DM /*�Ƿ���Ԥ�����մ�ʩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS m ON a.SFKYYYJBNCS = m.DM /*�Ƿ������Ӧ�����ѳ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS n ON a.JZWYTM = n.DM /*��������;��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS o ON a.GNFSM = o.DM /*��ů��ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS p ON a.JZWJCXSM = p.DM /*�����������ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS q ON a.JZWPMXSM = q.DM /*������ƽ����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS r ON a.JZWLBXSM = r.DM /*������¥����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS s ON a.SFYGZZ = s.DM /*�Ƿ��й�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS t ON a.QL = t.DM /*Ȧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS u ON a.ZYZXTZBZMCM = u.DM /*����ר��Ͷ�ʲ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS v ON a.WWJZDJM = v.DM /*���ｨ���ȼ���*/
GO

--ѧ�������������
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_08_01_XSSS_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[ID]--����ID
      ,a.[SSLID]--����¥ID
      ,a.[SSLBM]--����¥���
      ,a.[FJBM]--������
      ,a.[RZXB]--��ס�Ա�
      ,a.[SFKY]--�Ƿ����
      ,a.[KZRS]--��ס����
      ,a.[WLDK]--����˿�
      ,a.[AZDSJ]--��װ���ӻ�
      ,a.[DHDK]--�绰�˿�
      ,a.[DHHM]--�绰����
      ,a.[SBDS]--ˮ�����
      ,a.[DBDS]--������
      ,a.[SSBZ]--���ᱸע
      ,a.[SZLZ]--����¥��
      ,a.[SSM]--������
      ,c.SCHOOLID as c_JZWJBSJ_SCHOOLID--���������������� ѧУ��
      ,c.JZWH as c_JZWJBSJ_JZWH--���������������� �������
      ,c.JZWMC as c_JZWJBSJ_JZWMC--���������������� ����������
      ,c.SYZKM as c_JZWJBSJ_SYZKM--���������������� ʹ��״����
      ,cb.MC as c_JZWJBSJ_SYZKM_MC--ʹ��״������� ����
      ,c.FWCQ as c_JZWJBSJ_FWCQ--���������������� ���ݲ�Ȩ
      ,cc.MC as c_JZWJBSJ_FWCQ_MC--��Ȩ����� ����
      ,c.XQH as c_JZWJBSJ_XQH--���������������� У����
      ,c.JZWFLM as c_JZWJBSJ_JZWFLM--���������������� �����������
      ,cd.MC as c_JZWJBSJ_JZWFLM_MC--������������� ����
      ,c.JZWJGM as c_JZWJBSJ_JZWJGM--���������������� ������ṹ��
      ,ce.MC as c_JZWJBSJ_JZWJGM_MC--������ṹ����� ����
      ,c.JZWCS as c_JZWJBSJ_JZWCS--���������������� ���������
      ,c.JCNY as c_JZWJBSJ_JCNY--���������������� ��������
      ,c.JZWTZZE as c_JZWJBSJ_JZWTZZE--���������������� ������Ͷ���ܶ�
      ,c.JFLYM as c_JZWJBSJ_JFLYM--���������������� ������Դ��
      ,cf.MC as c_JZWJBSJ_JFLYM_MC--������Դ����� ����
      ,c.ZJZMJ as c_JZWJBSJ_ZJZMJ--���������������� �ܽ������
      ,c.ZSYMJ as c_JZWJBSJ_ZSYMJ--���������������� ��ʹ�����
      ,c.KZSFLDM as c_JZWJBSJ_KZSFLDM--���������������� ��������Ҷ���
      ,cg.JC as c_JZWJBSJ_KZSFLDM_JC--��������Ҷȴ��� ���
      ,cg.MC as c_JZWJBSJ_KZSFLDM_MC--��������Ҷȴ��� ����
      ,c.KZSFBZM as c_JZWJBSJ_KZSFBZM--���������������� ���������׼��
      ,ch.JC as c_JZWJBSJ_KZSFBZM_JC--���������׼���� ���
      ,ch.MC as c_JZWJBSJ_KZSFBZM_MC--���������׼���� ����
      ,ch.SM as c_JZWJBSJ_KZSFBZM_SM--���������׼���� ˵��
      ,c.JZWDZ as c_JZWJBSJ_JZWDZ--���������������� �������ַ
      ,c.JZWZKM as c_JZWJBSJ_JZWZKM--���������������� ������״����
      ,ci.MC as c_JZWJBSJ_JZWZKM_MC--������״������� ����
      ,ci.SM as c_JZWJBSJ_JZWZKM_SM--������״������� ˵��
      ,c.JZWTP as c_JZWJBSJ_JZWTP--���������������� ������ͼƬ
      ,c.JZWPMT as c_JZWJBSJ_JZWPMT--���������������� ������ƽ��ͼ
      ,c.XXDWCCM as c_JZWJBSJ_XXDWCCM--���������������� ѧУ��λ�����
      ,cj.MC as c_JZWJBSJ_XXDWCCM_MC--ѧУ��λ��δ���� ����
      ,c.JZWWZZK as c_JZWJBSJ_JZWWZZK--���������������� ������λ��״��
      ,c.GHSPWH as c_JZWJBSJ_GHSPWH--���������������� �滮�����ĺ�
      ,c.ZHFZNL as c_JZWJBSJ_ZHFZNL--���������������� �ۺϷ�������
      ,c.GHSYNX as c_JZWJBSJ_GHSYNX--���������������� �滮ʹ������
      ,c.SFYYJBXCS as c_JZWJBSJ_SFYYJBXCS--���������������� �Ƿ���Ԥ�����մ�ʩ
      ,ck.MC as c_JZWJBSJ_SFYYJBXCS_MC--�Ƿ��־����� ����
      ,c.SFKYYYJBNCS as c_JZWJBSJ_SFKYYYJBNCS--���������������� �Ƿ������Ӧ�����ѳ���
      ,cl.MC as c_JZWJBSJ_SFKYYYJBNCS_MC--�Ƿ��־����� ����
      ,c.CQZH as c_JZWJBSJ_CQZH--���������������� ��Ȩ֤��
      ,c.JZWYTM as c_JZWJBSJ_JZWYTM--���������������� ��������;��
      ,cm.MC as c_JZWJBSJ_JZWYTM_MC--��������;����� ����
      ,c.JZWZGD as c_JZWJBSJ_JZWZGD--���������������� �������ܸ߶�
      ,c.WFJDBM as c_JZWJBSJ_WFJDBM--���������������� Σ����������
      ,c.WFJDWH as c_JZWJBSJ_WFJDWH--���������������� Σ�������ĺ�
      ,c.WFJDRQ as c_JZWJBSJ_WFJDRQ--���������������� Σ����������
      ,c.GNFSM as c_JZWJBSJ_GNFSM--���������������� ��ů��ʽ��
      ,cn.MC as c_JZWJBSJ_GNFSM_MC--��ů��ʽ����� ����
      ,c.JZWJCXSM as c_JZWJBSJ_JZWJCXSM--���������������� �����������ʽ��
      ,co.MC as c_JZWJBSJ_JZWJCXSM_MC--�����������ʽ����� ����
      ,c.JZWPMXSM as c_JZWJBSJ_JZWPMXSM--���������������� ������ƽ����ʽ��
      ,cp.MC as c_JZWJBSJ_JZWPMXSM_MC--������ƽ����ʽ����� ����
      ,c.JZWLBXSM as c_JZWJBSJ_JZWLBXSM--���������������� ������¥����ʽ��
      ,cq.MC as c_JZWJBSJ_JZWLBXSM_MC--������¥����ʽ����� ����
      ,c.SFYGZZ as c_JZWJBSJ_SFYGZZ--���������������� �Ƿ��й�����
      ,cr.MC as c_JZWJBSJ_SFYGZZ_MC--�Ƿ��־����� ����
      ,c.QL as c_JZWJBSJ_QL--���������������� Ȧ��
      ,cs.MC as c_JZWJBSJ_QL_MC--�Ƿ��־����� ����
      ,c.ZJAQGZWCRQ as c_JZWJBSJ_ZJAQGZWCRQ--���������������� �����ȫ�����������
      ,c.ZJAQGZHYJSYNX as c_JZWJBSJ_ZJAQGZHYJSYNX--���������������� �����ȫ�����Ԥ��ʹ������
      ,c.ZXLXM as c_JZWJBSJ_ZXLXM--���������������� ר������
      ,c.ZYZXTZBZMCM as c_JZWJBSJ_ZYZXTZBZMCM--���������������� ����ר��Ͷ�ʲ���������
      ,ct.MC as c_JZWJBSJ_ZYZXTZBZMCM_MC--����ר��Ͷ�ʲ������ƴ���� ����
      ,c.WWJZDJM as c_JZWJBSJ_WWJZDJM--���������������� ���ｨ���ȼ���
      ,cu.MC as c_JZWJBSJ_WWJZDJM_MC--���ｨ���ȼ������ ����
      ,c.JXJFZYF as c_JZWJBSJ_JXJFZYF--���������������� ��ѧ�������÷�
      ,c.QZJS as c_JZWJBSJ_QZJS--���������������� ���н���
      ,c.QZSYS as c_JZWJBSJ_QZSYS--���������������� ����ʵ����
      ,c.QZTSS as c_JZWJBSJ_QZTSS--���������������� ����ͼ����
      ,c.QZWJS as c_JZWJBSJ_QZWJS--���������������� ����΢����
      ,c.QZYYS as c_JZWJBSJ_QZYYS--���������������� ����������
      ,c.QZTYHDS as c_JZWJBSJ_QZTYHDS--���������������� �����������
      ,c.QZQTJFYF as c_JZWJBSJ_QZQTJFYF--���������������� ���������̸��÷�
      ,c.SHYF as c_JZWJBSJ_SHYF--���������������� �����÷�
      ,c.QZXSSS as c_JZWJBSJ_QZXSSS--���������������� ����ѧ������
      ,c.QZST as c_JZWJBSJ_QZST--���������������� ����ʳ��
      ,c.QZCS as c_JZWJBSJ_QZCS--���������������� ���в���
      ,c.QZGLF as c_JZWJBSJ_QZGLF--���������������� ���й�¯��(��ˮ��)
      ,c.QZYS as c_JZWJBSJ_QZYS--���������������� ����ԡ��
      ,c.QZJGSS as c_JZWJBSJ_QZJGSS--���������������� ���н̹�����
      ,c.QZQTSHYF as c_JZWJBSJ_QZQTSHYF--���������������� �������������÷�
      ,c.XZBGYF as c_JZWJBSJ_XZBGYF--���������������� �����칫�÷�
      ,c.QZJSBGS as c_JZWJBSJ_QZJSBGS--���������������� ���н�ְ���칫��
      ,c.QZWSBJS as c_JZWJBSJ_QZWSBJS--���������������� ��������������
      ,c.QZQTXZBGYF as c_JZWJBSJ_QZQTXZBGYF--���������������� �������������칫�÷�
      ,c.QTYF as c_JZWJBSJ_QTYF--���������������� �����÷�
      ,d.MC as d_RDXB_MC--�˵��Ա���� ����
      ,e.MC as e_SFBZ_MC--�Ƿ��־����� ����
      ,f.MC as f_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZFC_08_01_XSSS AS a LEFT OUTER JOIN
      dbo.EDU_ZZFC_02_01_JZWJBSJ AS c ON a.SSLID = c.ID /*����¥ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS d ON a.RZXB = d.DM /*��ס�Ա�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFKY = e.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.AZDSJ = f.DM /*��װ���ӻ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS cb ON c.SYZKM = cb.DM /*ʹ��״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS cc ON c.FWCQ = cc.DM /*���ݲ�Ȩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS cd ON c.JZWFLM = cd.DM /*�����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS ce ON c.JZWJGM = ce.DM /*������ṹ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS cf ON c.JFLYM = cf.DM /*������Դ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS cg ON c.KZSFLDM = cg.DM /*��������Ҷ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS ch ON c.KZSFBZM = ch.DM /*���������׼��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS ci ON c.JZWZKM = ci.DM /*������״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS cj ON c.XXDWCCM = cj.DM /*ѧУ��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ck ON c.SFYYJBXCS = ck.DM /*�Ƿ���Ԥ�����մ�ʩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cl ON c.SFKYYYJBNCS = cl.DM /*�Ƿ������Ӧ�����ѳ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS cm ON c.JZWYTM = cm.DM /*��������;��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS cn ON c.GNFSM = cn.DM /*��ů��ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS co ON c.JZWJCXSM = co.DM /*�����������ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS cp ON c.JZWPMXSM = cp.DM /*������ƽ����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS cq ON c.JZWLBXSM = cq.DM /*������¥����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFYGZZ = cr.DM /*�Ƿ��й�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.QL = cs.DM /*Ȧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS ct ON c.ZYZXTZBZMCM = ct.DM /*����ר��Ͷ�ʲ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS cu ON c.WWJZDJM = cu.DM /*���ｨ���ȼ���*/
GO

--���ᴲλ��
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_08_A01_SSCW_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[ID]--��λID
      ,a.[SSLID]--����¥ID
      ,a.[SSID]--����ID
      ,a.[CWM]--��λ��
      ,a.[BZ]--��ע
      ,a.[SFRZ]--�Ƿ���ס
      ,c.SCHOOLID as c_JZWJBSJ_SCHOOLID--���������������� ѧУ��
      ,c.JZWH as c_JZWJBSJ_JZWH--���������������� �������
      ,c.JZWMC as c_JZWJBSJ_JZWMC--���������������� ����������
      ,c.SYZKM as c_JZWJBSJ_SYZKM--���������������� ʹ��״����
      ,cb.MC as c_JZWJBSJ_SYZKM_MC--ʹ��״������� ����
      ,c.FWCQ as c_JZWJBSJ_FWCQ--���������������� ���ݲ�Ȩ
      ,cc.MC as c_JZWJBSJ_FWCQ_MC--��Ȩ����� ����
      ,c.XQH as c_JZWJBSJ_XQH--���������������� У����
      ,c.JZWFLM as c_JZWJBSJ_JZWFLM--���������������� �����������
      ,cd.MC as c_JZWJBSJ_JZWFLM_MC--������������� ����
      ,c.JZWJGM as c_JZWJBSJ_JZWJGM--���������������� ������ṹ��
      ,ce.MC as c_JZWJBSJ_JZWJGM_MC--������ṹ����� ����
      ,c.JZWCS as c_JZWJBSJ_JZWCS--���������������� ���������
      ,c.JCNY as c_JZWJBSJ_JCNY--���������������� ��������
      ,c.JZWTZZE as c_JZWJBSJ_JZWTZZE--���������������� ������Ͷ���ܶ�
      ,c.JFLYM as c_JZWJBSJ_JFLYM--���������������� ������Դ��
      ,cf.MC as c_JZWJBSJ_JFLYM_MC--������Դ����� ����
      ,c.ZJZMJ as c_JZWJBSJ_ZJZMJ--���������������� �ܽ������
      ,c.ZSYMJ as c_JZWJBSJ_ZSYMJ--���������������� ��ʹ�����
      ,c.KZSFLDM as c_JZWJBSJ_KZSFLDM--���������������� ��������Ҷ���
      ,cg.JC as c_JZWJBSJ_KZSFLDM_JC--��������Ҷȴ��� ���
      ,cg.MC as c_JZWJBSJ_KZSFLDM_MC--��������Ҷȴ��� ����
      ,c.KZSFBZM as c_JZWJBSJ_KZSFBZM--���������������� ���������׼��
      ,ch.JC as c_JZWJBSJ_KZSFBZM_JC--���������׼���� ���
      ,ch.MC as c_JZWJBSJ_KZSFBZM_MC--���������׼���� ����
      ,ch.SM as c_JZWJBSJ_KZSFBZM_SM--���������׼���� ˵��
      ,c.JZWDZ as c_JZWJBSJ_JZWDZ--���������������� �������ַ
      ,c.JZWZKM as c_JZWJBSJ_JZWZKM--���������������� ������״����
      ,ci.MC as c_JZWJBSJ_JZWZKM_MC--������״������� ����
      ,ci.SM as c_JZWJBSJ_JZWZKM_SM--������״������� ˵��
      ,c.JZWTP as c_JZWJBSJ_JZWTP--���������������� ������ͼƬ
      ,c.JZWPMT as c_JZWJBSJ_JZWPMT--���������������� ������ƽ��ͼ
      ,c.XXDWCCM as c_JZWJBSJ_XXDWCCM--���������������� ѧУ��λ�����
      ,cj.MC as c_JZWJBSJ_XXDWCCM_MC--ѧУ��λ��δ���� ����
      ,c.JZWWZZK as c_JZWJBSJ_JZWWZZK--���������������� ������λ��״��
      ,c.GHSPWH as c_JZWJBSJ_GHSPWH--���������������� �滮�����ĺ�
      ,c.ZHFZNL as c_JZWJBSJ_ZHFZNL--���������������� �ۺϷ�������
      ,c.GHSYNX as c_JZWJBSJ_GHSYNX--���������������� �滮ʹ������
      ,c.SFYYJBXCS as c_JZWJBSJ_SFYYJBXCS--���������������� �Ƿ���Ԥ�����մ�ʩ
      ,ck.MC as c_JZWJBSJ_SFYYJBXCS_MC--�Ƿ��־����� ����
      ,c.SFKYYYJBNCS as c_JZWJBSJ_SFKYYYJBNCS--���������������� �Ƿ������Ӧ�����ѳ���
      ,cl.MC as c_JZWJBSJ_SFKYYYJBNCS_MC--�Ƿ��־����� ����
      ,c.CQZH as c_JZWJBSJ_CQZH--���������������� ��Ȩ֤��
      ,c.JZWYTM as c_JZWJBSJ_JZWYTM--���������������� ��������;��
      ,cm.MC as c_JZWJBSJ_JZWYTM_MC--��������;����� ����
      ,c.JZWZGD as c_JZWJBSJ_JZWZGD--���������������� �������ܸ߶�
      ,c.WFJDBM as c_JZWJBSJ_WFJDBM--���������������� Σ����������
      ,c.WFJDWH as c_JZWJBSJ_WFJDWH--���������������� Σ�������ĺ�
      ,c.WFJDRQ as c_JZWJBSJ_WFJDRQ--���������������� Σ����������
      ,c.GNFSM as c_JZWJBSJ_GNFSM--���������������� ��ů��ʽ��
      ,cn.MC as c_JZWJBSJ_GNFSM_MC--��ů��ʽ����� ����
      ,c.JZWJCXSM as c_JZWJBSJ_JZWJCXSM--���������������� �����������ʽ��
      ,co.MC as c_JZWJBSJ_JZWJCXSM_MC--�����������ʽ����� ����
      ,c.JZWPMXSM as c_JZWJBSJ_JZWPMXSM--���������������� ������ƽ����ʽ��
      ,cp.MC as c_JZWJBSJ_JZWPMXSM_MC--������ƽ����ʽ����� ����
      ,c.JZWLBXSM as c_JZWJBSJ_JZWLBXSM--���������������� ������¥����ʽ��
      ,cq.MC as c_JZWJBSJ_JZWLBXSM_MC--������¥����ʽ����� ����
      ,c.SFYGZZ as c_JZWJBSJ_SFYGZZ--���������������� �Ƿ��й�����
      ,cr.MC as c_JZWJBSJ_SFYGZZ_MC--�Ƿ��־����� ����
      ,c.QL as c_JZWJBSJ_QL--���������������� Ȧ��
      ,cs.MC as c_JZWJBSJ_QL_MC--�Ƿ��־����� ����
      ,c.ZJAQGZWCRQ as c_JZWJBSJ_ZJAQGZWCRQ--���������������� �����ȫ�����������
      ,c.ZJAQGZHYJSYNX as c_JZWJBSJ_ZJAQGZHYJSYNX--���������������� �����ȫ�����Ԥ��ʹ������
      ,c.ZXLXM as c_JZWJBSJ_ZXLXM--���������������� ר������
      ,c.ZYZXTZBZMCM as c_JZWJBSJ_ZYZXTZBZMCM--���������������� ����ר��Ͷ�ʲ���������
      ,ct.MC as c_JZWJBSJ_ZYZXTZBZMCM_MC--����ר��Ͷ�ʲ������ƴ���� ����
      ,c.WWJZDJM as c_JZWJBSJ_WWJZDJM--���������������� ���ｨ���ȼ���
      ,cu.MC as c_JZWJBSJ_WWJZDJM_MC--���ｨ���ȼ������ ����
      ,c.JXJFZYF as c_JZWJBSJ_JXJFZYF--���������������� ��ѧ�������÷�
      ,c.QZJS as c_JZWJBSJ_QZJS--���������������� ���н���
      ,c.QZSYS as c_JZWJBSJ_QZSYS--���������������� ����ʵ����
      ,c.QZTSS as c_JZWJBSJ_QZTSS--���������������� ����ͼ����
      ,c.QZWJS as c_JZWJBSJ_QZWJS--���������������� ����΢����
      ,c.QZYYS as c_JZWJBSJ_QZYYS--���������������� ����������
      ,c.QZTYHDS as c_JZWJBSJ_QZTYHDS--���������������� �����������
      ,c.QZQTJFYF as c_JZWJBSJ_QZQTJFYF--���������������� ���������̸��÷�
      ,c.SHYF as c_JZWJBSJ_SHYF--���������������� �����÷�
      ,c.QZXSSS as c_JZWJBSJ_QZXSSS--���������������� ����ѧ������
      ,c.QZST as c_JZWJBSJ_QZST--���������������� ����ʳ��
      ,c.QZCS as c_JZWJBSJ_QZCS--���������������� ���в���
      ,c.QZGLF as c_JZWJBSJ_QZGLF--���������������� ���й�¯��(��ˮ��)
      ,c.QZYS as c_JZWJBSJ_QZYS--���������������� ����ԡ��
      ,c.QZJGSS as c_JZWJBSJ_QZJGSS--���������������� ���н̹�����
      ,c.QZQTSHYF as c_JZWJBSJ_QZQTSHYF--���������������� �������������÷�
      ,c.XZBGYF as c_JZWJBSJ_XZBGYF--���������������� �����칫�÷�
      ,c.QZJSBGS as c_JZWJBSJ_QZJSBGS--���������������� ���н�ְ���칫��
      ,c.QZWSBJS as c_JZWJBSJ_QZWSBJS--���������������� ��������������
      ,c.QZQTXZBGYF as c_JZWJBSJ_QZQTXZBGYF--���������������� �������������칫�÷�
      ,c.QTYF as c_JZWJBSJ_QTYF--���������������� �����÷�
      ,d.SCHOOLID as d_XSSS_SCHOOLID--ѧ������������� ѧУ��
      ,d.SSLID as d_XSSS_SSLID--ѧ������������� ����¥ID
      ,d.SSLBM as d_XSSS_SSLBM--ѧ������������� ����¥���
      ,d.FJBM as d_XSSS_FJBM--ѧ������������� ������
      ,d.RZXB as d_XSSS_RZXB--ѧ������������� ��ס�Ա�
      ,db.MC as d_XSSS_RZXB_MC--�˵��Ա���� ����
      ,d.SFKY as d_XSSS_SFKY--ѧ������������� �Ƿ����
      ,dc.MC as d_XSSS_SFKY_MC--�Ƿ��־����� ����
      ,d.KZRS as d_XSSS_KZRS--ѧ������������� ��ס����
      ,d.WLDK as d_XSSS_WLDK--ѧ������������� ����˿�
      ,d.AZDSJ as d_XSSS_AZDSJ--ѧ������������� ��װ���ӻ�
      ,dd.MC as d_XSSS_AZDSJ_MC--�Ƿ��־����� ����
      ,d.DHDK as d_XSSS_DHDK--ѧ������������� �绰�˿�
      ,d.DHHM as d_XSSS_DHHM--ѧ������������� �绰����
      ,d.SBDS as d_XSSS_SBDS--ѧ������������� ˮ�����
      ,d.DBDS as d_XSSS_DBDS--ѧ������������� ������
      ,d.SSBZ as d_XSSS_SSBZ--ѧ������������� ���ᱸע
      ,d.SZLZ as d_XSSS_SZLZ--ѧ������������� ����¥��
      ,d.SSM as d_XSSS_SSM--ѧ������������� ������
      ,e.MC as e_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZFC_08_A01_SSCW AS a LEFT OUTER JOIN
      dbo.EDU_ZZFC_02_01_JZWJBSJ AS c ON a.SSLID = c.ID /*����¥ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_08_01_XSSS AS d ON a.SSID = d.ID /*����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFRZ = e.DM /*�Ƿ���ס*/ LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS cb ON c.SYZKM = cb.DM /*ʹ��״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS cc ON c.FWCQ = cc.DM /*���ݲ�Ȩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS cd ON c.JZWFLM = cd.DM /*�����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS ce ON c.JZWJGM = ce.DM /*������ṹ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS cf ON c.JFLYM = cf.DM /*������Դ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS cg ON c.KZSFLDM = cg.DM /*��������Ҷ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS ch ON c.KZSFBZM = ch.DM /*���������׼��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS ci ON c.JZWZKM = ci.DM /*������״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS cj ON c.XXDWCCM = cj.DM /*ѧУ��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ck ON c.SFYYJBXCS = ck.DM /*�Ƿ���Ԥ�����մ�ʩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cl ON c.SFKYYYJBNCS = cl.DM /*�Ƿ������Ӧ�����ѳ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS cm ON c.JZWYTM = cm.DM /*��������;��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS cn ON c.GNFSM = cn.DM /*��ů��ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS co ON c.JZWJCXSM = co.DM /*�����������ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS cp ON c.JZWPMXSM = cp.DM /*������ƽ����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS cq ON c.JZWLBXSM = cq.DM /*������¥����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFYGZZ = cr.DM /*�Ƿ��й�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.QL = cs.DM /*Ȧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS ct ON c.ZYZXTZBZMCM = ct.DM /*����ר��Ͷ�ʲ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS cu ON c.WWJZDJM = cu.DM /*���ｨ���ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.RZXB = db.DM /*��ס�Ա�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dc ON d.SFKY = dc.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dd ON d.AZDSJ = dd.DM /*��װ���ӻ�*/
GO

--סί���Ա��
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_08_A03_ZWHCY_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[ID]--��ԱID
      ,a.[YHID]--�û�ID
      ,a.[YHLX]--�û�����
      ,a.[CYXM]--��Ա����
      ,a.[TJSJ]--���ʱ��
      ,a.[ZWMC]--ְλ����
      ,a.[GZNR]--��������

FROM dbo.EDU_ZZFC_08_A03_ZWHCY AS a
GO

--�û�ס�޼�¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_08_A02_YHZSJL_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[ID]--ס�޼�¼ID
      ,a.[YHID]--�û�ID
      ,a.[SSLID]--����¥ID
      ,a.[SSID]--����ID
      ,a.[CWID]--��λID
      ,a.[YHXM]--�û�����
      ,a.[RZRLX]--��ס������
      ,a.[RZSJ]--��סʱ��
      ,a.[SHZT]--���״̬
      ,a.[SHSJ]--���ʱ��
      ,a.[SHR]--�����
      ,c.SCHOOLID as c_JZWJBSJ_SCHOOLID--���������������� ѧУ��
      ,c.JZWH as c_JZWJBSJ_JZWH--���������������� �������
      ,c.JZWMC as c_JZWJBSJ_JZWMC--���������������� ����������
      ,c.SYZKM as c_JZWJBSJ_SYZKM--���������������� ʹ��״����
      ,cb.MC as c_JZWJBSJ_SYZKM_MC--ʹ��״������� ����
      ,c.FWCQ as c_JZWJBSJ_FWCQ--���������������� ���ݲ�Ȩ
      ,cc.MC as c_JZWJBSJ_FWCQ_MC--��Ȩ����� ����
      ,c.XQH as c_JZWJBSJ_XQH--���������������� У����
      ,c.JZWFLM as c_JZWJBSJ_JZWFLM--���������������� �����������
      ,cd.MC as c_JZWJBSJ_JZWFLM_MC--������������� ����
      ,c.JZWJGM as c_JZWJBSJ_JZWJGM--���������������� ������ṹ��
      ,ce.MC as c_JZWJBSJ_JZWJGM_MC--������ṹ����� ����
      ,c.JZWCS as c_JZWJBSJ_JZWCS--���������������� ���������
      ,c.JCNY as c_JZWJBSJ_JCNY--���������������� ��������
      ,c.JZWTZZE as c_JZWJBSJ_JZWTZZE--���������������� ������Ͷ���ܶ�
      ,c.JFLYM as c_JZWJBSJ_JFLYM--���������������� ������Դ��
      ,cf.MC as c_JZWJBSJ_JFLYM_MC--������Դ����� ����
      ,c.ZJZMJ as c_JZWJBSJ_ZJZMJ--���������������� �ܽ������
      ,c.ZSYMJ as c_JZWJBSJ_ZSYMJ--���������������� ��ʹ�����
      ,c.KZSFLDM as c_JZWJBSJ_KZSFLDM--���������������� ��������Ҷ���
      ,cg.JC as c_JZWJBSJ_KZSFLDM_JC--��������Ҷȴ��� ���
      ,cg.MC as c_JZWJBSJ_KZSFLDM_MC--��������Ҷȴ��� ����
      ,c.KZSFBZM as c_JZWJBSJ_KZSFBZM--���������������� ���������׼��
      ,ch.JC as c_JZWJBSJ_KZSFBZM_JC--���������׼���� ���
      ,ch.MC as c_JZWJBSJ_KZSFBZM_MC--���������׼���� ����
      ,ch.SM as c_JZWJBSJ_KZSFBZM_SM--���������׼���� ˵��
      ,c.JZWDZ as c_JZWJBSJ_JZWDZ--���������������� �������ַ
      ,c.JZWZKM as c_JZWJBSJ_JZWZKM--���������������� ������״����
      ,ci.MC as c_JZWJBSJ_JZWZKM_MC--������״������� ����
      ,ci.SM as c_JZWJBSJ_JZWZKM_SM--������״������� ˵��
      ,c.JZWTP as c_JZWJBSJ_JZWTP--���������������� ������ͼƬ
      ,c.JZWPMT as c_JZWJBSJ_JZWPMT--���������������� ������ƽ��ͼ
      ,c.XXDWCCM as c_JZWJBSJ_XXDWCCM--���������������� ѧУ��λ�����
      ,cj.MC as c_JZWJBSJ_XXDWCCM_MC--ѧУ��λ��δ���� ����
      ,c.JZWWZZK as c_JZWJBSJ_JZWWZZK--���������������� ������λ��״��
      ,c.GHSPWH as c_JZWJBSJ_GHSPWH--���������������� �滮�����ĺ�
      ,c.ZHFZNL as c_JZWJBSJ_ZHFZNL--���������������� �ۺϷ�������
      ,c.GHSYNX as c_JZWJBSJ_GHSYNX--���������������� �滮ʹ������
      ,c.SFYYJBXCS as c_JZWJBSJ_SFYYJBXCS--���������������� �Ƿ���Ԥ�����մ�ʩ
      ,ck.MC as c_JZWJBSJ_SFYYJBXCS_MC--�Ƿ��־����� ����
      ,c.SFKYYYJBNCS as c_JZWJBSJ_SFKYYYJBNCS--���������������� �Ƿ������Ӧ�����ѳ���
      ,cl.MC as c_JZWJBSJ_SFKYYYJBNCS_MC--�Ƿ��־����� ����
      ,c.CQZH as c_JZWJBSJ_CQZH--���������������� ��Ȩ֤��
      ,c.JZWYTM as c_JZWJBSJ_JZWYTM--���������������� ��������;��
      ,cm.MC as c_JZWJBSJ_JZWYTM_MC--��������;����� ����
      ,c.JZWZGD as c_JZWJBSJ_JZWZGD--���������������� �������ܸ߶�
      ,c.WFJDBM as c_JZWJBSJ_WFJDBM--���������������� Σ����������
      ,c.WFJDWH as c_JZWJBSJ_WFJDWH--���������������� Σ�������ĺ�
      ,c.WFJDRQ as c_JZWJBSJ_WFJDRQ--���������������� Σ����������
      ,c.GNFSM as c_JZWJBSJ_GNFSM--���������������� ��ů��ʽ��
      ,cn.MC as c_JZWJBSJ_GNFSM_MC--��ů��ʽ����� ����
      ,c.JZWJCXSM as c_JZWJBSJ_JZWJCXSM--���������������� �����������ʽ��
      ,co.MC as c_JZWJBSJ_JZWJCXSM_MC--�����������ʽ����� ����
      ,c.JZWPMXSM as c_JZWJBSJ_JZWPMXSM--���������������� ������ƽ����ʽ��
      ,cp.MC as c_JZWJBSJ_JZWPMXSM_MC--������ƽ����ʽ����� ����
      ,c.JZWLBXSM as c_JZWJBSJ_JZWLBXSM--���������������� ������¥����ʽ��
      ,cq.MC as c_JZWJBSJ_JZWLBXSM_MC--������¥����ʽ����� ����
      ,c.SFYGZZ as c_JZWJBSJ_SFYGZZ--���������������� �Ƿ��й�����
      ,cr.MC as c_JZWJBSJ_SFYGZZ_MC--�Ƿ��־����� ����
      ,c.QL as c_JZWJBSJ_QL--���������������� Ȧ��
      ,cs.MC as c_JZWJBSJ_QL_MC--�Ƿ��־����� ����
      ,c.ZJAQGZWCRQ as c_JZWJBSJ_ZJAQGZWCRQ--���������������� �����ȫ�����������
      ,c.ZJAQGZHYJSYNX as c_JZWJBSJ_ZJAQGZHYJSYNX--���������������� �����ȫ�����Ԥ��ʹ������
      ,c.ZXLXM as c_JZWJBSJ_ZXLXM--���������������� ר������
      ,c.ZYZXTZBZMCM as c_JZWJBSJ_ZYZXTZBZMCM--���������������� ����ר��Ͷ�ʲ���������
      ,ct.MC as c_JZWJBSJ_ZYZXTZBZMCM_MC--����ר��Ͷ�ʲ������ƴ���� ����
      ,c.WWJZDJM as c_JZWJBSJ_WWJZDJM--���������������� ���ｨ���ȼ���
      ,cu.MC as c_JZWJBSJ_WWJZDJM_MC--���ｨ���ȼ������ ����
      ,c.JXJFZYF as c_JZWJBSJ_JXJFZYF--���������������� ��ѧ�������÷�
      ,c.QZJS as c_JZWJBSJ_QZJS--���������������� ���н���
      ,c.QZSYS as c_JZWJBSJ_QZSYS--���������������� ����ʵ����
      ,c.QZTSS as c_JZWJBSJ_QZTSS--���������������� ����ͼ����
      ,c.QZWJS as c_JZWJBSJ_QZWJS--���������������� ����΢����
      ,c.QZYYS as c_JZWJBSJ_QZYYS--���������������� ����������
      ,c.QZTYHDS as c_JZWJBSJ_QZTYHDS--���������������� �����������
      ,c.QZQTJFYF as c_JZWJBSJ_QZQTJFYF--���������������� ���������̸��÷�
      ,c.SHYF as c_JZWJBSJ_SHYF--���������������� �����÷�
      ,c.QZXSSS as c_JZWJBSJ_QZXSSS--���������������� ����ѧ������
      ,c.QZST as c_JZWJBSJ_QZST--���������������� ����ʳ��
      ,c.QZCS as c_JZWJBSJ_QZCS--���������������� ���в���
      ,c.QZGLF as c_JZWJBSJ_QZGLF--���������������� ���й�¯��(��ˮ��)
      ,c.QZYS as c_JZWJBSJ_QZYS--���������������� ����ԡ��
      ,c.QZJGSS as c_JZWJBSJ_QZJGSS--���������������� ���н̹�����
      ,c.QZQTSHYF as c_JZWJBSJ_QZQTSHYF--���������������� �������������÷�
      ,c.XZBGYF as c_JZWJBSJ_XZBGYF--���������������� �����칫�÷�
      ,c.QZJSBGS as c_JZWJBSJ_QZJSBGS--���������������� ���н�ְ���칫��
      ,c.QZWSBJS as c_JZWJBSJ_QZWSBJS--���������������� ��������������
      ,c.QZQTXZBGYF as c_JZWJBSJ_QZQTXZBGYF--���������������� �������������칫�÷�
      ,c.QTYF as c_JZWJBSJ_QTYF--���������������� �����÷�
      ,d.SCHOOLID as d_XSSS_SCHOOLID--ѧ������������� ѧУ��
      ,d.SSLID as d_XSSS_SSLID--ѧ������������� ����¥ID
      ,d.SSLBM as d_XSSS_SSLBM--ѧ������������� ����¥���
      ,d.FJBM as d_XSSS_FJBM--ѧ������������� ������
      ,d.RZXB as d_XSSS_RZXB--ѧ������������� ��ס�Ա�
      ,db.MC as d_XSSS_RZXB_MC--�˵��Ա���� ����
      ,d.SFKY as d_XSSS_SFKY--ѧ������������� �Ƿ����
      ,dc.MC as d_XSSS_SFKY_MC--�Ƿ��־����� ����
      ,d.KZRS as d_XSSS_KZRS--ѧ������������� ��ס����
      ,d.WLDK as d_XSSS_WLDK--ѧ������������� ����˿�
      ,d.AZDSJ as d_XSSS_AZDSJ--ѧ������������� ��װ���ӻ�
      ,dd.MC as d_XSSS_AZDSJ_MC--�Ƿ��־����� ����
      ,d.DHDK as d_XSSS_DHDK--ѧ������������� �绰�˿�
      ,d.DHHM as d_XSSS_DHHM--ѧ������������� �绰����
      ,d.SBDS as d_XSSS_SBDS--ѧ������������� ˮ�����
      ,d.DBDS as d_XSSS_DBDS--ѧ������������� ������
      ,d.SSBZ as d_XSSS_SSBZ--ѧ������������� ���ᱸע
      ,d.SZLZ as d_XSSS_SZLZ--ѧ������������� ����¥��
      ,d.SSM as d_XSSS_SSM--ѧ������������� ������
      ,e.SCHOOLID as e_SSCW_SCHOOLID--���ᴲλ�� ѧУID
      ,e.SSLID as e_SSCW_SSLID--���ᴲλ�� ����¥ID
      ,e.SSID as e_SSCW_SSID--���ᴲλ�� ����ID
      ,e.CWM as e_SSCW_CWM--���ᴲλ�� ��λ��
      ,e.BZ as e_SSCW_BZ--���ᴲλ�� ��ע
      ,e.SFRZ as e_SSCW_SFRZ--���ᴲλ�� �Ƿ���ס
      ,eb.MC as e_SSCW_SFRZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZFC_08_A02_YHZSJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZFC_02_01_JZWJBSJ AS c ON a.SSLID = c.ID /*����¥ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_08_01_XSSS AS d ON a.SSID = d.ID /*����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_08_A01_SSCW AS e ON a.CWID = e.ID /*��λID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS cb ON c.SYZKM = cb.DM /*ʹ��״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS cc ON c.FWCQ = cc.DM /*���ݲ�Ȩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS cd ON c.JZWFLM = cd.DM /*�����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS ce ON c.JZWJGM = ce.DM /*������ṹ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS cf ON c.JFLYM = cf.DM /*������Դ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS cg ON c.KZSFLDM = cg.DM /*��������Ҷ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS ch ON c.KZSFBZM = ch.DM /*���������׼��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS ci ON c.JZWZKM = ci.DM /*������״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS cj ON c.XXDWCCM = cj.DM /*ѧУ��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ck ON c.SFYYJBXCS = ck.DM /*�Ƿ���Ԥ�����մ�ʩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cl ON c.SFKYYYJBNCS = cl.DM /*�Ƿ������Ӧ�����ѳ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS cm ON c.JZWYTM = cm.DM /*��������;��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS cn ON c.GNFSM = cn.DM /*��ů��ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS co ON c.JZWJCXSM = co.DM /*�����������ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS cp ON c.JZWPMXSM = cp.DM /*������ƽ����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS cq ON c.JZWLBXSM = cq.DM /*������¥����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFYGZZ = cr.DM /*�Ƿ��й�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.QL = cs.DM /*Ȧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS ct ON c.ZYZXTZBZMCM = ct.DM /*����ר��Ͷ�ʲ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS cu ON c.WWJZDJM = cu.DM /*���ｨ���ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.RZXB = db.DM /*��ס�Ա�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dc ON d.SFKY = dc.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dd ON d.AZDSJ = dd.DM /*��װ���ӻ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS eb ON e.SFRZ = eb.DM /*�Ƿ���ס*/
GO

--��ְ���������������
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_01_01_JZGJBSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[GH]--����
      ,a.[XM]--����
      ,a.[YWXM]--Ӣ������
      ,a.[XMPY]--����ƴ��
      ,a.[CYM]--������
      ,a.[SFZJLXM]--���֤��������
      ,a.[SFZJH]--���֤����
      ,a.[CSRQ]--��������
      ,a.[XBM]--�Ա���
      ,a.[MZM]--������
      ,a.[XXM]--Ѫ����
      ,a.[JKZKM]--����״����
      ,a.[HYZTM]--����״̬��
      ,a.[ZZMMM]--������ò��
      ,a.[GATQWM]--�۰�̨������
      ,a.[JG]--����
      ,a.[GJDQM]--����/������
      ,a.[CSDXZQHM]--����������������
      ,a.[XYZJM]--�����ڽ���
      ,a.[JZGHKSZDXZQHM]--��ְ���������ڵ�����������
      ,a.[HKLBM]--���������
      ,a.[DQZZ]--��ǰסַ
      ,a.[DQZZYZBM]--��ǰסַ��������
      ,a.[CJGZNY]--�μӹ�������
      ,a.[CJNY]--�ӽ�����
      ,a.[LXNY]--��У����
      ,a.[BZLBM]--���������
      ,a.[JZGLBM]--��ְ�������
      ,a.[GWLBM]--��λ�����
      ,a.[SFJZJS]--�Ƿ��ְ��ʦ
      ,a.[SFSSXJS]--�Ƿ�˫ʦ�ͽ�
      ,a.[ZP]--��Ƭ(·��)
      ,a.[DQZTM]--��ǰ״̬��
      ,a.[YDDH]--�ƶ��绰
      ,a.[GDDH]--�̶��绰
      ,a.[TXDZYZBM]--ͨ�ŵ�ַ��������
      ,a.[TXDZ]--ͨ�ŵ�ַ
      ,a.[DZXX]--��������
      ,a.[WLDZ]--�����ַ
      ,a.[JSTXH]--��ʱͨѶ��
      ,c.MC as c_SFZJLX_MC--���֤�����ʹ���� ����
      ,d.MC as d_RDXB_MC--�˵��Ա���� ����
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.MC as f_XX_MC--Ѫ�ʹ���� ����
      ,f.JC as f_XX_JC--Ѫ�ʹ���� ���
      ,g.MC as g_JKZKYWSZ_MC--����״��1λ���ִ��� ����
      ,g.SM as g_JKZKYWSZ_SM--����״��1λ���ִ��� ˵��
      ,h.MC as h_HYZZ_MC--����״������ ����
      ,i.MC as i_ZZMM_MC--������ò���� ����
      ,i.JC as i_ZZMM_JC--������ò���� ���
      ,j.MC as j_GATQW_MC--�۰�̨�������� ����
      ,j.SM as j_GATQW_SM--�۰�̨�������� ˵��
      ,k.GJDQMCJC as k_SJGGHDQMC_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,k.EZMDM as k_SJGGHDQMC_EZMDM--��������͵������ƴ��� ����ĸ����
      ,k.SZMDM as k_SJGGHDQMC_SZMDM--��������͵������ƴ��� ����ĸ����
      ,l.MC as l_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,m.MC as m_ZJXY_MC--�ڽ��������� ����
      ,n.MC as n_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,o.MC as o_HKLB_MC--���������� ����
      ,p.MC as p_BZLB_MC--����������� ����
      ,q.MC as q_JZGLB_MC--��ְ��������� ����
      ,q.SM as q_JZGLB_SM--��ְ��������� ˵��
      ,r.MC as r_GWLB_MC--��λ������� ����
      ,s.MC as s_SFBZ_MC--�Ƿ��־����� ����
      ,t.MC as t_SFBZ_MC--�Ƿ��־����� ����
      ,u.MC as u_JZGDQZT_MC--��ְ����ǰ״̬����� ����

FROM dbo.EDU_ZZJG_01_01_JZGJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS c ON a.SFZJLXM = c.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS d ON a.XBM = d.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS f ON a.XXM = f.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS g ON a.JKZKM = g.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS h ON a.HYZTM = h.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS i ON a.ZZMMM = i.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS j ON a.GATQWM = j.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS k ON a.GJDQM = k.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS l ON a.CSDXZQHM = l.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS m ON a.XYZJM = m.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS n ON a.JZGHKSZDXZQHM = n.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS o ON a.HKLBM = o.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS p ON a.BZLBM = p.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS q ON a.JZGLBM = q.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS r ON a.GWLBM = r.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS s ON a.SFJZJS = s.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS t ON a.SFSSXJS = t.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS u ON a.DQZTM = u.DM /*��ǰ״̬��*/
GO

--У�ڸ�λ���������
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_02_02_XNGWSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[GWID]--��λ��ID
      ,a.[JZGJBSJID]--��ְ���������������
      ,a.[GWQSNY]--��λ��ʼ����
      ,a.[GWJSNY]--��λ��������
      ,a.[SFZG]--�Ƿ��ڸ�
      ,a.[ZWMC]--ְ������
      ,a.[JGH]--������
      ,c.SCHOOLID as c_JGGW_SCHOOLID--������λ�� ѧУID
      ,c.JGH as c_JGGW_JGH--������λ�� ������
      ,c.GWBH as c_JGGW_GWBH--������λ�� ��λ���
      ,c.GWMC as c_JGGW_GWMC--������λ�� ��λ����
      ,c.GWSM as c_JGGW_GWSM--������λ�� ��λ˵��
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,d.GH as d_JZGJBSJ_GH--��ְ��������������� ����
      ,d.XM as d_JZGJBSJ_XM--��ְ��������������� ����
      ,d.YWXM as d_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,d.XMPY as d_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,d.CYM as d_JZGJBSJ_CYM--��ְ��������������� ������
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,db.MC as d_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,d.SFZJH as d_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,d.CSRQ as d_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,d.XBM as d_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,dc.MC as d_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,d.MZM as d_JZGJBSJ_MZM--��ְ��������������� ������
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,d.XXM as d_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,de.MC as d_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,de.JC as d_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,d.JKZKM as d_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,df.MC as d_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,df.SM as d_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,d.HYZTM as d_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,dg.MC as d_JZGJBSJ_HYZTM_MC--����״������ ����
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,d.GATQWM as d_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,di.MC as d_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,di.SM as d_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,d.JG as d_JZGJBSJ_JG--��ְ��������������� ����
      ,d.GJDQM as d_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,dj.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,dj.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,dj.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,d.CSDXZQHM as d_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,dk.MC as d_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,d.XYZJM as d_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,dl.MC as d_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,d.JZGHKSZDXZQHM as d_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,dm.MC as d_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,d.HKLBM as d_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,dn.MC as d_JZGJBSJ_HKLBM_MC--���������� ����
      ,d.DQZZ as d_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,d.DQZZYZBM as d_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,d.CJGZNY as d_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,d.CJNY as d_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,d.LXNY as d_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,d.BZLBM as d_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,do.MC as d_JZGJBSJ_BZLBM_MC--����������� ����
      ,d.JZGLBM as d_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,dp.MC as d_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,dp.SM as d_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,d.GWLBM as d_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,dq.MC as d_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,d.SFJZJS as d_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,dr.MC as d_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,d.SFSSXJS as d_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�
      ,ds.MC as d_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,d.ZP as d_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,d.DQZTM as d_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,dt.MC as d_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,d.YDDH as d_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,d.GDDH as d_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,d.TXDZYZBM as d_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,d.TXDZ as d_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,d.DZXX as d_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,d.WLDZ as d_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,d.JSTXH as d_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,e.MC as e_SFBZ_MC--�Ƿ��־����� ����
      ,f.SCHOOLID as f_XNJG_SCHOOLID--У�ڻ���������� ѧУ��
      ,f.JGMC as f_XNJG_JGMC--У�ڻ���������� ��������
      ,f.JGYWMC as f_XNJG_JGYWMC--У�ڻ���������� ����Ӣ������
      ,f.JGJC as f_XNJG_JGJC--У�ڻ���������� �������
      ,f.JGJP as f_XNJG_JGJP--У�ڻ���������� ������ƴ
      ,f.JGDZ as f_XNJG_JGDZ--У�ڻ���������� ������ַ
      ,f.LSSJJGH as f_XNJG_LSSJJGH--У�ڻ���������� �����ϼ�������
      ,f.LSXQH as f_XNJG_LSXQH--У�ڻ���������� ����У����
      ,f.JGYXBS as f_XNJG_JGYXBS--У�ڻ���������� ������Ч��ʶ
      ,fb.MC as f_XNJG_JGYXBS_MC--�Ƿ��־����� ����
      ,f.SFST as f_XNJG_SFST--У�ڻ���������� �Ƿ�ʵ��
      ,fc.MC as f_XNJG_SFST_MC--�Ƿ��־����� ����
      ,f.JLNY as f_XNJG_JLNY--У�ڻ���������� ��������
      ,f.JGYZBM as f_XNJG_JGYZBM--У�ڻ���������� ������������
      ,f.FZRH as f_XNJG_FZRH--У�ڻ���������� �����˺�

FROM dbo.EDU_ZZJG_02_02_XNGWSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_A01_JGGW AS c ON a.GWID = c.ID /*��λ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS d ON a.JZGJBSJID = d.ID /*��ְ���������������*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFZG = e.DM /*�Ƿ��ڸ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS f ON a.JGH = f.JGH /*������*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS db ON d.SFZJLXM = db.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS dc ON d.XBM = dc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS de ON d.XXM = de.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS df ON d.JKZKM = df.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZTM = dg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS di ON d.GATQWM = di.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS dj ON d.GJDQM = dj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dk ON d.CSDXZQHM = dk.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dl ON d.XYZJM = dl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dm ON d.JZGHKSZDXZQHM = dm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dn ON d.HKLBM = dn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS do ON d.BZLBM = do.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS dp ON d.JZGLBM = dp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS dq ON d.GWLBM = dq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dr ON d.SFJZJS = dr.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ds ON d.SFSSXJS = ds.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS dt ON d.DQZTM = dt.DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fb ON f.JGYXBS = fb.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fc ON f.SFST = fc.DM /*�Ƿ�ʵ��*/
GO

--��ְ��רҵ�������ʸ�֤���������
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_07_01_JZGZYNL_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[JZGJBSJID]--��ְ��ID
      ,a.[ZSMC]--֤������
      ,a.[ZSBH]--֤����
      ,a.[ZSBFDW]--֤��䷢��λ
      ,a.[ZSBFRQ]--֤��䷢����
      ,a.[ZSBZ]--֤�鱸ע
      ,a.[SFSZYZGZS]--�Ƿ���ְҵ�ʸ�֤��
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,c.GH as c_JZGJBSJ_GH--��ְ��������������� ����
      ,c.XM as c_JZGJBSJ_XM--��ְ��������������� ����
      ,c.YWXM as c_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--��ְ��������������� ������
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,c.XBM as c_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,cc.MC as c_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,c.MZM as c_JZGJBSJ_MZM--��ְ��������������� ������
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.XXM as c_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,ce.MC as c_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,ce.JC as c_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.HYZTM as c_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--����״������ ����
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,c.GATQWM as c_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JG as c_JZGJBSJ_JG--��ְ��������������� ����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.XYZJM as c_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--���������� ����
      ,c.DQZZ as c_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,c.CJNY as c_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,c.LXNY as c_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,co.MC as c_JZGJBSJ_BZLBM_MC--����������� ����
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,c.GWLBM as c_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,c.ZP as c_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,c.YDDH as c_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,c.GDDH as c_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,c.TXDZYZBM as c_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,c.TXDZ as c_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,c.DZXX as c_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,c.WLDZ as c_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,c.JSTXH as c_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,d.MC as d_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZJG_07_01_JZGZYNL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*��ְ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.SFSZYZGZS = d.DM /*�Ƿ���ְҵ�ʸ�֤��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ce ON c.XXM = ce.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cf ON c.JKZKM = cf.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZTM = cg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ch ON c.ZZMMM = ch.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS cj ON c.GJDQM = cj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ck ON c.CSDXZQHM = ck.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS cl ON c.XYZJM = cl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cm ON c.JZGHKSZDXZQHM = cm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cn ON c.HKLBM = cn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS co ON c.BZLBM = co.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS cp ON c.JZGLBM = cp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS cq ON c.GWLBM = cq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFJZJS = cr.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.SFSSXJS = cs.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ct ON c.DQZTM = ct.DM /*��ǰ״̬��*/
GO

--�Ӱ�ǼǱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_04_A01_JBDJ_DISP]
AS
SELECT a.[ID]--�Ӱ�ǼǱ�ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[JZGJBSJID]--��ְ��ID
      ,a.[KSSJ]--��ʼʱ��
      ,a.[JSSJ]--����ʱ��
      ,a.[JBLX]--�Ӱ�����
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,c.GH as c_JZGJBSJ_GH--��ְ��������������� ����
      ,c.XM as c_JZGJBSJ_XM--��ְ��������������� ����
      ,c.YWXM as c_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--��ְ��������������� ������
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,c.XBM as c_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,cc.MC as c_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,c.MZM as c_JZGJBSJ_MZM--��ְ��������������� ������
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.XXM as c_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,ce.MC as c_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,ce.JC as c_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.HYZTM as c_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--����״������ ����
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,c.GATQWM as c_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JG as c_JZGJBSJ_JG--��ְ��������������� ����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.XYZJM as c_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--���������� ����
      ,c.DQZZ as c_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,c.CJNY as c_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,c.LXNY as c_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,co.MC as c_JZGJBSJ_BZLBM_MC--����������� ����
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,c.GWLBM as c_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,c.ZP as c_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,c.YDDH as c_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,c.GDDH as c_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,c.TXDZYZBM as c_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,c.TXDZ as c_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,c.DZXX as c_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,c.WLDZ as c_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,c.JSTXH as c_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,d.MC as d_JBLX_MC--�Ӱ����ʹ��� ����

FROM dbo.EDU_ZZJG_04_A01_JBDJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*��ְ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_JBLX AS d ON a.JBLX = d.DM /*�Ӱ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ce ON c.XXM = ce.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cf ON c.JKZKM = cf.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZTM = cg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ch ON c.ZZMMM = ch.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS cj ON c.GJDQM = cj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ck ON c.CSDXZQHM = ck.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS cl ON c.XYZJM = cl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cm ON c.JZGHKSZDXZQHM = cm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cn ON c.HKLBM = cn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS co ON c.BZLBM = co.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS cp ON c.JZGLBM = cp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS cq ON c.GWLBM = cq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFJZJS = cr.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.SFSSXJS = cs.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ct ON c.DQZTM = ct.DM /*��ǰ״̬��*/
GO

--��ְ����չ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_01_A01_JZGKZ_DISP]
AS
SELECT a.[JZGJBSJID]--�̹�������ϢID
      ,a.[SCHOOLID]--ѧУID
      ,a.[JL]--����
      ,a.[GL]--����
      ,a.[GZJY]--��������
      ,a.[LDJN]--�Ͷ�����
      ,a.[XXJL]--ѧϰ����
      ,b.SCHOOLID as b_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,b.GH as b_JZGJBSJ_GH--��ְ��������������� ����
      ,b.XM as b_JZGJBSJ_XM--��ְ��������������� ����
      ,b.YWXM as b_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,b.XMPY as b_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,b.CYM as b_JZGJBSJ_CYM--��ְ��������������� ������
      ,b.SFZJLXM as b_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,bb.MC as b_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,b.CSRQ as b_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,b.XBM as b_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,bc.MC as b_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,b.MZM as b_JZGJBSJ_MZM--��ְ��������������� ������
      ,bd.MZMC as b_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,bd.ZMDM as b_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.XXM as b_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,be.MC as b_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,be.JC as b_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,b.JKZKM as b_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,bf.MC as b_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,bf.SM as b_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.HYZTM as b_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,bg.MC as b_JZGJBSJ_HYZTM_MC--����״������ ����
      ,b.ZZMMM as b_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,bh.MC as b_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,bh.JC as b_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,b.GATQWM as b_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,bi.MC as b_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,bi.SM as b_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,b.JG as b_JZGJBSJ_JG--��ְ��������������� ����
      ,b.GJDQM as b_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,bj.GJDQMCJC as b_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,bj.EZMDM as b_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,bj.SZMDM as b_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.CSDXZQHM as b_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,bk.MC as b_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.XYZJM as b_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,bl.MC as b_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,b.JZGHKSZDXZQHM as b_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,bm.MC as b_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.HKLBM as b_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,bn.MC as b_JZGJBSJ_HKLBM_MC--���������� ����
      ,b.DQZZ as b_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,b.DQZZYZBM as b_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,b.CJGZNY as b_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,b.CJNY as b_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,b.LXNY as b_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,b.BZLBM as b_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,bo.MC as b_JZGJBSJ_BZLBM_MC--����������� ����
      ,b.JZGLBM as b_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,bp.MC as b_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,bp.SM as b_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,b.GWLBM as b_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,bq.MC as b_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,b.SFJZJS as b_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,br.MC as b_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,b.SFSSXJS as b_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�
      ,bs.MC as b_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,b.ZP as b_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,b.DQZTM as b_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,bt.MC as b_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,b.YDDH as b_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,b.GDDH as b_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,b.TXDZYZBM as b_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,b.TXDZ as b_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,b.DZXX as b_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,b.WLDZ as b_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,b.JSTXH as b_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��

FROM dbo.EDU_ZZJG_01_A01_JZGKZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS b ON a.JZGJBSJID = b.ID /*�̹�������ϢID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bd ON b.MZM = bd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS be ON b.XXM = be.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bf ON b.JKZKM = bf.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZTM = bg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bh ON b.ZZMMM = bh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bj ON b.GJDQM = bj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bk ON b.CSDXZQHM = bk.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bl ON b.XYZJM = bl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bm ON b.JZGHKSZDXZQHM = bm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bn ON b.HKLBM = bn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS bo ON b.BZLBM = bo.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS bp ON b.JZGLBM = bp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS bq ON b.GWLBM = bq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS br ON b.SFJZJS = br.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bs ON b.SFSSXJS = bs.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS bt ON b.DQZTM = bt.DM /*��ǰ״̬��*/
GO

--ѧУ�༶���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_02_02_ZZBJ_DISP]
AS
SELECT a.[XZBDM]--���������
      ,a.[SCHOOLID]--ѧУ��
      ,a.[ZYXXID]--רҵ������Ϣ
      ,a.[ZZNJID]--ѧУ�꼶���ݱ�
      ,a.[XZBMC]--����������
      ,a.[JBNY]--��������
      ,a.[BZRGH]--�����ι���
      ,a.[JSBH]--���ұ��
      ,a.[NANSRS]--��������
      ,a.[NVSRS]--Ů������
      ,a.[ZRS]--������
      ,a.[BZXH]--�೤ѧ��
      ,a.[JXJH]--��ѧ�ƻ�
      ,a.[JGH]--������
      ,a.[XQDM]--У������
      ,c.SCHOOLID as c_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,c.ZYDM as c_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,cb.ZYMLLB as c_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,cb.MC as c_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,c.ZYMC as c_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,c.ZYYWMC as c_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,c.XZ as c_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,c.ZYFXMC as c_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,c.ZYJC as c_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,c.JLNY as c_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,c.ZYJSS as c_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,c.KSJGH as c_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,c.ZXF as c_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,c.SSZYML as c_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,cc.MC as c_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,c.ZYLB as c_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,d.SCHOOLID as d_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,d.NJMC as d_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,d.SSNF as d_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,d.NJZT as d_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,db.MC as d_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,e.SCHOOLID as e_XNJG_SCHOOLID--У�ڻ���������� ѧУ��
      ,e.JGMC as e_XNJG_JGMC--У�ڻ���������� ��������
      ,e.JGYWMC as e_XNJG_JGYWMC--У�ڻ���������� ����Ӣ������
      ,e.JGJC as e_XNJG_JGJC--У�ڻ���������� �������
      ,e.JGJP as e_XNJG_JGJP--У�ڻ���������� ������ƴ
      ,e.JGDZ as e_XNJG_JGDZ--У�ڻ���������� ������ַ
      ,e.LSSJJGH as e_XNJG_LSSJJGH--У�ڻ���������� �����ϼ�������
      ,e.LSXQH as e_XNJG_LSXQH--У�ڻ���������� ����У����
      ,e.JGYXBS as e_XNJG_JGYXBS--У�ڻ���������� ������Ч��ʶ
      ,eb.MC as e_XNJG_JGYXBS_MC--�Ƿ��־����� ����
      ,e.SFST as e_XNJG_SFST--У�ڻ���������� �Ƿ�ʵ��
      ,ec.MC as e_XNJG_SFST_MC--�Ƿ��־����� ����
      ,e.JLNY as e_XNJG_JLNY--У�ڻ���������� ��������
      ,e.JGYZBM as e_XNJG_JGYZBM--У�ڻ���������� ������������
      ,e.FZRH as e_XNJG_FZRH--У�ڻ���������� �����˺�

FROM dbo.EDU_ZZJX_02_02_ZZBJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS c ON a.ZYXXID = c.ZYBH /*רҵ������Ϣ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS d ON a.ZZNJID = d.NJDM /*ѧУ�꼶���ݱ�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS e ON a.JGH = e.JGH /*������*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS cb ON c.ZYDM = cb.DM /*רҵ����*/ AND c.SSZYML = cb.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS cc ON c.SSZYML = cc.DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS db ON d.NJZT = db.DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS eb ON e.JGYXBS = eb.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ec ON e.SFST = ec.DM /*�Ƿ�ʵ��*/
GO

--ѧУ�꼶���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_02_01_ZZNJ_DISP]
AS
SELECT a.[NJDM]--�꼶����
      ,a.[SCHOOLID]--ѧУ��
      ,a.[NJMC]--�꼶����
      ,a.[SSNF]--�������
      ,a.[NJZT]--�꼶״̬
      ,c.MC as c_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZJX_02_01_ZZNJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.NJZT = c.DM /*�꼶״̬*/
GO

--רҵ������Ϣ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_01_ZYXX_DISP]
AS
SELECT a.[ZYBH]--רҵ���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[ZYDM]--רҵ����
      ,a.[ZYMC]--רҵ����
      ,a.[ZYYWMC]--רҵӢ������
      ,a.[XZ]--ѧ��
      ,a.[ZYFXMC]--רҵ��������
      ,a.[ZYJC]--רҵ���
      ,a.[JLNY]--��������
      ,a.[ZYJSS]--רҵ��ʦ��
      ,a.[KSJGH]--���������
      ,a.[ZXF]--��ѧ��
      ,a.[SSZYML]--����רҵĿ¼
      ,a.[ZYLB]--רҵ�������
      ,c.ZYMLLB as c_ZJZY_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,cb.MC as c_ZJZY_ZYMLLB_MC--רҵĿ¼���� ����
      ,c.MC as c_ZJZY_MC--�Խ�רҵ���� ����
      ,d.SCHOOLID as d_XNJG_SCHOOLID--У�ڻ���������� ѧУ��
      ,d.JGMC as d_XNJG_JGMC--У�ڻ���������� ��������
      ,d.JGYWMC as d_XNJG_JGYWMC--У�ڻ���������� ����Ӣ������
      ,d.JGJC as d_XNJG_JGJC--У�ڻ���������� �������
      ,d.JGJP as d_XNJG_JGJP--У�ڻ���������� ������ƴ
      ,d.JGDZ as d_XNJG_JGDZ--У�ڻ���������� ������ַ
      ,d.LSSJJGH as d_XNJG_LSSJJGH--У�ڻ���������� �����ϼ�������
      ,d.LSXQH as d_XNJG_LSXQH--У�ڻ���������� ����У����
      ,d.JGYXBS as d_XNJG_JGYXBS--У�ڻ���������� ������Ч��ʶ
      ,db.MC as d_XNJG_JGYXBS_MC--�Ƿ��־����� ����
      ,d.SFST as d_XNJG_SFST--У�ڻ���������� �Ƿ�ʵ��
      ,dc.MC as d_XNJG_SFST_MC--�Ƿ��־����� ����
      ,d.JLNY as d_XNJG_JLNY--У�ڻ���������� ��������
      ,d.JGYZBM as d_XNJG_JGYZBM--У�ڻ���������� ������������
      ,d.FZRH as d_XNJG_FZRH--У�ڻ���������� �����˺�
      ,e.MC as e_ZYML_MC--רҵĿ¼���� ����

FROM dbo.EDU_ZZJX_01_01_ZYXX AS a LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS c ON a.ZYDM = c.DM /*רҵ����*/ AND a.SSZYML = c.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS d ON a.KSJGH = d.JGH /*���������*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS e ON a.SSZYML = e.DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS cb ON c.ZYMLLB = cb.DM /*רҵĿ¼���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS db ON d.JGYXBS = db.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dc ON d.SFST = dc.DM /*�Ƿ�ʵ��*/
GO

--���ܷ���ȡ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_08_A01_DGFSQ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[XSXXID]--ѧ��ID
      ,a.[XNID]--ѧ��ID
      ,a.[YJJE]--�ѽɽ��
      ,a.[JFRQ]--�ɷ�����
      ,a.[SFYSH]--�Ƿ������
      ,a.[SHRID]--�����ԱID
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,c.XM as c_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,c.XBM as c_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,cc.MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.XXM as c_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,cd.JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.CSRQ as c_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,ce.MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,c.MZM as c_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,cf.MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.XYZJM as c_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,ci.SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JKZKM as c_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,cj.SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,ck.JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,cm.MC as c_XSXX_HKLBM_MC--���������� ����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.TC as c_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,c.JSTXH as c_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,c.ZP as c_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.SCHOOLID as d_XN_SCHOOLID--ѧ��� ѧУ��
      ,d.XN as d_XN_XN--ѧ��� ѧ��
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,e.GH as e_JZGJBSJ_GH--��ְ��������������� ����
      ,e.XM as e_JZGJBSJ_XM--��ְ��������������� ����
      ,e.YWXM as e_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,e.XMPY as e_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,e.CYM as e_JZGJBSJ_CYM--��ְ��������������� ������
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,eb.MC as e_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,e.SFZJH as e_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,e.CSRQ as e_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,e.XBM as e_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,ec.MC as e_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,e.MZM as e_JZGJBSJ_MZM--��ְ��������������� ������
      ,ed.MZMC as e_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,ed.ZMDM as e_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,e.XXM as e_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,ee.MC as e_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,ee.JC as e_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,e.JKZKM as e_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,ef.MC as e_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,ef.SM as e_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,e.HYZTM as e_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,eg.MC as e_JZGJBSJ_HYZTM_MC--����״������ ����
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,eh.MC as e_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,eh.JC as e_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,e.GATQWM as e_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,ei.MC as e_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,ei.SM as e_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,e.JG as e_JZGJBSJ_JG--��ְ��������������� ����
      ,e.GJDQM as e_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,ej.GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,ej.EZMDM as e_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,ej.SZMDM as e_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,e.CSDXZQHM as e_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,ek.MC as e_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,e.XYZJM as e_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,el.MC as e_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,e.JZGHKSZDXZQHM as e_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,em.MC as e_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,e.HKLBM as e_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,en.MC as e_JZGJBSJ_HKLBM_MC--���������� ����
      ,e.DQZZ as e_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,e.DQZZYZBM as e_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,e.CJGZNY as e_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,e.CJNY as e_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,e.LXNY as e_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,e.BZLBM as e_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,eo.MC as e_JZGJBSJ_BZLBM_MC--����������� ����
      ,e.JZGLBM as e_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,ep.MC as e_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,ep.SM as e_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,e.GWLBM as e_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,eq.MC as e_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,e.SFJZJS as e_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,er.MC as e_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,e.SFSSXJS as e_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�
      ,es.MC as e_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,e.ZP as e_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,e.DQZTM as e_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,et.MC as e_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,e.YDDH as e_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,e.GDDH as e_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,e.TXDZYZBM as e_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,e.TXDZ as e_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,e.DZXX as e_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,e.WLDZ as e_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,e.JSTXH as e_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��

FROM dbo.EDU_ZZJX_08_A01_DGFSQ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS d ON a.XNID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.SHRID = e.ID /*�����ԱID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS eb ON e.SFZJLXM = eb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS ec ON e.XBM = ec.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ed ON e.MZM = ed.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ee ON e.XXM = ee.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ef ON e.JKZKM = ef.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS eg ON e.HYZTM = eg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS eh ON e.ZZMMM = eh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ei ON e.GATQWM = ei.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ej ON e.GJDQM = ej.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ek ON e.CSDXZQHM = ek.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS el ON e.XYZJM = el.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS em ON e.JZGHKSZDXZQHM = em.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS en ON e.HKLBM = en.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS eo ON e.BZLBM = eo.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS ep ON e.JZGLBM = ep.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS eq ON e.GWLBM = eq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS er ON e.SFJZJS = er.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS es ON e.SFSSXJS = es.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS et ON e.DQZTM = et.DM /*��ǰ״̬��*/
GO

--��ʦ��ѧ������ͳ�����������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_05_02_JSJXGZLTJ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[JSID]--��ʦID
      ,a.[XQID]--ѧ��ID
      ,a.[XQMC]--ѧ������
      ,a.[JSXM]--��ʦ����
      ,a.[RJKCMS]--�ν̿γ�����
      ,a.[LLZXS]--������ѧʱ
      ,a.[SJZXS]--ʵ����ѧʱ
      ,a.[QTZXS]--������ѧʱ
      ,a.[XSZS]--ѧ������
      ,a.[ZXFS]--��ѧ����
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,c.GH as c_JZGJBSJ_GH--��ְ��������������� ����
      ,c.XM as c_JZGJBSJ_XM--��ְ��������������� ����
      ,c.YWXM as c_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--��ְ��������������� ������
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,c.XBM as c_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,cc.MC as c_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,c.MZM as c_JZGJBSJ_MZM--��ְ��������������� ������
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.XXM as c_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,ce.MC as c_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,ce.JC as c_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.HYZTM as c_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--����״������ ����
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,c.GATQWM as c_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JG as c_JZGJBSJ_JG--��ְ��������������� ����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.XYZJM as c_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--���������� ����
      ,c.DQZZ as c_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,c.CJNY as c_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,c.LXNY as c_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,co.MC as c_JZGJBSJ_BZLBM_MC--����������� ����
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,c.GWLBM as c_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,c.ZP as c_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,c.YDDH as c_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,c.GDDH as c_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,c.TXDZYZBM as c_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,c.TXDZ as c_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,c.DZXX as c_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,c.WLDZ as c_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,c.JSTXH as c_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,d.SCHOOLID as d_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,d.XNID as d_XQ_XNID--ѧ�����ݱ� ѧ��
      ,d.XQM as d_XQ_XQM--ѧ�����ݱ� ѧ����
      ,db.MC as d_XQ_XQM_MC--ѧ�ڴ���� ����
      ,d.XQMC as d_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,d.XQKSRQ as d_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,d.XQJSRQ as d_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������

FROM dbo.EDU_ZZJX_05_02_JSJXGZLTJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*��ʦID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ce ON c.XXM = ce.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cf ON c.JKZKM = cf.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZTM = cg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ch ON c.ZZMMM = ch.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS cj ON c.GJDQM = cj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ck ON c.CSDXZQHM = ck.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS cl ON c.XYZJM = cl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cm ON c.JZGHKSZDXZQHM = cm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cn ON c.HKLBM = cn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS co ON c.BZLBM = co.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS cp ON c.JZGLBM = cp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS cq ON c.GWLBM = cq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFJZJS = cr.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.SFSSXJS = cs.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ct ON c.DQZTM = ct.DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS db ON d.XQM = db.DM /*ѧ����*/
GO

--ѧ��ѧ�ֹ����
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_A01_XQXFGL_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[JHBH]--�ƻ����
      ,a.[ZDXF]--���ѧ��
      ,a.[ZGXF]--���ѧ��
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,cb.MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--�����ѧ�ƻ���������� ѧУID
      ,d.JHNJ as d_ZTJXJH_JHNJ--�����ѧ�ƻ���������� �ƻ��꼶
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--�����ѧ�ƻ���������� רҵ���
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--�����ѧ�ƻ���������� �ƻ�רҵ����
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--�����ѧ�ƻ���������� ��ѧ��Ҫ��
      ,d.JLNY as d_ZTJXJH_JLNY--�����ѧ�ƻ���������� ��������
      ,d.SYXZ as d_ZTJXJH_SYXZ--�����ѧ�ƻ���������� ����ѧ��
      ,d.PYMB as d_ZTJXJH_PYMB--�����ѧ�ƻ���������� ����Ŀ��
      ,d.SFKY as d_ZTJXJH_SFKY--�����ѧ�ƻ���������� �Ƿ����
      ,db.MC as d_ZTJXJH_SFKY_MC--�ڿη�ʽ����� ����
      ,d.FJ as d_ZTJXJH_FJ--�����ѧ�ƻ���������� ����

FROM dbo.EDU_ZZJX_03_A01_XQXFGL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JHBH = d.JHBH /*�ƻ����*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFKY = db.DM /*�Ƿ����*/
GO

--��ѧ�ƻ��γ��嵥���������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_03_JXJHKCQD_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[KCH]--�γ̺�
      ,a.[JHBH]--�ƻ����
      ,a.[XQID]--ѧ��ID
      ,a.[KCMC]--�γ�����
      ,a.[YXKC]--Ԥ�޿γ�
      ,a.[SFHXKC]--�Ƿ���ģ��Ǹɣ�
      ,a.[KCFLM]--�γ̷�����
      ,a.[KCSXM]--�γ�������
      ,a.[ZXXQ]--ִ��ѧ��
      ,c.SCHOOLID as c_KC_SCHOOLID--�γ���������� ѧУID
      ,c.KCMC as c_KC_KCMC--�γ���������� �γ�����
      ,c.KCYWM as c_KC_KCYWM--�γ���������� �γ�Ӣ����
      ,c.KCBM as c_KC_KCBM--�γ���������� �γ̱���
      ,c.KCJS as c_KC_KCJS--�γ���������� �γ̽���
      ,c.XF as c_KC_XF--�γ���������� ѧ��
      ,c.ZXS as c_KC_ZXS--�γ���������� ��ѧʱ
      ,c.LLXS as c_KC_LLXS--�γ���������� ����ѧʱ
      ,c.SJXS as c_KC_SJXS--�γ���������� ʵ��ѧʱ
      ,c.QTXS as c_KC_QTXS--�γ���������� ����ѧʱ
      ,c.CKSM as c_KC_CKSM--�γ���������� �ο���Ŀ
      ,c.KKDW as c_KC_KKDW--�γ���������� ���ε�λ
      ,c.KSXS as c_KC_KSXS--�γ���������� ������ʽ
      ,cb.MC as c_KC_KSXS_MC--������ʽ����� ����
      ,c.SKFSM as c_KC_SKFSM--�γ���������� �ڿη�ʽ��
      ,cc.MC as c_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,c.KCFY as c_KC_KCFY--�γ���������� �γ̷���
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--�����ѧ�ƻ���������� ѧУID
      ,d.JHNJ as d_ZTJXJH_JHNJ--�����ѧ�ƻ���������� �ƻ��꼶
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--�����ѧ�ƻ���������� רҵ���
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--�����ѧ�ƻ���������� �ƻ�רҵ����
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--�����ѧ�ƻ���������� ��ѧ��Ҫ��
      ,d.JLNY as d_ZTJXJH_JLNY--�����ѧ�ƻ���������� ��������
      ,d.SYXZ as d_ZTJXJH_SYXZ--�����ѧ�ƻ���������� ����ѧ��
      ,d.PYMB as d_ZTJXJH_PYMB--�����ѧ�ƻ���������� ����Ŀ��
      ,d.SFKY as d_ZTJXJH_SFKY--�����ѧ�ƻ���������� �Ƿ����
      ,db.MC as d_ZTJXJH_SFKY_MC--�ڿη�ʽ����� ����
      ,d.FJ as d_ZTJXJH_FJ--�����ѧ�ƻ���������� ����
      ,e.SCHOOLID as e_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,e.XNID as e_XQ_XNID--ѧ�����ݱ� ѧ��
      ,e.XQM as e_XQ_XQM--ѧ�����ݱ� ѧ����
      ,eb.MC as e_XQ_XQM_MC--ѧ�ڴ���� ����
      ,e.XQMC as e_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,e.XQKSRQ as e_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,e.XQJSRQ as e_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,f.MC as f_SKFS_MC--�ڿη�ʽ����� ����
      ,g.MC as g_KCFL_MC--�γ̷������ ����
      ,h.MC as h_KCSX_MC--�γ����Դ���� ����
      ,h.SM as h_KCSX_SM--�γ����Դ���� ˵��

FROM dbo.EDU_ZZJX_03_03_JXJHKCQD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS c ON a.KCH = c.KCH /*�γ̺�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JHBH = d.JHBH /*�ƻ����*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS f ON a.SFHXKC = f.DM /*�Ƿ���ģ��Ǹɣ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS g ON a.KCFLM = g.DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS h ON a.KCSXM = h.DM /*�γ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS cb ON c.KSXS = cb.DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cc ON c.SKFSM = cc.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFKY = db.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS eb ON e.XQM = eb.DM /*ѧ����*/
GO

--��ѧ�ƻ�����ѧ��Ҫ����������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_02_JXJHFLXFYQ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[KCFLM]--�γ̷�����
      ,a.[XFYQ]--ѧ��Ҫ��
      ,a.[JHBH]--�ƻ����
      ,c.MC as c_KCFL_MC--�γ̷������ ����
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--�����ѧ�ƻ���������� ѧУID
      ,d.JHNJ as d_ZTJXJH_JHNJ--�����ѧ�ƻ���������� �ƻ��꼶
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--�����ѧ�ƻ���������� רҵ���
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--�����ѧ�ƻ���������� �ƻ�רҵ����
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--�����ѧ�ƻ���������� ��ѧ��Ҫ��
      ,d.JLNY as d_ZTJXJH_JLNY--�����ѧ�ƻ���������� ��������
      ,d.SYXZ as d_ZTJXJH_SYXZ--�����ѧ�ƻ���������� ����ѧ��
      ,d.PYMB as d_ZTJXJH_PYMB--�����ѧ�ƻ���������� ����Ŀ��
      ,d.SFKY as d_ZTJXJH_SFKY--�����ѧ�ƻ���������� �Ƿ����
      ,db.MC as d_ZTJXJH_SFKY_MC--�ڿη�ʽ����� ����
      ,d.FJ as d_ZTJXJH_FJ--�����ѧ�ƻ���������� ����

FROM dbo.EDU_ZZJX_03_02_JXJHFLXFYQ AS a LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS c ON a.KCFLM = c.DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JHBH = d.JHBH /*�ƻ����*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFKY = db.DM /*�Ƿ����*/
GO

--�����ѧ�ƻ����������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_01_ZTJXJH_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[JHBH]--�ƻ����
      ,a.[JHNJ]--�ƻ��꼶
      ,a.[ZYXXID]--רҵ���
      ,a.[JHZYMC]--�ƻ�רҵ����
      ,a.[ZXFYQ]--��ѧ��Ҫ��
      ,a.[JLNY]--��������
      ,a.[SYXZ]--����ѧ��
      ,a.[PYMB]--����Ŀ��
      ,a.[SFKY]--�Ƿ����
      ,a.[FJ]--����
      ,c.SCHOOLID as c_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,c.NJMC as c_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,c.SSNF as c_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,c.NJZT as c_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,cb.MC as c_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,d.ZYDM as d_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,db.ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,db.MC as d_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
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
      ,dc.MC as d_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,d.ZYLB as d_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,e.MC as e_SKFS_MC--�ڿη�ʽ����� ����

FROM dbo.EDU_ZZJX_03_01_ZTJXJH AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS c ON a.JHNJ = c.NJDM /*�ƻ��꼶*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*רҵ���*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS e ON a.SFKY = e.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.NJZT = cb.DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS db ON d.ZYDM = db.DM /*רҵ����*/ AND d.SSZYML = db.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS dc ON d.SSZYML = dc.DM /*����רҵĿ¼*/
GO

--��ʦ�οα�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_A02_JSRK_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[KXH]--�����
      ,a.[JSID]--��ʦ��ID
      ,a.[KCH]--�γ̺�
      ,a.[JHBH]--�ƻ����
      ,a.[XQID]--ѧ��ID
      ,a.[JXDG]--��ѧ���
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,c.GH as c_JZGJBSJ_GH--��ְ��������������� ����
      ,c.XM as c_JZGJBSJ_XM--��ְ��������������� ����
      ,c.YWXM as c_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--��ְ��������������� ������
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,c.XBM as c_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,cc.MC as c_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,c.MZM as c_JZGJBSJ_MZM--��ְ��������������� ������
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.XXM as c_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,ce.MC as c_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,ce.JC as c_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.HYZTM as c_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--����״������ ����
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,c.GATQWM as c_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JG as c_JZGJBSJ_JG--��ְ��������������� ����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.XYZJM as c_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--���������� ����
      ,c.DQZZ as c_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,c.CJNY as c_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,c.LXNY as c_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,co.MC as c_JZGJBSJ_BZLBM_MC--����������� ����
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,c.GWLBM as c_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,c.ZP as c_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,c.YDDH as c_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,c.GDDH as c_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,c.TXDZYZBM as c_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,c.TXDZ as c_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,c.DZXX as c_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,c.WLDZ as c_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,c.JSTXH as c_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,d.SCHOOLID as d_KC_SCHOOLID--�γ���������� ѧУID
      ,d.KCMC as d_KC_KCMC--�γ���������� �γ�����
      ,d.KCYWM as d_KC_KCYWM--�γ���������� �γ�Ӣ����
      ,d.KCBM as d_KC_KCBM--�γ���������� �γ̱���
      ,d.KCJS as d_KC_KCJS--�γ���������� �γ̽���
      ,d.XF as d_KC_XF--�γ���������� ѧ��
      ,d.ZXS as d_KC_ZXS--�γ���������� ��ѧʱ
      ,d.LLXS as d_KC_LLXS--�γ���������� ����ѧʱ
      ,d.SJXS as d_KC_SJXS--�γ���������� ʵ��ѧʱ
      ,d.QTXS as d_KC_QTXS--�γ���������� ����ѧʱ
      ,d.CKSM as d_KC_CKSM--�γ���������� �ο���Ŀ
      ,d.KKDW as d_KC_KKDW--�γ���������� ���ε�λ
      ,d.KSXS as d_KC_KSXS--�γ���������� ������ʽ
      ,db.MC as d_KC_KSXS_MC--������ʽ����� ����
      ,d.SKFSM as d_KC_SKFSM--�γ���������� �ڿη�ʽ��
      ,dc.MC as d_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,d.KCFY as d_KC_KCFY--�γ���������� �γ̷���
      ,e.SCHOOLID as e_ZTJXJH_SCHOOLID--�����ѧ�ƻ���������� ѧУID
      ,e.JHNJ as e_ZTJXJH_JHNJ--�����ѧ�ƻ���������� �ƻ��꼶
      ,e.ZYXXID as e_ZTJXJH_ZYXXID--�����ѧ�ƻ���������� רҵ���
      ,e.JHZYMC as e_ZTJXJH_JHZYMC--�����ѧ�ƻ���������� �ƻ�רҵ����
      ,e.ZXFYQ as e_ZTJXJH_ZXFYQ--�����ѧ�ƻ���������� ��ѧ��Ҫ��
      ,e.JLNY as e_ZTJXJH_JLNY--�����ѧ�ƻ���������� ��������
      ,e.SYXZ as e_ZTJXJH_SYXZ--�����ѧ�ƻ���������� ����ѧ��
      ,e.PYMB as e_ZTJXJH_PYMB--�����ѧ�ƻ���������� ����Ŀ��
      ,e.SFKY as e_ZTJXJH_SFKY--�����ѧ�ƻ���������� �Ƿ����
      ,eb.MC as e_ZTJXJH_SFKY_MC--�ڿη�ʽ����� ����
      ,e.FJ as e_ZTJXJH_FJ--�����ѧ�ƻ���������� ����
      ,f.SCHOOLID as f_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,f.XNID as f_XQ_XNID--ѧ�����ݱ� ѧ��
      ,f.XQM as f_XQ_XQM--ѧ�����ݱ� ѧ����
      ,fb.MC as f_XQ_XQM_MC--ѧ�ڴ���� ����
      ,f.XQMC as f_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,f.XQKSRQ as f_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,f.XQJSRQ as f_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������

FROM dbo.EDU_ZZJX_01_A02_JSRK AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*��ʦ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCH = d.KCH /*�γ̺�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS e ON a.JHBH = e.JHBH /*�ƻ����*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS f ON a.XQID = f.ID /*ѧ��ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ce ON c.XXM = ce.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cf ON c.JKZKM = cf.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZTM = cg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ch ON c.ZZMMM = ch.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS cj ON c.GJDQM = cj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ck ON c.CSDXZQHM = ck.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS cl ON c.XYZJM = cl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cm ON c.JZGHKSZDXZQHM = cm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cn ON c.HKLBM = cn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS co ON c.BZLBM = co.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS cp ON c.JZGLBM = cp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS cq ON c.GWLBM = cq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFJZJS = cr.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.SFSSXJS = cs.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ct ON c.DQZTM = ct.DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS db ON d.KSXS = db.DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dc ON d.SKFSM = dc.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS eb ON e.SFKY = eb.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS fb ON f.XQM = fb.DM /*ѧ����*/
GO

--�γ����۱�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_A01_KCPJ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[PJID]--����ID
      ,a.[KXH]--�����
      ,a.[PJR]--������
      ,a.[PJSJ]--����ʱ��
      ,a.[PJNR]--��������
      ,a.[HF]--�ظ�
      ,c.SCHOOLID as c_JSRK_SCHOOLID--��ʦ�οα� ѧУID
      ,c.JSID as c_JSRK_JSID--��ʦ�οα� ��ʦ��ID
      ,c.KCH as c_JSRK_KCH--��ʦ�οα� �γ̺�
      ,c.JHBH as c_JSRK_JHBH--��ʦ�οα� �ƻ����
      ,c.XQID as c_JSRK_XQID--��ʦ�οα� ѧ��ID
      ,c.JXDG as c_JSRK_JXDG--��ʦ�οα� ��ѧ���
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

FROM dbo.EDU_ZZJX_01_A01_KCPJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_A02_JSRK AS c ON a.KXH = c.KXH /*�����*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.PJR = d.LOGINNAME /*������*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/
GO

--�γ����������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_02_KC_DISP]
AS
SELECT a.[KCH]--�γ̺�
      ,a.[SCHOOLID]--ѧУID
      ,a.[KCMC]--�γ�����
      ,a.[KCYWM]--�γ�Ӣ����
      ,a.[KCBM]--�γ̱���
      ,a.[KCJS]--�γ̽���
      ,a.[XF]--ѧ��
      ,a.[ZXS]--��ѧʱ
      ,a.[LLXS]--����ѧʱ
      ,a.[SJXS]--ʵ��ѧʱ
      ,a.[QTXS]--����ѧʱ
      ,a.[CKSM]--�ο���Ŀ
      ,a.[KKDW]--���ε�λ
      ,a.[KSXS]--������ʽ
      ,a.[SKFSM]--�ڿη�ʽ��
      ,a.[KCFY]--�γ̷���
      ,c.SCHOOLID as c_XNJG_SCHOOLID--У�ڻ���������� ѧУ��
      ,c.JGMC as c_XNJG_JGMC--У�ڻ���������� ��������
      ,c.JGYWMC as c_XNJG_JGYWMC--У�ڻ���������� ����Ӣ������
      ,c.JGJC as c_XNJG_JGJC--У�ڻ���������� �������
      ,c.JGJP as c_XNJG_JGJP--У�ڻ���������� ������ƴ
      ,c.JGDZ as c_XNJG_JGDZ--У�ڻ���������� ������ַ
      ,c.LSSJJGH as c_XNJG_LSSJJGH--У�ڻ���������� �����ϼ�������
      ,c.LSXQH as c_XNJG_LSXQH--У�ڻ���������� ����У����
      ,c.JGYXBS as c_XNJG_JGYXBS--У�ڻ���������� ������Ч��ʶ
      ,cb.MC as c_XNJG_JGYXBS_MC--�Ƿ��־����� ����
      ,c.SFST as c_XNJG_SFST--У�ڻ���������� �Ƿ�ʵ��
      ,cc.MC as c_XNJG_SFST_MC--�Ƿ��־����� ����
      ,c.JLNY as c_XNJG_JLNY--У�ڻ���������� ��������
      ,c.JGYZBM as c_XNJG_JGYZBM--У�ڻ���������� ������������
      ,c.FZRH as c_XNJG_FZRH--У�ڻ���������� �����˺�
      ,d.MC as d_KSXS_MC--������ʽ����� ����
      ,e.MC as e_SKFS_MC--�ڿη�ʽ����� ����

FROM dbo.EDU_ZZJX_01_02_KC AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.KKDW = c.JGH /*���ε�λ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS d ON a.KSXS = d.DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS e ON a.SKFSM = e.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.JGYXBS = cb.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cc ON c.SFST = cc.DM /*�Ƿ�ʵ��*/
GO

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
      ,c.MC as c_SXJDLB_MC--ʵϰ���������� ����
      ,d.MC as d_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,e.MC as e_JJLXFL_MC--�������ͷ�������� ����

FROM dbo.EDU_ZZJX_07_01_XWSXJDXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS c ON a.JDLBM = c.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.QYXZQ = d.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS e ON a.QYXZ = e.DM /*��ҵ����*/
GO

--ѧ��У��ʵϰ������������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_03_XSXWSXQK_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[ID]--ʵϰ�����ID
      ,a.[XSXXID]--ѧ����ϢID
      ,a.[QYID]--��ҵ��ID
      ,a.[GWID]--��λ��ID
      ,a.[SXQSRQ]--��ѵ��ʼ����
      ,a.[SXJSRQ]--��ѵ��������
      ,a.[QYBH]--��ҵ���
      ,a.[SXGWMC]--��ѵ��λ����
      ,a.[SXDS]--ʵѵ��ʦ
      ,a.[SFGMSXZRBX]--�Ƿ���ʵϰ���α���
      ,a.[BXFZFZ]--���շ�֧����
      ,a.[SXXC]--ʵϰн��
      ,a.[SFSDGSX]--�Ƿ��Ƕ���ʵϰ
      ,a.[XSHJXZM]--ѧ������������
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,c.XM as c_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,c.XBM as c_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,cc.MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.XXM as c_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,cd.JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.CSRQ as c_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,ce.MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,c.MZM as c_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,cf.MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.XYZJM as c_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,ci.SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JKZKM as c_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,cj.SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,ck.JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,cm.MC as c_XSXX_HKLBM_MC--���������� ����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.TC as c_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,c.JSTXH as c_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,c.ZP as c_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.SCHOOLID as d_XWSXJDXX_SCHOOLID--У��ʵϰ������Ϣ��������� ѧУ��
      ,d.QYBH as d_XWSXJDXX_QYBH--У��ʵϰ������Ϣ��������� ��ҵ���
      ,d.JDHZHTBH as d_XWSXJDXX_JDHZHTBH--У��ʵϰ������Ϣ��������� ���غ�����ͬ���
      ,d.JDHZHTMC as d_XWSXJDXX_JDHZHTMC--У��ʵϰ������Ϣ��������� ���غ�����ͬ����
      ,d.JDLBM as d_XWSXJDXX_JDLBM--У��ʵϰ������Ϣ��������� ���������
      ,db.MC as d_XWSXJDXX_JDLBM_MC--ʵϰ���������� ����
      ,d.DWMC as d_XWSXJDXX_DWMC--У��ʵϰ������Ϣ��������� ��λ����
      ,d.QYXZQ as d_XWSXJDXX_QYXZQ--У��ʵϰ������Ϣ��������� ��ҵ������
      ,dc.MC as d_XWSXJDXX_QYXZQ_MC--�л����񹲺͹������������� ����
      ,d.QYDZ as d_XWSXJDXX_QYDZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,d.QYXZ as d_XWSXJDXX_QYXZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,dd.MC as d_XWSXJDXX_QYXZ_MC--�������ͷ�������� ����
      ,d.FRDB as d_XWSXJDXX_FRDB--У��ʵϰ������Ϣ��������� ���˴���
      ,d.QYLXR as d_XWSXJDXX_QYLXR--У��ʵϰ������Ϣ��������� ��ҵ��ϵ��
      ,d.QYYZBM as d_XWSXJDXX_QYYZBM--У��ʵϰ������Ϣ��������� ��ҵ��������
      ,d.QYLXDH as d_XWSXJDXX_QYLXDH--У��ʵϰ������Ϣ��������� ��ҵ��ϵ�绰
      ,d.QYYYZZ as d_XWSXJDXX_QYYYZZ--У��ʵϰ������Ϣ��������� ��ҵӪҵִ��
      ,d.QYLX as d_XWSXJDXX_QYLX--У��ʵϰ������Ϣ��������� ��ҵ����
      ,d.QYRS as d_XWSXJDXX_QYRS--У��ʵϰ������Ϣ��������� ��ҵ����
      ,d.QYZCZJ as d_XWSXJDXX_QYZCZJ--У��ʵϰ������Ϣ��������� ��ҵע���ʽ�
      ,d.QYCZ as d_XWSXJDXX_QYCZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,d.QYFZR as d_XWSXJDXX_QYFZR--У��ʵϰ������Ϣ��������� ��ҵ������
      ,d.FZRZW as d_XWSXJDXX_FZRZW--У��ʵϰ������Ϣ��������� ������ְλ
      ,d.FZRLXDH as d_XWSXJDXX_FZRLXDH--У��ʵϰ������Ϣ��������� ��������ϵ�绰
      ,d.QYYXDZ as d_XWSXJDXX_QYYXDZ--У��ʵϰ������Ϣ��������� ��ҵ�����ַ
      ,d.QYQQ as d_XWSXJDXX_QYQQ--У��ʵϰ������Ϣ��������� ��ҵQQ
      ,d.QYMSN as d_XWSXJDXX_QYMSN--У��ʵϰ������Ϣ��������� ��ҵMSN
      ,d.QYWZ as d_XWSXJDXX_QYWZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,d.QYJJ as d_XWSXJDXX_QYJJ--У��ʵϰ������Ϣ��������� ��ҵ���
      ,d.SHZT as d_XWSXJDXX_SHZT--У��ʵϰ������Ϣ��������� ���״̬
      ,e.SCHOOLID as e_SXGW_SCHOOLID--ʵϰ��λ�� ѧУID
      ,e.QYID as e_SXGW_QYID--ʵϰ��λ�� ��ҵID
      ,e.GWMC as e_SXGW_GWMC--ʵϰ��λ�� ��λ����
      ,e.QYMC as e_SXGW_QYMC--ʵϰ��λ�� ��ҵ����
      ,e.ZPKSSJ as e_SXGW_ZPKSSJ--ʵϰ��λ�� ��Ƹ��ʼʱ��
      ,e.ZPJSSJ as e_SXGW_ZPJSSJ--ʵϰ��λ�� ��Ƹ����ʱ��
      ,e.GZXS as e_SXGW_GZXS--ʵϰ��λ�� ������ʽ
      ,e.XBYQ as e_SXGW_XBYQ--ʵϰ��λ�� �Ա�Ҫ��
      ,e.GWXC as e_SXGW_GWXC--ʵϰ��λ�� ��λн��
      ,e.WYYQ as e_SXGW_WYYQ--ʵϰ��λ�� ����Ҫ��
      ,e.GZDD as e_SXGW_GZDD--ʵϰ��λ�� �����ص�
      ,e.JSJSP as e_SXGW_JSJSP--ʵϰ��λ�� �����ˮƽ
      ,e.ZPRS as e_SXGW_ZPRS--ʵϰ��λ�� ��Ƹ����
      ,e.XLYQ as e_SXGW_XLYQ--ʵϰ��λ�� ѧ��Ҫ��
      ,e.ZYYQ as e_SXGW_ZYYQ--ʵϰ��λ�� רҵҪ��
      ,e.NLYQ as e_SXGW_NLYQ--ʵϰ��λ�� ����Ҫ��
      ,e.GWJJ as e_SXGW_GWJJ--ʵϰ��λ�� ��λ���
      ,e.JBQK as e_SXGW_JBQK--ʵϰ��λ�� �������
      ,e.GZJY as e_SXGW_GZJY--ʵϰ��λ�� ��������
      ,e.SHZT as e_SXGW_SHZT--ʵϰ��λ�� ���״̬
      ,e.GWZT as e_SXGW_GWZT--ʵϰ��λ�� ��λ״̬
      ,f.MC as f_SFBZ_MC--�Ƿ��־����� ����
      ,g.MC as g_SFBZ_MC--�Ƿ��־����� ����
      ,h.MC as h_HJXZ_MC--�������ʴ��� ����

FROM dbo.EDU_ZZJX_07_03_XSXWSXQK AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����ϢID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS d ON a.QYID = d.ID /*��ҵ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS e ON a.GWID = e.ID /*��λ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFGMSXZRBX = f.DM /*�Ƿ���ʵϰ���α���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS g ON a.SFSDGSX = g.DM /*�Ƿ��Ƕ���ʵϰ*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_HJXZ AS h ON a.XSHJXZM = h.DM /*ѧ������������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS db ON d.JDLBM = db.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.QYXZQ = dc.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS dd ON d.QYXZ = dd.DM /*��ҵ����*/
GO

--ʵϰ���ͱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A11_SXJC_DISP]
AS
SELECT a.[ID]--������ϢID
      ,a.[SCHOOLID]--ѧУID
      ,a.[SXJHID]--ʵϰ�ƻ�ID
      ,a.[XSXXID]--ѧ����ϢID
      ,a.[JCLX]--��������
      ,a.[JCRQ]--��������
      ,a.[CLJG]--������
      ,a.[BZ]--��ע
      ,a.[TJR]--�����
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--ѧУʵϰ�ƻ��� ѧУID
      ,c.JHBT as c_XXSXJH_JHBT--ѧУʵϰ�ƻ��� �ƻ�����
      ,c.NJ as c_XXSXJH_NJ--ѧУʵϰ�ƻ��� �꼶
      ,c.BGXS as c_XXSXJH_BGXS--ѧУʵϰ�ƻ��� ������ʽ
      ,c.SFSX as c_XXSXJH_SFSX--ѧУʵϰ�ƻ��� �ƻ��Ƿ���Ч
      ,cb.MC as c_XXSXJH_SFSX_MC--�ڿη�ʽ����� ����
      ,d.SCHOOLID as d_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,d.XH as d_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,d.XM as d_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,d.YWXM as d_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,d.XMPY as d_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,d.CYM as d_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,d.SFZJLXM as d_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,db.MC as d_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,d.SFZJH as d_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,d.XBM as d_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,dc.MC as d_XSXX_XBM_MC--�˵��Ա���� ����
      ,d.XXM as d_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,dd.MC as d_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,dd.JC as d_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,d.CSRQ as d_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,d.CSDM as d_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,de.MC as d_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,d.JG as d_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,d.MZM as d_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,df.MZMC as d_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,df.ZMDM as d_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,d.HYZKM as d_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,dg.MC as d_XSXX_HYZKM_MC--����״������ ����
      ,d.XYZJM as d_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,dh.MC as d_XSXX_XYZJM_MC--�ڽ��������� ����
      ,d.GATQWM as d_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,di.MC as d_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,di.SM as d_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,d.JKZKM as d_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,dj.MC as d_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,dj.SM as d_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,d.ZZMMM as d_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,dk.MC as d_XSXX_ZZMMM_MC--������ò���� ����
      ,dk.JC as d_XSXX_ZZMMM_JC--������ò���� ���
      ,d.HKSZDXZQHM as d_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,dl.MC as d_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,d.HKLBM as d_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,dm.MC as d_XSXX_HKLBM_MC--���������� ����
      ,d.SFSLDRK as d_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,dn.MC as d_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,d.GJDQM as d_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,do.GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,do.EZMDM as d_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,do.SZMDM as d_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,d.TC as d_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,d.XSLXDH as d_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,d.WLDZ as d_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,d.JSTXH as d_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,d.DZXX as d_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,d.ZP as d_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)

FROM dbo.EDU_ZZJX_07_A11_SXJC AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS d ON a.XSXXID = d.ID /*ѧ����ϢID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cb ON c.SFSX = cb.DM /*�ƻ��Ƿ���Ч*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS db ON d.SFZJLXM = db.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS dc ON d.XBM = dc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dd ON d.XXM = dd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS de ON d.CSDM = de.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS df ON d.MZM = df.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZKM = dg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dh ON d.XYZJM = dh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS di ON d.GATQWM = di.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS dj ON d.JKZKM = dj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dk ON d.ZZMMM = dk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dl ON d.HKSZDXZQHM = dl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dm ON d.HKLBM = dm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dn ON d.SFSLDRK = dn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS do ON d.GJDQM = do.DM /*����/����*/
GO

--ʵϰ������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A10_SXJD_DISP]
AS
SELECT a.[ID]--ʵϰ������ϢID
      ,a.[SCHOOLID]--ѧУID
      ,a.[SXJHID]--ʵϰ�ƻ�ID
      ,a.[XSXXID]--ѧ����ϢID
      ,a.[JDNR]--��������
      ,a.[SXDWYJ]--ʵϰ��λ���
      ,a.[BJYJ]--�༶���
      ,a.[XXYJ]--ѧУ���
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--ѧУʵϰ�ƻ��� ѧУID
      ,c.JHBT as c_XXSXJH_JHBT--ѧУʵϰ�ƻ��� �ƻ�����
      ,c.NJ as c_XXSXJH_NJ--ѧУʵϰ�ƻ��� �꼶
      ,c.BGXS as c_XXSXJH_BGXS--ѧУʵϰ�ƻ��� ������ʽ
      ,c.SFSX as c_XXSXJH_SFSX--ѧУʵϰ�ƻ��� �ƻ��Ƿ���Ч
      ,cb.MC as c_XXSXJH_SFSX_MC--�ڿη�ʽ����� ����
      ,d.SCHOOLID as d_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,d.XH as d_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,d.XM as d_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,d.YWXM as d_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,d.XMPY as d_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,d.CYM as d_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,d.SFZJLXM as d_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,db.MC as d_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,d.SFZJH as d_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,d.XBM as d_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,dc.MC as d_XSXX_XBM_MC--�˵��Ա���� ����
      ,d.XXM as d_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,dd.MC as d_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,dd.JC as d_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,d.CSRQ as d_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,d.CSDM as d_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,de.MC as d_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,d.JG as d_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,d.MZM as d_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,df.MZMC as d_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,df.ZMDM as d_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,d.HYZKM as d_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,dg.MC as d_XSXX_HYZKM_MC--����״������ ����
      ,d.XYZJM as d_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,dh.MC as d_XSXX_XYZJM_MC--�ڽ��������� ����
      ,d.GATQWM as d_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,di.MC as d_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,di.SM as d_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,d.JKZKM as d_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,dj.MC as d_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,dj.SM as d_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,d.ZZMMM as d_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,dk.MC as d_XSXX_ZZMMM_MC--������ò���� ����
      ,dk.JC as d_XSXX_ZZMMM_JC--������ò���� ���
      ,d.HKSZDXZQHM as d_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,dl.MC as d_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,d.HKLBM as d_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,dm.MC as d_XSXX_HKLBM_MC--���������� ����
      ,d.SFSLDRK as d_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,dn.MC as d_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,d.GJDQM as d_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,do.GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,do.EZMDM as d_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,do.SZMDM as d_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,d.TC as d_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,d.XSLXDH as d_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,d.WLDZ as d_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,d.JSTXH as d_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,d.DZXX as d_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,d.ZP as d_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)

FROM dbo.EDU_ZZJX_07_A10_SXJD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS d ON a.XSXXID = d.ID /*ѧ����ϢID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cb ON c.SFSX = cb.DM /*�ƻ��Ƿ���Ч*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS db ON d.SFZJLXM = db.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS dc ON d.XBM = dc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dd ON d.XXM = dd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS de ON d.CSDM = de.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS df ON d.MZM = df.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZKM = dg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dh ON d.XYZJM = dh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS di ON d.GATQWM = di.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS dj ON d.JKZKM = dj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dk ON d.ZZMMM = dk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dl ON d.HKSZDXZQHM = dl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dm ON d.HKLBM = dm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dn ON d.SFSLDRK = dn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS do ON d.GJDQM = do.DM /*����/����*/
GO

--ʵϰ��־��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A09_SXRZ_DISP]
AS
SELECT a.[ID]--ʵϰ��־ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XSXXID]--ѧ����ϢID
      ,a.[SXJHID]--ʵϰ�ƻ�ID
      ,a.[SXJDID]--ʵϰ�׶�ID
      ,a.[SXZYID]--ʵϰ��/�±�ID
      ,a.[RZBT]--��־����
      ,a.[NR]--����
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,c.XM as c_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,c.XBM as c_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,cc.MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.XXM as c_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,cd.JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.CSRQ as c_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,ce.MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,c.MZM as c_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,cf.MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.XYZJM as c_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,ci.SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JKZKM as c_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,cj.SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,ck.JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,cm.MC as c_XSXX_HKLBM_MC--���������� ����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.TC as c_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,c.JSTXH as c_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,c.ZP as c_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.SCHOOLID as d_XXSXJH_SCHOOLID--ѧУʵϰ�ƻ��� ѧУID
      ,d.JHBT as d_XXSXJH_JHBT--ѧУʵϰ�ƻ��� �ƻ�����
      ,d.NJ as d_XXSXJH_NJ--ѧУʵϰ�ƻ��� �꼶
      ,d.BGXS as d_XXSXJH_BGXS--ѧУʵϰ�ƻ��� ������ʽ
      ,d.SFSX as d_XXSXJH_SFSX--ѧУʵϰ�ƻ��� �ƻ��Ƿ���Ч
      ,db.MC as d_XXSXJH_SFSX_MC--�ڿη�ʽ����� ����
      ,e.SCHOOLID as e_XXSXJD_SCHOOLID--ѧУʵϰ�׶α� ѧУID
      ,e.SXJHID as e_XXSXJD_SXJHID--ѧУʵϰ�׶α� ʵϰ�ƻ�ID
      ,e.JDM as e_XXSXJD_JDM--ѧУʵϰ�׶α� �׶���
      ,e.JDKSSJ as e_XXSXJD_JDKSSJ--ѧУʵϰ�׶α� �׶ο�ʼʱ��
      ,e.JDJSSJ as e_XXSXJD_JDJSSJ--ѧУʵϰ�׶α� �׶ν���ʱ��
      ,f.SCHOOLID as f_XXSXZY_SCHOOLID--ѧУʵϰ��/�±� ѧУID
      ,f.SXJHID as f_XXSXZY_SXJHID--ѧУʵϰ��/�±� ʵϰ�ƻ�ID
      ,f.SXJDID as f_XXSXZY_SXJDID--ѧУʵϰ��/�±� ʵϰ�׶�ID
      ,f.MC as f_XXSXZY_MC--ѧУʵϰ��/�±� ����
      ,f.KSSJ as f_XXSXZY_KSSJ--ѧУʵϰ��/�±� ��ʼʱ��
      ,f.JSSJ as f_XXSXZY_JSSJ--ѧУʵϰ��/�±� ����ʱ��
      ,f.LX as f_XXSXZY_LX--ѧУʵϰ��/�±� ����

FROM dbo.EDU_ZZJX_07_A09_SXRZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����ϢID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS d ON a.SXJHID = d.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A02_XXSXJD AS e ON a.SXJDID = e.ID /*ʵϰ�׶�ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A03_XXSXZY AS f ON a.SXZYID = f.ID /*ʵϰ��/�±�ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFSX = db.DM /*�ƻ��Ƿ���Ч*/
GO

--ʵϰͶ�߱�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A08_SXTS_DISP]
AS
SELECT a.[ID]--ʵϰͶ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[QYID]--��ҵID
      ,a.[SXJHID]--ʵϰ�ƻ�ID
      ,a.[XSXXID]--Ͷ��ѧ��ID
      ,a.[TSSJ]--Ͷ��ʱ��
      ,a.[TSYY]--Ͷ��ԭ��
      ,a.[TSJG]--Ͷ�߽��
      ,a.[QYJY]--��ҵ����
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
      ,d.SCHOOLID as d_XXSXJH_SCHOOLID--ѧУʵϰ�ƻ��� ѧУID
      ,d.JHBT as d_XXSXJH_JHBT--ѧУʵϰ�ƻ��� �ƻ�����
      ,d.NJ as d_XXSXJH_NJ--ѧУʵϰ�ƻ��� �꼶
      ,d.BGXS as d_XXSXJH_BGXS--ѧУʵϰ�ƻ��� ������ʽ
      ,d.SFSX as d_XXSXJH_SFSX--ѧУʵϰ�ƻ��� �ƻ��Ƿ���Ч
      ,db.MC as d_XXSXJH_SFSX_MC--�ڿη�ʽ����� ����
      ,e.SCHOOLID as e_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,e.XH as e_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,e.XM as e_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,e.YWXM as e_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,e.XMPY as e_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,e.CYM as e_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,e.SFZJLXM as e_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,eb.MC as e_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,e.SFZJH as e_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,e.XBM as e_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,ec.MC as e_XSXX_XBM_MC--�˵��Ա���� ����
      ,e.XXM as e_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,ed.MC as e_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,ed.JC as e_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,e.CSRQ as e_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,e.CSDM as e_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,ee.MC as e_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,e.JG as e_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,e.MZM as e_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,ef.MZMC as e_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,ef.ZMDM as e_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,e.HYZKM as e_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,eg.MC as e_XSXX_HYZKM_MC--����״������ ����
      ,e.XYZJM as e_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,eh.MC as e_XSXX_XYZJM_MC--�ڽ��������� ����
      ,e.GATQWM as e_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,ei.MC as e_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,ei.SM as e_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,e.JKZKM as e_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,ej.MC as e_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,ej.SM as e_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,e.ZZMMM as e_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,ek.MC as e_XSXX_ZZMMM_MC--������ò���� ����
      ,ek.JC as e_XSXX_ZZMMM_JC--������ò���� ���
      ,e.HKSZDXZQHM as e_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,el.MC as e_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,e.HKLBM as e_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,em.MC as e_XSXX_HKLBM_MC--���������� ����
      ,e.SFSLDRK as e_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,en.MC as e_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,e.GJDQM as e_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,eo.GJDQMCJC as e_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,eo.EZMDM as e_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,eo.SZMDM as e_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,e.TC as e_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,e.XSLXDH as e_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,e.WLDZ as e_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,e.JSTXH as e_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,e.DZXX as e_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,e.ZP as e_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)

FROM dbo.EDU_ZZJX_07_A08_SXTS AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS c ON a.QYID = c.ID /*��ҵID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS d ON a.SXJHID = d.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS e ON a.XSXXID = e.ID /*Ͷ��ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS cb ON c.JDLBM = cb.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.QYXZQ = cc.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS cd ON c.QYXZ = cd.DM /*��ҵ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFSX = db.DM /*�ƻ��Ƿ���Ч*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS eb ON e.SFZJLXM = eb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS ec ON e.XBM = ec.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ed ON e.XXM = ed.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ee ON e.CSDM = ee.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ef ON e.MZM = ef.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS eg ON e.HYZKM = eg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS eh ON e.XYZJM = eh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ei ON e.GATQWM = ei.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ej ON e.JKZKM = ej.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ek ON e.ZZMMM = ek.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS el ON e.HKSZDXZQHM = el.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS em ON e.HKLBM = em.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS en ON e.SFSLDRK = en.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS eo ON e.GJDQM = eo.DM /*����/����*/
GO

--ʵϰת�ڱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A07_SXZG_DISP]
AS
SELECT a.[ID]--ʵϰת��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XSXXID]--����ѧ��ID
      ,a.[ZCGW]--ת����λID
      ,a.[ZCGWQY]--ת����λ��ҵID
      ,a.[ZRGW]--ת���λID
      ,a.[ZRGWQY]--ת���λ��ҵID
      ,a.[BZRSH]--���������
      ,a.[ZCQYSH]--ת����ҵ���
      ,a.[ZRQYSH]--ת����ҵ���
      ,a.[JYCSH]--��ҵ�����
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,c.XM as c_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,c.XBM as c_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,cc.MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.XXM as c_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,cd.JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.CSRQ as c_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,ce.MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,c.MZM as c_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,cf.MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.XYZJM as c_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,ci.SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JKZKM as c_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,cj.SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,ck.JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,cm.MC as c_XSXX_HKLBM_MC--���������� ����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.TC as c_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,c.JSTXH as c_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,c.ZP as c_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.SCHOOLID as d_SXGW_SCHOOLID--ʵϰ��λ�� ѧУID
      ,d.QYID as d_SXGW_QYID--ʵϰ��λ�� ��ҵID
      ,d.GWMC as d_SXGW_GWMC--ʵϰ��λ�� ��λ����
      ,d.QYMC as d_SXGW_QYMC--ʵϰ��λ�� ��ҵ����
      ,d.ZPKSSJ as d_SXGW_ZPKSSJ--ʵϰ��λ�� ��Ƹ��ʼʱ��
      ,d.ZPJSSJ as d_SXGW_ZPJSSJ--ʵϰ��λ�� ��Ƹ����ʱ��
      ,d.GZXS as d_SXGW_GZXS--ʵϰ��λ�� ������ʽ
      ,d.XBYQ as d_SXGW_XBYQ--ʵϰ��λ�� �Ա�Ҫ��
      ,d.GWXC as d_SXGW_GWXC--ʵϰ��λ�� ��λн��
      ,d.WYYQ as d_SXGW_WYYQ--ʵϰ��λ�� ����Ҫ��
      ,d.GZDD as d_SXGW_GZDD--ʵϰ��λ�� �����ص�
      ,d.JSJSP as d_SXGW_JSJSP--ʵϰ��λ�� �����ˮƽ
      ,d.ZPRS as d_SXGW_ZPRS--ʵϰ��λ�� ��Ƹ����
      ,d.XLYQ as d_SXGW_XLYQ--ʵϰ��λ�� ѧ��Ҫ��
      ,d.ZYYQ as d_SXGW_ZYYQ--ʵϰ��λ�� רҵҪ��
      ,d.NLYQ as d_SXGW_NLYQ--ʵϰ��λ�� ����Ҫ��
      ,d.GWJJ as d_SXGW_GWJJ--ʵϰ��λ�� ��λ���
      ,d.JBQK as d_SXGW_JBQK--ʵϰ��λ�� �������
      ,d.GZJY as d_SXGW_GZJY--ʵϰ��λ�� ��������
      ,d.SHZT as d_SXGW_SHZT--ʵϰ��λ�� ���״̬
      ,d.GWZT as d_SXGW_GWZT--ʵϰ��λ�� ��λ״̬
      ,e.SCHOOLID as e_XWSXJDXX_SCHOOLID--У��ʵϰ������Ϣ��������� ѧУ��
      ,e.QYBH as e_XWSXJDXX_QYBH--У��ʵϰ������Ϣ��������� ��ҵ���
      ,e.JDHZHTBH as e_XWSXJDXX_JDHZHTBH--У��ʵϰ������Ϣ��������� ���غ�����ͬ���
      ,e.JDHZHTMC as e_XWSXJDXX_JDHZHTMC--У��ʵϰ������Ϣ��������� ���غ�����ͬ����
      ,e.JDLBM as e_XWSXJDXX_JDLBM--У��ʵϰ������Ϣ��������� ���������
      ,eb.MC as e_XWSXJDXX_JDLBM_MC--ʵϰ���������� ����
      ,e.DWMC as e_XWSXJDXX_DWMC--У��ʵϰ������Ϣ��������� ��λ����
      ,e.QYXZQ as e_XWSXJDXX_QYXZQ--У��ʵϰ������Ϣ��������� ��ҵ������
      ,ec.MC as e_XWSXJDXX_QYXZQ_MC--�л����񹲺͹������������� ����
      ,e.QYDZ as e_XWSXJDXX_QYDZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,e.QYXZ as e_XWSXJDXX_QYXZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,ed.MC as e_XWSXJDXX_QYXZ_MC--�������ͷ�������� ����
      ,e.FRDB as e_XWSXJDXX_FRDB--У��ʵϰ������Ϣ��������� ���˴���
      ,e.QYLXR as e_XWSXJDXX_QYLXR--У��ʵϰ������Ϣ��������� ��ҵ��ϵ��
      ,e.QYYZBM as e_XWSXJDXX_QYYZBM--У��ʵϰ������Ϣ��������� ��ҵ��������
      ,e.QYLXDH as e_XWSXJDXX_QYLXDH--У��ʵϰ������Ϣ��������� ��ҵ��ϵ�绰
      ,e.QYYYZZ as e_XWSXJDXX_QYYYZZ--У��ʵϰ������Ϣ��������� ��ҵӪҵִ��
      ,e.QYLX as e_XWSXJDXX_QYLX--У��ʵϰ������Ϣ��������� ��ҵ����
      ,e.QYRS as e_XWSXJDXX_QYRS--У��ʵϰ������Ϣ��������� ��ҵ����
      ,e.QYZCZJ as e_XWSXJDXX_QYZCZJ--У��ʵϰ������Ϣ��������� ��ҵע���ʽ�
      ,e.QYCZ as e_XWSXJDXX_QYCZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,e.QYFZR as e_XWSXJDXX_QYFZR--У��ʵϰ������Ϣ��������� ��ҵ������
      ,e.FZRZW as e_XWSXJDXX_FZRZW--У��ʵϰ������Ϣ��������� ������ְλ
      ,e.FZRLXDH as e_XWSXJDXX_FZRLXDH--У��ʵϰ������Ϣ��������� ��������ϵ�绰
      ,e.QYYXDZ as e_XWSXJDXX_QYYXDZ--У��ʵϰ������Ϣ��������� ��ҵ�����ַ
      ,e.QYQQ as e_XWSXJDXX_QYQQ--У��ʵϰ������Ϣ��������� ��ҵQQ
      ,e.QYMSN as e_XWSXJDXX_QYMSN--У��ʵϰ������Ϣ��������� ��ҵMSN
      ,e.QYWZ as e_XWSXJDXX_QYWZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,e.QYJJ as e_XWSXJDXX_QYJJ--У��ʵϰ������Ϣ��������� ��ҵ���
      ,e.SHZT as e_XWSXJDXX_SHZT--У��ʵϰ������Ϣ��������� ���״̬
      ,f.SCHOOLID as f_SXGW_SCHOOLID--ʵϰ��λ�� ѧУID
      ,f.QYID as f_SXGW_QYID--ʵϰ��λ�� ��ҵID
      ,f.GWMC as f_SXGW_GWMC--ʵϰ��λ�� ��λ����
      ,f.QYMC as f_SXGW_QYMC--ʵϰ��λ�� ��ҵ����
      ,f.ZPKSSJ as f_SXGW_ZPKSSJ--ʵϰ��λ�� ��Ƹ��ʼʱ��
      ,f.ZPJSSJ as f_SXGW_ZPJSSJ--ʵϰ��λ�� ��Ƹ����ʱ��
      ,f.GZXS as f_SXGW_GZXS--ʵϰ��λ�� ������ʽ
      ,f.XBYQ as f_SXGW_XBYQ--ʵϰ��λ�� �Ա�Ҫ��
      ,f.GWXC as f_SXGW_GWXC--ʵϰ��λ�� ��λн��
      ,f.WYYQ as f_SXGW_WYYQ--ʵϰ��λ�� ����Ҫ��
      ,f.GZDD as f_SXGW_GZDD--ʵϰ��λ�� �����ص�
      ,f.JSJSP as f_SXGW_JSJSP--ʵϰ��λ�� �����ˮƽ
      ,f.ZPRS as f_SXGW_ZPRS--ʵϰ��λ�� ��Ƹ����
      ,f.XLYQ as f_SXGW_XLYQ--ʵϰ��λ�� ѧ��Ҫ��
      ,f.ZYYQ as f_SXGW_ZYYQ--ʵϰ��λ�� רҵҪ��
      ,f.NLYQ as f_SXGW_NLYQ--ʵϰ��λ�� ����Ҫ��
      ,f.GWJJ as f_SXGW_GWJJ--ʵϰ��λ�� ��λ���
      ,f.JBQK as f_SXGW_JBQK--ʵϰ��λ�� �������
      ,f.GZJY as f_SXGW_GZJY--ʵϰ��λ�� ��������
      ,f.SHZT as f_SXGW_SHZT--ʵϰ��λ�� ���״̬
      ,f.GWZT as f_SXGW_GWZT--ʵϰ��λ�� ��λ״̬
      ,g.SCHOOLID as g_XWSXJDXX_SCHOOLID--У��ʵϰ������Ϣ��������� ѧУ��
      ,g.QYBH as g_XWSXJDXX_QYBH--У��ʵϰ������Ϣ��������� ��ҵ���
      ,g.JDHZHTBH as g_XWSXJDXX_JDHZHTBH--У��ʵϰ������Ϣ��������� ���غ�����ͬ���
      ,g.JDHZHTMC as g_XWSXJDXX_JDHZHTMC--У��ʵϰ������Ϣ��������� ���غ�����ͬ����
      ,g.JDLBM as g_XWSXJDXX_JDLBM--У��ʵϰ������Ϣ��������� ���������
      ,gb.MC as g_XWSXJDXX_JDLBM_MC--ʵϰ���������� ����
      ,g.DWMC as g_XWSXJDXX_DWMC--У��ʵϰ������Ϣ��������� ��λ����
      ,g.QYXZQ as g_XWSXJDXX_QYXZQ--У��ʵϰ������Ϣ��������� ��ҵ������
      ,gc.MC as g_XWSXJDXX_QYXZQ_MC--�л����񹲺͹������������� ����
      ,g.QYDZ as g_XWSXJDXX_QYDZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,g.QYXZ as g_XWSXJDXX_QYXZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,gd.MC as g_XWSXJDXX_QYXZ_MC--�������ͷ�������� ����
      ,g.FRDB as g_XWSXJDXX_FRDB--У��ʵϰ������Ϣ��������� ���˴���
      ,g.QYLXR as g_XWSXJDXX_QYLXR--У��ʵϰ������Ϣ��������� ��ҵ��ϵ��
      ,g.QYYZBM as g_XWSXJDXX_QYYZBM--У��ʵϰ������Ϣ��������� ��ҵ��������
      ,g.QYLXDH as g_XWSXJDXX_QYLXDH--У��ʵϰ������Ϣ��������� ��ҵ��ϵ�绰
      ,g.QYYYZZ as g_XWSXJDXX_QYYYZZ--У��ʵϰ������Ϣ��������� ��ҵӪҵִ��
      ,g.QYLX as g_XWSXJDXX_QYLX--У��ʵϰ������Ϣ��������� ��ҵ����
      ,g.QYRS as g_XWSXJDXX_QYRS--У��ʵϰ������Ϣ��������� ��ҵ����
      ,g.QYZCZJ as g_XWSXJDXX_QYZCZJ--У��ʵϰ������Ϣ��������� ��ҵע���ʽ�
      ,g.QYCZ as g_XWSXJDXX_QYCZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,g.QYFZR as g_XWSXJDXX_QYFZR--У��ʵϰ������Ϣ��������� ��ҵ������
      ,g.FZRZW as g_XWSXJDXX_FZRZW--У��ʵϰ������Ϣ��������� ������ְλ
      ,g.FZRLXDH as g_XWSXJDXX_FZRLXDH--У��ʵϰ������Ϣ��������� ��������ϵ�绰
      ,g.QYYXDZ as g_XWSXJDXX_QYYXDZ--У��ʵϰ������Ϣ��������� ��ҵ�����ַ
      ,g.QYQQ as g_XWSXJDXX_QYQQ--У��ʵϰ������Ϣ��������� ��ҵQQ
      ,g.QYMSN as g_XWSXJDXX_QYMSN--У��ʵϰ������Ϣ��������� ��ҵMSN
      ,g.QYWZ as g_XWSXJDXX_QYWZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,g.QYJJ as g_XWSXJDXX_QYJJ--У��ʵϰ������Ϣ��������� ��ҵ���
      ,g.SHZT as g_XWSXJDXX_SHZT--У��ʵϰ������Ϣ��������� ���״̬

FROM dbo.EDU_ZZJX_07_A07_SXZG AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*����ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS d ON a.ZCGW = d.ID /*ת����λID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS e ON a.ZCGWQY = e.ID /*ת����λ��ҵID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS f ON a.ZRGW = f.ID /*ת���λID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS g ON a.ZRGWQY = g.ID /*ת���λ��ҵID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS eb ON e.JDLBM = eb.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ec ON e.QYXZQ = ec.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS ed ON e.QYXZ = ed.DM /*��ҵ����*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS gb ON g.JDLBM = gb.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gc ON g.QYXZQ = gc.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS gd ON g.QYXZ = gd.DM /*��ҵ����*/
GO

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

FROM dbo.EDU_ZZJX_07_A06_XQHD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS c ON a.QYID = c.ID /*��ҵID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS cb ON c.JDLBM = cb.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.QYXZQ = cc.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS cd ON c.QYXZ = cd.DM /*��ҵ����*/
GO

--ѧ��ӦƸ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A05_XSYP_DISP]
AS
SELECT a.[ID]--ѧ��ӦƸ��ϢID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XSXXID]--ѧ����ϢID
      ,a.[QYID]--��ҵID
      ,a.[GWID]--ʵϰ��λID
      ,a.[XXSH]--ѧУ���
      ,a.[QYSH]--��ҵ���
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,c.XM as c_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,c.XBM as c_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,cc.MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.XXM as c_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,cd.JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.CSRQ as c_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,ce.MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,c.MZM as c_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,cf.MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.XYZJM as c_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,ci.SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JKZKM as c_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,cj.SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,ck.JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,cm.MC as c_XSXX_HKLBM_MC--���������� ����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.TC as c_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,c.JSTXH as c_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,c.ZP as c_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.SCHOOLID as d_XWSXJDXX_SCHOOLID--У��ʵϰ������Ϣ��������� ѧУ��
      ,d.QYBH as d_XWSXJDXX_QYBH--У��ʵϰ������Ϣ��������� ��ҵ���
      ,d.JDHZHTBH as d_XWSXJDXX_JDHZHTBH--У��ʵϰ������Ϣ��������� ���غ�����ͬ���
      ,d.JDHZHTMC as d_XWSXJDXX_JDHZHTMC--У��ʵϰ������Ϣ��������� ���غ�����ͬ����
      ,d.JDLBM as d_XWSXJDXX_JDLBM--У��ʵϰ������Ϣ��������� ���������
      ,db.MC as d_XWSXJDXX_JDLBM_MC--ʵϰ���������� ����
      ,d.DWMC as d_XWSXJDXX_DWMC--У��ʵϰ������Ϣ��������� ��λ����
      ,d.QYXZQ as d_XWSXJDXX_QYXZQ--У��ʵϰ������Ϣ��������� ��ҵ������
      ,dc.MC as d_XWSXJDXX_QYXZQ_MC--�л����񹲺͹������������� ����
      ,d.QYDZ as d_XWSXJDXX_QYDZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,d.QYXZ as d_XWSXJDXX_QYXZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,dd.MC as d_XWSXJDXX_QYXZ_MC--�������ͷ�������� ����
      ,d.FRDB as d_XWSXJDXX_FRDB--У��ʵϰ������Ϣ��������� ���˴���
      ,d.QYLXR as d_XWSXJDXX_QYLXR--У��ʵϰ������Ϣ��������� ��ҵ��ϵ��
      ,d.QYYZBM as d_XWSXJDXX_QYYZBM--У��ʵϰ������Ϣ��������� ��ҵ��������
      ,d.QYLXDH as d_XWSXJDXX_QYLXDH--У��ʵϰ������Ϣ��������� ��ҵ��ϵ�绰
      ,d.QYYYZZ as d_XWSXJDXX_QYYYZZ--У��ʵϰ������Ϣ��������� ��ҵӪҵִ��
      ,d.QYLX as d_XWSXJDXX_QYLX--У��ʵϰ������Ϣ��������� ��ҵ����
      ,d.QYRS as d_XWSXJDXX_QYRS--У��ʵϰ������Ϣ��������� ��ҵ����
      ,d.QYZCZJ as d_XWSXJDXX_QYZCZJ--У��ʵϰ������Ϣ��������� ��ҵע���ʽ�
      ,d.QYCZ as d_XWSXJDXX_QYCZ--У��ʵϰ������Ϣ��������� ��ҵ����
      ,d.QYFZR as d_XWSXJDXX_QYFZR--У��ʵϰ������Ϣ��������� ��ҵ������
      ,d.FZRZW as d_XWSXJDXX_FZRZW--У��ʵϰ������Ϣ��������� ������ְλ
      ,d.FZRLXDH as d_XWSXJDXX_FZRLXDH--У��ʵϰ������Ϣ��������� ��������ϵ�绰
      ,d.QYYXDZ as d_XWSXJDXX_QYYXDZ--У��ʵϰ������Ϣ��������� ��ҵ�����ַ
      ,d.QYQQ as d_XWSXJDXX_QYQQ--У��ʵϰ������Ϣ��������� ��ҵQQ
      ,d.QYMSN as d_XWSXJDXX_QYMSN--У��ʵϰ������Ϣ��������� ��ҵMSN
      ,d.QYWZ as d_XWSXJDXX_QYWZ--У��ʵϰ������Ϣ��������� ��ҵ��ַ
      ,d.QYJJ as d_XWSXJDXX_QYJJ--У��ʵϰ������Ϣ��������� ��ҵ���
      ,d.SHZT as d_XWSXJDXX_SHZT--У��ʵϰ������Ϣ��������� ���״̬
      ,e.SCHOOLID as e_SXGW_SCHOOLID--ʵϰ��λ�� ѧУID
      ,e.QYID as e_SXGW_QYID--ʵϰ��λ�� ��ҵID
      ,e.GWMC as e_SXGW_GWMC--ʵϰ��λ�� ��λ����
      ,e.QYMC as e_SXGW_QYMC--ʵϰ��λ�� ��ҵ����
      ,e.ZPKSSJ as e_SXGW_ZPKSSJ--ʵϰ��λ�� ��Ƹ��ʼʱ��
      ,e.ZPJSSJ as e_SXGW_ZPJSSJ--ʵϰ��λ�� ��Ƹ����ʱ��
      ,e.GZXS as e_SXGW_GZXS--ʵϰ��λ�� ������ʽ
      ,e.XBYQ as e_SXGW_XBYQ--ʵϰ��λ�� �Ա�Ҫ��
      ,e.GWXC as e_SXGW_GWXC--ʵϰ��λ�� ��λн��
      ,e.WYYQ as e_SXGW_WYYQ--ʵϰ��λ�� ����Ҫ��
      ,e.GZDD as e_SXGW_GZDD--ʵϰ��λ�� �����ص�
      ,e.JSJSP as e_SXGW_JSJSP--ʵϰ��λ�� �����ˮƽ
      ,e.ZPRS as e_SXGW_ZPRS--ʵϰ��λ�� ��Ƹ����
      ,e.XLYQ as e_SXGW_XLYQ--ʵϰ��λ�� ѧ��Ҫ��
      ,e.ZYYQ as e_SXGW_ZYYQ--ʵϰ��λ�� רҵҪ��
      ,e.NLYQ as e_SXGW_NLYQ--ʵϰ��λ�� ����Ҫ��
      ,e.GWJJ as e_SXGW_GWJJ--ʵϰ��λ�� ��λ���
      ,e.JBQK as e_SXGW_JBQK--ʵϰ��λ�� �������
      ,e.GZJY as e_SXGW_GZJY--ʵϰ��λ�� ��������
      ,e.SHZT as e_SXGW_SHZT--ʵϰ��λ�� ���״̬
      ,e.GWZT as e_SXGW_GWZT--ʵϰ��λ�� ��λ״̬

FROM dbo.EDU_ZZJX_07_A05_XSYP AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����ϢID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS d ON a.QYID = d.ID /*��ҵID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS e ON a.GWID = e.ID /*ʵϰ��λID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS db ON d.JDLBM = db.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.QYXZQ = dc.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS dd ON d.QYXZ = dd.DM /*��ҵ����*/
GO

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
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS c ON a.QYID = c.ID /*��ҵID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS cb ON c.JDLBM = cb.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.QYXZQ = cc.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS cd ON c.QYXZ = cd.DM /*��ҵ����*/
GO

--ѧУʵϰ��/�±�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A03_XXSXZY_DISP]
AS
SELECT a.[ID]--ʵϰ��/��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[SXJHID]--ʵϰ�ƻ�ID
      ,a.[SXJDID]--ʵϰ�׶�ID
      ,a.[MC]--����
      ,a.[KSSJ]--��ʼʱ��
      ,a.[JSSJ]--����ʱ��
      ,a.[LX]--����
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--ѧУʵϰ�ƻ��� ѧУID
      ,c.JHBT as c_XXSXJH_JHBT--ѧУʵϰ�ƻ��� �ƻ�����
      ,c.NJ as c_XXSXJH_NJ--ѧУʵϰ�ƻ��� �꼶
      ,c.BGXS as c_XXSXJH_BGXS--ѧУʵϰ�ƻ��� ������ʽ
      ,c.SFSX as c_XXSXJH_SFSX--ѧУʵϰ�ƻ��� �ƻ��Ƿ���Ч
      ,cb.MC as c_XXSXJH_SFSX_MC--�ڿη�ʽ����� ����
      ,d.SCHOOLID as d_XXSXJD_SCHOOLID--ѧУʵϰ�׶α� ѧУID
      ,d.SXJHID as d_XXSXJD_SXJHID--ѧУʵϰ�׶α� ʵϰ�ƻ�ID
      ,d.JDM as d_XXSXJD_JDM--ѧУʵϰ�׶α� �׶���
      ,d.JDKSSJ as d_XXSXJD_JDKSSJ--ѧУʵϰ�׶α� �׶ο�ʼʱ��
      ,d.JDJSSJ as d_XXSXJD_JDJSSJ--ѧУʵϰ�׶α� �׶ν���ʱ��

FROM dbo.EDU_ZZJX_07_A03_XXSXZY AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A02_XXSXJD AS d ON a.SXJDID = d.ID /*ʵϰ�׶�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cb ON c.SFSX = cb.DM /*�ƻ��Ƿ���Ч*/
GO

--ѧУʵϰ�׶α�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A02_XXSXJD_DISP]
AS
SELECT a.[ID]--ʵϰ�׶�ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[SXJHID]--ʵϰ�ƻ�ID
      ,a.[JDM]--�׶���
      ,a.[JDKSSJ]--�׶ο�ʼʱ��
      ,a.[JDJSSJ]--�׶ν���ʱ��
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--ѧУʵϰ�ƻ��� ѧУID
      ,c.JHBT as c_XXSXJH_JHBT--ѧУʵϰ�ƻ��� �ƻ�����
      ,c.NJ as c_XXSXJH_NJ--ѧУʵϰ�ƻ��� �꼶
      ,c.BGXS as c_XXSXJH_BGXS--ѧУʵϰ�ƻ��� ������ʽ
      ,c.SFSX as c_XXSXJH_SFSX--ѧУʵϰ�ƻ��� �ƻ��Ƿ���Ч
      ,cb.MC as c_XXSXJH_SFSX_MC--�ڿη�ʽ����� ����

FROM dbo.EDU_ZZJX_07_A02_XXSXJD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cb ON c.SFSX = cb.DM /*�ƻ��Ƿ���Ч*/
GO

--ѧУʵϰ�ƻ���
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A01_XXSXJH_DISP]
AS
SELECT a.[ID]--ʵϰ�ƻ�ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[JHBT]--�ƻ�����
      ,a.[NJ]--�꼶
      ,a.[BGXS]--������ʽ
      ,a.[SFSX]--�ƻ��Ƿ���Ч
      ,c.MC as c_SKFS_MC--�ڿη�ʽ����� ����

FROM dbo.EDU_ZZJX_07_A01_XXSXJH AS a LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS c ON a.SFSX = c.DM /*�ƻ��Ƿ���Ч*/
GO

--ѧ���������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_07_01_XJSJ_DISP]
AS
SELECT a.[XSXXID]--ѧ����Ϣ���ݱ�
      ,a.[SCHOOLID]--ѧУ��
      ,a.[ZYXXID]--רҵ������Ϣ
      ,a.[ZZBJID]--ѧУ�༶���ݱ�
      ,a.[ZZNJID]--ѧУ�꼶���ݱ�
      ,a.[RXNY]--��ѧ����
      ,a.[XSLBM]--ѧ�������
      ,a.[XZ]--ѧ��
      ,a.[ZYM]--רҵ��
      ,a.[XSDQZTM]--ѧ����ǰ״̬��
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,b.XM as b_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,b.XBM as b_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,bc.MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.XXM as b_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,bd.JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.CSRQ as b_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,be.MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,b.MZM as b_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,bf.MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.XYZJM as b_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,bi.SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.JKZKM as b_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,bj.SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,bk.JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.HKLBM as b_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,bm.MC as b_XSXX_HKLBM_MC--���������� ����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.TC as b_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,b.JSTXH as b_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,b.ZP as b_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,d.ZYDM as d_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,db.ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,db.MC as d_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
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
      ,dc.MC as d_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,d.ZYLB as d_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,e.SCHOOLID as e_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,e.ZYXXID as e_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,e.ZZNJID as e_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,e.XZBMC as e_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,e.JBNY as e_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,e.BZRGH as e_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,e.JSBH as e_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,e.NANSRS as e_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,e.NVSRS as e_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,e.ZRS as e_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,e.BZXH as e_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,e.JXJH as e_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,e.JGH as e_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,e.XQDM as e_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,f.SCHOOLID as f_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,f.NJMC as f_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,f.SSNF as f_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,f.NJZT as f_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,fb.MC as f_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,g.MC as g_XSLB_MC--ѧ��������� ����
      ,g.SM as g_XSLB_SM--ѧ��������� ˵��
      ,h.MC as h_XSDQZT_MC--ѧ����ǰ״̬����� ����
      ,h.SM as h_XSDQZT_SM--ѧ����ǰ״̬����� ˵��

FROM dbo.EDU_ZZXS_07_01_XJSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*רҵ������Ϣ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS e ON a.ZZBJID = e.XZBDM /*ѧУ�༶���ݱ�*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS f ON a.ZZNJID = f.NJDM /*ѧУ�꼶���ݱ�*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS g ON a.XSLBM = g.DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS h ON a.XSDQZTM = h.DM /*ѧ����ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS db ON d.ZYDM = db.DM /*רҵ����*/ AND d.SSZYML = db.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS dc ON d.SSZYML = dc.DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fb ON f.NJZT = fb.DM /*�꼶״̬*/
GO

--ѧ����ͥ����������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_02_A02_XSJTJJ_DISP]
AS
SELECT a.[XSXXID]--ѧ����Ϣ���ݱ�
      ,a.[SCHOOLID]--ѧУ��
      ,a.[SYRK]--�����˿�
      ,a.[LDLRK]--�Ͷ����˿�
      ,a.[JTRJYSR]--��ͥ�˾�������
      ,a.[JTLBM]--��ͥ�����
      ,a.[KNYYM]--����ԭ����
      ,a.[KNCDM]--���ѳ̶���
      ,a.[SFDB]--�Ƿ�ͱ�
      ,a.[RXQHKLBM]--��ѧǰ���������
      ,a.[JXDDBX]--��ѧ�صͱ���
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,b.XM as b_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,b.XBM as b_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,bc.MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.XXM as b_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,bd.JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.CSRQ as b_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,be.MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,b.MZM as b_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,bf.MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.XYZJM as b_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,bi.SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.JKZKM as b_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,bj.SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,bk.JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.HKLBM as b_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,bm.MC as b_XSXX_HKLBM_MC--���������� ����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.TC as b_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,b.JSTXH as b_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,b.ZP as b_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.MC as d_JTLB_MC--��ͥ������� ����
      ,e.MC as e_KNYY_MC--����ԭ������ ����
      ,f.MC as f_KNCD_MC--���ѳ̶ȴ���� ����
      ,f.SM as f_KNCD_SM--���ѳ̶ȴ���� ˵��
      ,g.MC as g_SFBZ_MC--�Ƿ��־����� ����
      ,h.MC as h_HKLB_MC--���������� ����

FROM dbo.EDU_ZZXS_02_A02_XSJTJJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JTLB AS d ON a.JTLBM = d.DM /*��ͥ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KNYY AS e ON a.KNYYM = e.DM /*����ԭ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KNCD AS f ON a.KNCDM = f.DM /*���ѳ̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS g ON a.SFDB = g.DM /*�Ƿ�ͱ�*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS h ON a.RXQHKLBM = h.DM /*��ѧǰ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/
GO

--ѧ����ϵ�����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_02_A01_XSLXR_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XSXXID]--ѧ����Ϣ���ݱ�
      ,a.[GXM]--��ϵ��
      ,a.[LXRXM]--��ϵ������
      ,a.[YZBM]--��������
      ,a.[TXDZ]--ͨ�ŵ�ַ
      ,a.[DH]--�绰
      ,a.[YDDH]--�ƶ��绰
      ,a.[CZDH]--����绰
      ,a.[DZXX]--��������
      ,a.[WLDZ]--�����ַ
      ,a.[JSTXH]--��ʱͨѶ��
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,c.XM as c_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,c.XBM as c_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,cc.MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.XXM as c_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,cd.JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.CSRQ as c_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,ce.MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,c.MZM as c_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,cf.MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.XYZJM as c_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,ci.SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JKZKM as c_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,cj.SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,ck.JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,cm.MC as c_XSXX_HKLBM_MC--���������� ����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.TC as c_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,c.JSTXH as c_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,c.ZP as c_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.MC as d_JTGX_MC--��ͥ��ϵ���� ����

FROM dbo.EDU_ZZXS_02_A01_XSLXR AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JTGX AS d ON a.GXM = d.DM /*��ϵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*����/����*/
GO

--ѧ����ͥ��Ա���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_02_02_XSJTCY_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XSXXID]--ѧ����Ϣ���ݱ�
      ,a.[XM]--����
      ,a.[GXM]--��ϵ��
      ,a.[JTCYZYM]--��ͥ��Աְҵ��
      ,a.[SZDW]--���ڵ�λ
      ,a.[ZZMMM]--������ò��
      ,a.[DH]--�绰
      ,a.[YDDH]--�ƶ��绰
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,c.XM as c_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,c.XBM as c_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,cc.MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.XXM as c_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,cd.JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.CSRQ as c_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,ce.MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,c.MZM as c_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,cf.MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.XYZJM as c_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,ci.SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JKZKM as c_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,cj.SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,ck.JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,cm.MC as c_XSXX_HKLBM_MC--���������� ����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.TC as c_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,c.JSTXH as c_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,c.ZP as c_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.MC as d_JTGX_MC--��ͥ��ϵ���� ����
      ,e.MC as e_ZYFL_MC--ְҵ��������� ����
      ,f.MC as f_ZZMM_MC--������ò���� ����
      ,f.JC as f_ZZMM_JC--������ò���� ���

FROM dbo.EDU_ZZXS_02_02_XSJTCY AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JTGX AS d ON a.GXM = d.DM /*��ϵ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZYFL AS e ON a.JTCYZYM = e.DM /*��ͥ��Աְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS f ON a.ZZMMM = f.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*����/����*/
GO

--ѧ����ͥ��Ϣ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_02_01_XSJTXX_DISP]
AS
SELECT a.[XSXXID]--ѧ����Ϣ���ݱ�
      ,a.[SCHOOLID]--ѧУ��
      ,a.[JTZZ]--��ͥסַ
      ,a.[JTYZBM]--��ͥ��������
      ,a.[JTDH]--��ͥ�绰
      ,a.[JTLXR]--��ͥ��ϵ��
      ,a.[JTDZXX]--��ͥ��������
      ,a.[JTRK]--��ͥ�˿�
      ,a.[JTZYSRLY]--��ͥ��Ҫ������Դ
      ,a.[JTYSRJE]--��ͥ��������
      ,a.[JTNSRJE]--��ͥ��������
      ,a.[LJZJHCZ]--��������վ
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,b.XM as b_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,b.XBM as b_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,bc.MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.XXM as b_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,bd.JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.CSRQ as b_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,be.MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,b.MZM as b_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,bf.MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.XYZJM as b_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,bi.SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.JKZKM as b_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,bj.SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,bk.JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.HKLBM as b_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,bm.MC as b_XSXX_HKLBM_MC--���������� ����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.TC as b_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,b.JSTXH as b_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,b.ZP as b_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)

FROM dbo.EDU_ZZXS_02_01_XSJTXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/
GO

--ѧ����չ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_01_A01_XSXX_DISP]
AS
SELECT a.[XSXXID]--ѧ����Ϣ���ݱ�
      ,a.[SCHOOLID]--ѧУ��
      ,a.[ZYXXID]--רҵ������Ϣ
      ,a.[XNID]--ѧ��
      ,a.[ZZXQID]--ѧ�ڱ�
      ,a.[JTDZQH]--��ͥ��ַ������
      ,a.[JTXXDZ]--��ͥ��ϸ��ַ
      ,a.[HJXXDZ]--������ϸ��ַ
      ,a.[HJXZ]--�������ʴ���
      ,a.[BYJX]--���˾�ѵ
      ,a.[CSBZR]--����������
      ,a.[DRZW]--�����κ���ְ��
      ,a.[YYDR]--Ը�ⵣ�ΰ�ɲ�����ְ
      ,a.[BZ]--��ע
      ,a.[BYLX]--��ҵ������
      ,a.[XSLX]--ѧ������
      ,a.[SFZS]--�Ƿ�ס��
      ,a.[XSBMSJ]--ѧ������ʱ��
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,b.XM as b_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,b.XBM as b_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,bc.MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.XXM as b_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,bd.JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.CSRQ as b_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,be.MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,b.MZM as b_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,bf.MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.XYZJM as b_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,bi.SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.JKZKM as b_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,bj.SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,bk.JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.HKLBM as b_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,bm.MC as b_XSXX_HKLBM_MC--���������� ����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.TC as b_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,b.JSTXH as b_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,b.ZP as b_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,d.ZYDM as d_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,db.ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,db.MC as d_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
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
      ,dc.MC as d_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,d.ZYLB as d_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,e.SCHOOLID as e_XN_SCHOOLID--ѧ��� ѧУ��
      ,e.XN as e_XN_XN--ѧ��� ѧ��
      ,f.SCHOOLID as f_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,f.XNID as f_XQ_XNID--ѧ�����ݱ� ѧ��
      ,f.XQM as f_XQ_XQM--ѧ�����ݱ� ѧ����
      ,fb.MC as f_XQ_XQM_MC--ѧ�ڴ���� ����
      ,f.XQMC as f_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,f.XQKSRQ as f_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,f.XQJSRQ as f_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,g.MC as g_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,h.MC as h_HJXZ_MC--�������ʴ��� ����
      ,i.MC as i_SFBZ_MC--�Ƿ��־����� ����
      ,j.MC as j_BYSLX_MC--��ҵ�����ʹ��� ����
      ,k.MC as k_XSLB_MC--ѧ��������� ����
      ,k.SM as k_XSLB_SM--ѧ��������� ˵��
      ,l.MC as l_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZXS_01_A01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*רҵ������Ϣ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS e ON a.XNID = e.ID /*ѧ��*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS f ON a.ZZXQID = f.ID /*ѧ�ڱ�*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS g ON a.JTDZQH = g.DM /*��ͥ��ַ������*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_HJXZ AS h ON a.HJXZ = h.DM /*�������ʴ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS i ON a.BYJX = i.DM /*���˾�ѵ*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_BYSLX AS j ON a.BYLX = j.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS k ON a.XSLX = k.DM /*ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS l ON a.SFZS = l.DM /*�Ƿ�ס��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS db ON d.ZYDM = db.DM /*רҵ����*/ AND d.SSZYML = db.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS dc ON d.SSZYML = dc.DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS fb ON f.XQM = fb.DM /*ѧ����*/
GO

--ѧ����Ϣ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_01_01_XSXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XH]--ѧ��
      ,a.[XM]--����
      ,a.[YWXM]--Ӣ������
      ,a.[XMPY]--����ƴ��
      ,a.[CYM]--������
      ,a.[SFZJLXM]--���֤��������
      ,a.[SFZJH]--���֤����
      ,a.[XBM]--�Ա���
      ,a.[XXM]--Ѫ����
      ,a.[CSRQ]--��������
      ,a.[CSDM]--��������
      ,a.[JG]--����
      ,a.[MZM]--������
      ,a.[HYZKM]--����״����
      ,a.[XYZJM]--�����ڽ���
      ,a.[GATQWM]--�۰�̨������
      ,a.[JKZKM]--����״����
      ,a.[ZZMMM]--������ò��
      ,a.[HKSZDXZQHM]--�������ڵ�����������
      ,a.[HKLBM]--���������
      ,a.[SFSLDRK]--�Ƿ��������˿�
      ,a.[GJDQM]--����/����
      ,a.[TC]--�س�
      ,a.[XSLXDH]--ѧ����ϵ�绰
      ,a.[WLDZ]--�����ַ
      ,a.[JSTXH]--��ʱͨѶ��
      ,a.[DZXX]--��������
      ,a.[ZP]--��Ƭ(·��)
      ,c.MC as c_SFZJLX_MC--���֤�����ʹ���� ����
      ,d.MC as d_RDXB_MC--�˵��Ա���� ����
      ,e.MC as e_XX_MC--Ѫ�ʹ���� ����
      ,e.JC as e_XX_JC--Ѫ�ʹ���� ���
      ,f.MC as f_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,g.MZMC as g_ZGGMZMCDLMZMPXF_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,g.ZMDM as g_ZGGMZMCDLMZMPXF_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,h.MC as h_HYZZ_MC--����״������ ����
      ,i.MC as i_ZJXY_MC--�ڽ��������� ����
      ,j.MC as j_GATQW_MC--�۰�̨�������� ����
      ,j.SM as j_GATQW_SM--�۰�̨�������� ˵��
      ,k.MC as k_JKZKYWSZ_MC--����״��1λ���ִ��� ����
      ,k.SM as k_JKZKYWSZ_SM--����״��1λ���ִ��� ˵��
      ,l.MC as l_ZZMM_MC--������ò���� ����
      ,l.JC as l_ZZMM_JC--������ò���� ���
      ,m.MC as m_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,n.MC as n_HKLB_MC--���������� ����
      ,o.MC as o_SFBZ_MC--�Ƿ��־����� ����
      ,p.GJDQMCJC as p_SJGGHDQMC_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,p.EZMDM as p_SJGGHDQMC_EZMDM--��������͵������ƴ��� ����ĸ����
      ,p.SZMDM as p_SJGGHDQMC_SZMDM--��������͵������ƴ��� ����ĸ����

FROM dbo.EDU_ZZXS_01_01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS c ON a.SFZJLXM = c.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS d ON a.XBM = d.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS e ON a.XXM = e.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS f ON a.CSDM = f.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS g ON a.MZM = g.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS h ON a.HYZKM = h.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS i ON a.XYZJM = i.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS j ON a.GATQWM = j.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS k ON a.JKZKM = k.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS l ON a.ZZMMM = l.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS m ON a.HKSZDXZQHM = m.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS n ON a.HKLBM = n.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS o ON a.SFSLDRK = o.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS p ON a.GJDQM = p.DM /*����/����*/
GO

--ѧ��ע����Ϣ���������
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_07_03_XSZCXX_DISP]
AS
SELECT a.[XSXXID]--ѧ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[ZCZKM]--ע��״����
      ,a.[ZCRQ]--ע������
      ,a.[BDRQ]--��������
      ,a.[WZCYY]--δע��ԭ��
      ,a.[WZCWBDQX]--δע��/δ����ȥ��
      ,a.[SFQJ]--�Ƿ����
      ,a.[WASZCXQM]--δ��ʱע��ѧ����
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,b.XM as b_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,b.XBM as b_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,bc.MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.XXM as b_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,bd.JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.CSRQ as b_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,be.MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,b.MZM as b_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,bf.MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.XYZJM as b_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,bi.SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.JKZKM as b_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,bj.SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,bk.JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.HKLBM as b_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,bm.MC as b_XSXX_HKLBM_MC--���������� ����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.TC as b_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,b.JSTXH as b_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,b.ZP as b_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.SCHOOLID as d_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,d.XNID as d_XQ_XNID--ѧ�����ݱ� ѧ��
      ,d.XQM as d_XQ_XQM--ѧ�����ݱ� ѧ����
      ,db.MC as d_XQ_XQM_MC--ѧ�ڴ���� ����
      ,d.XQMC as d_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,d.XQKSRQ as d_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,d.XQJSRQ as d_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,e.MC as e_ZCZK_MC--ע��״������� ����
      ,f.MC as f_SFBZ_MC--�Ƿ��־����� ����
      ,g.MC as g_XQ_MC--ѧ�ڴ���� ����

FROM dbo.EDU_ZZXS_07_03_XSZCXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ��ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZCZK AS e ON a.ZCZKM = e.DM /*ע��״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFQJ = f.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS g ON a.WASZCXQM = g.DM /*δ��ʱע��ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS db ON d.XQM = db.DM /*ѧ����*/
GO

--ѧ���춯���������
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_07_02_XJYD_DISP]
AS
SELECT a.[ID]--ѧ���춯����
      ,a.[XSXXID]--ѧ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[YDLBM]--�춯�����
      ,a.[YDRQ]--�춯����
      ,a.[YDYYM]--�춯ԭ����
      ,a.[SPRQ]--��������
      ,a.[SPWH]--�����ĺ�
      ,a.[JBRID]--������ID
      ,a.[JBRGH]--�����˹���
      ,a.[YDLYXXM]--�춯��ԴѧУ��
      ,a.[YDQXXXM]--�춯ȥ��ѧУ��
      ,a.[YDSM]--�춯˵��
      ,a.[YZYM]--ԭרҵ��
      ,a.[YZYID]--ԭרҵID
      ,a.[YBH]--ԭ���
      ,a.[YNJ]--ԭ�꼶
      ,a.[XZYM]--��רҵ��
      ,a.[XZYID]--��רҵID
      ,a.[XBH]--�ְ��
      ,a.[XNJ]--���꼶
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,b.XM as b_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,b.XBM as b_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,bc.MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.XXM as b_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,bd.JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.CSRQ as b_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,be.MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,b.MZM as b_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,bf.MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.XYZJM as b_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,bi.SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.JKZKM as b_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,bj.SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,bk.JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.HKLBM as b_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,bm.MC as b_XSXX_HKLBM_MC--���������� ����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.TC as b_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,b.JSTXH as b_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,b.ZP as b_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.MC as d_XJYDLB_MC--ѧ���춯������� ����
      ,e.MC as e_XJYDYY_MC--ѧ���춯ԭ������ ����
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,f.GH as f_JZGJBSJ_GH--��ְ��������������� ����
      ,f.XM as f_JZGJBSJ_XM--��ְ��������������� ����
      ,f.YWXM as f_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,f.XMPY as f_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,f.CYM as f_JZGJBSJ_CYM--��ְ��������������� ������
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,fb.MC as f_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,f.SFZJH as f_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,f.CSRQ as f_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,f.XBM as f_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,fc.MC as f_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,f.MZM as f_JZGJBSJ_MZM--��ְ��������������� ������
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.XXM as f_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,fe.MC as f_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,fe.JC as f_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,f.JKZKM as f_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,ff.MC as f_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,ff.SM as f_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,f.HYZTM as f_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,fg.MC as f_JZGJBSJ_HYZTM_MC--����״������ ����
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,fh.MC as f_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,fh.JC as f_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,f.GATQWM as f_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,fi.MC as f_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,fi.SM as f_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,f.JG as f_JZGJBSJ_JG--��ְ��������������� ����
      ,f.GJDQM as f_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,fj.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,fj.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,fj.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,f.CSDXZQHM as f_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,fk.MC as f_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,f.XYZJM as f_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,fl.MC as f_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,f.JZGHKSZDXZQHM as f_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,fm.MC as f_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,f.HKLBM as f_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,fn.MC as f_JZGJBSJ_HKLBM_MC--���������� ����
      ,f.DQZZ as f_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,f.DQZZYZBM as f_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,f.CJGZNY as f_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,f.CJNY as f_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,f.LXNY as f_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,f.BZLBM as f_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,fo.MC as f_JZGJBSJ_BZLBM_MC--����������� ����
      ,f.JZGLBM as f_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,fp.MC as f_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,fp.SM as f_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,f.GWLBM as f_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,fq.MC as f_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,f.SFJZJS as f_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,fr.MC as f_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,f.SFSSXJS as f_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�
      ,fs.MC as f_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,f.ZP as f_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,f.DQZTM as f_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,ft.MC as f_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,f.YDDH as f_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,f.GDDH as f_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,f.TXDZYZBM as f_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,f.TXDZ as f_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,f.DZXX as f_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,f.WLDZ as f_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,f.JSTXH as f_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,g.SCHOOLID as g_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,g.ZYDM as g_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,gb.ZYMLLB as g_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,gb.MC as g_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,g.ZYMC as g_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,g.ZYYWMC as g_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,g.XZ as g_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,g.ZYFXMC as g_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,g.ZYJC as g_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,g.JLNY as g_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,g.ZYJSS as g_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,g.KSJGH as g_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,g.ZXF as g_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,g.SSZYML as g_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,gc.MC as g_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,g.ZYLB as g_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,h.SCHOOLID as h_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,h.ZYXXID as h_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,h.ZZNJID as h_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,h.XZBMC as h_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,h.JBNY as h_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,h.BZRGH as h_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,h.JSBH as h_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,h.NANSRS as h_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,h.NVSRS as h_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,h.ZRS as h_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,h.BZXH as h_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,h.JXJH as h_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,h.JGH as h_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,h.XQDM as h_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,i.SCHOOLID as i_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,i.NJMC as i_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,i.SSNF as i_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,i.NJZT as i_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,ib.MC as i_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,j.SCHOOLID as j_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,j.ZYDM as j_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,jb.ZYMLLB as j_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,jb.MC as j_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,j.ZYMC as j_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,j.ZYYWMC as j_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,j.XZ as j_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,j.ZYFXMC as j_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,j.ZYJC as j_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,j.JLNY as j_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,j.ZYJSS as j_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,j.KSJGH as j_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,j.ZXF as j_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,j.SSZYML as j_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,jc.MC as j_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,j.ZYLB as j_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,k.SCHOOLID as k_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,k.ZYXXID as k_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,k.ZZNJID as k_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,k.XZBMC as k_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,k.JBNY as k_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,k.BZRGH as k_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,k.JSBH as k_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,k.NANSRS as k_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,k.NVSRS as k_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,k.ZRS as k_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,k.BZXH as k_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,k.JXJH as k_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,k.JGH as k_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,k.XQDM as k_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,l.SCHOOLID as l_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,l.NJMC as l_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,l.SSNF as l_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,l.NJZT as l_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,lb.MC as l_ZZNJ_NJZT_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZXS_07_02_XJYD AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ��ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDLB AS d ON a.YDLBM = d.DM /*�춯�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDYY AS e ON a.YDYYM = e.DM /*�춯ԭ����*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS f ON a.JBRID = f.ID /*������ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS g ON a.YZYID = g.ZYBH /*ԭרҵID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS h ON a.YBH = h.XZBDM /*ԭ���*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS i ON a.YNJ = i.NJDM /*ԭ�꼶*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS j ON a.XZYID = j.ZYBH /*��רҵID*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS k ON a.XBH = k.XZBDM /*�ְ��*/ AND a.SCHOOLID = k.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS l ON a.XNJ = l.NJDM /*���꼶*/ AND a.SCHOOLID = l.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS fb ON f.SFZJLXM = fb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fc ON f.XBM = fc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fe ON f.XXM = fe.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ff ON f.JKZKM = ff.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS fg ON f.HYZTM = fg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fh ON f.ZZMMM = fh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fi ON f.GATQWM = fi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fj ON f.GJDQM = fj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fk ON f.CSDXZQHM = fk.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fl ON f.XYZJM = fl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fm ON f.JZGHKSZDXZQHM = fm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS fn ON f.HKLBM = fn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS fo ON f.BZLBM = fo.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS fp ON f.JZGLBM = fp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS fq ON f.GWLBM = fq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fr ON f.SFJZJS = fr.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fs ON f.SFSSXJS = fs.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ft ON f.DQZTM = ft.DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS gb ON g.ZYDM = gb.DM /*רҵ����*/ AND g.SSZYML = gb.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS gc ON g.SSZYML = gc.DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ib ON i.NJZT = ib.DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS jb ON j.ZYDM = jb.DM /*רҵ����*/ AND j.SSZYML = jb.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS jc ON j.SSZYML = jc.DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS lb ON l.NJZT = lb.DM /*�꼶״̬*/
GO

--ѧ���ɼ��������
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_06_01_XSCJ_DISP]
AS
SELECT a.[XSXXID]--ѧ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[KCH]--�γ̺�
      ,a.[XQID]--ѧ��ID
      ,a.[KCMC]--�γ�����
      ,a.[XF]--ѧ��
      ,a.[XQMC]--ѧ������
      ,a.[PSCJ]--ƽʱ�ɼ�
      ,a.[CJ]--�ɼ�
      ,a.[KSXZ]--��������
      ,a.[RKJGID]--�ον̹�ID
      ,a.[RKJGH]--�ον̹���
      ,a.[CJLRJGID]--�ɼ�¼��̹�ID
      ,a.[CJLRJGH]--�ɼ�¼��̹���
      ,a.[CJLRRQ]--�ɼ�¼������
      ,a.[QZCJ]--���гɼ�
      ,a.[QMCJ]--��ĩ�ɼ�
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,b.XM as b_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,b.XBM as b_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,bc.MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.XXM as b_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,bd.JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.CSRQ as b_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,be.MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,b.MZM as b_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,bf.MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.XYZJM as b_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,bi.SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.JKZKM as b_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,bj.SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,bk.JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.HKLBM as b_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,bm.MC as b_XSXX_HKLBM_MC--���������� ����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.TC as b_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,b.JSTXH as b_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,b.ZP as b_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.SCHOOLID as d_KC_SCHOOLID--�γ���������� ѧУID
      ,d.KCMC as d_KC_KCMC--�γ���������� �γ�����
      ,d.KCYWM as d_KC_KCYWM--�γ���������� �γ�Ӣ����
      ,d.KCBM as d_KC_KCBM--�γ���������� �γ̱���
      ,d.KCJS as d_KC_KCJS--�γ���������� �γ̽���
      ,d.XF as d_KC_XF--�γ���������� ѧ��
      ,d.ZXS as d_KC_ZXS--�γ���������� ��ѧʱ
      ,d.LLXS as d_KC_LLXS--�γ���������� ����ѧʱ
      ,d.SJXS as d_KC_SJXS--�γ���������� ʵ��ѧʱ
      ,d.QTXS as d_KC_QTXS--�γ���������� ����ѧʱ
      ,d.CKSM as d_KC_CKSM--�γ���������� �ο���Ŀ
      ,d.KKDW as d_KC_KKDW--�γ���������� ���ε�λ
      ,d.KSXS as d_KC_KSXS--�γ���������� ������ʽ
      ,db.MC as d_KC_KSXS_MC--������ʽ����� ����
      ,d.SKFSM as d_KC_SKFSM--�γ���������� �ڿη�ʽ��
      ,dc.MC as d_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,d.KCFY as d_KC_KCFY--�γ���������� �γ̷���
      ,e.SCHOOLID as e_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,e.XNID as e_XQ_XNID--ѧ�����ݱ� ѧ��
      ,e.XQM as e_XQ_XQM--ѧ�����ݱ� ѧ����
      ,eb.MC as e_XQ_XQM_MC--ѧ�ڴ���� ����
      ,e.XQMC as e_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,e.XQKSRQ as e_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,e.XQJSRQ as e_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,f.MC as f_KSXZ_MC--�������ʴ���� ����
      ,f.SM as f_KSXZ_SM--�������ʴ���� ˵��
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,g.GH as g_JZGJBSJ_GH--��ְ��������������� ����
      ,g.XM as g_JZGJBSJ_XM--��ְ��������������� ����
      ,g.YWXM as g_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,g.XMPY as g_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,g.CYM as g_JZGJBSJ_CYM--��ְ��������������� ������
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,gb.MC as g_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,g.SFZJH as g_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,g.CSRQ as g_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,g.XBM as g_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,gc.MC as g_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,g.MZM as g_JZGJBSJ_MZM--��ְ��������������� ������
      ,gd.MZMC as g_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,gd.ZMDM as g_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,g.XXM as g_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,ge.MC as g_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,ge.JC as g_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,g.JKZKM as g_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,gf.MC as g_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,gf.SM as g_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,g.HYZTM as g_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,gg.MC as g_JZGJBSJ_HYZTM_MC--����״������ ����
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,gh.MC as g_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,gh.JC as g_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,g.GATQWM as g_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,gi.MC as g_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,gi.SM as g_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,g.JG as g_JZGJBSJ_JG--��ְ��������������� ����
      ,g.GJDQM as g_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,gj.GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,gj.EZMDM as g_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,gj.SZMDM as g_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,g.CSDXZQHM as g_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,gk.MC as g_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,g.XYZJM as g_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,gl.MC as g_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,g.JZGHKSZDXZQHM as g_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,gm.MC as g_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,g.HKLBM as g_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,gn.MC as g_JZGJBSJ_HKLBM_MC--���������� ����
      ,g.DQZZ as g_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,g.DQZZYZBM as g_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,g.CJGZNY as g_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,g.CJNY as g_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,g.LXNY as g_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,g.BZLBM as g_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,go.MC as g_JZGJBSJ_BZLBM_MC--����������� ����
      ,g.JZGLBM as g_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,gp.MC as g_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,gp.SM as g_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,g.GWLBM as g_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,gq.MC as g_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,g.SFJZJS as g_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,gr.MC as g_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,g.SFSSXJS as g_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�
      ,gs.MC as g_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,g.ZP as g_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,g.DQZTM as g_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,gt.MC as g_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,g.YDDH as g_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,g.GDDH as g_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,g.TXDZYZBM as g_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,g.TXDZ as g_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,g.DZXX as g_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,g.WLDZ as g_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,g.JSTXH as g_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,h.SCHOOLID as h_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,h.GH as h_JZGJBSJ_GH--��ְ��������������� ����
      ,h.XM as h_JZGJBSJ_XM--��ְ��������������� ����
      ,h.YWXM as h_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,h.XMPY as h_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,h.CYM as h_JZGJBSJ_CYM--��ְ��������������� ������
      ,h.SFZJLXM as h_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,hb.MC as h_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,h.SFZJH as h_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,h.CSRQ as h_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,h.XBM as h_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,hc.MC as h_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,h.MZM as h_JZGJBSJ_MZM--��ְ��������������� ������
      ,hd.MZMC as h_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,hd.ZMDM as h_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,h.XXM as h_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,he.MC as h_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,he.JC as h_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,h.JKZKM as h_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,hf.MC as h_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,hf.SM as h_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,h.HYZTM as h_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,hg.MC as h_JZGJBSJ_HYZTM_MC--����״������ ����
      ,h.ZZMMM as h_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,hh.MC as h_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,hh.JC as h_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,h.GATQWM as h_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,hi.MC as h_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,hi.SM as h_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,h.JG as h_JZGJBSJ_JG--��ְ��������������� ����
      ,h.GJDQM as h_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,hj.GJDQMCJC as h_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,hj.EZMDM as h_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,hj.SZMDM as h_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,h.CSDXZQHM as h_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,hk.MC as h_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,h.XYZJM as h_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,hl.MC as h_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,h.JZGHKSZDXZQHM as h_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,hm.MC as h_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,h.HKLBM as h_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,hn.MC as h_JZGJBSJ_HKLBM_MC--���������� ����
      ,h.DQZZ as h_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,h.DQZZYZBM as h_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,h.CJGZNY as h_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,h.CJNY as h_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,h.LXNY as h_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,h.BZLBM as h_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,ho.MC as h_JZGJBSJ_BZLBM_MC--����������� ����
      ,h.JZGLBM as h_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,hp.MC as h_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,hp.SM as h_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,h.GWLBM as h_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,hq.MC as h_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,h.SFJZJS as h_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,hr.MC as h_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,h.SFSSXJS as h_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�
      ,hs.MC as h_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,h.ZP as h_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,h.DQZTM as h_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,ht.MC as h_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,h.YDDH as h_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,h.GDDH as h_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,h.TXDZYZBM as h_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,h.TXDZ as h_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,h.DZXX as h_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,h.WLDZ as h_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,h.JSTXH as h_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��

FROM dbo.EDU_ZZXS_06_01_XSCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ��ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCH = d.KCH /*�γ̺�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXZ AS f ON a.KSXZ = f.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS g ON a.RKJGID = g.ID /*�ον̹�ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS h ON a.CJLRJGID = h.ID /*�ɼ�¼��̹�ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS db ON d.KSXS = db.DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dc ON d.SKFSM = dc.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS eb ON e.XQM = eb.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS gb ON g.SFZJLXM = gb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS gc ON g.XBM = gc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS gd ON g.MZM = gd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ge ON g.XXM = ge.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS gf ON g.JKZKM = gf.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS gg ON g.HYZTM = gg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS gh ON g.ZZMMM = gh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS gi ON g.GATQWM = gi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS gj ON g.GJDQM = gj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gk ON g.CSDXZQHM = gk.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS gl ON g.XYZJM = gl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gm ON g.JZGHKSZDXZQHM = gm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS gn ON g.HKLBM = gn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS go ON g.BZLBM = go.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS gp ON g.JZGLBM = gp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS gq ON g.GWLBM = gq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS gr ON g.SFJZJS = gr.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS gs ON g.SFSSXJS = gs.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS gt ON g.DQZTM = gt.DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS hb ON h.SFZJLXM = hb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS hc ON h.XBM = hc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS hd ON h.MZM = hd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS he ON h.XXM = he.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS hf ON h.JKZKM = hf.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS hg ON h.HYZTM = hg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS hh ON h.ZZMMM = hh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS hi ON h.GATQWM = hi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS hj ON h.GJDQM = hj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS hk ON h.CSDXZQHM = hk.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS hl ON h.XYZJM = hl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS hm ON h.JZGHKSZDXZQHM = hm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS hn ON h.HKLBM = hn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS ho ON h.BZLBM = ho.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS hp ON h.JZGLBM = hp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS hq ON h.GWLBM = hq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS hr ON h.SFJZJS = hr.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS hs ON h.SFSSXJS = hs.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ht ON h.DQZTM = ht.DM /*��ǰ״̬��*/
GO

--ѧ��������
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_13_A01_XSJL_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[XSXXID]--ѧ����ϢID
      ,a.[YYNL]--Ӣ������
      ,a.[GZNX]--��������
      ,a.[ZWPJ]--��������
      ,a.[JYJL]--��������
      ,a.[SHZS]--����֤��
      ,a.[GZJY]--��������
      ,a.[QZYX]--��ְ����
      ,a.[JNZC]--����ר��
      ,a.[XMJY]--��Ŀ����
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,c.XM as c_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,c.XBM as c_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,cc.MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.XXM as c_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,cd.JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.CSRQ as c_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,ce.MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,c.MZM as c_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,cf.MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.XYZJM as c_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,ci.SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JKZKM as c_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,cj.SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,ck.JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,cm.MC as c_XSXX_HKLBM_MC--���������� ����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.TC as c_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,c.JSTXH as c_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,c.ZP as c_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)

FROM dbo.EDU_ZZXS_13_A01_XSJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����ϢID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*����/����*/
GO

--У�ڻ����������
CREATE VIEW [dbo].[VIEW_EDU_ZZXX_03_01_XNJG_DISP]
AS
SELECT a.[JGH]--������
      ,a.[SCHOOLID]--ѧУ��
      ,a.[JGMC]--��������
      ,a.[JGYWMC]--����Ӣ������
      ,a.[JGJC]--�������
      ,a.[JGJP]--������ƴ
      ,a.[JGDZ]--������ַ
      ,a.[LSSJJGH]--�����ϼ�������
      ,a.[LSXQH]--����У����
      ,a.[JGYXBS]--������Ч��ʶ
      ,a.[SFST]--�Ƿ�ʵ��
      ,a.[JLNY]--��������
      ,a.[JGYZBM]--������������
      ,a.[FZRH]--�����˺�
      ,c.SCHOOLID as c_XNJG_SCHOOLID--У�ڻ���������� ѧУ��
      ,c.JGMC as c_XNJG_JGMC--У�ڻ���������� ��������
      ,c.JGYWMC as c_XNJG_JGYWMC--У�ڻ���������� ����Ӣ������
      ,c.JGJC as c_XNJG_JGJC--У�ڻ���������� �������
      ,c.JGJP as c_XNJG_JGJP--У�ڻ���������� ������ƴ
      ,c.JGDZ as c_XNJG_JGDZ--У�ڻ���������� ������ַ
      ,c.LSSJJGH as c_XNJG_LSSJJGH--У�ڻ���������� �����ϼ�������
      ,c.LSXQH as c_XNJG_LSXQH--У�ڻ���������� ����У����
      ,c.JGYXBS as c_XNJG_JGYXBS--У�ڻ���������� ������Ч��ʶ
      ,cb.MC as c_XNJG_JGYXBS_MC--�Ƿ��־����� ����
      ,c.SFST as c_XNJG_SFST--У�ڻ���������� �Ƿ�ʵ��
      ,cc.MC as c_XNJG_SFST_MC--�Ƿ��־����� ����
      ,c.JLNY as c_XNJG_JLNY--У�ڻ���������� ��������
      ,c.JGYZBM as c_XNJG_JGYZBM--У�ڻ���������� ������������
      ,c.FZRH as c_XNJG_FZRH--У�ڻ���������� �����˺�
      ,d.MC as d_SFBZ_MC--�Ƿ��־����� ����
      ,e.MC as e_SFBZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZXX_03_01_XNJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.LSSJJGH = c.JGH /*�����ϼ�������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.JGYXBS = d.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFST = e.DM /*�Ƿ�ʵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.JGYXBS = cb.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cc ON c.SFST = cc.DM /*�Ƿ�ʵ��*/
GO

--ѧУ�������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXX_01_01_ZZXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[XXDM]--ѧУ����
      ,a.[XXMC]--ѧУ����
      ,a.[XXYWMC]--ѧУӢ������
      ,a.[XXJBZM]--ѧУ�ٰ�����
      ,a.[XXZGBMM]--ѧУ���ܲ�����
      ,a.[XXDZ]--ѧУ��ַ
      ,a.[XXYZBM]--ѧУ��������
      ,a.[XZQHM]--����������
      ,a.[JXNY]--��У����
      ,a.[XQR]--У����
      ,a.[CLBJ]--��������
      ,a.[LSYG]--��ʷ�ظ�
      ,a.[XXXQS]--ѧУУ����
      ,a.[XXPGLX]--ѧУ��������
      ,a.[XXPGQKSM]--ѧУ�������˵��
      ,a.[ZYDZ]--��ҳ��ַ
      ,a.[FDDBRH]--���������˺�
      ,a.[FRZSH]--����֤���
      ,a.[LXDH]--��ϵ�绰
      ,a.[CZDH]--����绰
      ,a.[DZXX]--��������
      ,b.MC as b_XXJYJGJBZ_MC--ѧУ�������������ٰ��ߴ���� ����
      ,b.SM as b_XXJYJGJBZ_SM--ѧУ�������������ٰ��ߴ���� ˵��
      ,c.MC as c_XXJYJGJBZ_MC--ѧУ�������������ٰ��ߴ���� ����
      ,c.SM as c_XXJYJGJBZ_SM--ѧУ�������������ٰ��ߴ���� ˵��
      ,d.MC as d_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,e.MC as e_PGQK_MC--����������� ����

FROM dbo.EDU_ZZXX_01_01_ZZXX AS a LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS b ON a.XXJBZM = b.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS c ON a.XXZGBMM = c.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.XZQHM = d.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS e ON a.XXPGLX = e.DM /*ѧУ��������*/
GO

--������λ��
CREATE VIEW [dbo].[VIEW_EDU_ZZXX_03_A01_JGGW_DISP]
AS
SELECT a.[ID]--��λ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[JGH]--������
      ,a.[GWBH]--��λ���
      ,a.[GWMC]--��λ����
      ,a.[GWSM]--��λ˵��
      ,c.SCHOOLID as c_XNJG_SCHOOLID--У�ڻ���������� ѧУ��
      ,c.JGMC as c_XNJG_JGMC--У�ڻ���������� ��������
      ,c.JGYWMC as c_XNJG_JGYWMC--У�ڻ���������� ����Ӣ������
      ,c.JGJC as c_XNJG_JGJC--У�ڻ���������� �������
      ,c.JGJP as c_XNJG_JGJP--У�ڻ���������� ������ƴ
      ,c.JGDZ as c_XNJG_JGDZ--У�ڻ���������� ������ַ
      ,c.LSSJJGH as c_XNJG_LSSJJGH--У�ڻ���������� �����ϼ�������
      ,c.LSXQH as c_XNJG_LSXQH--У�ڻ���������� ����У����
      ,c.JGYXBS as c_XNJG_JGYXBS--У�ڻ���������� ������Ч��ʶ
      ,cb.MC as c_XNJG_JGYXBS_MC--�Ƿ��־����� ����
      ,c.SFST as c_XNJG_SFST--У�ڻ���������� �Ƿ�ʵ��
      ,cc.MC as c_XNJG_SFST_MC--�Ƿ��־����� ����
      ,c.JLNY as c_XNJG_JLNY--У�ڻ���������� ��������
      ,c.JGYZBM as c_XNJG_JGYZBM--У�ڻ���������� ������������
      ,c.FZRH as c_XNJG_FZRH--У�ڻ���������� �����˺�

FROM dbo.EDU_ZZXX_03_A01_JGGW AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.JGH = c.JGH /*������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.JGYXBS = cb.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cc ON c.SFST = cc.DM /*�Ƿ�ʵ��*/
GO

--��ѧ�ɼ����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZZS_02_01_RXCJ_DISP]
AS
SELECT a.[XSXXID]--ѧ����Ϣ���ݱ�
      ,a.[SCHOOLID]--ѧУ��
      ,a.[RXZF]--��ѧ�ܷ�
      ,a.[GKZF]--�п��ܷ�
      ,a.[FJF]--���ӷ�
      ,a.[FJFLBM]--���ӷ������
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,b.XM as b_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,b.XBM as b_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,bc.MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.XXM as b_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,bd.JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.CSRQ as b_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,be.MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,b.MZM as b_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,bf.MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.XYZJM as b_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,bi.SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.JKZKM as b_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,bj.SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,bk.JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.HKLBM as b_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,bm.MC as b_XSXX_HKLBM_MC--���������� ����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.TC as b_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,b.JSTXH as b_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,b.ZP as b_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.MC as d_FJFLB_MC--���ӷ�������� ����

FROM dbo.EDU_ZZZS_02_01_RXCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_FJFLB AS d ON a.FJFLBM = d.DM /*���ӷ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/
GO

--�����ƻ����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZZS_01_A01_ZSJH_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[ZYXXID]--רҵ������Ϣ
      ,a.[XNID]--ѧ��
      ,a.[ZSJHRS]--�����ƻ�
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,c.ZYDM as c_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,cb.ZYMLLB as c_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,cb.MC as c_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,c.ZYMC as c_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,c.ZYYWMC as c_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,c.XZ as c_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,c.ZYFXMC as c_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,c.ZYJC as c_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,c.JLNY as c_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,c.ZYJSS as c_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,c.KSJGH as c_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,c.ZXF as c_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,c.SSZYML as c_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,cc.MC as c_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,c.ZYLB as c_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,d.SCHOOLID as d_XN_SCHOOLID--ѧ��� ѧУ��
      ,d.XN as d_XN_XN--ѧ��� ѧ��

FROM dbo.EDU_ZZZS_01_A01_ZSJH AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS c ON a.ZYXXID = c.ZYBH /*רҵ������Ϣ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS d ON a.XNID = d.ID /*ѧ��*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS cb ON c.ZYDM = cb.DM /*רҵ����*/ AND c.SSZYML = cb.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS cc ON c.SSZYML = cc.DM /*����רҵĿ¼*/
GO

--�������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZZS_01_01_ZSXX_DISP]
AS
SELECT a.[XSXXID]--ѧ����Ϣ���ݱ�
      ,a.[SCHOOLID]--ѧУ��
      ,a.[ZKZH]--׼��֤��
      ,a.[KSH]--������
      ,a.[KQXZQHM]--��������������
      ,a.[RXNY]--��ѧ����
      ,a.[YSWGYZM]--Ӧ�����������
      ,a.[BKZYM1]--����רҵ��1
      ,a.[BKZYM2]--����רҵ��2
      ,a.[BKZYM3]--����רҵ��3
      ,a.[BKZYM4]--����רҵ��4
      ,a.[BKZYM5]--����רҵ��5
      ,a.[BKZYM6]--����רҵ��6
      ,a.[KSFSM]--���Է�ʽ��
      ,a.[BYZX]--��ҵ��ѧ
      ,a.[BYZXYZBM]--��ҵ��ѧ��������
      ,a.[KSTC]--�����س�
      ,a.[JLYCC]--������ʹ�
      ,a.[JSHJ]--������
      ,a.[SHGZ]--��Ṥ��
      ,a.[TJJL]--������
      ,a.[JZBS]--���岡ʷ
      ,a.[KSJWBS]--����������ʷ
      ,a.[SG]--���
      ,a.[KSSL]--��������
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,b.XM as b_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,b.XBM as b_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,bc.MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.XXM as b_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,bd.JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.CSRQ as b_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,be.MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,b.MZM as b_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,bf.MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.XYZJM as b_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,bi.SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.JKZKM as b_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,bj.SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,bk.JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.HKLBM as b_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,bm.MC as b_XSXX_HKLBM_MC--���������� ����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.TC as b_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,b.JSTXH as b_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,b.ZP as b_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.MC as d_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,e.MC as e_YZMCEZM_MC--�������ƴ���2��ĸ���� ����
      ,f.MC as f_KSFS_MC--���Է�ʽ����� ����
      ,f.SM as f_KSFS_SM--���Է�ʽ����� ˵��

FROM dbo.EDU_ZZZS_01_01_ZSXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.KQXZQHM = d.DM /*��������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_YZMCEZM AS e ON a.YSWGYZM = e.DM /*Ӧ�����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSFS AS f ON a.KSFSM = f.DM /*���Է�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/
GO

--������Ŀ�ɼ��������
CREATE VIEW [dbo].[VIEW_EDU_ZZZS_03_01_KSKMCJ_DISP]
AS
SELECT a.[XSXXID]--����ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[KMM]--��Ŀ��
      ,a.[ZKFS]--�п�����
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,b.XM as b_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,b.XBM as b_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,bc.MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.XXM as b_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,bd.JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.CSRQ as b_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,be.MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,b.MZM as b_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,bf.MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.XYZJM as b_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,bi.SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.JKZKM as b_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,bj.SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,bk.JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.HKLBM as b_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,bm.MC as b_XSXX_HKLBM_MC--���������� ����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.TC as b_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,b.JSTXH as b_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,b.ZP as b_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.MC as d_ZKKM_MC--�п���Ŀ���� ����

FROM dbo.EDU_ZZZS_03_01_KSKMCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*����ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_ZKKM AS d ON a.KMM = d.DM /*��Ŀ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/
GO
