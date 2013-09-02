--删除视图
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

--应用系统用户表
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_USER_DISP]
AS
SELECT a.[LOGINNAME]--用户名
      ,a.[SCHOOLID]--学校ID
      ,a.[APPID]--应用ID
      ,a.[PWD]--密码
      ,a.[STATUS]--用户状态
      ,a.[USERTYPE]--用户类别
      ,a.[USERID]--用户ID
      ,a.[ROLEIDLst]--用户角色
      ,a.[XM]--姓名
      ,a.[XB]--性别
      ,a.[QQ]--QQ
      ,a.[DZYJ]--电子邮件
      ,a.[LXDH]--联系电话
      ,a.[ZJDLSJ]--最近一次登录时间
      ,a.[DLCGCS]--登录成功次数
      ,a.[YHCJSJ]--用户创建时间
      ,c.SCHOOLID as c_APP_SCHOOLID--应用表 学校ID
      ,c.NAME as c_APP_NAME--应用表 应用名称
      ,c.URL as c_APP_URL--应用表 网址
      ,c.AUTHIP as c_APP_AUTHIP--应用表 限用IP
      ,c.SM as c_APP_SM--应用表 说明
      ,c.DLFS as c_APP_DLFS--应用表 登录方式
      ,c.STATUS as c_APP_STATUS--应用表 应用状态

FROM dbo.EDU_ELE_01_USER AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*应用ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO

--应用表
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_APP_DISP]
AS
SELECT a.[ID]--应用ID
      ,a.[SCHOOLID]--学校ID
      ,a.[NAME]--应用名称
      ,a.[URL]--网址
      ,a.[AUTHIP]--限用IP
      ,a.[SM]--说明
      ,a.[DLFS]--登录方式
      ,a.[STATUS]--应用状态

FROM dbo.EDU_ELE_01_APP AS a
GO

--学校配置表
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_SCHOOL_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[SCHOOLNAME]--学校名称
      ,a.[SCHOOLTYPE]--学校类型
      ,a.[XNID]--学年ID
      ,a.[XQID]--学期ID
      ,a.[MatchURL]--匹配url
      ,a.[MenhuURL]--门户url
      ,a.[MenhuWebid]--门户webid
      ,a.[LogLevel]--日志级别
      ,a.[ModuleIdList]--权限列表
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,cb.MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期

FROM dbo.EDU_ELE_01_SCHOOL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*学期码*/
GO

--学期数据表
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_XQ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XNID]--学年
      ,a.[XQM]--学期码
      ,a.[XQMC]--学期名称
      ,a.[XQKSRQ]--学期开始日期
      ,a.[XQJSRQ]--学期结束日期
      ,c.SCHOOLID as c_XN_SCHOOLID--学年表 学校名
      ,c.XN as c_XN_XN--学年表 学年
      ,d.MC as d_XQ_MC--学期代码表 名称

FROM dbo.EDU_ELE_01_XQ AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*学年*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS d ON a.XQM = d.DM /*学期码*/
GO

--用户分组表
CREATE VIEW [dbo].[VIEW_EDU_ELE_02_YHFZ_DISP]
AS
SELECT a.[ID]--分组ID
      ,a.[SCHOOLID]--学校ID
      ,a.[APPID]--应用ID
      ,a.[YHID]--用户ID
      ,a.[SJFZID]--上级分组ID
      ,a.[FZMC]--分组名称
      ,a.[FZYHID]--分组用户ID列表
      ,c.SCHOOLID as c_APP_SCHOOLID--应用表 学校ID
      ,c.NAME as c_APP_NAME--应用表 应用名称
      ,c.URL as c_APP_URL--应用表 网址
      ,c.AUTHIP as c_APP_AUTHIP--应用表 限用IP
      ,c.SM as c_APP_SM--应用表 说明
      ,c.DLFS as c_APP_DLFS--应用表 登录方式
      ,c.STATUS as c_APP_STATUS--应用表 应用状态
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,e.SCHOOLID as e_YHFZ_SCHOOLID--用户分组表 学校ID
      ,e.APPID as e_YHFZ_APPID--用户分组表 应用ID
      ,e.YHID as e_YHFZ_YHID--用户分组表 用户ID
      ,e.SJFZID as e_YHFZ_SJFZID--用户分组表 上级分组ID
      ,e.FZMC as e_YHFZ_FZMC--用户分组表 分组名称
      ,e.FZYHID as e_YHFZ_FZYHID--用户分组表 分组用户ID列表

FROM dbo.EDU_ELE_02_YHFZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*应用ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YHID = d.LOGINNAME /*用户ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_02_YHFZ AS e ON a.SJFZID = e.ID /*上级分组ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ AND a.APPID = e.APPID /*应用ID*/
GO

--应用日志表
CREATE VIEW [dbo].[VIEW_EDU_ELE_03_APPRZ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[APPID]--应用ID
      ,a.[RZLX]--日志类型
      ,a.[YHID]--操作用户
      ,a.[CZSJ]--操作时间
      ,a.[CZYY]--操作应用
      ,a.[CZLX]--操作类型
      ,a.[CZJTXX]--操作具体信息
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_ELE_03_APPRZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*操作用户*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--应用履历表
CREATE VIEW [dbo].[VIEW_EDU_ELE_03_APPLL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[APPID]--应用ID
      ,a.[YHID]--操作用户
      ,a.[CZSJ]--操作时间
      ,a.[CZYY]--操作应用
      ,a.[CZBM]--操作表名
      ,a.[CZXX]--操作信息
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_ELE_03_APPLL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*操作用户*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--通知数据表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_10_A01_TZ_DISP]
AS
SELECT a.[ID]--通知ID
      ,a.[SCHOOLID]--学校ID
      ,a.[FSRID]--发送人ID
      ,a.[FSRLB]--发送人类别
      ,a.[BT]--标题
      ,a.[NR]--内容
      ,a.[FJ]--附件
      ,a.[TJRQ]--添加日期
      ,a.[JSRS]--接收人数
      ,a.[JSRIDLB]--接收人ID列表
      ,a.[JSRMZLB]--接收人名字列表
      ,a.[YYDRIDLB]--已阅读人ID列表
      ,a.[YYDRMZLB]--已阅读人名字列表
      ,a.[FSZT]--发送状态
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_OAXT_10_A01_TZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.FSRID = c.LOGINNAME /*发送人ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO

--通知阅读记录
CREATE VIEW [dbo].[VIEW_EDU_OAXT_10_A02_TZYDJL_DISP]
AS
SELECT a.[ID]--通知阅读记录ID
      ,a.[SCHOOLID]--学校ID
      ,a.[TZID]--通知ID
      ,a.[BTZRID]--被通知人ID
      ,a.[YDRQ]--阅读日期
      ,a.[SFYD]--是否已阅读
      ,c.SCHOOLID as c_TZ_SCHOOLID--通知数据表 学校ID
      ,c.FSRID as c_TZ_FSRID--通知数据表 发送人ID
      ,c.FSRLB as c_TZ_FSRLB--通知数据表 发送人类别
      ,c.BT as c_TZ_BT--通知数据表 标题
      ,c.NR as c_TZ_NR--通知数据表 内容
      ,c.FJ as c_TZ_FJ--通知数据表 附件
      ,c.TJRQ as c_TZ_TJRQ--通知数据表 添加日期
      ,c.JSRS as c_TZ_JSRS--通知数据表 接收人数
      ,c.JSRIDLB as c_TZ_JSRIDLB--通知数据表 接收人ID列表
      ,c.JSRMZLB as c_TZ_JSRMZLB--通知数据表 接收人名字列表
      ,c.YYDRIDLB as c_TZ_YYDRIDLB--通知数据表 已阅读人ID列表
      ,c.YYDRMZLB as c_TZ_YYDRMZLB--通知数据表 已阅读人名字列表
      ,c.FSZT as c_TZ_FSZT--通知数据表 发送状态
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,e.MC as e_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_OAXT_10_A02_TZYDJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_10_A01_TZ AS c ON a.TZID = c.ID /*通知ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.BTZRID = d.LOGINNAME /*被通知人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFYD = e.DM /*是否已阅读*/
GO

--公告数据表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_10_A03_GG_DISP]
AS
SELECT a.[ID]--公告ID
      ,a.[SCHOOLID]--学校ID
      ,a.[FBRID]--发布人ID
      ,a.[FBBM]--发布部门
      ,a.[FBSJ]--发布时间
      ,a.[BT]--公告标题
      ,a.[NR]--公告内容
      ,a.[ZT]--公告状态
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_OAXT_10_A03_GG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.FBRID = c.LOGINNAME /*发布人ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO

--邮件数据表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_11_A01_YJ_DISP]
AS
SELECT a.[ID]--邮件ID
      ,a.[SCHOOLID]--学校ID
      ,a.[YYZID]--拥有者ID
      ,a.[FSRID]--发送人ID
      ,a.[JSRID]--接收人ID
      ,a.[FSRMC]--发送人名称
      ,a.[JSRMC]--接收人名称
      ,a.[JSRIDLB]--接收人ID列表
      ,a.[JSRMCLB]--接收人名称列表
      ,a.[BT]--标题
      ,a.[NR]--内容
      ,a.[FJ]--附件
      ,a.[FSSJ]--发送时间
      ,a.[SFYD]--是否已阅读
      ,a.[YJLX]--邮件类型
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,e.SCHOOLID as e_USER_SCHOOLID--应用系统用户表 学校ID
      ,e.APPID as e_USER_APPID--应用系统用户表 应用ID
      ,e.PWD as e_USER_PWD--应用系统用户表 密码
      ,e.STATUS as e_USER_STATUS--应用系统用户表 用户状态
      ,e.USERTYPE as e_USER_USERTYPE--应用系统用户表 用户类别
      ,e.USERID as e_USER_USERID--应用系统用户表 用户ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--应用系统用户表 用户角色
      ,e.XM as e_USER_XM--应用系统用户表 姓名
      ,e.XB as e_USER_XB--应用系统用户表 性别
      ,e.QQ as e_USER_QQ--应用系统用户表 QQ
      ,e.DZYJ as e_USER_DZYJ--应用系统用户表 电子邮件
      ,e.LXDH as e_USER_LXDH--应用系统用户表 联系电话
      ,e.ZJDLSJ as e_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,e.DLCGCS as e_USER_DLCGCS--应用系统用户表 登录成功次数
      ,e.YHCJSJ as e_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,f.MC as f_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_OAXT_11_A01_YJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YYZID = c.LOGINNAME /*拥有者ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.FSRID = d.LOGINNAME /*发送人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JSRID = e.LOGINNAME /*接收人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFYD = f.DM /*是否已阅读*/
GO

--文件基本数据类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_01_01_WJJBSJ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[ID]--文件ID
      ,a.[WJBH]--文件编号
      ,a.[WJWH]--文件文号
      ,a.[BT]--标题
      ,a.[ZTC]--主题词
      ,a.[MJM]--密级码
      ,a.[JJCDM]--紧急程度码
      ,a.[YS]--页数
      ,a.[WJFLM]--文件分类码
      ,a.[ZW]--正文
      ,a.[FJ]--附件
      ,a.[FWRQ]--发文日期
      ,a.[CSDW]--抄送单位
      ,c.HYPYDM as c_WXBMZJ_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,c.HZDM as c_WXBMZJ_HZDM--文献保密等级代码与标识 汉字代码
      ,c.MC as c_WXBMZJ_MC--文献保密等级代码与标识 名称
      ,d.MC as d_JJCD_MC--紧急程度代码表 名称
      ,e.MC as e_WJFL_MC--文件分类代码表 名称
      ,e.SM as e_WJFL_SM--文件分类代码表 说明

FROM dbo.EDU_OAXT_01_01_WJJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS c ON a.MJM = c.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS d ON a.JJCDM = d.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS e ON a.WJFLM = e.DM /*文件分类码*/
GO

--收文处理子类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_02_01_SWCL_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[QSRID]--签收人ID
      ,a.[CFRID]--拆封人ID
      ,a.[DJRID]--登记人ID
      ,a.[QSRGH]--签收人工号
      ,a.[CFRGH]--拆封人工号
      ,a.[DJRGH]--登记人工号
      ,a.[SWRQ]--收文日期
      ,a.[LWDW]--来文单位
      ,a.[FS]--份数
      ,a.[CLQK]--处理情况
      ,a.[FYFS]--翻印份数
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,e.SCHOOLID as e_USER_SCHOOLID--应用系统用户表 学校ID
      ,e.APPID as e_USER_APPID--应用系统用户表 应用ID
      ,e.PWD as e_USER_PWD--应用系统用户表 密码
      ,e.STATUS as e_USER_STATUS--应用系统用户表 用户状态
      ,e.USERTYPE as e_USER_USERTYPE--应用系统用户表 用户类别
      ,e.USERID as e_USER_USERID--应用系统用户表 用户ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--应用系统用户表 用户角色
      ,e.XM as e_USER_XM--应用系统用户表 姓名
      ,e.XB as e_USER_XB--应用系统用户表 性别
      ,e.QQ as e_USER_QQ--应用系统用户表 QQ
      ,e.DZYJ as e_USER_DZYJ--应用系统用户表 电子邮件
      ,e.LXDH as e_USER_LXDH--应用系统用户表 联系电话
      ,e.ZJDLSJ as e_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,e.DLCGCS as e_USER_DLCGCS--应用系统用户表 登录成功次数
      ,e.YHCJSJ as e_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,f.SCHOOLID as f_USER_SCHOOLID--应用系统用户表 学校ID
      ,f.APPID as f_USER_APPID--应用系统用户表 应用ID
      ,f.PWD as f_USER_PWD--应用系统用户表 密码
      ,f.STATUS as f_USER_STATUS--应用系统用户表 用户状态
      ,f.USERTYPE as f_USER_USERTYPE--应用系统用户表 用户类别
      ,f.USERID as f_USER_USERID--应用系统用户表 用户ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--应用系统用户表 用户角色
      ,f.XM as f_USER_XM--应用系统用户表 姓名
      ,f.XB as f_USER_XB--应用系统用户表 性别
      ,f.QQ as f_USER_QQ--应用系统用户表 QQ
      ,f.DZYJ as f_USER_DZYJ--应用系统用户表 电子邮件
      ,f.LXDH as f_USER_LXDH--应用系统用户表 联系电话
      ,f.ZJDLSJ as f_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,f.DLCGCS as f_USER_DLCGCS--应用系统用户表 登录成功次数
      ,f.YHCJSJ as f_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_OAXT_02_01_SWCL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.QSRID = d.LOGINNAME /*签收人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.CFRID = e.LOGINNAME /*拆封人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.DJRID = f.LOGINNAME /*登记人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/
GO

--文件阅办子类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_02_02_WJYB_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[YBRID]--阅办人ID
      ,a.[YBLBM]--阅办类别码
      ,a.[YBJB]--阅办级别
      ,a.[YBDW]--阅办单位
      ,a.[YBDWBH]--阅办单位编号
      ,a.[YBRGH]--阅办人工号
      ,a.[YBYJ]--阅办意见
      ,a.[YBRQ]--阅办日期
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,e.MC as e_YBLB_MC--阅办类别代码表 名称
      ,e.SM as e_YBLB_SM--阅办类别代码表 说明

FROM dbo.EDU_OAXT_02_02_WJYB AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YBRID = d.LOGINNAME /*阅办人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_YBLB AS e ON a.YBLBM = e.DM /*阅办类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/
GO

--发文处理子类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_03_01_FWCL_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[NGRID]--拟稿人ID
      ,a.[QFRID]--签发人ID
      ,a.[DJRID]--登记人ID
      ,a.[DZRID]--打字人ID
      ,a.[JDRID]--校对人ID
      ,a.[NGRGH]--拟稿人工号
      ,a.[NGRQ]--拟稿日期
      ,a.[QFRGH]--签发人工号
      ,a.[QFRQ]--签发日期
      ,a.[FSFW]--发送范围
      ,a.[FSFSM]--发送方式码
      ,a.[DJRGH]--登记人工号
      ,a.[DJRQ]--登记日期
      ,a.[FWJS]--发文件数
      ,a.[GWFWRQ]--公文发文日期
      ,a.[CLQK]--处理情况
      ,a.[DZRGH]--打字人工号
      ,a.[JDRGH]--校对人工号
      ,a.[FZFSM]--封装方式码
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,e.SCHOOLID as e_USER_SCHOOLID--应用系统用户表 学校ID
      ,e.APPID as e_USER_APPID--应用系统用户表 应用ID
      ,e.PWD as e_USER_PWD--应用系统用户表 密码
      ,e.STATUS as e_USER_STATUS--应用系统用户表 用户状态
      ,e.USERTYPE as e_USER_USERTYPE--应用系统用户表 用户类别
      ,e.USERID as e_USER_USERID--应用系统用户表 用户ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--应用系统用户表 用户角色
      ,e.XM as e_USER_XM--应用系统用户表 姓名
      ,e.XB as e_USER_XB--应用系统用户表 性别
      ,e.QQ as e_USER_QQ--应用系统用户表 QQ
      ,e.DZYJ as e_USER_DZYJ--应用系统用户表 电子邮件
      ,e.LXDH as e_USER_LXDH--应用系统用户表 联系电话
      ,e.ZJDLSJ as e_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,e.DLCGCS as e_USER_DLCGCS--应用系统用户表 登录成功次数
      ,e.YHCJSJ as e_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,f.SCHOOLID as f_USER_SCHOOLID--应用系统用户表 学校ID
      ,f.APPID as f_USER_APPID--应用系统用户表 应用ID
      ,f.PWD as f_USER_PWD--应用系统用户表 密码
      ,f.STATUS as f_USER_STATUS--应用系统用户表 用户状态
      ,f.USERTYPE as f_USER_USERTYPE--应用系统用户表 用户类别
      ,f.USERID as f_USER_USERID--应用系统用户表 用户ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--应用系统用户表 用户角色
      ,f.XM as f_USER_XM--应用系统用户表 姓名
      ,f.XB as f_USER_XB--应用系统用户表 性别
      ,f.QQ as f_USER_QQ--应用系统用户表 QQ
      ,f.DZYJ as f_USER_DZYJ--应用系统用户表 电子邮件
      ,f.LXDH as f_USER_LXDH--应用系统用户表 联系电话
      ,f.ZJDLSJ as f_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,f.DLCGCS as f_USER_DLCGCS--应用系统用户表 登录成功次数
      ,f.YHCJSJ as f_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,g.SCHOOLID as g_USER_SCHOOLID--应用系统用户表 学校ID
      ,g.APPID as g_USER_APPID--应用系统用户表 应用ID
      ,g.PWD as g_USER_PWD--应用系统用户表 密码
      ,g.STATUS as g_USER_STATUS--应用系统用户表 用户状态
      ,g.USERTYPE as g_USER_USERTYPE--应用系统用户表 用户类别
      ,g.USERID as g_USER_USERID--应用系统用户表 用户ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--应用系统用户表 用户角色
      ,g.XM as g_USER_XM--应用系统用户表 姓名
      ,g.XB as g_USER_XB--应用系统用户表 性别
      ,g.QQ as g_USER_QQ--应用系统用户表 QQ
      ,g.DZYJ as g_USER_DZYJ--应用系统用户表 电子邮件
      ,g.LXDH as g_USER_LXDH--应用系统用户表 联系电话
      ,g.ZJDLSJ as g_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,g.DLCGCS as g_USER_DLCGCS--应用系统用户表 登录成功次数
      ,g.YHCJSJ as g_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,h.SCHOOLID as h_USER_SCHOOLID--应用系统用户表 学校ID
      ,h.APPID as h_USER_APPID--应用系统用户表 应用ID
      ,h.PWD as h_USER_PWD--应用系统用户表 密码
      ,h.STATUS as h_USER_STATUS--应用系统用户表 用户状态
      ,h.USERTYPE as h_USER_USERTYPE--应用系统用户表 用户类别
      ,h.USERID as h_USER_USERID--应用系统用户表 用户ID
      ,h.ROLEIDLst as h_USER_ROLEIDLst--应用系统用户表 用户角色
      ,h.XM as h_USER_XM--应用系统用户表 姓名
      ,h.XB as h_USER_XB--应用系统用户表 性别
      ,h.QQ as h_USER_QQ--应用系统用户表 QQ
      ,h.DZYJ as h_USER_DZYJ--应用系统用户表 电子邮件
      ,h.LXDH as h_USER_LXDH--应用系统用户表 联系电话
      ,h.ZJDLSJ as h_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,h.DLCGCS as h_USER_DLCGCS--应用系统用户表 登录成功次数
      ,h.YHCJSJ as h_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,i.MC as i_FSFS_MC--发送方式代码表 名称
      ,j.MC as j_GWFZFS_MC--公文封装方式代码表 名称

FROM dbo.EDU_OAXT_03_01_FWCL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.NGRID = d.LOGINNAME /*拟稿人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.QFRID = e.LOGINNAME /*签发人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.DJRID = f.LOGINNAME /*登记人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.DZRID = g.LOGINNAME /*打字人ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS h ON a.JDRID = h.LOGINNAME /*校对人ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_FSFS AS i ON a.FSFSM = i.DM /*发送方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWFZFS AS j ON a.FZFSM = j.DM /*封装方式码*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/
GO

--核稿子类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_03_02_HG_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[HGRID]--核稿人ID
      ,a.[HGRGH]--核稿人工号
      ,a.[HGDW]--核稿单位
      ,a.[HGYJ]--核稿意见
      ,a.[HGRQ]--核稿日期
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_OAXT_03_02_HG AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.HGRID = d.LOGINNAME /*核稿人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/
GO

--会签子类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_03_03_HQ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[HQRID]--会签人ID
      ,a.[HQR]--会签人
      ,a.[HQDW]--会签单位
      ,a.[HQYJ]--会签意见
      ,a.[HQRQ]--会签日期
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_OAXT_03_03_HQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.HQRID = d.LOGINNAME /*会签人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/
GO

--呈批子类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_03_04_CP_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[PFRID]--批复人ID
      ,a.[PFR]--批复人
      ,a.[PFDW]--批复单位
      ,a.[PFYJ]--批复意见
      ,a.[PFRQ]--批复日期
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_OAXT_03_04_CP AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.PFRID = d.LOGINNAME /*批复人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/
GO

--文件清退数据类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_04_01_WJQT_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[JBRID]--经办人ID
      ,a.[QTRQ]--清退日期
      ,a.[QTFW]--清退范围
      ,a.[QTSM]--清退说明
      ,a.[JBRGH]--经办人工号
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_OAXT_04_01_WJQT AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JBRID = d.LOGINNAME /*经办人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/
GO

--文件销毁数据类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_05_01_WJXH_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[XHSPRID]--销毁审批人ID
      ,a.[JBRID]--经办人ID
      ,a.[XHRQ]--销毁日期
      ,a.[XHSPRGH]--销毁审批人工号
      ,a.[XHSM]--销毁说明
      ,a.[JBRGH]--经办人工号
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,e.SCHOOLID as e_USER_SCHOOLID--应用系统用户表 学校ID
      ,e.APPID as e_USER_APPID--应用系统用户表 应用ID
      ,e.PWD as e_USER_PWD--应用系统用户表 密码
      ,e.STATUS as e_USER_STATUS--应用系统用户表 用户状态
      ,e.USERTYPE as e_USER_USERTYPE--应用系统用户表 用户类别
      ,e.USERID as e_USER_USERID--应用系统用户表 用户ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--应用系统用户表 用户角色
      ,e.XM as e_USER_XM--应用系统用户表 姓名
      ,e.XB as e_USER_XB--应用系统用户表 性别
      ,e.QQ as e_USER_QQ--应用系统用户表 QQ
      ,e.DZYJ as e_USER_DZYJ--应用系统用户表 电子邮件
      ,e.LXDH as e_USER_LXDH--应用系统用户表 联系电话
      ,e.ZJDLSJ as e_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,e.DLCGCS as e_USER_DLCGCS--应用系统用户表 登录成功次数
      ,e.YHCJSJ as e_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_OAXT_05_01_WJXH AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.XHSPRID = d.LOGINNAME /*销毁审批人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JBRID = e.LOGINNAME /*经办人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/
GO

--文件借阅数据类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_06_01_WJJQ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[JYSPRID]--借阅审批人ID
      ,a.[JYJBRID]--借阅经办人ID
      ,a.[JYR]--借阅人
      ,a.[JYRQ]--借阅日期
      ,a.[JYSPRGH]--借阅审批人工号
      ,a.[JYJBRGH]--借阅经办人工号
      ,a.[JYYY]--借阅原因
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,e.SCHOOLID as e_USER_SCHOOLID--应用系统用户表 学校ID
      ,e.APPID as e_USER_APPID--应用系统用户表 应用ID
      ,e.PWD as e_USER_PWD--应用系统用户表 密码
      ,e.STATUS as e_USER_STATUS--应用系统用户表 用户状态
      ,e.USERTYPE as e_USER_USERTYPE--应用系统用户表 用户类别
      ,e.USERID as e_USER_USERID--应用系统用户表 用户ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--应用系统用户表 用户角色
      ,e.XM as e_USER_XM--应用系统用户表 姓名
      ,e.XB as e_USER_XB--应用系统用户表 性别
      ,e.QQ as e_USER_QQ--应用系统用户表 QQ
      ,e.DZYJ as e_USER_DZYJ--应用系统用户表 电子邮件
      ,e.LXDH as e_USER_LXDH--应用系统用户表 联系电话
      ,e.ZJDLSJ as e_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,e.DLCGCS as e_USER_DLCGCS--应用系统用户表 登录成功次数
      ,e.YHCJSJ as e_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_OAXT_06_01_WJJQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JYSPRID = d.LOGINNAME /*借阅审批人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JYJBRID = e.LOGINNAME /*借阅经办人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/
GO

--数据发布类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_12_A01_SJFB_DISP]
AS
SELECT a.[ID]--数据发布ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[FBRID]--发布人ID
      ,a.[FBBZRID]--发布批准人ID
      ,a.[FBH]--发布号
      ,a.[XXBT]--数据标题
      ,a.[FBLMH]--发布栏目号
      ,a.[SJNR]--数据内容
      ,a.[FJS]--附件数
      ,a.[FBRQ]--发布日期
      ,a.[FBDW]--发布单位号
      ,a.[FBRGH]--发布人工号
      ,a.[FBFW]--发布范围
      ,a.[FBBZRH]--发布批准人号
      ,a.[SJZT]--数据状态
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式

FROM dbo.EDU_OAXT_12_A01_SJFB AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--单位数据表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_13_A01_DWSJ_DISP]
AS
SELECT a.[ID]--单位ID
      ,a.[SCHOOLID]--学校ID
      ,a.[SJDWID]--上级单位ID
      ,a.[DWFZRID]--单位负责人ID
      ,a.[DWMC]--单位名称
      ,a.[DWCYIDLB]--单位成员ID列表
      ,c.SCHOOLID as c_DWSJ_SCHOOLID--单位数据表 学校ID
      ,c.SJDWID as c_DWSJ_SJDWID--单位数据表 上级单位ID
      ,c.DWFZRID as c_DWSJ_DWFZRID--单位数据表 单位负责人ID
      ,c.DWMC as c_DWSJ_DWMC--单位数据表 单位名称
      ,c.DWCYIDLB as c_DWSJ_DWCYIDLB--单位数据表 单位成员ID列表
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_OAXT_13_A01_DWSJ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_13_A01_DWSJ AS c ON a.SJDWID = c.ID /*上级单位ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.DWFZRID = d.LOGINNAME /*单位负责人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO

--学年表
CREATE VIEW [dbo].[VIEW_EDU_SYS_01_XN_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XN]--学年

FROM dbo.EDU_SYS_01_XN AS a
GO

--网站会员
CREATE VIEW [dbo].[VIEW_EDU_WZXT_VIP_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[LOGINNAME]--用户名
      ,a.[LOGINPWD]--密码
      ,a.[REALNAME]--姓名
      ,a.[EMAIL]--电子邮箱
      ,a.[MOBILE]--联系电话
      ,a.[QQ]--QQ号码
      ,a.[AUDITSTATU]--审核状态
      ,a.[AUDITOR]--审核人ID
      ,a.[AUDITORNAME]--审核人
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式

FROM dbo.EDU_WZXT_VIP AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--投票样式库
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPYS_DISP]
AS
SELECT a.[ID]--样式ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[NAME]--样式名
      ,a.[SHOWIMG]--效果图
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式

FROM dbo.EDU_WZXT_TPXT_TPYS AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--投票题目选项
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPXX_DISP]
AS
SELECT a.[ID]--投票题目选项ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[TPID]--投票
      ,a.[TMID]--投票题目
      ,a.[TITLE]--标题
      ,a.[SUMTP]--已选人数
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式
      ,d.SCHOOLID as d_TPSZ_SCHOOLID--投票设置 学校名
      ,d.WEBID as d_TPSZ_WEBID--投票设置 网站ID
      ,d.TITLE as d_TPSZ_TITLE--投票设置 标题
      ,d.CONTENT as d_TPSZ_CONTENT--投票设置 内容
      ,d.SHOWSTYLEID as d_TPSZ_SHOWSTYLEID--投票设置 显示方式
      ,d.CSSID as d_TPSZ_CSSID--投票设置 显示样式
      ,d.LOGINNAMELIST as d_TPSZ_LOGINNAMELIST--投票设置 投票人
      ,d.STARTSTATU as d_TPSZ_STARTSTATU--投票设置 是否开启
      ,e.SCHOOLID as e_TPTM_SCHOOLID--投票题目 学校名
      ,e.WEBID as e_TPTM_WEBID--投票题目 网站ID
      ,e.TPID as e_TPTM_TPID--投票题目 投票
      ,e.TYPEID as e_TPTM_TYPEID--投票题目 投票形式
      ,e.TITLE as e_TPTM_TITLE--投票题目 标题
      ,e.CONTENT as e_TPTM_CONTENT--投票题目 内容

FROM dbo.EDU_WZXT_TPXT_TPXX AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPSZ AS d ON a.TPID = d.ID /*投票*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPTM AS e ON a.TMID = e.ID /*投票题目*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ AND a.WEBID = e.WEBID /*网站ID*/
GO

--投票题目
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPTM_DISP]
AS
SELECT a.[ID]--投票题目ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[TPID]--投票
      ,a.[TYPEID]--投票形式
      ,a.[TITLE]--标题
      ,a.[CONTENT]--内容
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式
      ,d.SCHOOLID as d_TPSZ_SCHOOLID--投票设置 学校名
      ,d.WEBID as d_TPSZ_WEBID--投票设置 网站ID
      ,d.TITLE as d_TPSZ_TITLE--投票设置 标题
      ,d.CONTENT as d_TPSZ_CONTENT--投票设置 内容
      ,d.SHOWSTYLEID as d_TPSZ_SHOWSTYLEID--投票设置 显示方式
      ,d.CSSID as d_TPSZ_CSSID--投票设置 显示样式
      ,d.LOGINNAMELIST as d_TPSZ_LOGINNAMELIST--投票设置 投票人
      ,d.STARTSTATU as d_TPSZ_STARTSTATU--投票设置 是否开启

FROM dbo.EDU_WZXT_TPXT_TPTM AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPSZ AS d ON a.TPID = d.ID /*投票*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO

--投票设置
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPSZ_DISP]
AS
SELECT a.[ID]--投票设置ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[TITLE]--标题
      ,a.[CONTENT]--内容
      ,a.[SHOWSTYLEID]--显示方式
      ,a.[CSSID]--显示样式
      ,a.[LOGINNAMELIST]--投票人
      ,a.[STARTSTATU]--是否开启
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式
      ,d.SCHOOLID as d_TPYS_SCHOOLID--投票样式库 学校名
      ,d.WEBID as d_TPYS_WEBID--投票样式库 网站ID
      ,d.NAME as d_TPYS_NAME--投票样式库 样式名
      ,d.SHOWIMG as d_TPYS_SHOWIMG--投票样式库 效果图

FROM dbo.EDU_WZXT_TPXT_TPSZ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPYS AS d ON a.CSSID = d.ID /*显示样式*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO

--投票记录
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPJL_DISP]
AS
SELECT a.[ID]--投票记录ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[TPID]--投票
      ,a.[TPIP]--投票人
      ,a.[TPTIME]--投票时间
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式
      ,d.SCHOOLID as d_TPSZ_SCHOOLID--投票设置 学校名
      ,d.WEBID as d_TPSZ_WEBID--投票设置 网站ID
      ,d.TITLE as d_TPSZ_TITLE--投票设置 标题
      ,d.CONTENT as d_TPSZ_CONTENT--投票设置 内容
      ,d.SHOWSTYLEID as d_TPSZ_SHOWSTYLEID--投票设置 显示方式
      ,d.CSSID as d_TPSZ_CSSID--投票设置 显示样式
      ,d.LOGINNAMELIST as d_TPSZ_LOGINNAMELIST--投票设置 投票人
      ,d.STARTSTATU as d_TPSZ_STARTSTATU--投票设置 是否开启

FROM dbo.EDU_WZXT_TPXT_TPJL AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPSZ AS d ON a.TPID = d.ID /*投票*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO

--友情链接类型
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_YQLJLX_DISP]
AS
SELECT a.[ID]--友情链接类型ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[NAME]--类型名
      ,a.[SHOWSTYLE]--显示方式
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式

FROM dbo.EDU_WZXT_MHXT_YQLJLX AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--友情链接
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_YQLJ_DISP]
AS
SELECT a.[ID]--友情链接ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[TITLE]--标题
      ,a.[TYPEID]--类型
      ,a.[IMAGEURL]--图片
      ,a.[URL]--链接
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式
      ,d.SCHOOLID as d_YQLJLX_SCHOOLID--友情链接类型 学校名
      ,d.WEBID as d_YQLJLX_WEBID--友情链接类型 网站ID
      ,d.NAME as d_YQLJLX_NAME--友情链接类型 类型名
      ,d.SHOWSTYLE as d_YQLJLX_SHOWSTYLE--友情链接类型 显示方式

FROM dbo.EDU_WZXT_MHXT_YQLJ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_YQLJLX AS d ON a.TYPEID = d.ID /*类型*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO

--样式库
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZYS_DISP]
AS
SELECT a.[ID]--样式库ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[NAME]--样式名
      ,a.[SHOWIMG]--效果图
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式

FROM dbo.EDU_WZXT_MHXT_WZYS AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--网站文章
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZWZ_DISP]
AS
SELECT a.[ID]--网站文章ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[TYPENAME]--类型名称
      ,a.[LMID]--栏目
      ,a.[TITLE]--标题
      ,a.[PUBLISHERNAME]--发布人
      ,a.[AUTHOR]--作者
      ,a.[AUTHORDEPART]--作者部门
      ,a.[PUBLISHDATE]--发布时间
      ,a.[CONTENT]--内容
      ,a.[URL]--链接
      ,a.[IMAGEURL]--图片
      ,a.[ATTACHMENTNAME]--附件名
      ,a.[ATTACHMENT]--附件
      ,a.[CHICKNUB]--点击量
      ,a.[AUDITSTATU]--审核状态
      ,a.[AUDITOR]--审核人ID
      ,a.[AUDITORNAME]--审核人
      ,a.[AUDITTIME]--审核时间
      ,a.[REMARK]--备注
      ,a.[SUMMARY]--摘要
      ,a.[DISPLAYTYPE]--内外网
      ,a.[OPENFLAG]--开启状态
      ,a.[LLQX]--浏览权限
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式
      ,d.SCHOOLID as d_WZLM_SCHOOLID--网站栏目（导航） 学校名
      ,d.WEBID as d_WZLM_WEBID--网站栏目（导航） 网站ID
      ,d.LMSHOWSTYLE as d_WZLM_LMSHOWSTYLE--网站栏目（导航） 栏目使用类型
      ,d.NAME as d_WZLM_NAME--网站栏目（导航） 栏目名称
      ,d.URL as d_WZLM_URL--网站栏目（导航） 栏目链接
      ,d.IMAGEURL as d_WZLM_IMAGEURL--网站栏目（导航） 图片链接
      ,d.DEPTH as d_WZLM_DEPTH--网站栏目（导航） 层级
      ,d.PID as d_WZLM_PID--网站栏目（导航） 父目录
      ,d.LISTSHOWSTYLE as d_WZLM_LISTSHOWSTYLE--网站栏目（导航） 列表显示型式
      ,d.ORDERTYPE as d_WZLM_ORDERTYPE--网站栏目（导航） 排序方式
      ,d.SHOWNUMBER as d_WZLM_SHOWNUMBER--网站栏目（导航） 显示个数
      ,d.OPENFLAG as d_WZLM_OPENFLAG--网站栏目（导航） 开启状态
      ,d.LLQX as d_WZLM_LLQX--网站栏目（导航） 浏览权限

FROM dbo.EDU_WZXT_MHXT_WZWZ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZLM AS d ON a.LMID = d.ID /*栏目*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO

--文章评价表
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZPJ_DISP]
AS
SELECT a.[ID]--评价ID
      ,a.[SCHOOLID]--学校ID
      ,a.[WEBID]--网站ID
      ,a.[WZID]--网站文章ID
      ,a.[PJR]--评价人
      ,a.[YJDZ]--邮件地址
      ,a.[PJSJ]--评价时间
      ,a.[PJNR]--评价内容
      ,a.[PJZT]--评价状态
      ,a.[SHR]--审核人
      ,a.[HF]--回复
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式
      ,d.SCHOOLID as d_WZWZ_SCHOOLID--网站文章 学校名
      ,d.WEBID as d_WZWZ_WEBID--网站文章 网站ID
      ,d.TYPENAME as d_WZWZ_TYPENAME--网站文章 类型名称
      ,d.LMID as d_WZWZ_LMID--网站文章 栏目
      ,d.TITLE as d_WZWZ_TITLE--网站文章 标题
      ,d.PUBLISHERNAME as d_WZWZ_PUBLISHERNAME--网站文章 发布人
      ,d.AUTHOR as d_WZWZ_AUTHOR--网站文章 作者
      ,d.AUTHORDEPART as d_WZWZ_AUTHORDEPART--网站文章 作者部门
      ,d.PUBLISHDATE as d_WZWZ_PUBLISHDATE--网站文章 发布时间
      ,d.CONTENT as d_WZWZ_CONTENT--网站文章 内容
      ,d.URL as d_WZWZ_URL--网站文章 链接
      ,d.IMAGEURL as d_WZWZ_IMAGEURL--网站文章 图片
      ,d.ATTACHMENTNAME as d_WZWZ_ATTACHMENTNAME--网站文章 附件名
      ,d.ATTACHMENT as d_WZWZ_ATTACHMENT--网站文章 附件
      ,d.CHICKNUB as d_WZWZ_CHICKNUB--网站文章 点击量
      ,d.AUDITSTATU as d_WZWZ_AUDITSTATU--网站文章 审核状态
      ,d.AUDITOR as d_WZWZ_AUDITOR--网站文章 审核人ID
      ,d.AUDITORNAME as d_WZWZ_AUDITORNAME--网站文章 审核人
      ,d.AUDITTIME as d_WZWZ_AUDITTIME--网站文章 审核时间
      ,d.REMARK as d_WZWZ_REMARK--网站文章 备注
      ,d.SUMMARY as d_WZWZ_SUMMARY--网站文章 摘要
      ,d.DISPLAYTYPE as d_WZWZ_DISPLAYTYPE--网站文章 内外网
      ,d.OPENFLAG as d_WZWZ_OPENFLAG--网站文章 开启状态
      ,d.LLQX as d_WZWZ_LLQX--网站文章 浏览权限

FROM dbo.EDU_WZXT_MHXT_WZPJ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZWZ AS d ON a.WZID = d.ID /*网站文章ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ AND a.WEBID = d.WEBID /*网站ID*/
GO

--网站配置
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZPZ_DISP]
AS
SELECT a.[WEBID]--网站ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBNAME]--网站名
      ,a.[STATUID]--是否开启
      ,a.[WEBURL]--网址
      ,a.[CSSID]--网站样式
      ,b.SCHOOLID as b_WZPZ_SCHOOLID--网站配置 学校名
      ,b.WEBNAME as b_WZPZ_WEBNAME--网站配置 网站名
      ,b.STATUID as b_WZPZ_STATUID--网站配置 是否开启
      ,b.WEBURL as b_WZPZ_WEBURL--网站配置 网址
      ,b.CSSID as b_WZPZ_CSSID--网站配置 网站样式
      ,d.SCHOOLID as d_WZYS_SCHOOLID--样式库 学校名
      ,d.WEBID as d_WZYS_WEBID--样式库 网站ID
      ,d.NAME as d_WZYS_NAME--样式库 样式名
      ,d.SHOWIMG as d_WZYS_SHOWIMG--样式库 效果图

FROM dbo.EDU_WZXT_MHXT_WZPZ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS b ON a.WEBID = b.WEBID /*网站ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZYS AS d ON a.CSSID = d.ID /*网站样式*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO

--网站栏目（导航）
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZLM_DISP]
AS
SELECT a.[ID]--网站栏目（导航）ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[LMSHOWSTYLE]--栏目使用类型
      ,a.[NAME]--栏目名称
      ,a.[URL]--栏目链接
      ,a.[IMAGEURL]--图片链接
      ,a.[DEPTH]--层级
      ,a.[PID]--父目录
      ,a.[LISTSHOWSTYLE]--列表显示型式
      ,a.[ORDERTYPE]--排序方式
      ,a.[SHOWNUMBER]--显示个数
      ,a.[OPENFLAG]--开启状态
      ,a.[LLQX]--浏览权限
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式
      ,d.SCHOOLID as d_WZLM_SCHOOLID--网站栏目（导航） 学校名
      ,d.WEBID as d_WZLM_WEBID--网站栏目（导航） 网站ID
      ,d.LMSHOWSTYLE as d_WZLM_LMSHOWSTYLE--网站栏目（导航） 栏目使用类型
      ,d.NAME as d_WZLM_NAME--网站栏目（导航） 栏目名称
      ,d.URL as d_WZLM_URL--网站栏目（导航） 栏目链接
      ,d.IMAGEURL as d_WZLM_IMAGEURL--网站栏目（导航） 图片链接
      ,d.DEPTH as d_WZLM_DEPTH--网站栏目（导航） 层级
      ,d.PID as d_WZLM_PID--网站栏目（导航） 父目录
      ,d.LISTSHOWSTYLE as d_WZLM_LISTSHOWSTYLE--网站栏目（导航） 列表显示型式
      ,d.ORDERTYPE as d_WZLM_ORDERTYPE--网站栏目（导航） 排序方式
      ,d.SHOWNUMBER as d_WZLM_SHOWNUMBER--网站栏目（导航） 显示个数
      ,d.OPENFLAG as d_WZLM_OPENFLAG--网站栏目（导航） 开启状态
      ,d.LLQX as d_WZLM_LLQX--网站栏目（导航） 浏览权限

FROM dbo.EDU_WZXT_MHXT_WZLM AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZLM AS d ON a.PID = d.ID /*父目录*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO

--网站广告
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZGG_DISP]
AS
SELECT a.[ID]--网站广告ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[SHOWTYPE]--显示型式
      ,a.[ADCONTENT]--广告内容
      ,a.[GGLJ]--广告链接
      ,a.[SHOWSTATU]--是否显示
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式

FROM dbo.EDU_WZXT_MHXT_WZGG AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--访问履历
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_FWLL_DISP]
AS
SELECT a.[ID]--访问履历ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[ACCESSIP]--访问IP
      ,a.[ACCESSURL]--访问链接
      ,a.[ACCESSTIME]--访问时间
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式

FROM dbo.EDU_WZXT_MHXT_FWLL AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--发布权限
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_FBQX_DISP]
AS
SELECT a.[ID]--发布权限ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[LOGINNAME]--用户名
      ,a.[LMLIST]--栏目
      ,a.[LMNAMELIST]--栏目文字
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式

FROM dbo.EDU_WZXT_MHXT_FBQX AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--自建专业代码
CREATE VIEW [dbo].[VIEW_EDU_ZJ_ZJZY_DISP]
AS
SELECT a.[DM]--代码
      ,a.[ZYMLLB]--专业目录类别
      ,a.[MC]--名称
      ,b.MC as b_ZYML_MC--专业目录代码 名称

FROM dbo.EDU_ZJ_ZJZY AS a LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS b ON a.ZYMLLB = b.DM /*专业目录类别*/
GO

--值周岗位数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A01_ZZGW_DISP]
AS
SELECT a.[ID]--值周岗位表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[GWGZNR]--岗位工作内容
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,cb.MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期

FROM dbo.EDU_ZXDY_04_A01_ZZGW AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*学期码*/
GO

--值周人员安排表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A02_ZZRYAP_DISP]
AS
SELECT a.[ID]--值周人员安排表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCID]--周次ID
      ,a.[KSRQ]--开始日期
      ,a.[JSRQ]--结束日期
      ,a.[ZZBJ]--值周班级班号
      ,a.[ZZID]--组长ID
      ,a.[ZYIDLB]--组员ID列表
      ,a.[ZYMCLB]--组员名称列表
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,cb.MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--值周周次表 学校ID
      ,d.XQID as d_ZZZC_XQID--值周周次表 学期ID
      ,d.ZCM as d_ZZZC_ZCM--值周周次表 周次名
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--值周周次表 开始日期
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--值周周次表 结束日期
      ,e.SCHOOLID as e_BJ_SCHOOLID--班级数据类表 学校名
      ,e.NJ as e_BJ_NJ--班级数据类表 年级号
      ,e.BJ as e_BJ_BJ--班级数据类表 班级名称
      ,e.JBNY as e_BJ_JBNY--班级数据类表 建班年月
      ,e.BZRGH as e_BJ_BZRGH--班级数据类表 班主任工号
      ,e.BZXH as e_BJ_BZXH--班级数据类表 班长学号
      ,e.BJRYCH as e_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,e.XZ as e_BJ_XZ--班级数据类表 学制
      ,e.BJLXM as e_BJ_BJLXM--班级数据类表 班级类型码
      ,eb.MC as e_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,e.WLLX as e_BJ_WLLX--班级数据类表 文理类型
      ,e.BYRQ as e_BJ_BYRQ--班级数据类表 毕业日期
      ,e.SFSSMZSYJXB as e_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,ec.MC as e_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,e.SYJXMSM as e_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,ed.MC as e_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,ed.SM as e_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,f.SCHOOLID as f_USER_SCHOOLID--应用系统用户表 学校ID
      ,f.APPID as f_USER_APPID--应用系统用户表 应用ID
      ,f.PWD as f_USER_PWD--应用系统用户表 密码
      ,f.STATUS as f_USER_STATUS--应用系统用户表 用户状态
      ,f.USERTYPE as f_USER_USERTYPE--应用系统用户表 用户类别
      ,f.USERID as f_USER_USERID--应用系统用户表 用户ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--应用系统用户表 用户角色
      ,f.XM as f_USER_XM--应用系统用户表 姓名
      ,f.XB as f_USER_XB--应用系统用户表 性别
      ,f.QQ as f_USER_QQ--应用系统用户表 QQ
      ,f.DZYJ as f_USER_DZYJ--应用系统用户表 电子邮件
      ,f.LXDH as f_USER_LXDH--应用系统用户表 联系电话
      ,f.ZJDLSJ as f_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,f.DLCGCS as f_USER_DLCGCS--应用系统用户表 登录成功次数
      ,f.YHCJSJ as f_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_ZXDY_04_A02_ZZRYAP AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*周次ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS e ON a.ZZBJ = e.BH /*值周班级班号*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.ZZID = f.LOGINNAME /*组长ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS eb ON e.BJLXM = eb.DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ec ON e.SFSSMZSYJXB = ec.DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS ed ON e.SYJXMSM = ed.DM /*双语教学模式码*/
GO

--值周岗位分配表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A03_ZZGWFP_DISP]
AS
SELECT a.[ID]--值周岗位分配表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCID]--周次ID
      ,a.[GZR]--工作日
      ,a.[GWID]--岗位ID
      ,a.[JSID]--教师ID
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,cb.MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--值周周次表 学校ID
      ,d.XQID as d_ZZZC_XQID--值周周次表 学期ID
      ,d.ZCM as d_ZZZC_ZCM--值周周次表 周次名
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--值周周次表 开始日期
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--值周周次表 结束日期
      ,e.SCHOOLID as e_ZZGW_SCHOOLID--值周岗位数据表 学校ID
      ,e.XQID as e_ZZGW_XQID--值周岗位数据表 学期ID
      ,e.GWGZNR as e_ZZGW_GWGZNR--值周岗位数据表 岗位工作内容
      ,f.SCHOOLID as f_USER_SCHOOLID--应用系统用户表 学校ID
      ,f.APPID as f_USER_APPID--应用系统用户表 应用ID
      ,f.PWD as f_USER_PWD--应用系统用户表 密码
      ,f.STATUS as f_USER_STATUS--应用系统用户表 用户状态
      ,f.USERTYPE as f_USER_USERTYPE--应用系统用户表 用户类别
      ,f.USERID as f_USER_USERID--应用系统用户表 用户ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--应用系统用户表 用户角色
      ,f.XM as f_USER_XM--应用系统用户表 姓名
      ,f.XB as f_USER_XB--应用系统用户表 性别
      ,f.QQ as f_USER_QQ--应用系统用户表 QQ
      ,f.DZYJ as f_USER_DZYJ--应用系统用户表 电子邮件
      ,f.LXDH as f_USER_LXDH--应用系统用户表 联系电话
      ,f.ZJDLSJ as f_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,f.DLCGCS as f_USER_DLCGCS--应用系统用户表 登录成功次数
      ,f.YHCJSJ as f_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_ZXDY_04_A03_ZZGWFP AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*周次ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A01_ZZGW AS e ON a.GWID = e.ID /*岗位ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.JSID = f.LOGINNAME /*教师ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*学期码*/
GO

--岗位分配模板表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A04_GWFPMB_DISP]
AS
SELECT a.[ID]--岗位分配模板表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[MBMC]--模板名称

FROM dbo.EDU_ZXDY_04_A04_GWFPMB AS a
GO

--特别值周教师表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A05_TBZZJS_DISP]
AS
SELECT a.[ID]--特别值周教师表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[JSLX]--教师类型
      ,a.[JSID]--教师ID
      ,a.[YXRQ]--有效日期
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,cb.MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_ZXDY_04_A05_TBZZJS AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JSID = d.LOGINNAME /*教师ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*学期码*/
GO

--值周周次表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A06_ZZZC_DISP]
AS
SELECT a.[ID]--周次表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCM]--周次名
      ,a.[XQKSRQ]--开始日期
      ,a.[XQJSRQ]--结束日期
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,cb.MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期

FROM dbo.EDU_ZXDY_04_A06_ZZZC AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*学期码*/
GO

--模板分配内容表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A07_MBFPNR_DISP]
AS
SELECT a.[ID]--模板内容表ID
      ,a.[MBID]--模板表ID
      ,a.[GZR]--工作日
      ,a.[GWID]--岗位ID
      ,a.[DYRYH]--对应人员号
      ,b.SCHOOLID as b_GWFPMB_SCHOOLID--岗位分配模板表 学校ID
      ,b.MBMC as b_GWFPMB_MBMC--岗位分配模板表 模板名称
      ,c.SCHOOLID as c_ZZGW_SCHOOLID--值周岗位数据表 学校ID
      ,c.XQID as c_ZZGW_XQID--值周岗位数据表 学期ID
      ,c.GWGZNR as c_ZZGW_GWGZNR--值周岗位数据表 岗位工作内容

FROM dbo.EDU_ZXDY_04_A07_MBFPNR AS a LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A04_GWFPMB AS b ON a.MBID = b.ID /*模板表ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A01_ZZGW AS c ON a.GWID = c.ID /*岗位ID*/
GO

--值周打分大类表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_05_A01_ZZDFDL_DISP]
AS
SELECT a.[ID]--值周打分大类表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[DLMC]--大类名称
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,cb.MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期

FROM dbo.EDU_ZXDY_05_A01_ZZDFDL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*学期码*/
GO

--值周打分细则表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_05_A02_ZZDFXZ_DISP]
AS
SELECT a.[ID]--值周打分细则表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[SSDLID]--所属大类ID
      ,a.[XZNR]--细则内容
      ,a.[XZFZ]--细则分值
      ,c.SCHOOLID as c_ZZDFDL_SCHOOLID--值周打分大类表 学校ID
      ,c.XQID as c_ZZDFDL_XQID--值周打分大类表 学期ID
      ,c.DLMC as c_ZZDFDL_DLMC--值周打分大类表 大类名称

FROM dbo.EDU_ZXDY_05_A02_ZZDFXZ AS a LEFT OUTER JOIN
      dbo.EDU_ZXDY_05_A01_ZZDFDL AS c ON a.SSDLID = c.ID /*所属大类ID*/
GO

--值周打分单表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_05_A03_ZZDFD_DISP]
AS
SELECT a.[ID]--值周打分单表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCID]--周次ID
      ,a.[BJ]--班级
      ,a.[XSIDLB]--学生ID列表
      ,a.[XSMCLB]--学生名称列表
      ,a.[SSXZID]--所属细则
      ,a.[DFFZ]--打分分值
      ,a.[FSSJ]--发生时间
      ,a.[DFSJ]--打分时间
      ,a.[DFJSID]--打分教师ID
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,cb.MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--值周周次表 学校ID
      ,d.XQID as d_ZZZC_XQID--值周周次表 学期ID
      ,d.ZCM as d_ZZZC_ZCM--值周周次表 周次名
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--值周周次表 开始日期
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--值周周次表 结束日期
      ,e.SCHOOLID as e_BJ_SCHOOLID--班级数据类表 学校名
      ,e.NJ as e_BJ_NJ--班级数据类表 年级号
      ,e.BJ as e_BJ_BJ--班级数据类表 班级名称
      ,e.JBNY as e_BJ_JBNY--班级数据类表 建班年月
      ,e.BZRGH as e_BJ_BZRGH--班级数据类表 班主任工号
      ,e.BZXH as e_BJ_BZXH--班级数据类表 班长学号
      ,e.BJRYCH as e_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,e.XZ as e_BJ_XZ--班级数据类表 学制
      ,e.BJLXM as e_BJ_BJLXM--班级数据类表 班级类型码
      ,eb.MC as e_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,e.WLLX as e_BJ_WLLX--班级数据类表 文理类型
      ,e.BYRQ as e_BJ_BYRQ--班级数据类表 毕业日期
      ,e.SFSSMZSYJXB as e_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,ec.MC as e_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,e.SYJXMSM as e_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,ed.MC as e_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,ed.SM as e_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,f.SCHOOLID as f_ZZDFXZ_SCHOOLID--值周打分细则表 学校ID
      ,f.SSDLID as f_ZZDFXZ_SSDLID--值周打分细则表 所属大类ID
      ,f.XZNR as f_ZZDFXZ_XZNR--值周打分细则表 细则内容
      ,f.XZFZ as f_ZZDFXZ_XZFZ--值周打分细则表 细则分值
      ,g.SCHOOLID as g_USER_SCHOOLID--应用系统用户表 学校ID
      ,g.APPID as g_USER_APPID--应用系统用户表 应用ID
      ,g.PWD as g_USER_PWD--应用系统用户表 密码
      ,g.STATUS as g_USER_STATUS--应用系统用户表 用户状态
      ,g.USERTYPE as g_USER_USERTYPE--应用系统用户表 用户类别
      ,g.USERID as g_USER_USERID--应用系统用户表 用户ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--应用系统用户表 用户角色
      ,g.XM as g_USER_XM--应用系统用户表 姓名
      ,g.XB as g_USER_XB--应用系统用户表 性别
      ,g.QQ as g_USER_QQ--应用系统用户表 QQ
      ,g.DZYJ as g_USER_DZYJ--应用系统用户表 电子邮件
      ,g.LXDH as g_USER_LXDH--应用系统用户表 联系电话
      ,g.ZJDLSJ as g_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,g.DLCGCS as g_USER_DLCGCS--应用系统用户表 登录成功次数
      ,g.YHCJSJ as g_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_ZXDY_05_A03_ZZDFD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*周次ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS e ON a.BJ = e.BH /*班级*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_05_A02_ZZDFXZ AS f ON a.SSXZID = f.ID /*所属细则*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.DFJSID = g.LOGINNAME /*打分教师ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS eb ON e.BJLXM = eb.DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ec ON e.SFSSMZSYJXB = ec.DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS ed ON e.SYJXMSM = ed.DM /*双语教学模式码*/
GO

--值周小结表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_06_A01_ZZXJ_DISP]
AS
SELECT a.[ID]--值周小结表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCID]--周次ID
      ,a.[SZDS]--上周大事
      ,a.[ZZJCQKFK]--值周检查情况反馈
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,cb.MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--值周周次表 学校ID
      ,d.XQID as d_ZZZC_XQID--值周周次表 学期ID
      ,d.ZCM as d_ZZZC_ZCM--值周周次表 周次名
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--值周周次表 开始日期
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--值周周次表 结束日期

FROM dbo.EDU_ZXDY_06_A01_ZZXJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*周次ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*学期码*/
GO

--国旗下讲话表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_06_A02_GQXJH_DISP]
AS
SELECT a.[ID]--国旗下讲话表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCID]--周次ID
      ,a.[JHZT]--讲话主题
      ,a.[JHNR]--讲话内容
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,cb.MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--值周周次表 学校ID
      ,d.XQID as d_ZZZC_XQID--值周周次表 学期ID
      ,d.ZCM as d_ZZZC_ZCM--值周周次表 周次名
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--值周周次表 开始日期
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--值周周次表 结束日期

FROM dbo.EDU_ZXDY_06_A02_GQXJH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*周次ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*学期码*/
GO

--课程数据类
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_01_01_KC_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[KCH]--课程号
      ,a.[KCMC]--课程名称
      ,a.[KCM]--课程码
      ,a.[KCDJM]--课程等级码
      ,a.[KCBM]--课程别名
      ,a.[KCJJ]--课程简介
      ,a.[KCYQ]--课程要求
      ,a.[ZXS]--总学时
      ,a.[ZHXS]--周学时
      ,a.[ZXXS]--自学学时
      ,a.[SKFSM]--授课方式码
      ,a.[JCBM]--教材编码
      ,a.[CKSM]--参考书目
      ,a.[CDXZ]--场地限制
      ,a.[SFZK]--是否主课
      ,c.MC as c_ZXXKC_MC--中小学课程代码表 名称
      ,c.SYXX as c_ZXXKC_SYXX--中小学课程代码表 适用学校
      ,d.MC as d_ZXXKCDJ_MC--中小学课程等级代码表 名称
      ,e.MC as e_SKFS_MC--授课方式代码表 名称
      ,f.MC as f_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZXJX_01_01_KC AS a LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS c ON a.KCM = c.DM /*课程码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS d ON a.KCDJM = d.DM /*课程等级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS e ON a.SKFSM = e.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFZK = f.DM /*是否主课*/
GO

--考试数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_05_A01_KS_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XNID]--学年
      ,a.[XQID]--学期
      ,a.[KSMC]--考试名称
      ,a.[KSKSSJ]--考试开始时间
      ,a.[KSJSSJ]--考试结束时间
      ,a.[DFKSSJ]--登分开始时间
      ,a.[DFJSSJ]--登分结束时间
      ,c.SCHOOLID as c_XN_SCHOOLID--学年表 学校名
      ,c.XN as c_XN_XN--学年表 学年
      ,d.SCHOOLID as d_XQ_SCHOOLID--学期数据表 学校名
      ,d.XNID as d_XQ_XNID--学期数据表 学年
      ,d.XQM as d_XQ_XQM--学期数据表 学期码
      ,db.MC as d_XQ_XQM_MC--学期代码表 名称
      ,d.XQMC as d_XQ_XQMC--学期数据表 学期名称
      ,d.XQKSRQ as d_XQ_XQKSRQ--学期数据表 学期开始日期
      ,d.XQJSRQ as d_XQ_XQJSRQ--学期数据表 学期结束日期

FROM dbo.EDU_ZXJX_05_A01_KS AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*学年*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*学期*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS db ON d.XQM = db.DM /*学期码*/
GO

--考试科目数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_05_A02_KSKM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[SSKSID]--所属考试ID
      ,a.[JSRKID]--教师任课编号
      ,a.[KCMC]--课程名称
      ,a.[NJMC]--年级名称
      ,a.[BJMC]--班级名称
      ,a.[CJZF]--成绩总分
      ,c.SCHOOLID as c_KS_SCHOOLID--考试数据表 学校名
      ,c.XNID as c_KS_XNID--考试数据表 学年
      ,c.XQID as c_KS_XQID--考试数据表 学期
      ,c.KSMC as c_KS_KSMC--考试数据表 考试名称
      ,c.KSKSSJ as c_KS_KSKSSJ--考试数据表 考试开始时间
      ,c.KSJSSJ as c_KS_KSJSSJ--考试数据表 考试结束时间
      ,c.DFKSSJ as c_KS_DFKSSJ--考试数据表 登分开始时间
      ,c.DFJSSJ as c_KS_DFJSSJ--考试数据表 登分结束时间
      ,d.SCHOOLID as d_RKSJ_SCHOOLID--任课数据子类表 学校名
      ,d.JZGJBSJID as d_RKSJ_JZGJBSJID--任课数据子类表 教职工基本数据子类表
      ,d.RKKCH as d_RKSJ_RKKCH--任课数据子类表 任课课程号
      ,d.RKQSNY as d_RKSJ_RKQSNY--任课数据子类表 任课起始年月
      ,d.RKZZNY as d_RKSJ_RKZZNY--任课数据子类表 任课终止年月
      ,d.RKZXS as d_RKSJ_RKZXS--任课数据子类表 任课总学时
      ,d.RKXDM as d_RKSJ_RKXDM--任课数据子类表 任课学段码
      ,db.MC as d_RKSJ_RKXDM_MC--任课学段代码表 名称
      ,d.RKJSM as d_RKSJ_RKJSM--任课数据子类表 任课角色码
      ,dc.MC as d_RKSJ_RKJSM_MC--任课角色代码表 名称
      ,d.SKBJ as d_RKSJ_SKBJ--任课数据子类表 授课班级
      ,d.SKRS as d_RKSJ_SKRS--任课数据子类表 授课人数
      ,d.ZKS as d_RKSJ_ZKS--任课数据子类表 周课时
      ,d.SFLT as d_RKSJ_SFLT--任课数据子类表 是否连堂
      ,dd.MC as d_RKSJ_SFLT_MC--是否标志代码表 名称
      ,d.NJID as d_RKSJ_NJID--任课数据子类表 年级号
      ,d.XQID as d_RKSJ_XQID--任课数据子类表 学期
      ,d.XNID as d_RKSJ_XNID--任课数据子类表 学年

FROM dbo.EDU_ZXJX_05_A02_KSKM AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_05_A01_KS AS c ON a.SSKSID = c.ID /*所属考试ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_07_02_RKSJ AS d ON a.JSRKID = d.ID /*教师任课编号*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS db ON d.RKXDM = db.DM /*任课学段码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKJS AS dc ON d.RKJSM = dc.DM /*任课角色码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dd ON d.SFLT = dd.DM /*是否连堂*/
GO

--面批记录表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_06_A01_MPJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[MPJS]--面批教师
      ,a.[MPKC]--面批课程
      ,a.[MPXS]--面批学生
      ,a.[XNID]--学年
      ,a.[XQID]--学期
      ,a.[NJID]--年级
      ,a.[BJID]--班级
      ,a.[MPJG]--面批结果
      ,a.[MPSJ]--面批时间
      ,a.[RRSJ]--录入时间
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,c.GH as c_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,c.XM as c_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,c.YWXM as c_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,c.XMPY as c_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,c.CYM as c_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,c.XBM as c_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,cb.MC as c_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,c.CSRQ as c_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,c.CSDM as c_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,cc.MC as c_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,c.MZM as c_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.GJDQM as c_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,ce.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,ce.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,ce.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,cf.MC as c_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,c.HYZKM as c_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,cg.MC as c_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,c.GATQWM as c_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,ch.MC as c_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,ch.SM as c_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,ci.MC as c_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,ci.JC as c_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,c.JKZKM as c_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,cj.MC as c_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,cj.SM as c_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,c.XYZJM as c_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,ck.MC as c_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,c.XXM as c_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,cl.MC as c_JZGJBSJ_XXM_MC--血型代码表 名称
      ,cl.JC as c_JZGJBSJ_XXM_JC--血型代码表 简称
      ,c.ZP as c_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,c.SFZJYXQ as c_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,c.JGH as c_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,c.JTZZ as c_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,c.XZZ as c_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,c.HKSZD as c_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,c.HKXZM as c_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,cm.MC as c_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,c.XLM as c_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,cn.MC as c_JZGJBSJ_XLM_MC--学历代码 名称
      ,c.GZNY as c_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,c.LXNY as c_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,c.CJNY as c_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,c.BZLBM as c_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,co.MC as c_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,c.DABH as c_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,c.DAWB as c_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,c.TXDZ as c_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,c.LXDH as c_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,c.YZBM as c_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,c.DZXX as c_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,c.ZYDZ as c_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,c.TC as c_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,c.GWZYM as c_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,cp.MC as c_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,c.ZYRKXD as c_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,cq.MC as c_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,d.SCHOOLID as d_KC_SCHOOLID--课程数据类 学校名
      ,d.KCMC as d_KC_KCMC--课程数据类 课程名称
      ,d.KCM as d_KC_KCM--课程数据类 课程码
      ,db.MC as d_KC_KCM_MC--中小学课程代码表 名称
      ,db.SYXX as d_KC_KCM_SYXX--中小学课程代码表 适用学校
      ,d.KCDJM as d_KC_KCDJM--课程数据类 课程等级码
      ,dc.MC as d_KC_KCDJM_MC--中小学课程等级代码表 名称
      ,d.KCBM as d_KC_KCBM--课程数据类 课程别名
      ,d.KCJJ as d_KC_KCJJ--课程数据类 课程简介
      ,d.KCYQ as d_KC_KCYQ--课程数据类 课程要求
      ,d.ZXS as d_KC_ZXS--课程数据类 总学时
      ,d.ZHXS as d_KC_ZHXS--课程数据类 周学时
      ,d.ZXXS as d_KC_ZXXS--课程数据类 自学学时
      ,d.SKFSM as d_KC_SKFSM--课程数据类 授课方式码
      ,dd.MC as d_KC_SKFSM_MC--授课方式代码表 名称
      ,d.JCBM as d_KC_JCBM--课程数据类 教材编码
      ,d.CKSM as d_KC_CKSM--课程数据类 参考书目
      ,d.CDXZ as d_KC_CDXZ--课程数据类 场地限制
      ,d.SFZK as d_KC_SFZK--课程数据类 是否主课
      ,de.MC as d_KC_SFZK_MC--是否标志代码表 名称
      ,e.SCHOOLID as e_XSXX_SCHOOLID--学生基本数据子类表 学校名
      ,e.XH as e_XSXX_XH--学生基本数据子类表 学号
      ,e.XM as e_XSXX_XM--学生基本数据子类表 姓名
      ,e.YWXM as e_XSXX_YWXM--学生基本数据子类表 英文姓名
      ,e.XMPY as e_XSXX_XMPY--学生基本数据子类表 姓名拼音
      ,e.CYM as e_XSXX_CYM--学生基本数据子类表 曾用名
      ,e.XBM as e_XSXX_XBM--学生基本数据子类表 性别码
      ,eb.MC as e_XSXX_XBM_MC--人的性别代码 名称
      ,e.CSRQ as e_XSXX_CSRQ--学生基本数据子类表 出生日期
      ,e.CSDM as e_XSXX_CSDM--学生基本数据子类表 出生地码
      ,ec.MC as e_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,e.JG as e_XSXX_JG--学生基本数据子类表 籍贯
      ,e.MZM as e_XSXX_MZM--学生基本数据子类表 民族码
      ,ed.MZMC as e_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,ed.ZMDM as e_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,e.GJDQM as e_XSXX_GJDQM--学生基本数据子类表 国籍/地区码
      ,ee.GJDQMCJC as e_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,ee.EZMDM as e_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,ee.SZMDM as e_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,e.SFZJLXM as e_XSXX_SFZJLXM--学生基本数据子类表 身份证件类型码
      ,ef.MC as e_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,e.SFZJH as e_XSXX_SFZJH--学生基本数据子类表 身份证件号
      ,e.HYZKM as e_XSXX_HYZKM--学生基本数据子类表 婚姻状况码
      ,eg.MC as e_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,e.GATQWM as e_XSXX_GATQWM--学生基本数据子类表 港澳台侨外码
      ,eh.MC as e_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,eh.SM as e_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,e.ZZMMM as e_XSXX_ZZMMM--学生基本数据子类表 政治面貌码
      ,ei.MC as e_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ei.JC as e_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,e.JKZKM as e_XSXX_JKZKM--学生基本数据子类表 健康状况码
      ,ej.MC as e_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,ej.SM as e_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,e.XYZJM as e_XSXX_XYZJM--学生基本数据子类表 信仰宗教码
      ,ek.MC as e_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,e.XXM as e_XSXX_XXM--学生基本数据子类表 血型码
      ,el.MC as e_XSXX_XXM_MC--血型代码表 名称
      ,el.JC as e_XSXX_XXM_JC--血型代码表 简称
      ,e.ZP as e_XSXX_ZP--学生基本数据子类表 照片
      ,e.SFZJYXQ as e_XSXX_SFZJYXQ--学生基本数据子类表 身份证件有效期
      ,e.DSZYBZ as e_XSXX_DSZYBZ--学生基本数据子类表 独生子女标志
      ,em.MC as e_XSXX_DSZYBZ_MC--是否标志代码表 名称
      ,e.RXNY as e_XSXX_RXNY--学生基本数据子类表 入学年月
      ,e.NJ as e_XSXX_NJ--学生基本数据子类表 年级
      ,e.BH as e_XSXX_BH--学生基本数据子类表 班号
      ,e.XSLBM as e_XSXX_XSLBM--学生基本数据子类表 学生类别码
      ,en.MC as e_XSXX_XSLBM_MC--学生类别代码表 名称
      ,en.SM as e_XSXX_XSLBM_SM--学生类别代码表 说明
      ,e.XZZ as e_XSXX_XZZ--学生基本数据子类表 现住址
      ,e.HKSZD as e_XSXX_HKSZD--学生基本数据子类表 户口所在地
      ,e.HKXZM as e_XSXX_HKXZM--学生基本数据子类表 户口性质码
      ,eo.MC as e_XSXX_HKXZM_MC--户口类别代码 名称
      ,e.SFLDRK as e_XSXX_SFLDRK--学生基本数据子类表 是否流动人口
      ,ep.MC as e_XSXX_SFLDRK_MC--是否标志代码表 名称
      ,e.TC as e_XSXX_TC--学生基本数据子类表 特长
      ,e.LXDH as e_XSXX_LXDH--学生基本数据子类表 联系电话
      ,e.TXDZ as e_XSXX_TXDZ--学生基本数据子类表 通信地址
      ,e.YZBM as e_XSXX_YZBM--学生基本数据子类表 邮政编码
      ,e.DZXX as e_XSXX_DZXX--学生基本数据子类表 电子信箱
      ,e.ZYDZ as e_XSXX_ZYDZ--学生基本数据子类表 主页地址
      ,e.XJH as e_XSXX_XJH--学生基本数据子类表 学籍号
      ,f.SCHOOLID as f_XN_SCHOOLID--学年表 学校名
      ,f.XN as f_XN_XN--学年表 学年
      ,g.SCHOOLID as g_XQ_SCHOOLID--学期数据表 学校名
      ,g.XNID as g_XQ_XNID--学期数据表 学年
      ,g.XQM as g_XQ_XQM--学期数据表 学期码
      ,gb.MC as g_XQ_XQM_MC--学期代码表 名称
      ,g.XQMC as g_XQ_XQMC--学期数据表 学期名称
      ,g.XQKSRQ as g_XQ_XQKSRQ--学期数据表 学期开始日期
      ,g.XQJSRQ as g_XQ_XQJSRQ--学期数据表 学期结束日期
      ,h.SCHOOLID as h_NJ_SCHOOLID--年级数据类表 学校名
      ,h.NJMC as h_NJ_NJMC--年级数据类表 年级名称
      ,i.SCHOOLID as i_BJ_SCHOOLID--班级数据类表 学校名
      ,i.NJ as i_BJ_NJ--班级数据类表 年级号
      ,i.BJ as i_BJ_BJ--班级数据类表 班级名称
      ,i.JBNY as i_BJ_JBNY--班级数据类表 建班年月
      ,i.BZRGH as i_BJ_BZRGH--班级数据类表 班主任工号
      ,i.BZXH as i_BJ_BZXH--班级数据类表 班长学号
      ,i.BJRYCH as i_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,i.XZ as i_BJ_XZ--班级数据类表 学制
      ,i.BJLXM as i_BJ_BJLXM--班级数据类表 班级类型码
      ,ib.MC as i_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,i.WLLX as i_BJ_WLLX--班级数据类表 文理类型
      ,i.BYRQ as i_BJ_BYRQ--班级数据类表 毕业日期
      ,i.SFSSMZSYJXB as i_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,ic.MC as i_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,i.SYJXMSM as i_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,id.MC as i_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,id.SM as i_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明

FROM dbo.EDU_ZXJX_06_A01_MPJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS c ON a.MPJS = c.ID /*面批教师*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS d ON a.MPKC = d.KCH /*面批课程*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS e ON a.MPXS = e.ID /*面批学生*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS f ON a.XNID = f.ID /*学年*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS g ON a.XQID = g.ID /*学期*/ AND a.SCHOOLID = g.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS h ON a.NJID = h.NJ /*年级*/ AND a.SCHOOLID = h.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS i ON a.BJID = i.BH /*班级*/ AND a.SCHOOLID = i.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cb ON c.XBM = cb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.CSDM = cc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ce ON c.GJDQM = ce.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cf ON c.SFZJLXM = cf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ch ON c.GATQWM = ch.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ci ON c.ZZMMM = ci.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ck ON c.XYZJM = ck.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cl ON c.XXM = cl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKXZM = cm.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS cn ON c.XLM = cn.DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS co ON c.BZLBM = co.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS cp ON c.GWZYM = cp.DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS cq ON c.ZYRKXD = cq.DM /*主要任课学段*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS db ON d.KCM = db.DM /*课程码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS dc ON d.KCDJM = dc.DM /*课程等级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dd ON d.SKFSM = dd.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS de ON d.SFZK = de.DM /*是否主课*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS eb ON e.XBM = eb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ec ON e.CSDM = ec.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ed ON e.MZM = ed.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ee ON e.GJDQM = ee.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ef ON e.SFZJLXM = ef.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS eg ON e.HYZKM = eg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS eh ON e.GATQWM = eh.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ei ON e.ZZMMM = ei.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ej ON e.JKZKM = ej.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ek ON e.XYZJM = ek.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS el ON e.XXM = el.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS em ON e.DSZYBZ = em.DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS en ON e.XSLBM = en.DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS eo ON e.HKXZM = eo.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ep ON e.SFLDRK = ep.DM /*是否流动人口*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS gb ON g.XQM = gb.DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS ib ON i.BJLXM = ib.DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ic ON i.SFSSMZSYJXB = ic.DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS id ON i.SYJXMSM = id.DM /*双语教学模式码*/
GO

--教职工基本数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_01_01_JZGJBSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[GH]--工号
      ,a.[XM]--姓名
      ,a.[YWXM]--英文姓名
      ,a.[XMPY]--姓名拼音
      ,a.[CYM]--曾用名
      ,a.[XBM]--性别码
      ,a.[CSRQ]--出生日期
      ,a.[CSDM]--出生地码
      ,a.[JG]--籍贯
      ,a.[MZM]--民族码
      ,a.[GJDQM]--国籍/地区码
      ,a.[SFZJLXM]--身份证件类型码
      ,a.[SFZJH]--身份证件号
      ,a.[HYZKM]--婚姻状况码
      ,a.[GATQWM]--港澳台侨外码
      ,a.[ZZMMM]--政治面貌码
      ,a.[JKZKM]--健康状况码
      ,a.[XYZJM]--信仰宗教码
      ,a.[XXM]--血型码
      ,a.[ZP]--照片
      ,a.[SFZJYXQ]--身份证件有效期
      ,a.[JGH]--机构号
      ,a.[JTZZ]--家庭住址
      ,a.[XZZ]--现住址
      ,a.[HKSZD]--户口所在地
      ,a.[HKXZM]--户口性质码
      ,a.[XLM]--学历码
      ,a.[GZNY]--参加工作年月
      ,a.[LXNY]--来校年月
      ,a.[CJNY]--从教年月
      ,a.[BZLBM]--编制类别码
      ,a.[DABH]--档案编号
      ,a.[DAWB]--档案文本
      ,a.[TXDZ]--通信地址
      ,a.[LXDH]--联系电话
      ,a.[YZBM]--邮政编码
      ,a.[DZXX]--电子信箱
      ,a.[ZYDZ]--主页地址
      ,a.[TC]--特长
      ,a.[GWZYM]--岗位职业码
      ,a.[ZYRKXD]--主要任课学段
      ,c.MC as c_RDXB_MC--人的性别代码 名称
      ,d.MC as d_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--世界各国和地区名称代码 二字母代码
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--世界各国和地区名称代码 三字母代码
      ,g.MC as g_SFZJLX_MC--身份证件类型代码表 名称
      ,h.MC as h_HYZZ_MC--婚姻状况代码 名称
      ,i.MC as i_GATQW_MC--港澳台侨外代码表 名称
      ,i.SM as i_GATQW_SM--港澳台侨外代码表 说明
      ,j.MC as j_ZZMM_MC--政治面貌代码 名称
      ,j.JC as j_ZZMM_JC--政治面貌代码 简称
      ,k.MC as k_JKZKYWSZ_MC--健康状况1位数字代码 名称
      ,k.SM as k_JKZKYWSZ_SM--健康状况1位数字代码 说明
      ,l.MC as l_ZJXY_MC--宗教信仰代码 名称
      ,m.MC as m_XX_MC--血型代码表 名称
      ,m.JC as m_XX_JC--血型代码表 简称
      ,n.MC as n_HKLB_MC--户口类别代码 名称
      ,o.MC as o_XL_MC--学历代码 名称
      ,p.MC as p_ZXXBZLB_MC--中小学编制类别代码表 名称
      ,q.MC as q_GWZY_MC--岗位职业代码表 名称
      ,r.MC as r_RKXD_MC--任课学段代码表 名称

FROM dbo.EDU_ZXJZ_01_01_JZGJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS c ON a.XBM = c.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.CSDM = d.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS f ON a.GJDQM = f.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS g ON a.SFZJLXM = g.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS h ON a.HYZKM = h.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS i ON a.GATQWM = i.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS j ON a.ZZMMM = j.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS k ON a.JKZKM = k.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS l ON a.XYZJM = l.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS m ON a.XXM = m.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS n ON a.HKXZM = n.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS o ON a.XLM = o.DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS p ON a.BZLBM = p.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS q ON a.GWZYM = q.DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS r ON a.ZYRKXD = r.DM /*主要任课学段*/
GO

--校内岗位数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_02_A01_XNGWSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[GWID]--岗位表ID
      ,a.[JZGJBSJID]--教职工基本数据子类表
      ,a.[GWQSNY]--岗位起始年月
      ,a.[GWJSNY]--岗位结束年月
      ,a.[SFZG]--是否在岗
      ,a.[ZWMC]--职务名称
      ,a.[JGH]--机构号
      ,c.SCHOOLID as c_JGGW_SCHOOLID--机构岗位表 学校ID
      ,c.JGH as c_JGGW_JGH--机构岗位表 机构号
      ,c.GWBH as c_JGGW_GWBH--机构岗位表 岗位编号
      ,c.GWMC as c_JGGW_GWMC--机构岗位表 岗位名称
      ,c.GWSM as c_JGGW_GWSM--机构岗位表 岗位说明
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,d.GH as d_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,d.XM as d_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,d.XBM as d_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,db.MC as d_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,d.CSRQ as d_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,d.CSDM as d_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,dc.MC as d_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,d.JG as d_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,d.MZM as d_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,d.GJDQM as d_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,d.HYZKM as d_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,dg.MC as d_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,d.GATQWM as d_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,dh.MC as d_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,dh.SM as d_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,di.MC as d_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,di.JC as d_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,dj.MC as d_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,dj.SM as d_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,d.XYZJM as d_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,dk.MC as d_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,d.XXM as d_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,dl.MC as d_JZGJBSJ_XXM_MC--血型代码表 名称
      ,dl.JC as d_JZGJBSJ_XXM_JC--血型代码表 简称
      ,d.ZP as d_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,d.JGH as d_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,d.JTZZ as d_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,d.XZZ as d_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,d.HKSZD as d_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,d.HKXZM as d_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,dm.MC as d_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,d.XLM as d_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,dn.MC as d_JZGJBSJ_XLM_MC--学历代码 名称
      ,d.GZNY as d_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,d.LXNY as d_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,d.CJNY as d_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,do.MC as d_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,d.DABH as d_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,d.DAWB as d_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,d.TXDZ as d_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,d.LXDH as d_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,d.YZBM as d_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,d.DZXX as d_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,d.TC as d_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,d.GWZYM as d_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,dp.MC as d_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,dq.MC as d_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,e.MC as e_SFBZ_MC--是否标志代码表 名称
      ,f.SCHOOLID as f_JG_SCHOOLID--机构数据类表 学校名
      ,f.LSJGH as f_JG_LSJGH--机构数据类表 隶属机构号
      ,f.JGMC as f_JG_JGMC--机构数据类表 机构名称
      ,f.JGJC as f_JG_JGJC--机构数据类表 机构简称
      ,f.FZRGH as f_JG_FZRGH--机构数据类表 负责人工号

FROM dbo.EDU_ZXJZ_02_A01_XNGWSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_A01_JGGW AS c ON a.GWID = c.ID /*岗位表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.JZGJBSJID = d.ID /*教职工基本数据子类表*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFZG = e.DM /*是否在岗*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS f ON a.JGH = f.JGH /*机构号*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZKM = dg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dh ON d.GATQWM = dh.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS di ON d.ZZMMM = di.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS dj ON d.JKZKM = dj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dk ON d.XYZJM = dk.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dl ON d.XXM = dl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dm ON d.HKXZM = dm.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS dn ON d.XLM = dn.DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS do ON d.BZLBM = do.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS dp ON d.GWZYM = dp.DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS dq ON d.ZYRKXD = dq.DM /*主要任课学段*/
GO

--任课数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_07_02_RKSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[JZGJBSJID]--教职工基本数据子类表
      ,a.[RKKCH]--任课课程号
      ,a.[RKQSNY]--任课起始年月
      ,a.[RKZZNY]--任课终止年月
      ,a.[RKZXS]--任课总学时
      ,a.[RKXDM]--任课学段码
      ,a.[RKJSM]--任课角色码
      ,a.[SKBJ]--授课班级
      ,a.[SKRS]--授课人数
      ,a.[ZKS]--周课时
      ,a.[SFLT]--是否连堂
      ,a.[NJID]--年级号
      ,a.[XQID]--学期
      ,a.[XNID]--学年
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,c.GH as c_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,c.XM as c_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,c.YWXM as c_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,c.XMPY as c_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,c.CYM as c_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,c.XBM as c_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,cb.MC as c_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,c.CSRQ as c_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,c.CSDM as c_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,cc.MC as c_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,c.MZM as c_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.GJDQM as c_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,ce.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,ce.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,ce.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,cf.MC as c_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,c.HYZKM as c_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,cg.MC as c_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,c.GATQWM as c_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,ch.MC as c_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,ch.SM as c_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,ci.MC as c_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,ci.JC as c_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,c.JKZKM as c_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,cj.MC as c_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,cj.SM as c_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,c.XYZJM as c_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,ck.MC as c_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,c.XXM as c_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,cl.MC as c_JZGJBSJ_XXM_MC--血型代码表 名称
      ,cl.JC as c_JZGJBSJ_XXM_JC--血型代码表 简称
      ,c.ZP as c_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,c.SFZJYXQ as c_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,c.JGH as c_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,c.JTZZ as c_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,c.XZZ as c_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,c.HKSZD as c_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,c.HKXZM as c_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,cm.MC as c_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,c.XLM as c_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,cn.MC as c_JZGJBSJ_XLM_MC--学历代码 名称
      ,c.GZNY as c_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,c.LXNY as c_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,c.CJNY as c_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,c.BZLBM as c_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,co.MC as c_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,c.DABH as c_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,c.DAWB as c_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,c.TXDZ as c_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,c.LXDH as c_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,c.YZBM as c_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,c.DZXX as c_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,c.ZYDZ as c_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,c.TC as c_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,c.GWZYM as c_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,cp.MC as c_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,c.ZYRKXD as c_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,cq.MC as c_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,d.SCHOOLID as d_KC_SCHOOLID--课程数据类 学校名
      ,d.KCMC as d_KC_KCMC--课程数据类 课程名称
      ,d.KCM as d_KC_KCM--课程数据类 课程码
      ,db.MC as d_KC_KCM_MC--中小学课程代码表 名称
      ,db.SYXX as d_KC_KCM_SYXX--中小学课程代码表 适用学校
      ,d.KCDJM as d_KC_KCDJM--课程数据类 课程等级码
      ,dc.MC as d_KC_KCDJM_MC--中小学课程等级代码表 名称
      ,d.KCBM as d_KC_KCBM--课程数据类 课程别名
      ,d.KCJJ as d_KC_KCJJ--课程数据类 课程简介
      ,d.KCYQ as d_KC_KCYQ--课程数据类 课程要求
      ,d.ZXS as d_KC_ZXS--课程数据类 总学时
      ,d.ZHXS as d_KC_ZHXS--课程数据类 周学时
      ,d.ZXXS as d_KC_ZXXS--课程数据类 自学学时
      ,d.SKFSM as d_KC_SKFSM--课程数据类 授课方式码
      ,dd.MC as d_KC_SKFSM_MC--授课方式代码表 名称
      ,d.JCBM as d_KC_JCBM--课程数据类 教材编码
      ,d.CKSM as d_KC_CKSM--课程数据类 参考书目
      ,d.CDXZ as d_KC_CDXZ--课程数据类 场地限制
      ,d.SFZK as d_KC_SFZK--课程数据类 是否主课
      ,de.MC as d_KC_SFZK_MC--是否标志代码表 名称
      ,e.MC as e_RKXD_MC--任课学段代码表 名称
      ,f.MC as f_RKJS_MC--任课角色代码表 名称
      ,g.SCHOOLID as g_BJ_SCHOOLID--班级数据类表 学校名
      ,g.NJ as g_BJ_NJ--班级数据类表 年级号
      ,g.BJ as g_BJ_BJ--班级数据类表 班级名称
      ,g.JBNY as g_BJ_JBNY--班级数据类表 建班年月
      ,g.BZRGH as g_BJ_BZRGH--班级数据类表 班主任工号
      ,g.BZXH as g_BJ_BZXH--班级数据类表 班长学号
      ,g.BJRYCH as g_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,g.XZ as g_BJ_XZ--班级数据类表 学制
      ,g.BJLXM as g_BJ_BJLXM--班级数据类表 班级类型码
      ,gb.MC as g_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,g.WLLX as g_BJ_WLLX--班级数据类表 文理类型
      ,g.BYRQ as g_BJ_BYRQ--班级数据类表 毕业日期
      ,g.SFSSMZSYJXB as g_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,gc.MC as g_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,g.SYJXMSM as g_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,gd.MC as g_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,gd.SM as g_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,h.MC as h_SFBZ_MC--是否标志代码表 名称
      ,i.SCHOOLID as i_NJ_SCHOOLID--年级数据类表 学校名
      ,i.NJMC as i_NJ_NJMC--年级数据类表 年级名称
      ,j.SCHOOLID as j_XQ_SCHOOLID--学期数据表 学校名
      ,j.XNID as j_XQ_XNID--学期数据表 学年
      ,j.XQM as j_XQ_XQM--学期数据表 学期码
      ,jb.MC as j_XQ_XQM_MC--学期代码表 名称
      ,j.XQMC as j_XQ_XQMC--学期数据表 学期名称
      ,j.XQKSRQ as j_XQ_XQKSRQ--学期数据表 学期开始日期
      ,j.XQJSRQ as j_XQ_XQJSRQ--学期数据表 学期结束日期
      ,k.SCHOOLID as k_XN_SCHOOLID--学年表 学校名
      ,k.XN as k_XN_XN--学年表 学年

FROM dbo.EDU_ZXJZ_07_02_RKSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*教职工基本数据子类表*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS d ON a.RKKCH = d.KCH /*任课课程号*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS e ON a.RKXDM = e.DM /*任课学段码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKJS AS f ON a.RKJSM = f.DM /*任课角色码*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS g ON a.SKBJ = g.BH /*授课班级*/ AND a.SCHOOLID = g.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS h ON a.SFLT = h.DM /*是否连堂*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS i ON a.NJID = i.NJ /*年级号*/ AND a.SCHOOLID = i.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS j ON a.XQID = j.ID /*学期*/ AND a.SCHOOLID = j.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS k ON a.XNID = k.ID /*学年*/ AND a.SCHOOLID = k.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cb ON c.XBM = cb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.CSDM = cc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ce ON c.GJDQM = ce.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cf ON c.SFZJLXM = cf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ch ON c.GATQWM = ch.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ci ON c.ZZMMM = ci.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ck ON c.XYZJM = ck.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cl ON c.XXM = cl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKXZM = cm.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS cn ON c.XLM = cn.DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS co ON c.BZLBM = co.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS cp ON c.GWZYM = cp.DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS cq ON c.ZYRKXD = cq.DM /*主要任课学段*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS db ON d.KCM = db.DM /*课程码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS dc ON d.KCDJM = dc.DM /*课程等级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dd ON d.SKFSM = dd.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS de ON d.SFZK = de.DM /*是否主课*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS gb ON g.BJLXM = gb.DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS gc ON g.SFSSMZSYJXB = gc.DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS gd ON g.SYJXMSM = gd.DM /*双语教学模式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS jb ON j.XQM = jb.DM /*学期码*/
GO

--学生基本数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_01_01_XSXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XH]--学号
      ,a.[XM]--姓名
      ,a.[YWXM]--英文姓名
      ,a.[XMPY]--姓名拼音
      ,a.[CYM]--曾用名
      ,a.[XBM]--性别码
      ,a.[CSRQ]--出生日期
      ,a.[CSDM]--出生地码
      ,a.[JG]--籍贯
      ,a.[MZM]--民族码
      ,a.[GJDQM]--国籍/地区码
      ,a.[SFZJLXM]--身份证件类型码
      ,a.[SFZJH]--身份证件号
      ,a.[HYZKM]--婚姻状况码
      ,a.[GATQWM]--港澳台侨外码
      ,a.[ZZMMM]--政治面貌码
      ,a.[JKZKM]--健康状况码
      ,a.[XYZJM]--信仰宗教码
      ,a.[XXM]--血型码
      ,a.[ZP]--照片
      ,a.[SFZJYXQ]--身份证件有效期
      ,a.[DSZYBZ]--独生子女标志
      ,a.[RXNY]--入学年月
      ,a.[NJ]--年级
      ,a.[BH]--班号
      ,a.[XSLBM]--学生类别码
      ,a.[XZZ]--现住址
      ,a.[HKSZD]--户口所在地
      ,a.[HKXZM]--户口性质码
      ,a.[SFLDRK]--是否流动人口
      ,a.[TC]--特长
      ,a.[LXDH]--联系电话
      ,a.[TXDZ]--通信地址
      ,a.[YZBM]--邮政编码
      ,a.[DZXX]--电子信箱
      ,a.[ZYDZ]--主页地址
      ,a.[XJH]--学籍号
      ,c.MC as c_RDXB_MC--人的性别代码 名称
      ,d.MC as d_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--世界各国和地区名称代码 二字母代码
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--世界各国和地区名称代码 三字母代码
      ,g.MC as g_SFZJLX_MC--身份证件类型代码表 名称
      ,h.MC as h_HYZZ_MC--婚姻状况代码 名称
      ,i.MC as i_GATQW_MC--港澳台侨外代码表 名称
      ,i.SM as i_GATQW_SM--港澳台侨外代码表 说明
      ,j.MC as j_ZZMM_MC--政治面貌代码 名称
      ,j.JC as j_ZZMM_JC--政治面貌代码 简称
      ,k.MC as k_JKZKYWSZ_MC--健康状况1位数字代码 名称
      ,k.SM as k_JKZKYWSZ_SM--健康状况1位数字代码 说明
      ,l.MC as l_ZJXY_MC--宗教信仰代码 名称
      ,m.MC as m_XX_MC--血型代码表 名称
      ,m.JC as m_XX_JC--血型代码表 简称
      ,n.MC as n_SFBZ_MC--是否标志代码表 名称
      ,o.SCHOOLID as o_NJ_SCHOOLID--年级数据类表 学校名
      ,o.NJMC as o_NJ_NJMC--年级数据类表 年级名称
      ,p.SCHOOLID as p_BJ_SCHOOLID--班级数据类表 学校名
      ,p.NJ as p_BJ_NJ--班级数据类表 年级号
      ,p.BJ as p_BJ_BJ--班级数据类表 班级名称
      ,p.JBNY as p_BJ_JBNY--班级数据类表 建班年月
      ,p.BZRGH as p_BJ_BZRGH--班级数据类表 班主任工号
      ,p.BZXH as p_BJ_BZXH--班级数据类表 班长学号
      ,p.BJRYCH as p_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,p.XZ as p_BJ_XZ--班级数据类表 学制
      ,p.BJLXM as p_BJ_BJLXM--班级数据类表 班级类型码
      ,pb.MC as p_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,p.WLLX as p_BJ_WLLX--班级数据类表 文理类型
      ,p.BYRQ as p_BJ_BYRQ--班级数据类表 毕业日期
      ,p.SFSSMZSYJXB as p_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,pc.MC as p_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,p.SYJXMSM as p_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,pd.MC as p_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,pd.SM as p_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,q.MC as q_XSLB_MC--学生类别代码表 名称
      ,q.SM as q_XSLB_SM--学生类别代码表 说明
      ,r.MC as r_HKLB_MC--户口类别代码 名称
      ,s.MC as s_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZXXS_01_01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS c ON a.XBM = c.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.CSDM = d.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS f ON a.GJDQM = f.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS g ON a.SFZJLXM = g.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS h ON a.HYZKM = h.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS i ON a.GATQWM = i.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS j ON a.ZZMMM = j.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS k ON a.JKZKM = k.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS l ON a.XYZJM = l.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS m ON a.XXM = m.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS n ON a.DSZYBZ = n.DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS o ON a.NJ = o.NJ /*年级*/ AND a.SCHOOLID = o.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS p ON a.BH = p.BH /*班号*/ AND a.SCHOOLID = p.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS q ON a.XSLBM = q.DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS r ON a.HKXZM = r.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS s ON a.SFLDRK = s.DM /*是否流动人口*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS pb ON p.BJLXM = pb.DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS pc ON p.SFSSMZSYJXB = pc.DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS pd ON p.SYJXMSM = pd.DM /*双语教学模式码*/
GO

--学生家庭成员数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_01_06_XSJTCY_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XSXXID]--学生信息数据表
      ,a.[GXM]--关系码
      ,a.[CYXM]--成员姓名
      ,a.[CSNY]--出生年月
      ,a.[MZM]--民族码
      ,a.[GJDQM]--国籍/地区码
      ,a.[JKZKM]--健康状况码
      ,a.[CYGZDW]--成员工作单位
      ,a.[CYM]--从业码
      ,a.[ZYJSZWM]--专业技术职务码
      ,a.[ZWJBM]--职务级别码
      ,a.[DH]--电话
      ,a.[DZXX]--电子信箱
      ,a.[SFJHR]--是否监护人
      ,a.[XBM]--性别码
      ,a.[XLM]--学历码
      ,a.[LXDZ]--联系地址
      ,a.[SJHM]--手机号码
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生基本数据子类表 学校名
      ,c.XH as c_XSXX_XH--学生基本数据子类表 学号
      ,c.XM as c_XSXX_XM--学生基本数据子类表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生基本数据子类表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生基本数据子类表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生基本数据子类表 曾用名
      ,c.XBM as c_XSXX_XBM--学生基本数据子类表 性别码
      ,cb.MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.CSRQ as c_XSXX_CSRQ--学生基本数据子类表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生基本数据子类表 出生地码
      ,cc.MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生基本数据子类表 籍贯
      ,c.MZM as c_XSXX_MZM--学生基本数据子类表 民族码
      ,cd.MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cd.ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.GJDQM as c_XSXX_GJDQM--学生基本数据子类表 国籍/地区码
      ,ce.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,ce.EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,ce.SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生基本数据子类表 身份证件类型码
      ,cf.MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生基本数据子类表 身份证件号
      ,c.HYZKM as c_XSXX_HYZKM--学生基本数据子类表 婚姻状况码
      ,cg.MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生基本数据子类表 港澳台侨外码
      ,ch.MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,ch.SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生基本数据子类表 政治面貌码
      ,ci.MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ci.JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.JKZKM as c_XSXX_JKZKM--学生基本数据子类表 健康状况码
      ,cj.MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,cj.SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.XYZJM as c_XSXX_XYZJM--学生基本数据子类表 信仰宗教码
      ,ck.MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.XXM as c_XSXX_XXM--学生基本数据子类表 血型码
      ,cl.MC as c_XSXX_XXM_MC--血型代码表 名称
      ,cl.JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.ZP as c_XSXX_ZP--学生基本数据子类表 照片
      ,c.SFZJYXQ as c_XSXX_SFZJYXQ--学生基本数据子类表 身份证件有效期
      ,c.DSZYBZ as c_XSXX_DSZYBZ--学生基本数据子类表 独生子女标志
      ,cm.MC as c_XSXX_DSZYBZ_MC--是否标志代码表 名称
      ,c.RXNY as c_XSXX_RXNY--学生基本数据子类表 入学年月
      ,c.NJ as c_XSXX_NJ--学生基本数据子类表 年级
      ,c.BH as c_XSXX_BH--学生基本数据子类表 班号
      ,c.XSLBM as c_XSXX_XSLBM--学生基本数据子类表 学生类别码
      ,cn.MC as c_XSXX_XSLBM_MC--学生类别代码表 名称
      ,cn.SM as c_XSXX_XSLBM_SM--学生类别代码表 说明
      ,c.XZZ as c_XSXX_XZZ--学生基本数据子类表 现住址
      ,c.HKSZD as c_XSXX_HKSZD--学生基本数据子类表 户口所在地
      ,c.HKXZM as c_XSXX_HKXZM--学生基本数据子类表 户口性质码
      ,co.MC as c_XSXX_HKXZM_MC--户口类别代码 名称
      ,c.SFLDRK as c_XSXX_SFLDRK--学生基本数据子类表 是否流动人口
      ,cp.MC as c_XSXX_SFLDRK_MC--是否标志代码表 名称
      ,c.TC as c_XSXX_TC--学生基本数据子类表 特长
      ,c.LXDH as c_XSXX_LXDH--学生基本数据子类表 联系电话
      ,c.TXDZ as c_XSXX_TXDZ--学生基本数据子类表 通信地址
      ,c.YZBM as c_XSXX_YZBM--学生基本数据子类表 邮政编码
      ,c.DZXX as c_XSXX_DZXX--学生基本数据子类表 电子信箱
      ,c.ZYDZ as c_XSXX_ZYDZ--学生基本数据子类表 主页地址
      ,c.XJH as c_XSXX_XJH--学生基本数据子类表 学籍号
      ,d.MC as d_JTGX_MC--家庭关系代码 名称
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--世界各国和地区名称代码 二字母代码
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--世界各国和地区名称代码 三字母代码
      ,g.MC as g_JKZKYWSZ_MC--健康状况1位数字代码 名称
      ,g.SM as g_JKZKYWSZ_SM--健康状况1位数字代码 说明
      ,h.MC as h_CYZK_MC--从业状况（个人身份）代码 名称
      ,h.SM as h_CYZK_SM--从业状况（个人身份）代码 说明
      ,i.MC as i_ZYJSZW_MC--专业技术职务代码 名称
      ,j.MC as j_ZWJBDM_MC--职务级别代码 名称
      ,k.MC as k_SFBZ_MC--是否标志代码表 名称
      ,l.MC as l_RDXB_MC--人的性别代码 名称
      ,m.MC as m_XL_MC--学历代码 名称

FROM dbo.EDU_ZXXS_01_06_XSJTCY AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*学生信息数据表*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_JTGX AS d ON a.GXM = d.DM /*关系码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS f ON a.GJDQM = f.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS g ON a.JKZKM = g.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_CYZK AS h ON a.CYM = h.DM /*从业码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZYJSZW AS i ON a.ZYJSZWM = i.DM /*专业技术职务码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZWJBDM AS j ON a.ZWJBM = j.DM /*职务级别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS k ON a.SFJHR = k.DM /*是否监护人*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS l ON a.XBM = l.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS m ON a.XLM = m.DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cb ON c.XBM = cb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.CSDM = cc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ce ON c.GJDQM = ce.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cf ON c.SFZJLXM = cf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ch ON c.GATQWM = ch.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ci ON c.ZZMMM = ci.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ck ON c.XYZJM = ck.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cl ON c.XXM = cl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cm ON c.DSZYBZ = cm.DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS cn ON c.XSLBM = cn.DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS co ON c.HKXZM = co.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cp ON c.SFLDRK = cp.DM /*是否流动人口*/
GO

--学生家庭信息数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_02_A01_XSJTXX_DISP]
AS
SELECT a.[XSXXID]--学生信息数据表
      ,a.[SCHOOLID]--学校名
      ,a.[JTZZ]--家庭住址
      ,a.[JTYZBM]--家庭邮政编码
      ,a.[JTDH]--家庭电话
      ,a.[JTLXR]--家庭联系人
      ,a.[JTDZXX]--家庭电子信箱
      ,a.[JTRK]--家庭人口
      ,a.[JTZYSRLY]--家庭主要收入来源
      ,a.[JTYSRJE]--家庭月收入金额
      ,a.[JTNSRJE]--家庭年收入金额
      ,a.[LJZJHCZ]--离家最近火车站
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生基本数据子类表 学校名
      ,b.XH as b_XSXX_XH--学生基本数据子类表 学号
      ,b.XM as b_XSXX_XM--学生基本数据子类表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生基本数据子类表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生基本数据子类表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生基本数据子类表 曾用名
      ,b.XBM as b_XSXX_XBM--学生基本数据子类表 性别码
      ,bb.MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.CSRQ as b_XSXX_CSRQ--学生基本数据子类表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生基本数据子类表 出生地码
      ,bc.MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生基本数据子类表 籍贯
      ,b.MZM as b_XSXX_MZM--学生基本数据子类表 民族码
      ,bd.MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,bd.ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.GJDQM as b_XSXX_GJDQM--学生基本数据子类表 国籍/地区码
      ,be.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,be.EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,be.SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生基本数据子类表 身份证件类型码
      ,bf.MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生基本数据子类表 身份证件号
      ,b.HYZKM as b_XSXX_HYZKM--学生基本数据子类表 婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生基本数据子类表 港澳台侨外码
      ,bh.MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,bh.SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生基本数据子类表 政治面貌码
      ,bi.MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,bi.JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.JKZKM as b_XSXX_JKZKM--学生基本数据子类表 健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,bj.SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.XYZJM as b_XSXX_XYZJM--学生基本数据子类表 信仰宗教码
      ,bk.MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.XXM as b_XSXX_XXM--学生基本数据子类表 血型码
      ,bl.MC as b_XSXX_XXM_MC--血型代码表 名称
      ,bl.JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.ZP as b_XSXX_ZP--学生基本数据子类表 照片
      ,b.SFZJYXQ as b_XSXX_SFZJYXQ--学生基本数据子类表 身份证件有效期
      ,b.DSZYBZ as b_XSXX_DSZYBZ--学生基本数据子类表 独生子女标志
      ,bm.MC as b_XSXX_DSZYBZ_MC--是否标志代码表 名称
      ,b.RXNY as b_XSXX_RXNY--学生基本数据子类表 入学年月
      ,b.NJ as b_XSXX_NJ--学生基本数据子类表 年级
      ,b.BH as b_XSXX_BH--学生基本数据子类表 班号
      ,b.XSLBM as b_XSXX_XSLBM--学生基本数据子类表 学生类别码
      ,bn.MC as b_XSXX_XSLBM_MC--学生类别代码表 名称
      ,bn.SM as b_XSXX_XSLBM_SM--学生类别代码表 说明
      ,b.XZZ as b_XSXX_XZZ--学生基本数据子类表 现住址
      ,b.HKSZD as b_XSXX_HKSZD--学生基本数据子类表 户口所在地
      ,b.HKXZM as b_XSXX_HKXZM--学生基本数据子类表 户口性质码
      ,bo.MC as b_XSXX_HKXZM_MC--户口类别代码 名称
      ,b.SFLDRK as b_XSXX_SFLDRK--学生基本数据子类表 是否流动人口
      ,bp.MC as b_XSXX_SFLDRK_MC--是否标志代码表 名称
      ,b.TC as b_XSXX_TC--学生基本数据子类表 特长
      ,b.LXDH as b_XSXX_LXDH--学生基本数据子类表 联系电话
      ,b.TXDZ as b_XSXX_TXDZ--学生基本数据子类表 通信地址
      ,b.YZBM as b_XSXX_YZBM--学生基本数据子类表 邮政编码
      ,b.DZXX as b_XSXX_DZXX--学生基本数据子类表 电子信箱
      ,b.ZYDZ as b_XSXX_ZYDZ--学生基本数据子类表 主页地址
      ,b.XJH as b_XSXX_XJH--学生基本数据子类表 学籍号

FROM dbo.EDU_ZXXS_02_A01_XSJTXX AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生信息数据表*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bb ON b.XBM = bb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bc ON b.CSDM = bc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bd ON b.MZM = bd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS be ON b.GJDQM = be.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bf ON b.SFZJLXM = bf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bh ON b.GATQWM = bh.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bi ON b.ZZMMM = bi.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bk ON b.XYZJM = bk.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bl ON b.XXM = bl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bm ON b.DSZYBZ = bm.DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS bn ON b.XSLBM = bn.DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bo ON b.HKXZM = bo.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bp ON b.SFLDRK = bp.DM /*是否流动人口*/
GO

--在校考试成绩数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_02_06_ZXKSCJ_DISP]
AS
SELECT a.[ID]--考试成绩表
      ,a.[SCHOOLID]--学校名
      ,a.[XSXXID]--学生ID
      ,a.[XN]--学年（度）
      ,a.[XQM]--学期码
      ,a.[KSRQ]--考试日期
      ,a.[KCH]--课程号
      ,a.[RKJSID]--任课教师ID
      ,a.[CJLRRID]--成绩录入人ID
      ,a.[KSFSM]--考试方式码
      ,a.[KSXZM]--考试性质码
      ,a.[KSXSM]--考试形式码
      ,a.[FSLKSCJ]--分数类考试成绩
      ,a.[DJLKSCJ]--等级类考试成绩
      ,a.[KCCJ]--课程成绩
      ,a.[KCDJCJM]--课程等级成绩码
      ,a.[RKJSGH]--任课教师工号
      ,a.[CJLRRH]--成绩录入人号
      ,a.[CJLRRQ]--成绩录入日期
      ,a.[CJLRSJ]--成绩录入时间
      ,a.[XQID]--学期
      ,a.[XNID]--学年
      ,a.[NJID]--年级
      ,a.[BJID]--班级
      ,a.[SSKSID]--所属考试ID
      ,a.[SSKSKMID]--所属考试科目ID
      ,a.[SJID]--试卷ID
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生基本数据子类表 学校名
      ,c.XH as c_XSXX_XH--学生基本数据子类表 学号
      ,c.XM as c_XSXX_XM--学生基本数据子类表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生基本数据子类表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生基本数据子类表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生基本数据子类表 曾用名
      ,c.XBM as c_XSXX_XBM--学生基本数据子类表 性别码
      ,cb.MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.CSRQ as c_XSXX_CSRQ--学生基本数据子类表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生基本数据子类表 出生地码
      ,cc.MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生基本数据子类表 籍贯
      ,c.MZM as c_XSXX_MZM--学生基本数据子类表 民族码
      ,cd.MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cd.ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.GJDQM as c_XSXX_GJDQM--学生基本数据子类表 国籍/地区码
      ,ce.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,ce.EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,ce.SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生基本数据子类表 身份证件类型码
      ,cf.MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生基本数据子类表 身份证件号
      ,c.HYZKM as c_XSXX_HYZKM--学生基本数据子类表 婚姻状况码
      ,cg.MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生基本数据子类表 港澳台侨外码
      ,ch.MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,ch.SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生基本数据子类表 政治面貌码
      ,ci.MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ci.JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.JKZKM as c_XSXX_JKZKM--学生基本数据子类表 健康状况码
      ,cj.MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,cj.SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.XYZJM as c_XSXX_XYZJM--学生基本数据子类表 信仰宗教码
      ,ck.MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.XXM as c_XSXX_XXM--学生基本数据子类表 血型码
      ,cl.MC as c_XSXX_XXM_MC--血型代码表 名称
      ,cl.JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.ZP as c_XSXX_ZP--学生基本数据子类表 照片
      ,c.SFZJYXQ as c_XSXX_SFZJYXQ--学生基本数据子类表 身份证件有效期
      ,c.DSZYBZ as c_XSXX_DSZYBZ--学生基本数据子类表 独生子女标志
      ,cm.MC as c_XSXX_DSZYBZ_MC--是否标志代码表 名称
      ,c.RXNY as c_XSXX_RXNY--学生基本数据子类表 入学年月
      ,c.NJ as c_XSXX_NJ--学生基本数据子类表 年级
      ,c.BH as c_XSXX_BH--学生基本数据子类表 班号
      ,c.XSLBM as c_XSXX_XSLBM--学生基本数据子类表 学生类别码
      ,cn.MC as c_XSXX_XSLBM_MC--学生类别代码表 名称
      ,cn.SM as c_XSXX_XSLBM_SM--学生类别代码表 说明
      ,c.XZZ as c_XSXX_XZZ--学生基本数据子类表 现住址
      ,c.HKSZD as c_XSXX_HKSZD--学生基本数据子类表 户口所在地
      ,c.HKXZM as c_XSXX_HKXZM--学生基本数据子类表 户口性质码
      ,co.MC as c_XSXX_HKXZM_MC--户口类别代码 名称
      ,c.SFLDRK as c_XSXX_SFLDRK--学生基本数据子类表 是否流动人口
      ,cp.MC as c_XSXX_SFLDRK_MC--是否标志代码表 名称
      ,c.TC as c_XSXX_TC--学生基本数据子类表 特长
      ,c.LXDH as c_XSXX_LXDH--学生基本数据子类表 联系电话
      ,c.TXDZ as c_XSXX_TXDZ--学生基本数据子类表 通信地址
      ,c.YZBM as c_XSXX_YZBM--学生基本数据子类表 邮政编码
      ,c.DZXX as c_XSXX_DZXX--学生基本数据子类表 电子信箱
      ,c.ZYDZ as c_XSXX_ZYDZ--学生基本数据子类表 主页地址
      ,c.XJH as c_XSXX_XJH--学生基本数据子类表 学籍号
      ,d.MC as d_XQ_MC--学期代码表 名称
      ,e.SCHOOLID as e_KC_SCHOOLID--课程数据类 学校名
      ,e.KCMC as e_KC_KCMC--课程数据类 课程名称
      ,e.KCM as e_KC_KCM--课程数据类 课程码
      ,eb.MC as e_KC_KCM_MC--中小学课程代码表 名称
      ,eb.SYXX as e_KC_KCM_SYXX--中小学课程代码表 适用学校
      ,e.KCDJM as e_KC_KCDJM--课程数据类 课程等级码
      ,ec.MC as e_KC_KCDJM_MC--中小学课程等级代码表 名称
      ,e.KCBM as e_KC_KCBM--课程数据类 课程别名
      ,e.KCJJ as e_KC_KCJJ--课程数据类 课程简介
      ,e.KCYQ as e_KC_KCYQ--课程数据类 课程要求
      ,e.ZXS as e_KC_ZXS--课程数据类 总学时
      ,e.ZHXS as e_KC_ZHXS--课程数据类 周学时
      ,e.ZXXS as e_KC_ZXXS--课程数据类 自学学时
      ,e.SKFSM as e_KC_SKFSM--课程数据类 授课方式码
      ,ed.MC as e_KC_SKFSM_MC--授课方式代码表 名称
      ,e.JCBM as e_KC_JCBM--课程数据类 教材编码
      ,e.CKSM as e_KC_CKSM--课程数据类 参考书目
      ,e.CDXZ as e_KC_CDXZ--课程数据类 场地限制
      ,e.SFZK as e_KC_SFZK--课程数据类 是否主课
      ,ee.MC as e_KC_SFZK_MC--是否标志代码表 名称
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,f.GH as f_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,f.XM as f_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,f.YWXM as f_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,f.XMPY as f_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,f.CYM as f_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,f.XBM as f_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,fb.MC as f_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,f.CSRQ as f_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,f.CSDM as f_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,fc.MC as f_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,f.JG as f_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,f.MZM as f_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,f.GJDQM as f_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,fe.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,fe.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,fe.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,ff.MC as f_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,f.SFZJH as f_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,f.HYZKM as f_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,fg.MC as f_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,f.GATQWM as f_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,fh.MC as f_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,fh.SM as f_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,fi.MC as f_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,fi.JC as f_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,f.JKZKM as f_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,fj.MC as f_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,fj.SM as f_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,f.XYZJM as f_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,fk.MC as f_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,f.XXM as f_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,fl.MC as f_JZGJBSJ_XXM_MC--血型代码表 名称
      ,fl.JC as f_JZGJBSJ_XXM_JC--血型代码表 简称
      ,f.ZP as f_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,f.JGH as f_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,f.JTZZ as f_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,f.XZZ as f_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,f.HKSZD as f_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,f.HKXZM as f_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,fm.MC as f_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,f.XLM as f_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,fn.MC as f_JZGJBSJ_XLM_MC--学历代码 名称
      ,f.GZNY as f_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,f.LXNY as f_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,f.CJNY as f_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,f.BZLBM as f_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,fo.MC as f_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,f.DABH as f_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,f.DAWB as f_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,f.TXDZ as f_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,f.LXDH as f_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,f.YZBM as f_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,f.DZXX as f_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,f.TC as f_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,f.GWZYM as f_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,fp.MC as f_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,fq.MC as f_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,g.GH as g_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,g.XM as g_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,g.YWXM as g_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,g.XMPY as g_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,g.CYM as g_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,g.XBM as g_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,gb.MC as g_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,g.CSRQ as g_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,g.CSDM as g_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,gc.MC as g_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,g.JG as g_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,g.MZM as g_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,gd.MZMC as g_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,gd.ZMDM as g_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,g.GJDQM as g_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,ge.GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,ge.EZMDM as g_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,ge.SZMDM as g_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,gf.MC as g_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,g.SFZJH as g_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,g.HYZKM as g_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,gg.MC as g_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,g.GATQWM as g_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,gh.MC as g_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,gh.SM as g_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,gi.MC as g_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,gi.JC as g_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,g.JKZKM as g_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,gj.MC as g_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,gj.SM as g_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,g.XYZJM as g_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,gk.MC as g_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,g.XXM as g_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,gl.MC as g_JZGJBSJ_XXM_MC--血型代码表 名称
      ,gl.JC as g_JZGJBSJ_XXM_JC--血型代码表 简称
      ,g.ZP as g_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,g.SFZJYXQ as g_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,g.JGH as g_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,g.JTZZ as g_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,g.XZZ as g_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,g.HKSZD as g_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,g.HKXZM as g_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,gm.MC as g_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,g.XLM as g_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,gn.MC as g_JZGJBSJ_XLM_MC--学历代码 名称
      ,g.GZNY as g_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,g.LXNY as g_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,g.CJNY as g_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,g.BZLBM as g_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,go.MC as g_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,g.DABH as g_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,g.DAWB as g_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,g.TXDZ as g_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,g.LXDH as g_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,g.YZBM as g_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,g.DZXX as g_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,g.ZYDZ as g_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,g.TC as g_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,g.GWZYM as g_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,gp.MC as g_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,g.ZYRKXD as g_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,gq.MC as g_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,h.MC as h_KSFS_MC--考试方式代码表 名称
      ,h.SM as h_KSFS_SM--考试方式代码表 说明
      ,i.MC as i_KSXZ_MC--考试性质代码表 名称
      ,i.SM as i_KSXZ_SM--考试性质代码表 说明
      ,j.MC as j_KSXS_MC--考试形式代码表 名称
      ,k.SCHOOLID as k_XQ_SCHOOLID--学期数据表 学校名
      ,k.XNID as k_XQ_XNID--学期数据表 学年
      ,k.XQM as k_XQ_XQM--学期数据表 学期码
      ,kb.MC as k_XQ_XQM_MC--学期代码表 名称
      ,k.XQMC as k_XQ_XQMC--学期数据表 学期名称
      ,k.XQKSRQ as k_XQ_XQKSRQ--学期数据表 学期开始日期
      ,k.XQJSRQ as k_XQ_XQJSRQ--学期数据表 学期结束日期
      ,l.SCHOOLID as l_XN_SCHOOLID--学年表 学校名
      ,l.XN as l_XN_XN--学年表 学年
      ,m.SCHOOLID as m_NJ_SCHOOLID--年级数据类表 学校名
      ,m.NJMC as m_NJ_NJMC--年级数据类表 年级名称
      ,n.SCHOOLID as n_BJ_SCHOOLID--班级数据类表 学校名
      ,n.NJ as n_BJ_NJ--班级数据类表 年级号
      ,n.BJ as n_BJ_BJ--班级数据类表 班级名称
      ,n.JBNY as n_BJ_JBNY--班级数据类表 建班年月
      ,n.BZRGH as n_BJ_BZRGH--班级数据类表 班主任工号
      ,n.BZXH as n_BJ_BZXH--班级数据类表 班长学号
      ,n.BJRYCH as n_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,n.XZ as n_BJ_XZ--班级数据类表 学制
      ,n.BJLXM as n_BJ_BJLXM--班级数据类表 班级类型码
      ,nb.MC as n_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,n.WLLX as n_BJ_WLLX--班级数据类表 文理类型
      ,n.BYRQ as n_BJ_BYRQ--班级数据类表 毕业日期
      ,n.SFSSMZSYJXB as n_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,nc.MC as n_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,n.SYJXMSM as n_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,nd.MC as n_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,nd.SM as n_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,o.SCHOOLID as o_KS_SCHOOLID--考试数据表 学校名
      ,o.XNID as o_KS_XNID--考试数据表 学年
      ,o.XQID as o_KS_XQID--考试数据表 学期
      ,o.KSMC as o_KS_KSMC--考试数据表 考试名称
      ,o.KSKSSJ as o_KS_KSKSSJ--考试数据表 考试开始时间
      ,o.KSJSSJ as o_KS_KSJSSJ--考试数据表 考试结束时间
      ,o.DFKSSJ as o_KS_DFKSSJ--考试数据表 登分开始时间
      ,o.DFJSSJ as o_KS_DFJSSJ--考试数据表 登分结束时间
      ,p.SCHOOLID as p_KSKM_SCHOOLID--考试科目数据表 学校名
      ,p.SSKSID as p_KSKM_SSKSID--考试科目数据表 所属考试ID
      ,p.JSRKID as p_KSKM_JSRKID--考试科目数据表 教师任课编号
      ,p.KCMC as p_KSKM_KCMC--考试科目数据表 课程名称
      ,p.NJMC as p_KSKM_NJMC--考试科目数据表 年级名称
      ,p.BJMC as p_KSKM_BJMC--考试科目数据表 班级名称
      ,p.CJZF as p_KSKM_CJZF--考试科目数据表 成绩总分

FROM dbo.EDU_ZXXS_02_06_ZXKSCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*学生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS d ON a.XQM = d.DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS e ON a.KCH = e.KCH /*课程号*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.RKJSID = f.ID /*任课教师ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS g ON a.CJLRRID = g.ID /*成绩录入人ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSFS AS h ON a.KSFSM = h.DM /*考试方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXZ AS i ON a.KSXZM = i.DM /*考试性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS j ON a.KSXSM = j.DM /*考试形式码*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS k ON a.XQID = k.ID /*学期*/ AND a.SCHOOLID = k.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS l ON a.XNID = l.ID /*学年*/ AND a.SCHOOLID = l.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS m ON a.NJID = m.NJ /*年级*/ AND a.SCHOOLID = m.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS n ON a.BJID = n.BH /*班级*/ AND a.SCHOOLID = n.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_05_A01_KS AS o ON a.SSKSID = o.ID /*所属考试ID*/ AND a.SCHOOLID = o.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_05_A02_KSKM AS p ON a.SSKSKMID = p.ID /*所属考试科目ID*/ AND a.SCHOOLID = p.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cb ON c.XBM = cb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.CSDM = cc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ce ON c.GJDQM = ce.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cf ON c.SFZJLXM = cf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ch ON c.GATQWM = ch.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ci ON c.ZZMMM = ci.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ck ON c.XYZJM = ck.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cl ON c.XXM = cl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cm ON c.DSZYBZ = cm.DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS cn ON c.XSLBM = cn.DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS co ON c.HKXZM = co.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cp ON c.SFLDRK = cp.DM /*是否流动人口*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS eb ON e.KCM = eb.DM /*课程码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS ec ON e.KCDJM = ec.DM /*课程等级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS ed ON e.SKFSM = ed.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ee ON e.SFZK = ee.DM /*是否主课*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fb ON f.XBM = fb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fc ON f.CSDM = fc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fe ON f.GJDQM = fe.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ff ON f.SFZJLXM = ff.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS fg ON f.HYZKM = fg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fh ON f.GATQWM = fh.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fi ON f.ZZMMM = fi.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS fj ON f.JKZKM = fj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fk ON f.XYZJM = fk.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fl ON f.XXM = fl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS fm ON f.HKXZM = fm.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS fn ON f.XLM = fn.DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS fo ON f.BZLBM = fo.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS fp ON f.GWZYM = fp.DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS fq ON f.ZYRKXD = fq.DM /*主要任课学段*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS gb ON g.XBM = gb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gc ON g.CSDM = gc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS gd ON g.MZM = gd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ge ON g.GJDQM = ge.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS gf ON g.SFZJLXM = gf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS gg ON g.HYZKM = gg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS gh ON g.GATQWM = gh.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS gi ON g.ZZMMM = gi.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS gj ON g.JKZKM = gj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS gk ON g.XYZJM = gk.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS gl ON g.XXM = gl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS gm ON g.HKXZM = gm.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS gn ON g.XLM = gn.DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS go ON g.BZLBM = go.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS gp ON g.GWZYM = gp.DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS gq ON g.ZYRKXD = gq.DM /*主要任课学段*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS kb ON k.XQM = kb.DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS nb ON n.BJLXM = nb.DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS nc ON n.SFSSMZSYJXB = nc.DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS nd ON n.SYJXMSM = nd.DM /*双语教学模式码*/
GO

--学籍异动数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_07_A02_XJYD_DISP]
AS
SELECT a.[ID]--学籍异动表编号
      ,a.[XSXXID]--学生ID
      ,a.[SCHOOLID]--学校ID
      ,a.[YDLBM]--异动类别码
      ,a.[YDRQ]--异动日期
      ,a.[YDYYM]--异动原因码
      ,a.[SPRQ]--审批日期
      ,a.[SPWH]--审批文号
      ,a.[JBRID]--经办人ID
      ,a.[JBRGH]--经办人工号
      ,a.[YDLYXXM]--异动来源学校码
      ,a.[YDQXXXM]--异动去向学校码
      ,a.[YDSM]--异动说明
      ,a.[YBH]--原班号
      ,a.[YNJ]--原年级
      ,a.[XBH]--现班号
      ,a.[XNJ]--现年级
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生基本数据子类表 学校名
      ,b.XH as b_XSXX_XH--学生基本数据子类表 学号
      ,b.XM as b_XSXX_XM--学生基本数据子类表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生基本数据子类表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生基本数据子类表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生基本数据子类表 曾用名
      ,b.XBM as b_XSXX_XBM--学生基本数据子类表 性别码
      ,bb.MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.CSRQ as b_XSXX_CSRQ--学生基本数据子类表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生基本数据子类表 出生地码
      ,bc.MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生基本数据子类表 籍贯
      ,b.MZM as b_XSXX_MZM--学生基本数据子类表 民族码
      ,bd.MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,bd.ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.GJDQM as b_XSXX_GJDQM--学生基本数据子类表 国籍/地区码
      ,be.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,be.EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,be.SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生基本数据子类表 身份证件类型码
      ,bf.MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生基本数据子类表 身份证件号
      ,b.HYZKM as b_XSXX_HYZKM--学生基本数据子类表 婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生基本数据子类表 港澳台侨外码
      ,bh.MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,bh.SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生基本数据子类表 政治面貌码
      ,bi.MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,bi.JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.JKZKM as b_XSXX_JKZKM--学生基本数据子类表 健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,bj.SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.XYZJM as b_XSXX_XYZJM--学生基本数据子类表 信仰宗教码
      ,bk.MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.XXM as b_XSXX_XXM--学生基本数据子类表 血型码
      ,bl.MC as b_XSXX_XXM_MC--血型代码表 名称
      ,bl.JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.ZP as b_XSXX_ZP--学生基本数据子类表 照片
      ,b.SFZJYXQ as b_XSXX_SFZJYXQ--学生基本数据子类表 身份证件有效期
      ,b.DSZYBZ as b_XSXX_DSZYBZ--学生基本数据子类表 独生子女标志
      ,bm.MC as b_XSXX_DSZYBZ_MC--是否标志代码表 名称
      ,b.RXNY as b_XSXX_RXNY--学生基本数据子类表 入学年月
      ,b.NJ as b_XSXX_NJ--学生基本数据子类表 年级
      ,b.BH as b_XSXX_BH--学生基本数据子类表 班号
      ,b.XSLBM as b_XSXX_XSLBM--学生基本数据子类表 学生类别码
      ,bn.MC as b_XSXX_XSLBM_MC--学生类别代码表 名称
      ,bn.SM as b_XSXX_XSLBM_SM--学生类别代码表 说明
      ,b.XZZ as b_XSXX_XZZ--学生基本数据子类表 现住址
      ,b.HKSZD as b_XSXX_HKSZD--学生基本数据子类表 户口所在地
      ,b.HKXZM as b_XSXX_HKXZM--学生基本数据子类表 户口性质码
      ,bo.MC as b_XSXX_HKXZM_MC--户口类别代码 名称
      ,b.SFLDRK as b_XSXX_SFLDRK--学生基本数据子类表 是否流动人口
      ,bp.MC as b_XSXX_SFLDRK_MC--是否标志代码表 名称
      ,b.TC as b_XSXX_TC--学生基本数据子类表 特长
      ,b.LXDH as b_XSXX_LXDH--学生基本数据子类表 联系电话
      ,b.TXDZ as b_XSXX_TXDZ--学生基本数据子类表 通信地址
      ,b.YZBM as b_XSXX_YZBM--学生基本数据子类表 邮政编码
      ,b.DZXX as b_XSXX_DZXX--学生基本数据子类表 电子信箱
      ,b.ZYDZ as b_XSXX_ZYDZ--学生基本数据子类表 主页地址
      ,b.XJH as b_XSXX_XJH--学生基本数据子类表 学籍号
      ,d.MC as d_XJYDLB_MC--学籍异动类别代码表 名称
      ,e.MC as e_XJYDYY_MC--学籍异动原因代码表 名称
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,f.GH as f_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,f.XM as f_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,f.YWXM as f_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,f.XMPY as f_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,f.CYM as f_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,f.XBM as f_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,fb.MC as f_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,f.CSRQ as f_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,f.CSDM as f_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,fc.MC as f_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,f.JG as f_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,f.MZM as f_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,f.GJDQM as f_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,fe.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,fe.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,fe.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,ff.MC as f_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,f.SFZJH as f_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,f.HYZKM as f_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,fg.MC as f_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,f.GATQWM as f_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,fh.MC as f_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,fh.SM as f_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,fi.MC as f_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,fi.JC as f_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,f.JKZKM as f_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,fj.MC as f_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,fj.SM as f_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,f.XYZJM as f_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,fk.MC as f_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,f.XXM as f_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,fl.MC as f_JZGJBSJ_XXM_MC--血型代码表 名称
      ,fl.JC as f_JZGJBSJ_XXM_JC--血型代码表 简称
      ,f.ZP as f_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,f.JGH as f_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,f.JTZZ as f_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,f.XZZ as f_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,f.HKSZD as f_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,f.HKXZM as f_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,fm.MC as f_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,f.XLM as f_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,fn.MC as f_JZGJBSJ_XLM_MC--学历代码 名称
      ,f.GZNY as f_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,f.LXNY as f_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,f.CJNY as f_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,f.BZLBM as f_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,fo.MC as f_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,f.DABH as f_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,f.DAWB as f_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,f.TXDZ as f_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,f.LXDH as f_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,f.YZBM as f_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,f.DZXX as f_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,f.TC as f_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,f.GWZYM as f_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,fp.MC as f_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,fq.MC as f_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,g.SCHOOLID as g_BJ_SCHOOLID--班级数据类表 学校名
      ,g.NJ as g_BJ_NJ--班级数据类表 年级号
      ,g.BJ as g_BJ_BJ--班级数据类表 班级名称
      ,g.JBNY as g_BJ_JBNY--班级数据类表 建班年月
      ,g.BZRGH as g_BJ_BZRGH--班级数据类表 班主任工号
      ,g.BZXH as g_BJ_BZXH--班级数据类表 班长学号
      ,g.BJRYCH as g_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,g.XZ as g_BJ_XZ--班级数据类表 学制
      ,g.BJLXM as g_BJ_BJLXM--班级数据类表 班级类型码
      ,gb.MC as g_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,g.WLLX as g_BJ_WLLX--班级数据类表 文理类型
      ,g.BYRQ as g_BJ_BYRQ--班级数据类表 毕业日期
      ,g.SFSSMZSYJXB as g_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,gc.MC as g_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,g.SYJXMSM as g_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,gd.MC as g_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,gd.SM as g_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,h.SCHOOLID as h_NJ_SCHOOLID--年级数据类表 学校名
      ,h.NJMC as h_NJ_NJMC--年级数据类表 年级名称
      ,i.SCHOOLID as i_BJ_SCHOOLID--班级数据类表 学校名
      ,i.NJ as i_BJ_NJ--班级数据类表 年级号
      ,i.BJ as i_BJ_BJ--班级数据类表 班级名称
      ,i.JBNY as i_BJ_JBNY--班级数据类表 建班年月
      ,i.BZRGH as i_BJ_BZRGH--班级数据类表 班主任工号
      ,i.BZXH as i_BJ_BZXH--班级数据类表 班长学号
      ,i.BJRYCH as i_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,i.XZ as i_BJ_XZ--班级数据类表 学制
      ,i.BJLXM as i_BJ_BJLXM--班级数据类表 班级类型码
      ,ib.MC as i_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,i.WLLX as i_BJ_WLLX--班级数据类表 文理类型
      ,i.BYRQ as i_BJ_BYRQ--班级数据类表 毕业日期
      ,i.SFSSMZSYJXB as i_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,ic.MC as i_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,i.SYJXMSM as i_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,id.MC as i_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,id.SM as i_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,j.SCHOOLID as j_NJ_SCHOOLID--年级数据类表 学校名
      ,j.NJMC as j_NJ_NJMC--年级数据类表 年级名称

FROM dbo.EDU_ZXXS_07_A02_XJYD AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDLB AS d ON a.YDLBM = d.DM /*异动类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDYY AS e ON a.YDYYM = e.DM /*异动原因码*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.JBRID = f.ID /*经办人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS g ON a.YBH = g.BH /*原班号*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS h ON a.YNJ = h.NJ /*原年级*/ AND a.SCHOOLID = h.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS i ON a.XBH = i.BH /*现班号*/ AND a.SCHOOLID = i.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS j ON a.XNJ = j.NJ /*现年级*/ AND a.SCHOOLID = j.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bb ON b.XBM = bb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bc ON b.CSDM = bc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bd ON b.MZM = bd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS be ON b.GJDQM = be.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bf ON b.SFZJLXM = bf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bh ON b.GATQWM = bh.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bi ON b.ZZMMM = bi.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bk ON b.XYZJM = bk.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bl ON b.XXM = bl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bm ON b.DSZYBZ = bm.DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS bn ON b.XSLBM = bn.DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bo ON b.HKXZM = bo.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bp ON b.SFLDRK = bp.DM /*是否流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fb ON f.XBM = fb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fc ON f.CSDM = fc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fe ON f.GJDQM = fe.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ff ON f.SFZJLXM = ff.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS fg ON f.HYZKM = fg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fh ON f.GATQWM = fh.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fi ON f.ZZMMM = fi.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS fj ON f.JKZKM = fj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fk ON f.XYZJM = fk.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fl ON f.XXM = fl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS fm ON f.HKXZM = fm.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS fn ON f.XLM = fn.DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS fo ON f.BZLBM = fo.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS fp ON f.GWZYM = fp.DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS fq ON f.ZYRKXD = fq.DM /*主要任课学段*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS gb ON g.BJLXM = gb.DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS gc ON g.SFSSMZSYJXB = gc.DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS gd ON g.SYJXMSM = gd.DM /*双语教学模式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS ib ON i.BJLXM = ib.DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ic ON i.SFSSMZSYJXB = ic.DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS id ON i.SYJXMSM = id.DM /*双语教学模式码*/
GO

--学校基本数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_01_01_ZXXX_DISP]
AS
SELECT a.[ID]--学校ID
      ,a.[XXDM]--学校代码
      ,a.[XXMC]--学校名称
      ,a.[XXYWMC]--学校英文名称
      ,a.[XXDZ]--学校地址
      ,a.[XXYZBM]--学校邮政编码
      ,a.[XZQHM]--行政区划码
      ,a.[JXNY]--建校年月
      ,a.[XQR]--校庆日
      ,a.[XXBXLXM]--学校办学类型码
      ,a.[XXZGBMM]--学校主管部门码
      ,a.[FDDBRH]--法定代表人号
      ,a.[FRZSH]--法人证书号
      ,a.[XZGH]--校长工号
      ,a.[XZXM]--校长姓名
      ,a.[DWFZRH]--党委负责人号
      ,a.[ZZJGM]--组织机构码
      ,a.[LXDH]--联系电话
      ,a.[CZDH]--传真电话
      ,a.[DZXX]--电子信箱
      ,a.[ZYDZ]--主页地址
      ,a.[LSYG]--历史沿革
      ,a.[XXBBM]--学校办别码
      ,a.[SSZGDWM]--所属主管单位码
      ,a.[SZDCXLXM]--所在地城乡类型码
      ,a.[SZDJJSXM]--所在地经济属性码
      ,a.[SZDMZSX]--所在地民族属性
      ,a.[XXXZ]--小学学制
      ,a.[XXRXNL]--小学入学年龄
      ,a.[CZXZ]--初中学制
      ,a.[CZRXNL]--初中入学年龄
      ,a.[GZXZ]--高中学制
      ,a.[ZJXYYM]--主教学语言码
      ,a.[FJXYYM]--辅教学语言码
      ,a.[ZSBJ]--招生半径
      ,b.MC as b_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,c.MC as c_BXLX_MC--办学类型代码表 名称
      ,c.SM as c_BXLX_SM--办学类型代码表 说明
      ,d.MC as d_XXJYJGJBZ_MC--学校（教育机构）举办者代码表 名称
      ,d.SM as d_XXJYJGJBZ_SM--学校（教育机构）举办者代码表 说明
      ,e.MC as e_XXBB_MC--学校办别代码表 名称
      ,f.MC as f_XXJYJGJBZ_MC--学校（教育机构）举办者代码表 名称
      ,f.SM as f_XXJYJGJBZ_SM--学校（教育机构）举办者代码表 说明
      ,g.MC as g_SZDCXLX_MC--所在地城乡类型代码表 名称
      ,h.MC as h_SZDQJJSX_MC--所在地区经济属性代码表 名称
      ,i.MC as i_SFBZ_MC--是否标志代码表 名称
      ,j.MC as j_ZGYZ_MC--中国语种代码 名称
      ,j.ZMDM as j_ZGYZ_ZMDM--中国语种代码 字母代码
      ,k.MC as k_ZGYZ_MC--中国语种代码 名称
      ,k.ZMDM as k_ZGYZ_ZMDM--中国语种代码 字母代码

FROM dbo.EDU_ZXXX_01_01_ZXXX AS a LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS b ON a.XZQHM = b.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS c ON a.XXBXLXM = c.DM /*学校办学类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS d ON a.XXZGBMM = d.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS e ON a.XXBBM = e.DM /*学校办别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS f ON a.SSZGDWM = f.DM /*所属主管单位码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS g ON a.SZDCXLXM = g.DM /*所在地城乡类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS h ON a.SZDJJSXM = h.DM /*所在地经济属性码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS i ON a.SZDMZSX = i.DM /*所在地民族属性*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS j ON a.ZJXYYM = j.DM /*主教学语言码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS k ON a.FJXYYM = k.DM /*辅教学语言码*/
GO

--年级数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_02_01_NJ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[NJ]--年级号
      ,a.[NJMC]--年级名称

FROM dbo.EDU_ZXXX_02_01_NJ AS a
GO

--班级数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_03_01_BJ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[BH]--班号
      ,a.[NJ]--年级号
      ,a.[BJ]--班级名称
      ,a.[JBNY]--建班年月
      ,a.[BZRGH]--班主任工号
      ,a.[BZXH]--班长学号
      ,a.[BJRYCH]--班级荣誉称号
      ,a.[XZ]--学制
      ,a.[BJLXM]--班级类型码
      ,a.[WLLX]--文理类型
      ,a.[BYRQ]--毕业日期
      ,a.[SFSSMZSYJXB]--是否少数民族双语教学班
      ,a.[SYJXMSM]--双语教学模式码
      ,c.SCHOOLID as c_NJ_SCHOOLID--年级数据类表 学校名
      ,c.NJMC as c_NJ_NJMC--年级数据类表 年级名称
      ,d.MC as d_ZXXBJLX_MC--中小学班级类型代码表 名称
      ,e.MC as e_SFBZ_MC--是否标志代码表 名称
      ,f.MC as f_SSMZSYJXMS_MC--少数民族双语教学模式代码表 名称
      ,f.SM as f_SSMZSYJXMS_SM--少数民族双语教学模式代码表 说明

FROM dbo.EDU_ZXXX_03_01_BJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS c ON a.NJ = c.NJ /*年级号*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS d ON a.BJLXM = d.DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFSSMZSYJXB = e.DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS f ON a.SYJXMSM = f.DM /*双语教学模式码*/
GO

--机构数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_04_01_JG_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[JGH]--机构号
      ,a.[LSJGH]--隶属机构号
      ,a.[JGMC]--机构名称
      ,a.[JGJC]--机构简称
      ,a.[FZRGH]--负责人工号
      ,c.SCHOOLID as c_JG_SCHOOLID--机构数据类表 学校名
      ,c.LSJGH as c_JG_LSJGH--机构数据类表 隶属机构号
      ,c.JGMC as c_JG_JGMC--机构数据类表 机构名称
      ,c.JGJC as c_JG_JGJC--机构数据类表 机构简称
      ,c.FZRGH as c_JG_FZRGH--机构数据类表 负责人工号

FROM dbo.EDU_ZXXX_04_01_JG AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS c ON a.LSJGH = c.JGH /*隶属机构号*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--机构岗位表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_04_A01_JGGW_DISP]
AS
SELECT a.[ID]--岗位表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[JGH]--机构号
      ,a.[GWBH]--岗位编号
      ,a.[GWMC]--岗位名称
      ,a.[GWSM]--岗位说明
      ,c.SCHOOLID as c_JG_SCHOOLID--机构数据类表 学校名
      ,c.LSJGH as c_JG_LSJGH--机构数据类表 隶属机构号
      ,c.JGMC as c_JG_JGMC--机构数据类表 机构名称
      ,c.JGJC as c_JG_JGJC--机构数据类表 机构简称
      ,c.FZRGH as c_JG_FZRGH--机构数据类表 负责人工号

FROM dbo.EDU_ZXXX_04_A01_JGGW AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS c ON a.JGH = c.JGH /*机构号*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO

--建筑物基本数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_02_01_JZWJBSJ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[ID]--建筑物ID
      ,a.[JZWH]--建筑物号
      ,a.[JZWMC]--建筑物名称
      ,a.[SYZKM]--使用状况码
      ,a.[FWCQ]--房屋产权
      ,a.[XQH]--校区号
      ,a.[JZWFLM]--建筑物分类码
      ,a.[JZWJGM]--建筑物结构码
      ,a.[JZWCS]--建筑物层数
      ,a.[JCNY]--建成年月
      ,a.[JZWTZZE]--建筑物投资总额
      ,a.[JFLYM]--经费来源码
      ,a.[ZJZMJ]--总建筑面积
      ,a.[ZSYMJ]--总使用面积
      ,a.[KZSFLDM]--抗震设防烈度码
      ,a.[KZSFBZM]--抗震设防标准码
      ,a.[JZWDZ]--建筑物地址
      ,a.[JZWZKM]--建筑物状况码
      ,a.[JZWTP]--建筑物图片
      ,a.[JZWPMT]--建筑物平面图
      ,a.[XXDWCCM]--学校单位层次码
      ,a.[JZWWZZK]--建筑物位置状况
      ,a.[GHSPWH]--规划审批文号
      ,a.[ZHFZNL]--综合防灾能力
      ,a.[GHSYNX]--规划使用年限
      ,a.[SFYYJBXCS]--是否有预警避险措施
      ,a.[SFKYYYJBNCS]--是否可用于应急避难场所
      ,a.[CQZH]--产权证号
      ,a.[JZWYTM]--建筑物用途码
      ,a.[JZWZGD]--建筑物总高度
      ,a.[WFJDBM]--危房鉴定部门
      ,a.[WFJDWH]--危房鉴定文号
      ,a.[WFJDRQ]--危房鉴定日期
      ,a.[GNFSM]--供暖方式码
      ,a.[JZWJCXSM]--建筑物基础形式码
      ,a.[JZWPMXSM]--建筑物平面形式码
      ,a.[JZWLBXSM]--建筑物楼板形式码
      ,a.[SFYGZZ]--是否有构造柱
      ,a.[QL]--圈梁
      ,a.[ZJAQGZWCRQ]--最近安全改造完成日期
      ,a.[ZJAQGZHYJSYNX]--最近安全改造后预计使用年限
      ,a.[ZXLXM]--专项类型
      ,a.[ZYZXTZBZMCM]--中央专项投资补助名称码
      ,a.[WWJZDJM]--文物建筑等级码
      ,a.[JXJFZYF]--教学及辅助用房
      ,a.[QZJS]--其中教室
      ,a.[QZSYS]--其中实验室
      ,a.[QZTSS]--其中图书室
      ,a.[QZWJS]--其中微机室
      ,a.[QZYYS]--其中语音室
      ,a.[QZTYHDS]--其中体育活动室
      ,a.[QZQTJFYF]--其中其他教辅用房
      ,a.[SHYF]--生活用房
      ,a.[QZXSSS]--其中学生宿舍
      ,a.[QZST]--其中食堂
      ,a.[QZCS]--其中厕所
      ,a.[QZGLF]--其中锅炉房(开水房)
      ,a.[QZYS]--其中浴室
      ,a.[QZJGSS]--其中教工宿舍
      ,a.[QZQTSHYF]--其中其他生活用房
      ,a.[XZBGYF]--行政办公用房
      ,a.[QZJSBGS]--其中教职工办公室
      ,a.[QZWSBJS]--其中卫生保健室
      ,a.[QZQTXZBGYF]--其中其他行政办公用房
      ,a.[QTYF]--其他用房
      ,c.MC as c_SYZK_MC--使用状况代码表 名称
      ,d.MC as d_CQ_MC--产权代码表 名称
      ,e.MC as e_JZWFL_MC--建筑物分类代码表 名称
      ,f.MC as f_JZWJG_MC--建筑物结构代码表 名称
      ,g.MC as g_JFLY_MC--经费来源代码表 名称
      ,h.JC as h_KZSFLD_JC--抗震设防烈度代码 简称
      ,h.MC as h_KZSFLD_MC--抗震设防烈度代码 名称
      ,i.JC as i_KZSFBZ_JC--抗震设防标准代码 简称
      ,i.MC as i_KZSFBZ_MC--抗震设防标准代码 名称
      ,i.SM as i_KZSFBZ_SM--抗震设防标准代码 说明
      ,j.MC as j_JZWZK_MC--建筑物状况代码表 名称
      ,j.SM as j_JZWZK_SM--建筑物状况代码表 说明
      ,k.MC as k_XXDWCC_MC--学校单位层次代码表 名称
      ,l.MC as l_SFBZ_MC--是否标志代码表 名称
      ,m.MC as m_SFBZ_MC--是否标志代码表 名称
      ,n.MC as n_JZWYT_MC--建筑物用途代码表 名称
      ,o.MC as o_GNFS_MC--供暖方式代码表 名称
      ,p.MC as p_JZWJCXS_MC--建筑物基础形式代码表 名称
      ,q.MC as q_JZWPMXS_MC--建筑物平面形式代码表 名称
      ,r.MC as r_JZWLBXS_MC--建筑物楼板形式代码表 名称
      ,s.MC as s_SFBZ_MC--是否标志代码表 名称
      ,t.MC as t_SFBZ_MC--是否标志代码表 名称
      ,u.MC as u_ZYZXTZBZMC_MC--中央专项投资补助名称代码表 名称
      ,v.MC as v_WWJZDJ_MC--文物建筑等级代码表 名称

FROM dbo.EDU_ZZFC_02_01_JZWJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS c ON a.SYZKM = c.DM /*使用状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS d ON a.FWCQ = d.DM /*房屋产权*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS e ON a.JZWFLM = e.DM /*建筑物分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS f ON a.JZWJGM = f.DM /*建筑物结构码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS g ON a.JFLYM = g.DM /*经费来源码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS h ON a.KZSFLDM = h.DM /*抗震设防烈度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS i ON a.KZSFBZM = i.DM /*抗震设防标准码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS j ON a.JZWZKM = j.DM /*建筑物状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS k ON a.XXDWCCM = k.DM /*学校单位层次码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS l ON a.SFYYJBXCS = l.DM /*是否有预警避险措施*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS m ON a.SFKYYYJBNCS = m.DM /*是否可用于应急避难场所*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS n ON a.JZWYTM = n.DM /*建筑物用途码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS o ON a.GNFSM = o.DM /*供暖方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS p ON a.JZWJCXSM = p.DM /*建筑物基础形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS q ON a.JZWPMXSM = q.DM /*建筑物平面形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS r ON a.JZWLBXSM = r.DM /*建筑物楼板形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS s ON a.SFYGZZ = s.DM /*是否有构造柱*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS t ON a.QL = t.DM /*圈梁*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS u ON a.ZYZXTZBZMCM = u.DM /*中央专项投资补助名称码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS v ON a.WWJZDJM = v.DM /*文物建筑等级码*/
GO

--学生宿舍数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_08_01_XSSS_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[ID]--宿舍ID
      ,a.[SSLID]--宿舍楼ID
      ,a.[SSLBM]--宿舍楼编号
      ,a.[FJBM]--房间编号
      ,a.[RZXB]--入住性别
      ,a.[SFKY]--是否可用
      ,a.[KZRS]--可住人数
      ,a.[WLDK]--网络端口
      ,a.[AZDSJ]--安装电视机
      ,a.[DHDK]--电话端口
      ,a.[DHHM]--电话号码
      ,a.[SBDS]--水表底数
      ,a.[DBDS]--电表底数
      ,a.[SSBZ]--宿舍备注
      ,a.[SZLZ]--所在楼层
      ,a.[SSM]--宿舍名
      ,c.SCHOOLID as c_JZWJBSJ_SCHOOLID--建筑物基本数据类表 学校名
      ,c.JZWH as c_JZWJBSJ_JZWH--建筑物基本数据类表 建筑物号
      ,c.JZWMC as c_JZWJBSJ_JZWMC--建筑物基本数据类表 建筑物名称
      ,c.SYZKM as c_JZWJBSJ_SYZKM--建筑物基本数据类表 使用状况码
      ,cb.MC as c_JZWJBSJ_SYZKM_MC--使用状况代码表 名称
      ,c.FWCQ as c_JZWJBSJ_FWCQ--建筑物基本数据类表 房屋产权
      ,cc.MC as c_JZWJBSJ_FWCQ_MC--产权代码表 名称
      ,c.XQH as c_JZWJBSJ_XQH--建筑物基本数据类表 校区号
      ,c.JZWFLM as c_JZWJBSJ_JZWFLM--建筑物基本数据类表 建筑物分类码
      ,cd.MC as c_JZWJBSJ_JZWFLM_MC--建筑物分类代码表 名称
      ,c.JZWJGM as c_JZWJBSJ_JZWJGM--建筑物基本数据类表 建筑物结构码
      ,ce.MC as c_JZWJBSJ_JZWJGM_MC--建筑物结构代码表 名称
      ,c.JZWCS as c_JZWJBSJ_JZWCS--建筑物基本数据类表 建筑物层数
      ,c.JCNY as c_JZWJBSJ_JCNY--建筑物基本数据类表 建成年月
      ,c.JZWTZZE as c_JZWJBSJ_JZWTZZE--建筑物基本数据类表 建筑物投资总额
      ,c.JFLYM as c_JZWJBSJ_JFLYM--建筑物基本数据类表 经费来源码
      ,cf.MC as c_JZWJBSJ_JFLYM_MC--经费来源代码表 名称
      ,c.ZJZMJ as c_JZWJBSJ_ZJZMJ--建筑物基本数据类表 总建筑面积
      ,c.ZSYMJ as c_JZWJBSJ_ZSYMJ--建筑物基本数据类表 总使用面积
      ,c.KZSFLDM as c_JZWJBSJ_KZSFLDM--建筑物基本数据类表 抗震设防烈度码
      ,cg.JC as c_JZWJBSJ_KZSFLDM_JC--抗震设防烈度代码 简称
      ,cg.MC as c_JZWJBSJ_KZSFLDM_MC--抗震设防烈度代码 名称
      ,c.KZSFBZM as c_JZWJBSJ_KZSFBZM--建筑物基本数据类表 抗震设防标准码
      ,ch.JC as c_JZWJBSJ_KZSFBZM_JC--抗震设防标准代码 简称
      ,ch.MC as c_JZWJBSJ_KZSFBZM_MC--抗震设防标准代码 名称
      ,ch.SM as c_JZWJBSJ_KZSFBZM_SM--抗震设防标准代码 说明
      ,c.JZWDZ as c_JZWJBSJ_JZWDZ--建筑物基本数据类表 建筑物地址
      ,c.JZWZKM as c_JZWJBSJ_JZWZKM--建筑物基本数据类表 建筑物状况码
      ,ci.MC as c_JZWJBSJ_JZWZKM_MC--建筑物状况代码表 名称
      ,ci.SM as c_JZWJBSJ_JZWZKM_SM--建筑物状况代码表 说明
      ,c.JZWTP as c_JZWJBSJ_JZWTP--建筑物基本数据类表 建筑物图片
      ,c.JZWPMT as c_JZWJBSJ_JZWPMT--建筑物基本数据类表 建筑物平面图
      ,c.XXDWCCM as c_JZWJBSJ_XXDWCCM--建筑物基本数据类表 学校单位层次码
      ,cj.MC as c_JZWJBSJ_XXDWCCM_MC--学校单位层次代码表 名称
      ,c.JZWWZZK as c_JZWJBSJ_JZWWZZK--建筑物基本数据类表 建筑物位置状况
      ,c.GHSPWH as c_JZWJBSJ_GHSPWH--建筑物基本数据类表 规划审批文号
      ,c.ZHFZNL as c_JZWJBSJ_ZHFZNL--建筑物基本数据类表 综合防灾能力
      ,c.GHSYNX as c_JZWJBSJ_GHSYNX--建筑物基本数据类表 规划使用年限
      ,c.SFYYJBXCS as c_JZWJBSJ_SFYYJBXCS--建筑物基本数据类表 是否有预警避险措施
      ,ck.MC as c_JZWJBSJ_SFYYJBXCS_MC--是否标志代码表 名称
      ,c.SFKYYYJBNCS as c_JZWJBSJ_SFKYYYJBNCS--建筑物基本数据类表 是否可用于应急避难场所
      ,cl.MC as c_JZWJBSJ_SFKYYYJBNCS_MC--是否标志代码表 名称
      ,c.CQZH as c_JZWJBSJ_CQZH--建筑物基本数据类表 产权证号
      ,c.JZWYTM as c_JZWJBSJ_JZWYTM--建筑物基本数据类表 建筑物用途码
      ,cm.MC as c_JZWJBSJ_JZWYTM_MC--建筑物用途代码表 名称
      ,c.JZWZGD as c_JZWJBSJ_JZWZGD--建筑物基本数据类表 建筑物总高度
      ,c.WFJDBM as c_JZWJBSJ_WFJDBM--建筑物基本数据类表 危房鉴定部门
      ,c.WFJDWH as c_JZWJBSJ_WFJDWH--建筑物基本数据类表 危房鉴定文号
      ,c.WFJDRQ as c_JZWJBSJ_WFJDRQ--建筑物基本数据类表 危房鉴定日期
      ,c.GNFSM as c_JZWJBSJ_GNFSM--建筑物基本数据类表 供暖方式码
      ,cn.MC as c_JZWJBSJ_GNFSM_MC--供暖方式代码表 名称
      ,c.JZWJCXSM as c_JZWJBSJ_JZWJCXSM--建筑物基本数据类表 建筑物基础形式码
      ,co.MC as c_JZWJBSJ_JZWJCXSM_MC--建筑物基础形式代码表 名称
      ,c.JZWPMXSM as c_JZWJBSJ_JZWPMXSM--建筑物基本数据类表 建筑物平面形式码
      ,cp.MC as c_JZWJBSJ_JZWPMXSM_MC--建筑物平面形式代码表 名称
      ,c.JZWLBXSM as c_JZWJBSJ_JZWLBXSM--建筑物基本数据类表 建筑物楼板形式码
      ,cq.MC as c_JZWJBSJ_JZWLBXSM_MC--建筑物楼板形式代码表 名称
      ,c.SFYGZZ as c_JZWJBSJ_SFYGZZ--建筑物基本数据类表 是否有构造柱
      ,cr.MC as c_JZWJBSJ_SFYGZZ_MC--是否标志代码表 名称
      ,c.QL as c_JZWJBSJ_QL--建筑物基本数据类表 圈梁
      ,cs.MC as c_JZWJBSJ_QL_MC--是否标志代码表 名称
      ,c.ZJAQGZWCRQ as c_JZWJBSJ_ZJAQGZWCRQ--建筑物基本数据类表 最近安全改造完成日期
      ,c.ZJAQGZHYJSYNX as c_JZWJBSJ_ZJAQGZHYJSYNX--建筑物基本数据类表 最近安全改造后预计使用年限
      ,c.ZXLXM as c_JZWJBSJ_ZXLXM--建筑物基本数据类表 专项类型
      ,c.ZYZXTZBZMCM as c_JZWJBSJ_ZYZXTZBZMCM--建筑物基本数据类表 中央专项投资补助名称码
      ,ct.MC as c_JZWJBSJ_ZYZXTZBZMCM_MC--中央专项投资补助名称代码表 名称
      ,c.WWJZDJM as c_JZWJBSJ_WWJZDJM--建筑物基本数据类表 文物建筑等级码
      ,cu.MC as c_JZWJBSJ_WWJZDJM_MC--文物建筑等级代码表 名称
      ,c.JXJFZYF as c_JZWJBSJ_JXJFZYF--建筑物基本数据类表 教学及辅助用房
      ,c.QZJS as c_JZWJBSJ_QZJS--建筑物基本数据类表 其中教室
      ,c.QZSYS as c_JZWJBSJ_QZSYS--建筑物基本数据类表 其中实验室
      ,c.QZTSS as c_JZWJBSJ_QZTSS--建筑物基本数据类表 其中图书室
      ,c.QZWJS as c_JZWJBSJ_QZWJS--建筑物基本数据类表 其中微机室
      ,c.QZYYS as c_JZWJBSJ_QZYYS--建筑物基本数据类表 其中语音室
      ,c.QZTYHDS as c_JZWJBSJ_QZTYHDS--建筑物基本数据类表 其中体育活动室
      ,c.QZQTJFYF as c_JZWJBSJ_QZQTJFYF--建筑物基本数据类表 其中其他教辅用房
      ,c.SHYF as c_JZWJBSJ_SHYF--建筑物基本数据类表 生活用房
      ,c.QZXSSS as c_JZWJBSJ_QZXSSS--建筑物基本数据类表 其中学生宿舍
      ,c.QZST as c_JZWJBSJ_QZST--建筑物基本数据类表 其中食堂
      ,c.QZCS as c_JZWJBSJ_QZCS--建筑物基本数据类表 其中厕所
      ,c.QZGLF as c_JZWJBSJ_QZGLF--建筑物基本数据类表 其中锅炉房(开水房)
      ,c.QZYS as c_JZWJBSJ_QZYS--建筑物基本数据类表 其中浴室
      ,c.QZJGSS as c_JZWJBSJ_QZJGSS--建筑物基本数据类表 其中教工宿舍
      ,c.QZQTSHYF as c_JZWJBSJ_QZQTSHYF--建筑物基本数据类表 其中其他生活用房
      ,c.XZBGYF as c_JZWJBSJ_XZBGYF--建筑物基本数据类表 行政办公用房
      ,c.QZJSBGS as c_JZWJBSJ_QZJSBGS--建筑物基本数据类表 其中教职工办公室
      ,c.QZWSBJS as c_JZWJBSJ_QZWSBJS--建筑物基本数据类表 其中卫生保健室
      ,c.QZQTXZBGYF as c_JZWJBSJ_QZQTXZBGYF--建筑物基本数据类表 其中其他行政办公用房
      ,c.QTYF as c_JZWJBSJ_QTYF--建筑物基本数据类表 其他用房
      ,d.MC as d_RDXB_MC--人的性别代码 名称
      ,e.MC as e_SFBZ_MC--是否标志代码表 名称
      ,f.MC as f_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZZFC_08_01_XSSS AS a LEFT OUTER JOIN
      dbo.EDU_ZZFC_02_01_JZWJBSJ AS c ON a.SSLID = c.ID /*宿舍楼ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS d ON a.RZXB = d.DM /*入住性别*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFKY = e.DM /*是否可用*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.AZDSJ = f.DM /*安装电视机*/ LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS cb ON c.SYZKM = cb.DM /*使用状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS cc ON c.FWCQ = cc.DM /*房屋产权*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS cd ON c.JZWFLM = cd.DM /*建筑物分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS ce ON c.JZWJGM = ce.DM /*建筑物结构码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS cf ON c.JFLYM = cf.DM /*经费来源码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS cg ON c.KZSFLDM = cg.DM /*抗震设防烈度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS ch ON c.KZSFBZM = ch.DM /*抗震设防标准码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS ci ON c.JZWZKM = ci.DM /*建筑物状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS cj ON c.XXDWCCM = cj.DM /*学校单位层次码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ck ON c.SFYYJBXCS = ck.DM /*是否有预警避险措施*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cl ON c.SFKYYYJBNCS = cl.DM /*是否可用于应急避难场所*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS cm ON c.JZWYTM = cm.DM /*建筑物用途码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS cn ON c.GNFSM = cn.DM /*供暖方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS co ON c.JZWJCXSM = co.DM /*建筑物基础形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS cp ON c.JZWPMXSM = cp.DM /*建筑物平面形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS cq ON c.JZWLBXSM = cq.DM /*建筑物楼板形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFYGZZ = cr.DM /*是否有构造柱*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.QL = cs.DM /*圈梁*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS ct ON c.ZYZXTZBZMCM = ct.DM /*中央专项投资补助名称码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS cu ON c.WWJZDJM = cu.DM /*文物建筑等级码*/
GO

--宿舍床位表
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_08_A01_SSCW_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[ID]--床位ID
      ,a.[SSLID]--宿舍楼ID
      ,a.[SSID]--宿舍ID
      ,a.[CWM]--床位名
      ,a.[BZ]--备注
      ,a.[SFRZ]--是否入住
      ,c.SCHOOLID as c_JZWJBSJ_SCHOOLID--建筑物基本数据类表 学校名
      ,c.JZWH as c_JZWJBSJ_JZWH--建筑物基本数据类表 建筑物号
      ,c.JZWMC as c_JZWJBSJ_JZWMC--建筑物基本数据类表 建筑物名称
      ,c.SYZKM as c_JZWJBSJ_SYZKM--建筑物基本数据类表 使用状况码
      ,cb.MC as c_JZWJBSJ_SYZKM_MC--使用状况代码表 名称
      ,c.FWCQ as c_JZWJBSJ_FWCQ--建筑物基本数据类表 房屋产权
      ,cc.MC as c_JZWJBSJ_FWCQ_MC--产权代码表 名称
      ,c.XQH as c_JZWJBSJ_XQH--建筑物基本数据类表 校区号
      ,c.JZWFLM as c_JZWJBSJ_JZWFLM--建筑物基本数据类表 建筑物分类码
      ,cd.MC as c_JZWJBSJ_JZWFLM_MC--建筑物分类代码表 名称
      ,c.JZWJGM as c_JZWJBSJ_JZWJGM--建筑物基本数据类表 建筑物结构码
      ,ce.MC as c_JZWJBSJ_JZWJGM_MC--建筑物结构代码表 名称
      ,c.JZWCS as c_JZWJBSJ_JZWCS--建筑物基本数据类表 建筑物层数
      ,c.JCNY as c_JZWJBSJ_JCNY--建筑物基本数据类表 建成年月
      ,c.JZWTZZE as c_JZWJBSJ_JZWTZZE--建筑物基本数据类表 建筑物投资总额
      ,c.JFLYM as c_JZWJBSJ_JFLYM--建筑物基本数据类表 经费来源码
      ,cf.MC as c_JZWJBSJ_JFLYM_MC--经费来源代码表 名称
      ,c.ZJZMJ as c_JZWJBSJ_ZJZMJ--建筑物基本数据类表 总建筑面积
      ,c.ZSYMJ as c_JZWJBSJ_ZSYMJ--建筑物基本数据类表 总使用面积
      ,c.KZSFLDM as c_JZWJBSJ_KZSFLDM--建筑物基本数据类表 抗震设防烈度码
      ,cg.JC as c_JZWJBSJ_KZSFLDM_JC--抗震设防烈度代码 简称
      ,cg.MC as c_JZWJBSJ_KZSFLDM_MC--抗震设防烈度代码 名称
      ,c.KZSFBZM as c_JZWJBSJ_KZSFBZM--建筑物基本数据类表 抗震设防标准码
      ,ch.JC as c_JZWJBSJ_KZSFBZM_JC--抗震设防标准代码 简称
      ,ch.MC as c_JZWJBSJ_KZSFBZM_MC--抗震设防标准代码 名称
      ,ch.SM as c_JZWJBSJ_KZSFBZM_SM--抗震设防标准代码 说明
      ,c.JZWDZ as c_JZWJBSJ_JZWDZ--建筑物基本数据类表 建筑物地址
      ,c.JZWZKM as c_JZWJBSJ_JZWZKM--建筑物基本数据类表 建筑物状况码
      ,ci.MC as c_JZWJBSJ_JZWZKM_MC--建筑物状况代码表 名称
      ,ci.SM as c_JZWJBSJ_JZWZKM_SM--建筑物状况代码表 说明
      ,c.JZWTP as c_JZWJBSJ_JZWTP--建筑物基本数据类表 建筑物图片
      ,c.JZWPMT as c_JZWJBSJ_JZWPMT--建筑物基本数据类表 建筑物平面图
      ,c.XXDWCCM as c_JZWJBSJ_XXDWCCM--建筑物基本数据类表 学校单位层次码
      ,cj.MC as c_JZWJBSJ_XXDWCCM_MC--学校单位层次代码表 名称
      ,c.JZWWZZK as c_JZWJBSJ_JZWWZZK--建筑物基本数据类表 建筑物位置状况
      ,c.GHSPWH as c_JZWJBSJ_GHSPWH--建筑物基本数据类表 规划审批文号
      ,c.ZHFZNL as c_JZWJBSJ_ZHFZNL--建筑物基本数据类表 综合防灾能力
      ,c.GHSYNX as c_JZWJBSJ_GHSYNX--建筑物基本数据类表 规划使用年限
      ,c.SFYYJBXCS as c_JZWJBSJ_SFYYJBXCS--建筑物基本数据类表 是否有预警避险措施
      ,ck.MC as c_JZWJBSJ_SFYYJBXCS_MC--是否标志代码表 名称
      ,c.SFKYYYJBNCS as c_JZWJBSJ_SFKYYYJBNCS--建筑物基本数据类表 是否可用于应急避难场所
      ,cl.MC as c_JZWJBSJ_SFKYYYJBNCS_MC--是否标志代码表 名称
      ,c.CQZH as c_JZWJBSJ_CQZH--建筑物基本数据类表 产权证号
      ,c.JZWYTM as c_JZWJBSJ_JZWYTM--建筑物基本数据类表 建筑物用途码
      ,cm.MC as c_JZWJBSJ_JZWYTM_MC--建筑物用途代码表 名称
      ,c.JZWZGD as c_JZWJBSJ_JZWZGD--建筑物基本数据类表 建筑物总高度
      ,c.WFJDBM as c_JZWJBSJ_WFJDBM--建筑物基本数据类表 危房鉴定部门
      ,c.WFJDWH as c_JZWJBSJ_WFJDWH--建筑物基本数据类表 危房鉴定文号
      ,c.WFJDRQ as c_JZWJBSJ_WFJDRQ--建筑物基本数据类表 危房鉴定日期
      ,c.GNFSM as c_JZWJBSJ_GNFSM--建筑物基本数据类表 供暖方式码
      ,cn.MC as c_JZWJBSJ_GNFSM_MC--供暖方式代码表 名称
      ,c.JZWJCXSM as c_JZWJBSJ_JZWJCXSM--建筑物基本数据类表 建筑物基础形式码
      ,co.MC as c_JZWJBSJ_JZWJCXSM_MC--建筑物基础形式代码表 名称
      ,c.JZWPMXSM as c_JZWJBSJ_JZWPMXSM--建筑物基本数据类表 建筑物平面形式码
      ,cp.MC as c_JZWJBSJ_JZWPMXSM_MC--建筑物平面形式代码表 名称
      ,c.JZWLBXSM as c_JZWJBSJ_JZWLBXSM--建筑物基本数据类表 建筑物楼板形式码
      ,cq.MC as c_JZWJBSJ_JZWLBXSM_MC--建筑物楼板形式代码表 名称
      ,c.SFYGZZ as c_JZWJBSJ_SFYGZZ--建筑物基本数据类表 是否有构造柱
      ,cr.MC as c_JZWJBSJ_SFYGZZ_MC--是否标志代码表 名称
      ,c.QL as c_JZWJBSJ_QL--建筑物基本数据类表 圈梁
      ,cs.MC as c_JZWJBSJ_QL_MC--是否标志代码表 名称
      ,c.ZJAQGZWCRQ as c_JZWJBSJ_ZJAQGZWCRQ--建筑物基本数据类表 最近安全改造完成日期
      ,c.ZJAQGZHYJSYNX as c_JZWJBSJ_ZJAQGZHYJSYNX--建筑物基本数据类表 最近安全改造后预计使用年限
      ,c.ZXLXM as c_JZWJBSJ_ZXLXM--建筑物基本数据类表 专项类型
      ,c.ZYZXTZBZMCM as c_JZWJBSJ_ZYZXTZBZMCM--建筑物基本数据类表 中央专项投资补助名称码
      ,ct.MC as c_JZWJBSJ_ZYZXTZBZMCM_MC--中央专项投资补助名称代码表 名称
      ,c.WWJZDJM as c_JZWJBSJ_WWJZDJM--建筑物基本数据类表 文物建筑等级码
      ,cu.MC as c_JZWJBSJ_WWJZDJM_MC--文物建筑等级代码表 名称
      ,c.JXJFZYF as c_JZWJBSJ_JXJFZYF--建筑物基本数据类表 教学及辅助用房
      ,c.QZJS as c_JZWJBSJ_QZJS--建筑物基本数据类表 其中教室
      ,c.QZSYS as c_JZWJBSJ_QZSYS--建筑物基本数据类表 其中实验室
      ,c.QZTSS as c_JZWJBSJ_QZTSS--建筑物基本数据类表 其中图书室
      ,c.QZWJS as c_JZWJBSJ_QZWJS--建筑物基本数据类表 其中微机室
      ,c.QZYYS as c_JZWJBSJ_QZYYS--建筑物基本数据类表 其中语音室
      ,c.QZTYHDS as c_JZWJBSJ_QZTYHDS--建筑物基本数据类表 其中体育活动室
      ,c.QZQTJFYF as c_JZWJBSJ_QZQTJFYF--建筑物基本数据类表 其中其他教辅用房
      ,c.SHYF as c_JZWJBSJ_SHYF--建筑物基本数据类表 生活用房
      ,c.QZXSSS as c_JZWJBSJ_QZXSSS--建筑物基本数据类表 其中学生宿舍
      ,c.QZST as c_JZWJBSJ_QZST--建筑物基本数据类表 其中食堂
      ,c.QZCS as c_JZWJBSJ_QZCS--建筑物基本数据类表 其中厕所
      ,c.QZGLF as c_JZWJBSJ_QZGLF--建筑物基本数据类表 其中锅炉房(开水房)
      ,c.QZYS as c_JZWJBSJ_QZYS--建筑物基本数据类表 其中浴室
      ,c.QZJGSS as c_JZWJBSJ_QZJGSS--建筑物基本数据类表 其中教工宿舍
      ,c.QZQTSHYF as c_JZWJBSJ_QZQTSHYF--建筑物基本数据类表 其中其他生活用房
      ,c.XZBGYF as c_JZWJBSJ_XZBGYF--建筑物基本数据类表 行政办公用房
      ,c.QZJSBGS as c_JZWJBSJ_QZJSBGS--建筑物基本数据类表 其中教职工办公室
      ,c.QZWSBJS as c_JZWJBSJ_QZWSBJS--建筑物基本数据类表 其中卫生保健室
      ,c.QZQTXZBGYF as c_JZWJBSJ_QZQTXZBGYF--建筑物基本数据类表 其中其他行政办公用房
      ,c.QTYF as c_JZWJBSJ_QTYF--建筑物基本数据类表 其他用房
      ,d.SCHOOLID as d_XSSS_SCHOOLID--学生宿舍数据类表 学校名
      ,d.SSLID as d_XSSS_SSLID--学生宿舍数据类表 宿舍楼ID
      ,d.SSLBM as d_XSSS_SSLBM--学生宿舍数据类表 宿舍楼编号
      ,d.FJBM as d_XSSS_FJBM--学生宿舍数据类表 房间编号
      ,d.RZXB as d_XSSS_RZXB--学生宿舍数据类表 入住性别
      ,db.MC as d_XSSS_RZXB_MC--人的性别代码 名称
      ,d.SFKY as d_XSSS_SFKY--学生宿舍数据类表 是否可用
      ,dc.MC as d_XSSS_SFKY_MC--是否标志代码表 名称
      ,d.KZRS as d_XSSS_KZRS--学生宿舍数据类表 可住人数
      ,d.WLDK as d_XSSS_WLDK--学生宿舍数据类表 网络端口
      ,d.AZDSJ as d_XSSS_AZDSJ--学生宿舍数据类表 安装电视机
      ,dd.MC as d_XSSS_AZDSJ_MC--是否标志代码表 名称
      ,d.DHDK as d_XSSS_DHDK--学生宿舍数据类表 电话端口
      ,d.DHHM as d_XSSS_DHHM--学生宿舍数据类表 电话号码
      ,d.SBDS as d_XSSS_SBDS--学生宿舍数据类表 水表底数
      ,d.DBDS as d_XSSS_DBDS--学生宿舍数据类表 电表底数
      ,d.SSBZ as d_XSSS_SSBZ--学生宿舍数据类表 宿舍备注
      ,d.SZLZ as d_XSSS_SZLZ--学生宿舍数据类表 所在楼层
      ,d.SSM as d_XSSS_SSM--学生宿舍数据类表 宿舍名
      ,e.MC as e_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZZFC_08_A01_SSCW AS a LEFT OUTER JOIN
      dbo.EDU_ZZFC_02_01_JZWJBSJ AS c ON a.SSLID = c.ID /*宿舍楼ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_08_01_XSSS AS d ON a.SSID = d.ID /*宿舍ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFRZ = e.DM /*是否入住*/ LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS cb ON c.SYZKM = cb.DM /*使用状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS cc ON c.FWCQ = cc.DM /*房屋产权*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS cd ON c.JZWFLM = cd.DM /*建筑物分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS ce ON c.JZWJGM = ce.DM /*建筑物结构码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS cf ON c.JFLYM = cf.DM /*经费来源码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS cg ON c.KZSFLDM = cg.DM /*抗震设防烈度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS ch ON c.KZSFBZM = ch.DM /*抗震设防标准码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS ci ON c.JZWZKM = ci.DM /*建筑物状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS cj ON c.XXDWCCM = cj.DM /*学校单位层次码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ck ON c.SFYYJBXCS = ck.DM /*是否有预警避险措施*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cl ON c.SFKYYYJBNCS = cl.DM /*是否可用于应急避难场所*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS cm ON c.JZWYTM = cm.DM /*建筑物用途码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS cn ON c.GNFSM = cn.DM /*供暖方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS co ON c.JZWJCXSM = co.DM /*建筑物基础形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS cp ON c.JZWPMXSM = cp.DM /*建筑物平面形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS cq ON c.JZWLBXSM = cq.DM /*建筑物楼板形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFYGZZ = cr.DM /*是否有构造柱*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.QL = cs.DM /*圈梁*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS ct ON c.ZYZXTZBZMCM = ct.DM /*中央专项投资补助名称码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS cu ON c.WWJZDJM = cu.DM /*文物建筑等级码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.RZXB = db.DM /*入住性别*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dc ON d.SFKY = dc.DM /*是否可用*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dd ON d.AZDSJ = dd.DM /*安装电视机*/
GO

--住委会成员表
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_08_A03_ZWHCY_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[ID]--成员ID
      ,a.[YHID]--用户ID
      ,a.[YHLX]--用户类型
      ,a.[CYXM]--成员姓名
      ,a.[TJSJ]--添加时间
      ,a.[ZWMC]--职位名称
      ,a.[GZNR]--工作内容

FROM dbo.EDU_ZZFC_08_A03_ZWHCY AS a
GO

--用户住宿记录表
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_08_A02_YHZSJL_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[ID]--住宿记录ID
      ,a.[YHID]--用户ID
      ,a.[SSLID]--宿舍楼ID
      ,a.[SSID]--宿舍ID
      ,a.[CWID]--床位ID
      ,a.[YHXM]--用户姓名
      ,a.[RZRLX]--入住人类型
      ,a.[RZSJ]--入住时间
      ,a.[SHZT]--审核状态
      ,a.[SHSJ]--审核时间
      ,a.[SHR]--审核人
      ,c.SCHOOLID as c_JZWJBSJ_SCHOOLID--建筑物基本数据类表 学校名
      ,c.JZWH as c_JZWJBSJ_JZWH--建筑物基本数据类表 建筑物号
      ,c.JZWMC as c_JZWJBSJ_JZWMC--建筑物基本数据类表 建筑物名称
      ,c.SYZKM as c_JZWJBSJ_SYZKM--建筑物基本数据类表 使用状况码
      ,cb.MC as c_JZWJBSJ_SYZKM_MC--使用状况代码表 名称
      ,c.FWCQ as c_JZWJBSJ_FWCQ--建筑物基本数据类表 房屋产权
      ,cc.MC as c_JZWJBSJ_FWCQ_MC--产权代码表 名称
      ,c.XQH as c_JZWJBSJ_XQH--建筑物基本数据类表 校区号
      ,c.JZWFLM as c_JZWJBSJ_JZWFLM--建筑物基本数据类表 建筑物分类码
      ,cd.MC as c_JZWJBSJ_JZWFLM_MC--建筑物分类代码表 名称
      ,c.JZWJGM as c_JZWJBSJ_JZWJGM--建筑物基本数据类表 建筑物结构码
      ,ce.MC as c_JZWJBSJ_JZWJGM_MC--建筑物结构代码表 名称
      ,c.JZWCS as c_JZWJBSJ_JZWCS--建筑物基本数据类表 建筑物层数
      ,c.JCNY as c_JZWJBSJ_JCNY--建筑物基本数据类表 建成年月
      ,c.JZWTZZE as c_JZWJBSJ_JZWTZZE--建筑物基本数据类表 建筑物投资总额
      ,c.JFLYM as c_JZWJBSJ_JFLYM--建筑物基本数据类表 经费来源码
      ,cf.MC as c_JZWJBSJ_JFLYM_MC--经费来源代码表 名称
      ,c.ZJZMJ as c_JZWJBSJ_ZJZMJ--建筑物基本数据类表 总建筑面积
      ,c.ZSYMJ as c_JZWJBSJ_ZSYMJ--建筑物基本数据类表 总使用面积
      ,c.KZSFLDM as c_JZWJBSJ_KZSFLDM--建筑物基本数据类表 抗震设防烈度码
      ,cg.JC as c_JZWJBSJ_KZSFLDM_JC--抗震设防烈度代码 简称
      ,cg.MC as c_JZWJBSJ_KZSFLDM_MC--抗震设防烈度代码 名称
      ,c.KZSFBZM as c_JZWJBSJ_KZSFBZM--建筑物基本数据类表 抗震设防标准码
      ,ch.JC as c_JZWJBSJ_KZSFBZM_JC--抗震设防标准代码 简称
      ,ch.MC as c_JZWJBSJ_KZSFBZM_MC--抗震设防标准代码 名称
      ,ch.SM as c_JZWJBSJ_KZSFBZM_SM--抗震设防标准代码 说明
      ,c.JZWDZ as c_JZWJBSJ_JZWDZ--建筑物基本数据类表 建筑物地址
      ,c.JZWZKM as c_JZWJBSJ_JZWZKM--建筑物基本数据类表 建筑物状况码
      ,ci.MC as c_JZWJBSJ_JZWZKM_MC--建筑物状况代码表 名称
      ,ci.SM as c_JZWJBSJ_JZWZKM_SM--建筑物状况代码表 说明
      ,c.JZWTP as c_JZWJBSJ_JZWTP--建筑物基本数据类表 建筑物图片
      ,c.JZWPMT as c_JZWJBSJ_JZWPMT--建筑物基本数据类表 建筑物平面图
      ,c.XXDWCCM as c_JZWJBSJ_XXDWCCM--建筑物基本数据类表 学校单位层次码
      ,cj.MC as c_JZWJBSJ_XXDWCCM_MC--学校单位层次代码表 名称
      ,c.JZWWZZK as c_JZWJBSJ_JZWWZZK--建筑物基本数据类表 建筑物位置状况
      ,c.GHSPWH as c_JZWJBSJ_GHSPWH--建筑物基本数据类表 规划审批文号
      ,c.ZHFZNL as c_JZWJBSJ_ZHFZNL--建筑物基本数据类表 综合防灾能力
      ,c.GHSYNX as c_JZWJBSJ_GHSYNX--建筑物基本数据类表 规划使用年限
      ,c.SFYYJBXCS as c_JZWJBSJ_SFYYJBXCS--建筑物基本数据类表 是否有预警避险措施
      ,ck.MC as c_JZWJBSJ_SFYYJBXCS_MC--是否标志代码表 名称
      ,c.SFKYYYJBNCS as c_JZWJBSJ_SFKYYYJBNCS--建筑物基本数据类表 是否可用于应急避难场所
      ,cl.MC as c_JZWJBSJ_SFKYYYJBNCS_MC--是否标志代码表 名称
      ,c.CQZH as c_JZWJBSJ_CQZH--建筑物基本数据类表 产权证号
      ,c.JZWYTM as c_JZWJBSJ_JZWYTM--建筑物基本数据类表 建筑物用途码
      ,cm.MC as c_JZWJBSJ_JZWYTM_MC--建筑物用途代码表 名称
      ,c.JZWZGD as c_JZWJBSJ_JZWZGD--建筑物基本数据类表 建筑物总高度
      ,c.WFJDBM as c_JZWJBSJ_WFJDBM--建筑物基本数据类表 危房鉴定部门
      ,c.WFJDWH as c_JZWJBSJ_WFJDWH--建筑物基本数据类表 危房鉴定文号
      ,c.WFJDRQ as c_JZWJBSJ_WFJDRQ--建筑物基本数据类表 危房鉴定日期
      ,c.GNFSM as c_JZWJBSJ_GNFSM--建筑物基本数据类表 供暖方式码
      ,cn.MC as c_JZWJBSJ_GNFSM_MC--供暖方式代码表 名称
      ,c.JZWJCXSM as c_JZWJBSJ_JZWJCXSM--建筑物基本数据类表 建筑物基础形式码
      ,co.MC as c_JZWJBSJ_JZWJCXSM_MC--建筑物基础形式代码表 名称
      ,c.JZWPMXSM as c_JZWJBSJ_JZWPMXSM--建筑物基本数据类表 建筑物平面形式码
      ,cp.MC as c_JZWJBSJ_JZWPMXSM_MC--建筑物平面形式代码表 名称
      ,c.JZWLBXSM as c_JZWJBSJ_JZWLBXSM--建筑物基本数据类表 建筑物楼板形式码
      ,cq.MC as c_JZWJBSJ_JZWLBXSM_MC--建筑物楼板形式代码表 名称
      ,c.SFYGZZ as c_JZWJBSJ_SFYGZZ--建筑物基本数据类表 是否有构造柱
      ,cr.MC as c_JZWJBSJ_SFYGZZ_MC--是否标志代码表 名称
      ,c.QL as c_JZWJBSJ_QL--建筑物基本数据类表 圈梁
      ,cs.MC as c_JZWJBSJ_QL_MC--是否标志代码表 名称
      ,c.ZJAQGZWCRQ as c_JZWJBSJ_ZJAQGZWCRQ--建筑物基本数据类表 最近安全改造完成日期
      ,c.ZJAQGZHYJSYNX as c_JZWJBSJ_ZJAQGZHYJSYNX--建筑物基本数据类表 最近安全改造后预计使用年限
      ,c.ZXLXM as c_JZWJBSJ_ZXLXM--建筑物基本数据类表 专项类型
      ,c.ZYZXTZBZMCM as c_JZWJBSJ_ZYZXTZBZMCM--建筑物基本数据类表 中央专项投资补助名称码
      ,ct.MC as c_JZWJBSJ_ZYZXTZBZMCM_MC--中央专项投资补助名称代码表 名称
      ,c.WWJZDJM as c_JZWJBSJ_WWJZDJM--建筑物基本数据类表 文物建筑等级码
      ,cu.MC as c_JZWJBSJ_WWJZDJM_MC--文物建筑等级代码表 名称
      ,c.JXJFZYF as c_JZWJBSJ_JXJFZYF--建筑物基本数据类表 教学及辅助用房
      ,c.QZJS as c_JZWJBSJ_QZJS--建筑物基本数据类表 其中教室
      ,c.QZSYS as c_JZWJBSJ_QZSYS--建筑物基本数据类表 其中实验室
      ,c.QZTSS as c_JZWJBSJ_QZTSS--建筑物基本数据类表 其中图书室
      ,c.QZWJS as c_JZWJBSJ_QZWJS--建筑物基本数据类表 其中微机室
      ,c.QZYYS as c_JZWJBSJ_QZYYS--建筑物基本数据类表 其中语音室
      ,c.QZTYHDS as c_JZWJBSJ_QZTYHDS--建筑物基本数据类表 其中体育活动室
      ,c.QZQTJFYF as c_JZWJBSJ_QZQTJFYF--建筑物基本数据类表 其中其他教辅用房
      ,c.SHYF as c_JZWJBSJ_SHYF--建筑物基本数据类表 生活用房
      ,c.QZXSSS as c_JZWJBSJ_QZXSSS--建筑物基本数据类表 其中学生宿舍
      ,c.QZST as c_JZWJBSJ_QZST--建筑物基本数据类表 其中食堂
      ,c.QZCS as c_JZWJBSJ_QZCS--建筑物基本数据类表 其中厕所
      ,c.QZGLF as c_JZWJBSJ_QZGLF--建筑物基本数据类表 其中锅炉房(开水房)
      ,c.QZYS as c_JZWJBSJ_QZYS--建筑物基本数据类表 其中浴室
      ,c.QZJGSS as c_JZWJBSJ_QZJGSS--建筑物基本数据类表 其中教工宿舍
      ,c.QZQTSHYF as c_JZWJBSJ_QZQTSHYF--建筑物基本数据类表 其中其他生活用房
      ,c.XZBGYF as c_JZWJBSJ_XZBGYF--建筑物基本数据类表 行政办公用房
      ,c.QZJSBGS as c_JZWJBSJ_QZJSBGS--建筑物基本数据类表 其中教职工办公室
      ,c.QZWSBJS as c_JZWJBSJ_QZWSBJS--建筑物基本数据类表 其中卫生保健室
      ,c.QZQTXZBGYF as c_JZWJBSJ_QZQTXZBGYF--建筑物基本数据类表 其中其他行政办公用房
      ,c.QTYF as c_JZWJBSJ_QTYF--建筑物基本数据类表 其他用房
      ,d.SCHOOLID as d_XSSS_SCHOOLID--学生宿舍数据类表 学校名
      ,d.SSLID as d_XSSS_SSLID--学生宿舍数据类表 宿舍楼ID
      ,d.SSLBM as d_XSSS_SSLBM--学生宿舍数据类表 宿舍楼编号
      ,d.FJBM as d_XSSS_FJBM--学生宿舍数据类表 房间编号
      ,d.RZXB as d_XSSS_RZXB--学生宿舍数据类表 入住性别
      ,db.MC as d_XSSS_RZXB_MC--人的性别代码 名称
      ,d.SFKY as d_XSSS_SFKY--学生宿舍数据类表 是否可用
      ,dc.MC as d_XSSS_SFKY_MC--是否标志代码表 名称
      ,d.KZRS as d_XSSS_KZRS--学生宿舍数据类表 可住人数
      ,d.WLDK as d_XSSS_WLDK--学生宿舍数据类表 网络端口
      ,d.AZDSJ as d_XSSS_AZDSJ--学生宿舍数据类表 安装电视机
      ,dd.MC as d_XSSS_AZDSJ_MC--是否标志代码表 名称
      ,d.DHDK as d_XSSS_DHDK--学生宿舍数据类表 电话端口
      ,d.DHHM as d_XSSS_DHHM--学生宿舍数据类表 电话号码
      ,d.SBDS as d_XSSS_SBDS--学生宿舍数据类表 水表底数
      ,d.DBDS as d_XSSS_DBDS--学生宿舍数据类表 电表底数
      ,d.SSBZ as d_XSSS_SSBZ--学生宿舍数据类表 宿舍备注
      ,d.SZLZ as d_XSSS_SZLZ--学生宿舍数据类表 所在楼层
      ,d.SSM as d_XSSS_SSM--学生宿舍数据类表 宿舍名
      ,e.SCHOOLID as e_SSCW_SCHOOLID--宿舍床位表 学校ID
      ,e.SSLID as e_SSCW_SSLID--宿舍床位表 宿舍楼ID
      ,e.SSID as e_SSCW_SSID--宿舍床位表 宿舍ID
      ,e.CWM as e_SSCW_CWM--宿舍床位表 床位名
      ,e.BZ as e_SSCW_BZ--宿舍床位表 备注
      ,e.SFRZ as e_SSCW_SFRZ--宿舍床位表 是否入住
      ,eb.MC as e_SSCW_SFRZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZZFC_08_A02_YHZSJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZFC_02_01_JZWJBSJ AS c ON a.SSLID = c.ID /*宿舍楼ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_08_01_XSSS AS d ON a.SSID = d.ID /*宿舍ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_08_A01_SSCW AS e ON a.CWID = e.ID /*床位ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS cb ON c.SYZKM = cb.DM /*使用状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS cc ON c.FWCQ = cc.DM /*房屋产权*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS cd ON c.JZWFLM = cd.DM /*建筑物分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS ce ON c.JZWJGM = ce.DM /*建筑物结构码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS cf ON c.JFLYM = cf.DM /*经费来源码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS cg ON c.KZSFLDM = cg.DM /*抗震设防烈度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS ch ON c.KZSFBZM = ch.DM /*抗震设防标准码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS ci ON c.JZWZKM = ci.DM /*建筑物状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS cj ON c.XXDWCCM = cj.DM /*学校单位层次码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ck ON c.SFYYJBXCS = ck.DM /*是否有预警避险措施*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cl ON c.SFKYYYJBNCS = cl.DM /*是否可用于应急避难场所*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS cm ON c.JZWYTM = cm.DM /*建筑物用途码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS cn ON c.GNFSM = cn.DM /*供暖方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS co ON c.JZWJCXSM = co.DM /*建筑物基础形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS cp ON c.JZWPMXSM = cp.DM /*建筑物平面形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS cq ON c.JZWLBXSM = cq.DM /*建筑物楼板形式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFYGZZ = cr.DM /*是否有构造柱*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.QL = cs.DM /*圈梁*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS ct ON c.ZYZXTZBZMCM = ct.DM /*中央专项投资补助名称码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS cu ON c.WWJZDJM = cu.DM /*文物建筑等级码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.RZXB = db.DM /*入住性别*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dc ON d.SFKY = dc.DM /*是否可用*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dd ON d.AZDSJ = dd.DM /*安装电视机*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS eb ON e.SFRZ = eb.DM /*是否入住*/
GO

--教职工基本数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_01_01_JZGJBSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[GH]--工号
      ,a.[XM]--姓名
      ,a.[YWXM]--英文姓名
      ,a.[XMPY]--姓名拼音
      ,a.[CYM]--曾用名
      ,a.[SFZJLXM]--身份证件类型码
      ,a.[SFZJH]--身份证件号
      ,a.[CSRQ]--出生日期
      ,a.[XBM]--性别码
      ,a.[MZM]--民族码
      ,a.[XXM]--血型码
      ,a.[JKZKM]--健康状况码
      ,a.[HYZTM]--婚姻状态码
      ,a.[ZZMMM]--政治面貌码
      ,a.[GATQWM]--港澳台侨外码
      ,a.[JG]--籍贯
      ,a.[GJDQM]--国籍/地区码
      ,a.[CSDXZQHM]--出生地行政区划码
      ,a.[XYZJM]--信仰宗教码
      ,a.[JZGHKSZDXZQHM]--教职工户口所在地行政区划码
      ,a.[HKLBM]--户口类别码
      ,a.[DQZZ]--当前住址
      ,a.[DQZZYZBM]--当前住址邮政编码
      ,a.[CJGZNY]--参加工作年月
      ,a.[CJNY]--从教年月
      ,a.[LXNY]--来校年月
      ,a.[BZLBM]--编制类别码
      ,a.[JZGLBM]--教职工类别码
      ,a.[GWLBM]--岗位类别码
      ,a.[SFJZJS]--是否兼职教师
      ,a.[SFSSXJS]--是否双师型教
      ,a.[ZP]--照片(路径)
      ,a.[DQZTM]--当前状态码
      ,a.[YDDH]--移动电话
      ,a.[GDDH]--固定电话
      ,a.[TXDZYZBM]--通信地址邮政编码
      ,a.[TXDZ]--通信地址
      ,a.[DZXX]--电子信箱
      ,a.[WLDZ]--网络地址
      ,a.[JSTXH]--即时通讯号
      ,c.MC as c_SFZJLX_MC--身份证件类型代码表 名称
      ,d.MC as d_RDXB_MC--人的性别代码 名称
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,f.MC as f_XX_MC--血型代码表 名称
      ,f.JC as f_XX_JC--血型代码表 简称
      ,g.MC as g_JKZKYWSZ_MC--健康状况1位数字代码 名称
      ,g.SM as g_JKZKYWSZ_SM--健康状况1位数字代码 说明
      ,h.MC as h_HYZZ_MC--婚姻状况代码 名称
      ,i.MC as i_ZZMM_MC--政治面貌代码 名称
      ,i.JC as i_ZZMM_JC--政治面貌代码 简称
      ,j.MC as j_GATQW_MC--港澳台侨外代码表 名称
      ,j.SM as j_GATQW_SM--港澳台侨外代码表 说明
      ,k.GJDQMCJC as k_SJGGHDQMC_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,k.EZMDM as k_SJGGHDQMC_EZMDM--世界各国和地区名称代码 二字母代码
      ,k.SZMDM as k_SJGGHDQMC_SZMDM--世界各国和地区名称代码 三字母代码
      ,l.MC as l_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,m.MC as m_ZJXY_MC--宗教信仰代码 名称
      ,n.MC as n_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,o.MC as o_HKLB_MC--户口类别代码 名称
      ,p.MC as p_BZLB_MC--编制类别代码表 名称
      ,q.MC as q_JZGLB_MC--教职工类别代码表 名称
      ,q.SM as q_JZGLB_SM--教职工类别代码表 说明
      ,r.MC as r_GWLB_MC--岗位类别代码表 名称
      ,s.MC as s_SFBZ_MC--是否标志代码表 名称
      ,t.MC as t_SFBZ_MC--是否标志代码表 名称
      ,u.MC as u_JZGDQZT_MC--教职工当前状态代码表 名称

FROM dbo.EDU_ZZJG_01_01_JZGJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS c ON a.SFZJLXM = c.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS d ON a.XBM = d.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS f ON a.XXM = f.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS g ON a.JKZKM = g.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS h ON a.HYZTM = h.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS i ON a.ZZMMM = i.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS j ON a.GATQWM = j.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS k ON a.GJDQM = k.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS l ON a.CSDXZQHM = l.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS m ON a.XYZJM = m.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS n ON a.JZGHKSZDXZQHM = n.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS o ON a.HKLBM = o.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS p ON a.BZLBM = p.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS q ON a.JZGLBM = q.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS r ON a.GWLBM = r.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS s ON a.SFJZJS = s.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS t ON a.SFSSXJS = t.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS u ON a.DQZTM = u.DM /*当前状态码*/
GO

--校内岗位数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_02_02_XNGWSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[GWID]--岗位表ID
      ,a.[JZGJBSJID]--教职工基本数据子类表
      ,a.[GWQSNY]--岗位起始年月
      ,a.[GWJSNY]--岗位结束年月
      ,a.[SFZG]--是否在岗
      ,a.[ZWMC]--职务名称
      ,a.[JGH]--机构号
      ,c.SCHOOLID as c_JGGW_SCHOOLID--机构岗位表 学校ID
      ,c.JGH as c_JGGW_JGH--机构岗位表 机构号
      ,c.GWBH as c_JGGW_GWBH--机构岗位表 岗位编号
      ,c.GWMC as c_JGGW_GWMC--机构岗位表 岗位名称
      ,c.GWSM as c_JGGW_GWSM--机构岗位表 岗位说明
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,d.GH as d_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,d.XM as d_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,db.MC as d_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,d.CSRQ as d_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,d.XBM as d_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,dc.MC as d_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,d.MZM as d_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,d.XXM as d_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,de.MC as d_JZGJBSJ_XXM_MC--血型代码表 名称
      ,de.JC as d_JZGJBSJ_XXM_JC--血型代码表 简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,df.MC as d_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,df.SM as d_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,d.HYZTM as d_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,dg.MC as d_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,d.GATQWM as d_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,di.MC as d_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,di.SM as d_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,d.JG as d_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,d.GJDQM as d_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,dj.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,dj.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,dj.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,d.CSDXZQHM as d_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,dk.MC as d_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,d.XYZJM as d_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,dl.MC as d_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,d.JZGHKSZDXZQHM as d_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,dm.MC as d_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,d.HKLBM as d_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,dn.MC as d_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,d.DQZZ as d_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,d.DQZZYZBM as d_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,d.CJGZNY as d_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,d.CJNY as d_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,d.LXNY as d_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,do.MC as d_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,d.JZGLBM as d_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,dp.MC as d_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,dp.SM as d_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,d.GWLBM as d_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,dq.MC as d_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,d.SFJZJS as d_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,dr.MC as d_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,d.SFSSXJS as d_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教
      ,ds.MC as d_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,d.ZP as d_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,d.DQZTM as d_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,dt.MC as d_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,d.YDDH as d_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,d.GDDH as d_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,d.TXDZYZBM as d_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,d.TXDZ as d_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,d.DZXX as d_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,d.WLDZ as d_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,d.JSTXH as d_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,e.MC as e_SFBZ_MC--是否标志代码表 名称
      ,f.SCHOOLID as f_XNJG_SCHOOLID--校内机构数据类表 学校名
      ,f.JGMC as f_XNJG_JGMC--校内机构数据类表 机构名称
      ,f.JGYWMC as f_XNJG_JGYWMC--校内机构数据类表 机构英文名称
      ,f.JGJC as f_XNJG_JGJC--校内机构数据类表 机构简称
      ,f.JGJP as f_XNJG_JGJP--校内机构数据类表 机构简拼
      ,f.JGDZ as f_XNJG_JGDZ--校内机构数据类表 机构地址
      ,f.LSSJJGH as f_XNJG_LSSJJGH--校内机构数据类表 隶属上级机构号
      ,f.LSXQH as f_XNJG_LSXQH--校内机构数据类表 隶属校区号
      ,f.JGYXBS as f_XNJG_JGYXBS--校内机构数据类表 机构有效标识
      ,fb.MC as f_XNJG_JGYXBS_MC--是否标志代码表 名称
      ,f.SFST as f_XNJG_SFST--校内机构数据类表 是否实体
      ,fc.MC as f_XNJG_SFST_MC--是否标志代码表 名称
      ,f.JLNY as f_XNJG_JLNY--校内机构数据类表 建立年月
      ,f.JGYZBM as f_XNJG_JGYZBM--校内机构数据类表 机构邮政编码
      ,f.FZRH as f_XNJG_FZRH--校内机构数据类表 负责人号

FROM dbo.EDU_ZZJG_02_02_XNGWSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_A01_JGGW AS c ON a.GWID = c.ID /*岗位表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS d ON a.JZGJBSJID = d.ID /*教职工基本数据子类表*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFZG = e.DM /*是否在岗*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS f ON a.JGH = f.JGH /*机构号*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS db ON d.SFZJLXM = db.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS dc ON d.XBM = dc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS de ON d.XXM = de.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS df ON d.JKZKM = df.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZTM = dg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS di ON d.GATQWM = di.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS dj ON d.GJDQM = dj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dk ON d.CSDXZQHM = dk.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dl ON d.XYZJM = dl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dm ON d.JZGHKSZDXZQHM = dm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dn ON d.HKLBM = dn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS do ON d.BZLBM = do.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS dp ON d.JZGLBM = dp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS dq ON d.GWLBM = dq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dr ON d.SFJZJS = dr.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ds ON d.SFSSXJS = ds.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS dt ON d.DQZTM = dt.DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fb ON f.JGYXBS = fb.DM /*机构有效标识*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fc ON f.SFST = fc.DM /*是否实体*/
GO

--教职工专业能力与资格证书数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_07_01_JZGZYNL_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[JZGJBSJID]--教职工ID
      ,a.[ZSMC]--证书名称
      ,a.[ZSBH]--证书编号
      ,a.[ZSBFDW]--证书颁发单位
      ,a.[ZSBFRQ]--证书颁发日期
      ,a.[ZSBZ]--证书备注
      ,a.[SFSZYZGZS]--是否是职业资格证书
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,c.GH as c_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,c.XM as c_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,c.YWXM as c_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,c.XMPY as c_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,c.CYM as c_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,c.CSRQ as c_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,c.XBM as c_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,cc.MC as c_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,c.MZM as c_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.XXM as c_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,ce.MC as c_JZGJBSJ_XXM_MC--血型代码表 名称
      ,ce.JC as c_JZGJBSJ_XXM_JC--血型代码表 简称
      ,c.JKZKM as c_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,c.HYZTM as c_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,c.GATQWM as c_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JG as c_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,c.GJDQM as c_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.XYZJM as c_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,c.DQZZ as c_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,c.CJNY as c_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,c.LXNY as c_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,c.BZLBM as c_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,co.MC as c_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,c.GWLBM as c_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,c.ZP as c_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,c.YDDH as c_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,c.GDDH as c_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,c.TXDZYZBM as c_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,c.TXDZ as c_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,c.DZXX as c_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,c.WLDZ as c_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,c.JSTXH as c_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,d.MC as d_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZZJG_07_01_JZGZYNL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*教职工ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.SFSZYZGZS = d.DM /*是否是职业资格证书*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ce ON c.XXM = ce.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cf ON c.JKZKM = cf.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZTM = cg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ch ON c.ZZMMM = ch.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS cj ON c.GJDQM = cj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ck ON c.CSDXZQHM = ck.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS cl ON c.XYZJM = cl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cm ON c.JZGHKSZDXZQHM = cm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cn ON c.HKLBM = cn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS co ON c.BZLBM = co.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS cp ON c.JZGLBM = cp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS cq ON c.GWLBM = cq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFJZJS = cr.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.SFSSXJS = cs.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ct ON c.DQZTM = ct.DM /*当前状态码*/
GO

--加班登记表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_04_A01_JBDJ_DISP]
AS
SELECT a.[ID]--加班登记表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[JZGJBSJID]--教职工ID
      ,a.[KSSJ]--开始时间
      ,a.[JSSJ]--结束时间
      ,a.[JBLX]--加班类型
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,c.GH as c_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,c.XM as c_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,c.YWXM as c_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,c.XMPY as c_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,c.CYM as c_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,c.CSRQ as c_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,c.XBM as c_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,cc.MC as c_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,c.MZM as c_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.XXM as c_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,ce.MC as c_JZGJBSJ_XXM_MC--血型代码表 名称
      ,ce.JC as c_JZGJBSJ_XXM_JC--血型代码表 简称
      ,c.JKZKM as c_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,c.HYZTM as c_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,c.GATQWM as c_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JG as c_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,c.GJDQM as c_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.XYZJM as c_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,c.DQZZ as c_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,c.CJNY as c_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,c.LXNY as c_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,c.BZLBM as c_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,co.MC as c_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,c.GWLBM as c_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,c.ZP as c_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,c.YDDH as c_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,c.GDDH as c_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,c.TXDZYZBM as c_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,c.TXDZ as c_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,c.DZXX as c_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,c.WLDZ as c_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,c.JSTXH as c_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,d.MC as d_JBLX_MC--加班类型代码 名称

FROM dbo.EDU_ZZJG_04_A01_JBDJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*教职工ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_JBLX AS d ON a.JBLX = d.DM /*加班类型*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ce ON c.XXM = ce.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cf ON c.JKZKM = cf.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZTM = cg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ch ON c.ZZMMM = ch.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS cj ON c.GJDQM = cj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ck ON c.CSDXZQHM = ck.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS cl ON c.XYZJM = cl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cm ON c.JZGHKSZDXZQHM = cm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cn ON c.HKLBM = cn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS co ON c.BZLBM = co.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS cp ON c.JZGLBM = cp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS cq ON c.GWLBM = cq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFJZJS = cr.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.SFSSXJS = cs.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ct ON c.DQZTM = ct.DM /*当前状态码*/
GO

--教职工扩展表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_01_A01_JZGKZ_DISP]
AS
SELECT a.[JZGJBSJID]--教工基本信息ID
      ,a.[SCHOOLID]--学校ID
      ,a.[JL]--教龄
      ,a.[GL]--工龄
      ,a.[GZJY]--工作经验
      ,a.[LDJN]--劳动技能
      ,a.[XXJL]--学习经历
      ,b.SCHOOLID as b_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,b.GH as b_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,b.XM as b_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,b.YWXM as b_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,b.XMPY as b_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,b.CYM as b_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,b.SFZJLXM as b_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,bb.MC as b_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,b.CSRQ as b_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,b.XBM as b_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,bc.MC as b_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,b.MZM as b_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,bd.MZMC as b_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,bd.ZMDM as b_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.XXM as b_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,be.MC as b_JZGJBSJ_XXM_MC--血型代码表 名称
      ,be.JC as b_JZGJBSJ_XXM_JC--血型代码表 简称
      ,b.JKZKM as b_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,bf.MC as b_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,bf.SM as b_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,b.HYZTM as b_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,bg.MC as b_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,b.ZZMMM as b_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,bh.MC as b_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,bh.JC as b_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,b.GATQWM as b_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,bi.MC as b_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,bi.SM as b_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,b.JG as b_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,b.GJDQM as b_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,bj.GJDQMCJC as b_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,bj.EZMDM as b_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,bj.SZMDM as b_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.CSDXZQHM as b_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,bk.MC as b_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.XYZJM as b_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,bl.MC as b_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,b.JZGHKSZDXZQHM as b_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,bm.MC as b_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.HKLBM as b_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,bn.MC as b_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,b.DQZZ as b_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,b.DQZZYZBM as b_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,b.CJGZNY as b_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,b.CJNY as b_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,b.LXNY as b_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,b.BZLBM as b_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,bo.MC as b_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,b.JZGLBM as b_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,bp.MC as b_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,bp.SM as b_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,b.GWLBM as b_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,bq.MC as b_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,b.SFJZJS as b_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,br.MC as b_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,b.SFSSXJS as b_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教
      ,bs.MC as b_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,b.ZP as b_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,b.DQZTM as b_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,bt.MC as b_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,b.YDDH as b_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,b.GDDH as b_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,b.TXDZYZBM as b_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,b.TXDZ as b_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,b.DZXX as b_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,b.WLDZ as b_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,b.JSTXH as b_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号

FROM dbo.EDU_ZZJG_01_A01_JZGKZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS b ON a.JZGJBSJID = b.ID /*教工基本信息ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bd ON b.MZM = bd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS be ON b.XXM = be.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bf ON b.JKZKM = bf.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZTM = bg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bh ON b.ZZMMM = bh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bj ON b.GJDQM = bj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bk ON b.CSDXZQHM = bk.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bl ON b.XYZJM = bl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bm ON b.JZGHKSZDXZQHM = bm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bn ON b.HKLBM = bn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS bo ON b.BZLBM = bo.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS bp ON b.JZGLBM = bp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS bq ON b.GWLBM = bq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS br ON b.SFJZJS = br.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bs ON b.SFSSXJS = bs.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS bt ON b.DQZTM = bt.DM /*当前状态码*/
GO

--学校班级数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_02_02_ZZBJ_DISP]
AS
SELECT a.[XZBDM]--行政班代码
      ,a.[SCHOOLID]--学校名
      ,a.[ZYXXID]--专业基本信息
      ,a.[ZZNJID]--学校年级数据表
      ,a.[XZBMC]--行政班名称
      ,a.[JBNY]--建班年月
      ,a.[BZRGH]--班主任工号
      ,a.[JSBH]--教室编号
      ,a.[NANSRS]--男生人数
      ,a.[NVSRS]--女生人数
      ,a.[ZRS]--总人数
      ,a.[BZXH]--班长学号
      ,a.[JXJH]--教学计划
      ,a.[JGH]--机构号
      ,a.[XQDM]--校区代码
      ,c.SCHOOLID as c_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,c.ZYDM as c_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,cb.ZYMLLB as c_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,cb.MC as c_ZYXX_ZYDM_MC--自建专业代码 名称
      ,c.ZYMC as c_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,c.ZYYWMC as c_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,c.XZ as c_ZYXX_XZ--专业基本信息数据表 学制
      ,c.ZYFXMC as c_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,c.ZYJC as c_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,c.JLNY as c_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,c.ZYJSS as c_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,c.KSJGH as c_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,c.ZXF as c_ZYXX_ZXF--专业基本信息数据表 总学分
      ,c.SSZYML as c_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,cc.MC as c_ZYXX_SSZYML_MC--专业目录代码 名称
      ,c.ZYLB as c_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,d.SCHOOLID as d_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,d.NJMC as d_ZZNJ_NJMC--学校年级数据表 年级名称
      ,d.SSNF as d_ZZNJ_SSNF--学校年级数据表 所属年份
      ,d.NJZT as d_ZZNJ_NJZT--学校年级数据表 年级状态
      ,db.MC as d_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,e.SCHOOLID as e_XNJG_SCHOOLID--校内机构数据类表 学校名
      ,e.JGMC as e_XNJG_JGMC--校内机构数据类表 机构名称
      ,e.JGYWMC as e_XNJG_JGYWMC--校内机构数据类表 机构英文名称
      ,e.JGJC as e_XNJG_JGJC--校内机构数据类表 机构简称
      ,e.JGJP as e_XNJG_JGJP--校内机构数据类表 机构简拼
      ,e.JGDZ as e_XNJG_JGDZ--校内机构数据类表 机构地址
      ,e.LSSJJGH as e_XNJG_LSSJJGH--校内机构数据类表 隶属上级机构号
      ,e.LSXQH as e_XNJG_LSXQH--校内机构数据类表 隶属校区号
      ,e.JGYXBS as e_XNJG_JGYXBS--校内机构数据类表 机构有效标识
      ,eb.MC as e_XNJG_JGYXBS_MC--是否标志代码表 名称
      ,e.SFST as e_XNJG_SFST--校内机构数据类表 是否实体
      ,ec.MC as e_XNJG_SFST_MC--是否标志代码表 名称
      ,e.JLNY as e_XNJG_JLNY--校内机构数据类表 建立年月
      ,e.JGYZBM as e_XNJG_JGYZBM--校内机构数据类表 机构邮政编码
      ,e.FZRH as e_XNJG_FZRH--校内机构数据类表 负责人号

FROM dbo.EDU_ZZJX_02_02_ZZBJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS c ON a.ZYXXID = c.ZYBH /*专业基本信息*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS d ON a.ZZNJID = d.NJDM /*学校年级数据表*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS e ON a.JGH = e.JGH /*机构号*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS cb ON c.ZYDM = cb.DM /*专业代码*/ AND c.SSZYML = cb.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS cc ON c.SSZYML = cc.DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS db ON d.NJZT = db.DM /*年级状态*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS eb ON e.JGYXBS = eb.DM /*机构有效标识*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ec ON e.SFST = ec.DM /*是否实体*/
GO

--学校年级数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_02_01_ZZNJ_DISP]
AS
SELECT a.[NJDM]--年级代码
      ,a.[SCHOOLID]--学校名
      ,a.[NJMC]--年级名称
      ,a.[SSNF]--所属年份
      ,a.[NJZT]--年级状态
      ,c.MC as c_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZZJX_02_01_ZZNJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.NJZT = c.DM /*年级状态*/
GO

--专业基本信息数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_01_ZYXX_DISP]
AS
SELECT a.[ZYBH]--专业编号
      ,a.[SCHOOLID]--学校名
      ,a.[ZYDM]--专业代码
      ,a.[ZYMC]--专业名称
      ,a.[ZYYWMC]--专业英文名称
      ,a.[XZ]--学制
      ,a.[ZYFXMC]--专业方向名称
      ,a.[ZYJC]--专业简称
      ,a.[JLNY]--建立年月
      ,a.[ZYJSS]--专业教师数
      ,a.[KSJGH]--开设机构号
      ,a.[ZXF]--总学分
      ,a.[SSZYML]--所属专业目录
      ,a.[ZYLB]--专业类别名称
      ,c.ZYMLLB as c_ZJZY_ZYMLLB--自建专业代码 专业目录类别
      ,cb.MC as c_ZJZY_ZYMLLB_MC--专业目录代码 名称
      ,c.MC as c_ZJZY_MC--自建专业代码 名称
      ,d.SCHOOLID as d_XNJG_SCHOOLID--校内机构数据类表 学校名
      ,d.JGMC as d_XNJG_JGMC--校内机构数据类表 机构名称
      ,d.JGYWMC as d_XNJG_JGYWMC--校内机构数据类表 机构英文名称
      ,d.JGJC as d_XNJG_JGJC--校内机构数据类表 机构简称
      ,d.JGJP as d_XNJG_JGJP--校内机构数据类表 机构简拼
      ,d.JGDZ as d_XNJG_JGDZ--校内机构数据类表 机构地址
      ,d.LSSJJGH as d_XNJG_LSSJJGH--校内机构数据类表 隶属上级机构号
      ,d.LSXQH as d_XNJG_LSXQH--校内机构数据类表 隶属校区号
      ,d.JGYXBS as d_XNJG_JGYXBS--校内机构数据类表 机构有效标识
      ,db.MC as d_XNJG_JGYXBS_MC--是否标志代码表 名称
      ,d.SFST as d_XNJG_SFST--校内机构数据类表 是否实体
      ,dc.MC as d_XNJG_SFST_MC--是否标志代码表 名称
      ,d.JLNY as d_XNJG_JLNY--校内机构数据类表 建立年月
      ,d.JGYZBM as d_XNJG_JGYZBM--校内机构数据类表 机构邮政编码
      ,d.FZRH as d_XNJG_FZRH--校内机构数据类表 负责人号
      ,e.MC as e_ZYML_MC--专业目录代码 名称

FROM dbo.EDU_ZZJX_01_01_ZYXX AS a LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS c ON a.ZYDM = c.DM /*专业代码*/ AND a.SSZYML = c.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS d ON a.KSJGH = d.JGH /*开设机构号*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS e ON a.SSZYML = e.DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS cb ON c.ZYMLLB = cb.DM /*专业目录类别*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS db ON d.JGYXBS = db.DM /*机构有效标识*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dc ON d.SFST = dc.DM /*是否实体*/
GO

--代管费收取表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_08_A01_DGFSQ_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[XSXXID]--学生ID
      ,a.[XNID]--学年ID
      ,a.[YJJE]--已缴金额
      ,a.[JFRQ]--缴费日期
      ,a.[SFYSH]--是否已审核
      ,a.[SHRID]--审核人员ID
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生信息数据表 学校名
      ,c.XH as c_XSXX_XH--学生信息数据表 学号
      ,c.XM as c_XSXX_XM--学生信息数据表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生信息数据表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生信息数据表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生信息数据表 曾用名
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,cb.MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生信息数据表 身份证件号
      ,c.XBM as c_XSXX_XBM--学生信息数据表 性别码
      ,cc.MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.XXM as c_XSXX_XXM--学生信息数据表 血型码
      ,cd.MC as c_XSXX_XXM_MC--血型代码表 名称
      ,cd.JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.CSRQ as c_XSXX_CSRQ--学生信息数据表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生信息数据表 出生地码
      ,ce.MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生信息数据表 籍贯
      ,c.MZM as c_XSXX_MZM--学生信息数据表 民族码
      ,cf.MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.HYZKM as c_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,cg.MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.XYZJM as c_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,ch.MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,ci.MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,ci.SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JKZKM as c_XSXX_JKZKM--学生信息数据表 健康状况码
      ,cj.MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,cj.SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,ck.MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ck.JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_XSXX_HKLBM--学生信息数据表 户口类别码
      ,cm.MC as c_XSXX_HKLBM_MC--户口类别代码 名称
      ,c.SFSLDRK as c_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,cn.MC as c_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,c.GJDQM as c_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.TC as c_XSXX_TC--学生信息数据表 特长
      ,c.XSLXDH as c_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,c.WLDZ as c_XSXX_WLDZ--学生信息数据表 网络地址
      ,c.JSTXH as c_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,c.DZXX as c_XSXX_DZXX--学生信息数据表 电子信箱
      ,c.ZP as c_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.SCHOOLID as d_XN_SCHOOLID--学年表 学校名
      ,d.XN as d_XN_XN--学年表 学年
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,e.GH as e_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,e.XM as e_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,e.YWXM as e_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,e.XMPY as e_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,e.CYM as e_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,eb.MC as e_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,e.SFZJH as e_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,e.CSRQ as e_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,e.XBM as e_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,ec.MC as e_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,e.MZM as e_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,ed.MZMC as e_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,ed.ZMDM as e_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,e.XXM as e_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,ee.MC as e_JZGJBSJ_XXM_MC--血型代码表 名称
      ,ee.JC as e_JZGJBSJ_XXM_JC--血型代码表 简称
      ,e.JKZKM as e_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,ef.MC as e_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,ef.SM as e_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,e.HYZTM as e_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,eg.MC as e_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,eh.MC as e_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,eh.JC as e_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,e.GATQWM as e_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,ei.MC as e_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,ei.SM as e_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,e.JG as e_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,e.GJDQM as e_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,ej.GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,ej.EZMDM as e_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,ej.SZMDM as e_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,e.CSDXZQHM as e_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,ek.MC as e_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,e.XYZJM as e_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,el.MC as e_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,e.JZGHKSZDXZQHM as e_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,em.MC as e_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,e.HKLBM as e_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,en.MC as e_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,e.DQZZ as e_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,e.DQZZYZBM as e_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,e.CJGZNY as e_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,e.CJNY as e_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,e.LXNY as e_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,e.BZLBM as e_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,eo.MC as e_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,e.JZGLBM as e_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,ep.MC as e_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,ep.SM as e_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,e.GWLBM as e_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,eq.MC as e_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,e.SFJZJS as e_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,er.MC as e_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,e.SFSSXJS as e_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教
      ,es.MC as e_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,e.ZP as e_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,e.DQZTM as e_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,et.MC as e_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,e.YDDH as e_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,e.GDDH as e_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,e.TXDZYZBM as e_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,e.TXDZ as e_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,e.DZXX as e_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,e.WLDZ as e_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,e.JSTXH as e_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号

FROM dbo.EDU_ZZJX_08_A01_DGFSQ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*学生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS d ON a.XNID = d.ID /*学年ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.SHRID = e.ID /*审核人员ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS eb ON e.SFZJLXM = eb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS ec ON e.XBM = ec.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ed ON e.MZM = ed.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ee ON e.XXM = ee.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ef ON e.JKZKM = ef.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS eg ON e.HYZTM = eg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS eh ON e.ZZMMM = eh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ei ON e.GATQWM = ei.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ej ON e.GJDQM = ej.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ek ON e.CSDXZQHM = ek.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS el ON e.XYZJM = el.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS em ON e.JZGHKSZDXZQHM = em.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS en ON e.HKLBM = en.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS eo ON e.BZLBM = eo.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS ep ON e.JZGLBM = ep.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS eq ON e.GWLBM = eq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS er ON e.SFJZJS = er.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS es ON e.SFSSXJS = es.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS et ON e.DQZTM = et.DM /*当前状态码*/
GO

--教师教学工作量统计数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_05_02_JSJXGZLTJ_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[JSID]--教师ID
      ,a.[XQID]--学期ID
      ,a.[XQMC]--学期名称
      ,a.[JSXM]--教师姓名
      ,a.[RJKCMS]--任教课程门数
      ,a.[LLZXS]--理论总学时
      ,a.[SJZXS]--实践总学时
      ,a.[QTZXS]--其他总学时
      ,a.[XSZS]--学生总数
      ,a.[ZXFS]--总学分数
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,c.GH as c_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,c.XM as c_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,c.YWXM as c_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,c.XMPY as c_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,c.CYM as c_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,c.CSRQ as c_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,c.XBM as c_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,cc.MC as c_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,c.MZM as c_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.XXM as c_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,ce.MC as c_JZGJBSJ_XXM_MC--血型代码表 名称
      ,ce.JC as c_JZGJBSJ_XXM_JC--血型代码表 简称
      ,c.JKZKM as c_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,c.HYZTM as c_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,c.GATQWM as c_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JG as c_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,c.GJDQM as c_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.XYZJM as c_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,c.DQZZ as c_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,c.CJNY as c_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,c.LXNY as c_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,c.BZLBM as c_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,co.MC as c_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,c.GWLBM as c_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,c.ZP as c_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,c.YDDH as c_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,c.GDDH as c_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,c.TXDZYZBM as c_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,c.TXDZ as c_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,c.DZXX as c_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,c.WLDZ as c_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,c.JSTXH as c_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,d.SCHOOLID as d_XQ_SCHOOLID--学期数据表 学校名
      ,d.XNID as d_XQ_XNID--学期数据表 学年
      ,d.XQM as d_XQ_XQM--学期数据表 学期码
      ,db.MC as d_XQ_XQM_MC--学期代码表 名称
      ,d.XQMC as d_XQ_XQMC--学期数据表 学期名称
      ,d.XQKSRQ as d_XQ_XQKSRQ--学期数据表 学期开始日期
      ,d.XQJSRQ as d_XQ_XQJSRQ--学期数据表 学期结束日期

FROM dbo.EDU_ZZJX_05_02_JSJXGZLTJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*教师ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*学期ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ce ON c.XXM = ce.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cf ON c.JKZKM = cf.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZTM = cg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ch ON c.ZZMMM = ch.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS cj ON c.GJDQM = cj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ck ON c.CSDXZQHM = ck.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS cl ON c.XYZJM = cl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cm ON c.JZGHKSZDXZQHM = cm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cn ON c.HKLBM = cn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS co ON c.BZLBM = co.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS cp ON c.JZGLBM = cp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS cq ON c.GWLBM = cq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFJZJS = cr.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.SFSSXJS = cs.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ct ON c.DQZTM = ct.DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS db ON d.XQM = db.DM /*学期码*/
GO

--学期学分管理表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_A01_XQXFGL_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[JHBH]--计划编号
      ,a.[ZDXF]--最高学分
      ,a.[ZGXF]--最低学分
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,cb.MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--总体教学计划数据子类表 学校ID
      ,d.JHNJ as d_ZTJXJH_JHNJ--总体教学计划数据子类表 计划年级
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--总体教学计划数据子类表 专业编号
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--总体教学计划数据子类表 计划专业名称
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--总体教学计划数据子类表 总学分要求
      ,d.JLNY as d_ZTJXJH_JLNY--总体教学计划数据子类表 建立年月
      ,d.SYXZ as d_ZTJXJH_SYXZ--总体教学计划数据子类表 适用学制
      ,d.PYMB as d_ZTJXJH_PYMB--总体教学计划数据子类表 培养目标
      ,d.SFKY as d_ZTJXJH_SFKY--总体教学计划数据子类表 是否可用
      ,db.MC as d_ZTJXJH_SFKY_MC--授课方式代码表 名称
      ,d.FJ as d_ZTJXJH_FJ--总体教学计划数据子类表 附件

FROM dbo.EDU_ZZJX_03_A01_XQXFGL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JHBH = d.JHBH /*计划编号*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFKY = db.DM /*是否可用*/
GO

--教学计划课程清单数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_03_JXJHKCQD_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[KCH]--课程号
      ,a.[JHBH]--计划编号
      ,a.[XQID]--学期ID
      ,a.[KCMC]--课程名称
      ,a.[YXKC]--预修课程
      ,a.[SFHXKC]--是否核心（骨干）
      ,a.[KCFLM]--课程分类码
      ,a.[KCSXM]--课程属性码
      ,a.[ZXXQ]--执行学期
      ,c.SCHOOLID as c_KC_SCHOOLID--课程数据子类表 学校ID
      ,c.KCMC as c_KC_KCMC--课程数据子类表 课程名称
      ,c.KCYWM as c_KC_KCYWM--课程数据子类表 课程英文名
      ,c.KCBM as c_KC_KCBM--课程数据子类表 课程别名
      ,c.KCJS as c_KC_KCJS--课程数据子类表 课程介绍
      ,c.XF as c_KC_XF--课程数据子类表 学分
      ,c.ZXS as c_KC_ZXS--课程数据子类表 总学时
      ,c.LLXS as c_KC_LLXS--课程数据子类表 理论学时
      ,c.SJXS as c_KC_SJXS--课程数据子类表 实践学时
      ,c.QTXS as c_KC_QTXS--课程数据子类表 其他学时
      ,c.CKSM as c_KC_CKSM--课程数据子类表 参考书目
      ,c.KKDW as c_KC_KKDW--课程数据子类表 开课单位
      ,c.KSXS as c_KC_KSXS--课程数据子类表 考试形式
      ,cb.MC as c_KC_KSXS_MC--考试形式代码表 名称
      ,c.SKFSM as c_KC_SKFSM--课程数据子类表 授课方式码
      ,cc.MC as c_KC_SKFSM_MC--授课方式代码表 名称
      ,c.KCFY as c_KC_KCFY--课程数据子类表 课程费用
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--总体教学计划数据子类表 学校ID
      ,d.JHNJ as d_ZTJXJH_JHNJ--总体教学计划数据子类表 计划年级
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--总体教学计划数据子类表 专业编号
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--总体教学计划数据子类表 计划专业名称
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--总体教学计划数据子类表 总学分要求
      ,d.JLNY as d_ZTJXJH_JLNY--总体教学计划数据子类表 建立年月
      ,d.SYXZ as d_ZTJXJH_SYXZ--总体教学计划数据子类表 适用学制
      ,d.PYMB as d_ZTJXJH_PYMB--总体教学计划数据子类表 培养目标
      ,d.SFKY as d_ZTJXJH_SFKY--总体教学计划数据子类表 是否可用
      ,db.MC as d_ZTJXJH_SFKY_MC--授课方式代码表 名称
      ,d.FJ as d_ZTJXJH_FJ--总体教学计划数据子类表 附件
      ,e.SCHOOLID as e_XQ_SCHOOLID--学期数据表 学校名
      ,e.XNID as e_XQ_XNID--学期数据表 学年
      ,e.XQM as e_XQ_XQM--学期数据表 学期码
      ,eb.MC as e_XQ_XQM_MC--学期代码表 名称
      ,e.XQMC as e_XQ_XQMC--学期数据表 学期名称
      ,e.XQKSRQ as e_XQ_XQKSRQ--学期数据表 学期开始日期
      ,e.XQJSRQ as e_XQ_XQJSRQ--学期数据表 学期结束日期
      ,f.MC as f_SKFS_MC--授课方式代码表 名称
      ,g.MC as g_KCFL_MC--课程分类代码 名称
      ,h.MC as h_KCSX_MC--课程属性代码表 名称
      ,h.SM as h_KCSX_SM--课程属性代码表 说明

FROM dbo.EDU_ZZJX_03_03_JXJHKCQD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS c ON a.KCH = c.KCH /*课程号*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JHBH = d.JHBH /*计划编号*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*学期ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS f ON a.SFHXKC = f.DM /*是否核心（骨干）*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS g ON a.KCFLM = g.DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS h ON a.KCSXM = h.DM /*课程属性码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS cb ON c.KSXS = cb.DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cc ON c.SKFSM = cc.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFKY = db.DM /*是否可用*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS eb ON e.XQM = eb.DM /*学期码*/
GO

--教学计划分类学分要求数据子类
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_02_JXJHFLXFYQ_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[KCFLM]--课程分类码
      ,a.[XFYQ]--学分要求
      ,a.[JHBH]--计划编号
      ,c.MC as c_KCFL_MC--课程分类代码 名称
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--总体教学计划数据子类表 学校ID
      ,d.JHNJ as d_ZTJXJH_JHNJ--总体教学计划数据子类表 计划年级
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--总体教学计划数据子类表 专业编号
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--总体教学计划数据子类表 计划专业名称
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--总体教学计划数据子类表 总学分要求
      ,d.JLNY as d_ZTJXJH_JLNY--总体教学计划数据子类表 建立年月
      ,d.SYXZ as d_ZTJXJH_SYXZ--总体教学计划数据子类表 适用学制
      ,d.PYMB as d_ZTJXJH_PYMB--总体教学计划数据子类表 培养目标
      ,d.SFKY as d_ZTJXJH_SFKY--总体教学计划数据子类表 是否可用
      ,db.MC as d_ZTJXJH_SFKY_MC--授课方式代码表 名称
      ,d.FJ as d_ZTJXJH_FJ--总体教学计划数据子类表 附件

FROM dbo.EDU_ZZJX_03_02_JXJHFLXFYQ AS a LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS c ON a.KCFLM = c.DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JHBH = d.JHBH /*计划编号*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFKY = db.DM /*是否可用*/
GO

--总体教学计划数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_01_ZTJXJH_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[JHBH]--计划编号
      ,a.[JHNJ]--计划年级
      ,a.[ZYXXID]--专业编号
      ,a.[JHZYMC]--计划专业名称
      ,a.[ZXFYQ]--总学分要求
      ,a.[JLNY]--建立年月
      ,a.[SYXZ]--适用学制
      ,a.[PYMB]--培养目标
      ,a.[SFKY]--是否可用
      ,a.[FJ]--附件
      ,c.SCHOOLID as c_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,c.NJMC as c_ZZNJ_NJMC--学校年级数据表 年级名称
      ,c.SSNF as c_ZZNJ_SSNF--学校年级数据表 所属年份
      ,c.NJZT as c_ZZNJ_NJZT--学校年级数据表 年级状态
      ,cb.MC as c_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,d.ZYDM as d_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,db.ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,db.MC as d_ZYXX_ZYDM_MC--自建专业代码 名称
      ,d.ZYMC as d_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,d.XZ as d_ZYXX_XZ--专业基本信息数据表 学制
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,d.ZYJC as d_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,d.JLNY as d_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,d.ZYJSS as d_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,d.KSJGH as d_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,d.ZXF as d_ZYXX_ZXF--专业基本信息数据表 总学分
      ,d.SSZYML as d_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,dc.MC as d_ZYXX_SSZYML_MC--专业目录代码 名称
      ,d.ZYLB as d_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,e.MC as e_SKFS_MC--授课方式代码表 名称

FROM dbo.EDU_ZZJX_03_01_ZTJXJH AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS c ON a.JHNJ = c.NJDM /*计划年级*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*专业编号*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS e ON a.SFKY = e.DM /*是否可用*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.NJZT = cb.DM /*年级状态*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS db ON d.ZYDM = db.DM /*专业代码*/ AND d.SSZYML = db.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS dc ON d.SSZYML = dc.DM /*所属专业目录*/
GO

--教师任课表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_A02_JSRK_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[KXH]--课序号
      ,a.[JSID]--教师表ID
      ,a.[KCH]--课程号
      ,a.[JHBH]--计划编号
      ,a.[XQID]--学期ID
      ,a.[JXDG]--教学大纲
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,c.GH as c_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,c.XM as c_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,c.YWXM as c_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,c.XMPY as c_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,c.CYM as c_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,c.CSRQ as c_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,c.XBM as c_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,cc.MC as c_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,c.MZM as c_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.XXM as c_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,ce.MC as c_JZGJBSJ_XXM_MC--血型代码表 名称
      ,ce.JC as c_JZGJBSJ_XXM_JC--血型代码表 简称
      ,c.JKZKM as c_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,c.HYZTM as c_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,c.GATQWM as c_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JG as c_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,c.GJDQM as c_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.XYZJM as c_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,c.DQZZ as c_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,c.CJNY as c_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,c.LXNY as c_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,c.BZLBM as c_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,co.MC as c_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,c.GWLBM as c_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,c.ZP as c_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,c.YDDH as c_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,c.GDDH as c_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,c.TXDZYZBM as c_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,c.TXDZ as c_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,c.DZXX as c_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,c.WLDZ as c_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,c.JSTXH as c_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,d.SCHOOLID as d_KC_SCHOOLID--课程数据子类表 学校ID
      ,d.KCMC as d_KC_KCMC--课程数据子类表 课程名称
      ,d.KCYWM as d_KC_KCYWM--课程数据子类表 课程英文名
      ,d.KCBM as d_KC_KCBM--课程数据子类表 课程别名
      ,d.KCJS as d_KC_KCJS--课程数据子类表 课程介绍
      ,d.XF as d_KC_XF--课程数据子类表 学分
      ,d.ZXS as d_KC_ZXS--课程数据子类表 总学时
      ,d.LLXS as d_KC_LLXS--课程数据子类表 理论学时
      ,d.SJXS as d_KC_SJXS--课程数据子类表 实践学时
      ,d.QTXS as d_KC_QTXS--课程数据子类表 其他学时
      ,d.CKSM as d_KC_CKSM--课程数据子类表 参考书目
      ,d.KKDW as d_KC_KKDW--课程数据子类表 开课单位
      ,d.KSXS as d_KC_KSXS--课程数据子类表 考试形式
      ,db.MC as d_KC_KSXS_MC--考试形式代码表 名称
      ,d.SKFSM as d_KC_SKFSM--课程数据子类表 授课方式码
      ,dc.MC as d_KC_SKFSM_MC--授课方式代码表 名称
      ,d.KCFY as d_KC_KCFY--课程数据子类表 课程费用
      ,e.SCHOOLID as e_ZTJXJH_SCHOOLID--总体教学计划数据子类表 学校ID
      ,e.JHNJ as e_ZTJXJH_JHNJ--总体教学计划数据子类表 计划年级
      ,e.ZYXXID as e_ZTJXJH_ZYXXID--总体教学计划数据子类表 专业编号
      ,e.JHZYMC as e_ZTJXJH_JHZYMC--总体教学计划数据子类表 计划专业名称
      ,e.ZXFYQ as e_ZTJXJH_ZXFYQ--总体教学计划数据子类表 总学分要求
      ,e.JLNY as e_ZTJXJH_JLNY--总体教学计划数据子类表 建立年月
      ,e.SYXZ as e_ZTJXJH_SYXZ--总体教学计划数据子类表 适用学制
      ,e.PYMB as e_ZTJXJH_PYMB--总体教学计划数据子类表 培养目标
      ,e.SFKY as e_ZTJXJH_SFKY--总体教学计划数据子类表 是否可用
      ,eb.MC as e_ZTJXJH_SFKY_MC--授课方式代码表 名称
      ,e.FJ as e_ZTJXJH_FJ--总体教学计划数据子类表 附件
      ,f.SCHOOLID as f_XQ_SCHOOLID--学期数据表 学校名
      ,f.XNID as f_XQ_XNID--学期数据表 学年
      ,f.XQM as f_XQ_XQM--学期数据表 学期码
      ,fb.MC as f_XQ_XQM_MC--学期代码表 名称
      ,f.XQMC as f_XQ_XQMC--学期数据表 学期名称
      ,f.XQKSRQ as f_XQ_XQKSRQ--学期数据表 学期开始日期
      ,f.XQJSRQ as f_XQ_XQJSRQ--学期数据表 学期结束日期

FROM dbo.EDU_ZZJX_01_A02_JSRK AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*教师表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCH = d.KCH /*课程号*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS e ON a.JHBH = e.JHBH /*计划编号*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS f ON a.XQID = f.ID /*学期ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ce ON c.XXM = ce.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cf ON c.JKZKM = cf.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZTM = cg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ch ON c.ZZMMM = ch.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS cj ON c.GJDQM = cj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ck ON c.CSDXZQHM = ck.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS cl ON c.XYZJM = cl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cm ON c.JZGHKSZDXZQHM = cm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cn ON c.HKLBM = cn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS co ON c.BZLBM = co.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS cp ON c.JZGLBM = cp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS cq ON c.GWLBM = cq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFJZJS = cr.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.SFSSXJS = cs.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ct ON c.DQZTM = ct.DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS db ON d.KSXS = db.DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dc ON d.SKFSM = dc.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS eb ON e.SFKY = eb.DM /*是否可用*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS fb ON f.XQM = fb.DM /*学期码*/
GO

--课程评价表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_A01_KCPJ_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[PJID]--评价ID
      ,a.[KXH]--课序号
      ,a.[PJR]--评价人
      ,a.[PJSJ]--评价时间
      ,a.[PJNR]--评价内容
      ,a.[HF]--回复
      ,c.SCHOOLID as c_JSRK_SCHOOLID--教师任课表 学校ID
      ,c.JSID as c_JSRK_JSID--教师任课表 教师表ID
      ,c.KCH as c_JSRK_KCH--教师任课表 课程号
      ,c.JHBH as c_JSRK_JHBH--教师任课表 计划编号
      ,c.XQID as c_JSRK_XQID--教师任课表 学期ID
      ,c.JXDG as c_JSRK_JXDG--教师任课表 教学大纲
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_ZZJX_01_A01_KCPJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_A02_JSRK AS c ON a.KXH = c.KXH /*课序号*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.PJR = d.LOGINNAME /*评价人*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO

--课程数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_02_KC_DISP]
AS
SELECT a.[KCH]--课程号
      ,a.[SCHOOLID]--学校ID
      ,a.[KCMC]--课程名称
      ,a.[KCYWM]--课程英文名
      ,a.[KCBM]--课程别名
      ,a.[KCJS]--课程介绍
      ,a.[XF]--学分
      ,a.[ZXS]--总学时
      ,a.[LLXS]--理论学时
      ,a.[SJXS]--实践学时
      ,a.[QTXS]--其他学时
      ,a.[CKSM]--参考书目
      ,a.[KKDW]--开课单位
      ,a.[KSXS]--考试形式
      ,a.[SKFSM]--授课方式码
      ,a.[KCFY]--课程费用
      ,c.SCHOOLID as c_XNJG_SCHOOLID--校内机构数据类表 学校名
      ,c.JGMC as c_XNJG_JGMC--校内机构数据类表 机构名称
      ,c.JGYWMC as c_XNJG_JGYWMC--校内机构数据类表 机构英文名称
      ,c.JGJC as c_XNJG_JGJC--校内机构数据类表 机构简称
      ,c.JGJP as c_XNJG_JGJP--校内机构数据类表 机构简拼
      ,c.JGDZ as c_XNJG_JGDZ--校内机构数据类表 机构地址
      ,c.LSSJJGH as c_XNJG_LSSJJGH--校内机构数据类表 隶属上级机构号
      ,c.LSXQH as c_XNJG_LSXQH--校内机构数据类表 隶属校区号
      ,c.JGYXBS as c_XNJG_JGYXBS--校内机构数据类表 机构有效标识
      ,cb.MC as c_XNJG_JGYXBS_MC--是否标志代码表 名称
      ,c.SFST as c_XNJG_SFST--校内机构数据类表 是否实体
      ,cc.MC as c_XNJG_SFST_MC--是否标志代码表 名称
      ,c.JLNY as c_XNJG_JLNY--校内机构数据类表 建立年月
      ,c.JGYZBM as c_XNJG_JGYZBM--校内机构数据类表 机构邮政编码
      ,c.FZRH as c_XNJG_FZRH--校内机构数据类表 负责人号
      ,d.MC as d_KSXS_MC--考试形式代码表 名称
      ,e.MC as e_SKFS_MC--授课方式代码表 名称

FROM dbo.EDU_ZZJX_01_02_KC AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.KKDW = c.JGH /*开课单位*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS d ON a.KSXS = d.DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS e ON a.SKFSM = e.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.JGYXBS = cb.DM /*机构有效标识*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cc ON c.SFST = cc.DM /*是否实体*/
GO

--校外实习基地信息数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_01_XWSXJDXX_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[ID]--企业表ID
      ,a.[QYBH]--企业编号
      ,a.[JDHZHTBH]--基地合作合同编号
      ,a.[JDHZHTMC]--基地合作合同名称
      ,a.[JDLBM]--基地类别码
      ,a.[DWMC]--单位名称
      ,a.[QYXZQ]--企业行政区
      ,a.[QYDZ]--企业地址
      ,a.[QYXZ]--企业性质
      ,a.[FRDB]--法人代表
      ,a.[QYLXR]--企业联系人
      ,a.[QYYZBM]--企业邮政编码
      ,a.[QYLXDH]--企业联系电话
      ,a.[QYYYZZ]--企业营业执照
      ,a.[QYLX]--企业类型
      ,a.[QYRS]--企业人数
      ,a.[QYZCZJ]--企业注册资金
      ,a.[QYCZ]--企业传真
      ,a.[QYFZR]--企业负责人
      ,a.[FZRZW]--负责人职位
      ,a.[FZRLXDH]--负责人联系电话
      ,a.[QYYXDZ]--企业邮箱地址
      ,a.[QYQQ]--企业QQ
      ,a.[QYMSN]--企业MSN
      ,a.[QYWZ]--企业网址
      ,a.[QYJJ]--企业简介
      ,a.[SHZT]--审核状态
      ,c.MC as c_SXJDLB_MC--实习基地类别代码 名称
      ,d.MC as d_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,e.MC as e_JJLXFL_MC--经济类型分类与代码 名称

FROM dbo.EDU_ZZJX_07_01_XWSXJDXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS c ON a.JDLBM = c.DM /*基地类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.QYXZQ = d.DM /*企业行政区*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS e ON a.QYXZ = e.DM /*企业性质*/
GO

--学生校外实习情况数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_03_XSXWSXQK_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[ID]--实习情况表ID
      ,a.[XSXXID]--学生信息ID
      ,a.[QYID]--企业表ID
      ,a.[GWID]--岗位表ID
      ,a.[SXQSRQ]--受训起始日期
      ,a.[SXJSRQ]--受训结束日期
      ,a.[QYBH]--企业编号
      ,a.[SXGWMC]--受训岗位名称
      ,a.[SXDS]--实训导师
      ,a.[SFGMSXZRBX]--是否购买实习责任保险
      ,a.[BXFZFZ]--保险费支付者
      ,a.[SXXC]--实习薪酬
      ,a.[SFSDGSX]--是否是顶岗实习
      ,a.[XSHJXZM]--学生户籍性质码
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生信息数据表 学校名
      ,c.XH as c_XSXX_XH--学生信息数据表 学号
      ,c.XM as c_XSXX_XM--学生信息数据表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生信息数据表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生信息数据表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生信息数据表 曾用名
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,cb.MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生信息数据表 身份证件号
      ,c.XBM as c_XSXX_XBM--学生信息数据表 性别码
      ,cc.MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.XXM as c_XSXX_XXM--学生信息数据表 血型码
      ,cd.MC as c_XSXX_XXM_MC--血型代码表 名称
      ,cd.JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.CSRQ as c_XSXX_CSRQ--学生信息数据表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生信息数据表 出生地码
      ,ce.MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生信息数据表 籍贯
      ,c.MZM as c_XSXX_MZM--学生信息数据表 民族码
      ,cf.MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.HYZKM as c_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,cg.MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.XYZJM as c_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,ch.MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,ci.MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,ci.SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JKZKM as c_XSXX_JKZKM--学生信息数据表 健康状况码
      ,cj.MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,cj.SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,ck.MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ck.JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_XSXX_HKLBM--学生信息数据表 户口类别码
      ,cm.MC as c_XSXX_HKLBM_MC--户口类别代码 名称
      ,c.SFSLDRK as c_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,cn.MC as c_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,c.GJDQM as c_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.TC as c_XSXX_TC--学生信息数据表 特长
      ,c.XSLXDH as c_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,c.WLDZ as c_XSXX_WLDZ--学生信息数据表 网络地址
      ,c.JSTXH as c_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,c.DZXX as c_XSXX_DZXX--学生信息数据表 电子信箱
      ,c.ZP as c_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.SCHOOLID as d_XWSXJDXX_SCHOOLID--校外实习基地信息数据子类表 学校名
      ,d.QYBH as d_XWSXJDXX_QYBH--校外实习基地信息数据子类表 企业编号
      ,d.JDHZHTBH as d_XWSXJDXX_JDHZHTBH--校外实习基地信息数据子类表 基地合作合同编号
      ,d.JDHZHTMC as d_XWSXJDXX_JDHZHTMC--校外实习基地信息数据子类表 基地合作合同名称
      ,d.JDLBM as d_XWSXJDXX_JDLBM--校外实习基地信息数据子类表 基地类别码
      ,db.MC as d_XWSXJDXX_JDLBM_MC--实习基地类别代码 名称
      ,d.DWMC as d_XWSXJDXX_DWMC--校外实习基地信息数据子类表 单位名称
      ,d.QYXZQ as d_XWSXJDXX_QYXZQ--校外实习基地信息数据子类表 企业行政区
      ,dc.MC as d_XWSXJDXX_QYXZQ_MC--中华人民共和国行政区划代码 名称
      ,d.QYDZ as d_XWSXJDXX_QYDZ--校外实习基地信息数据子类表 企业地址
      ,d.QYXZ as d_XWSXJDXX_QYXZ--校外实习基地信息数据子类表 企业性质
      ,dd.MC as d_XWSXJDXX_QYXZ_MC--经济类型分类与代码 名称
      ,d.FRDB as d_XWSXJDXX_FRDB--校外实习基地信息数据子类表 法人代表
      ,d.QYLXR as d_XWSXJDXX_QYLXR--校外实习基地信息数据子类表 企业联系人
      ,d.QYYZBM as d_XWSXJDXX_QYYZBM--校外实习基地信息数据子类表 企业邮政编码
      ,d.QYLXDH as d_XWSXJDXX_QYLXDH--校外实习基地信息数据子类表 企业联系电话
      ,d.QYYYZZ as d_XWSXJDXX_QYYYZZ--校外实习基地信息数据子类表 企业营业执照
      ,d.QYLX as d_XWSXJDXX_QYLX--校外实习基地信息数据子类表 企业类型
      ,d.QYRS as d_XWSXJDXX_QYRS--校外实习基地信息数据子类表 企业人数
      ,d.QYZCZJ as d_XWSXJDXX_QYZCZJ--校外实习基地信息数据子类表 企业注册资金
      ,d.QYCZ as d_XWSXJDXX_QYCZ--校外实习基地信息数据子类表 企业传真
      ,d.QYFZR as d_XWSXJDXX_QYFZR--校外实习基地信息数据子类表 企业负责人
      ,d.FZRZW as d_XWSXJDXX_FZRZW--校外实习基地信息数据子类表 负责人职位
      ,d.FZRLXDH as d_XWSXJDXX_FZRLXDH--校外实习基地信息数据子类表 负责人联系电话
      ,d.QYYXDZ as d_XWSXJDXX_QYYXDZ--校外实习基地信息数据子类表 企业邮箱地址
      ,d.QYQQ as d_XWSXJDXX_QYQQ--校外实习基地信息数据子类表 企业QQ
      ,d.QYMSN as d_XWSXJDXX_QYMSN--校外实习基地信息数据子类表 企业MSN
      ,d.QYWZ as d_XWSXJDXX_QYWZ--校外实习基地信息数据子类表 企业网址
      ,d.QYJJ as d_XWSXJDXX_QYJJ--校外实习基地信息数据子类表 企业简介
      ,d.SHZT as d_XWSXJDXX_SHZT--校外实习基地信息数据子类表 审核状态
      ,e.SCHOOLID as e_SXGW_SCHOOLID--实习岗位表 学校ID
      ,e.QYID as e_SXGW_QYID--实习岗位表 企业ID
      ,e.GWMC as e_SXGW_GWMC--实习岗位表 岗位名称
      ,e.QYMC as e_SXGW_QYMC--实习岗位表 企业名称
      ,e.ZPKSSJ as e_SXGW_ZPKSSJ--实习岗位表 招聘开始时间
      ,e.ZPJSSJ as e_SXGW_ZPJSSJ--实习岗位表 招聘结束时间
      ,e.GZXS as e_SXGW_GZXS--实习岗位表 工作形式
      ,e.XBYQ as e_SXGW_XBYQ--实习岗位表 性别要求
      ,e.GWXC as e_SXGW_GWXC--实习岗位表 岗位薪酬
      ,e.WYYQ as e_SXGW_WYYQ--实习岗位表 外语要求
      ,e.GZDD as e_SXGW_GZDD--实习岗位表 工作地点
      ,e.JSJSP as e_SXGW_JSJSP--实习岗位表 计算机水平
      ,e.ZPRS as e_SXGW_ZPRS--实习岗位表 招聘人数
      ,e.XLYQ as e_SXGW_XLYQ--实习岗位表 学历要求
      ,e.ZYYQ as e_SXGW_ZYYQ--实习岗位表 专业要求
      ,e.NLYQ as e_SXGW_NLYQ--实习岗位表 年龄要求
      ,e.GWJJ as e_SXGW_GWJJ--实习岗位表 岗位简介
      ,e.JBQK as e_SXGW_JBQK--实习岗位表 基本情况
      ,e.GZJY as e_SXGW_GZJY--实习岗位表 工作经验
      ,e.SHZT as e_SXGW_SHZT--实习岗位表 审核状态
      ,e.GWZT as e_SXGW_GWZT--实习岗位表 岗位状态
      ,f.MC as f_SFBZ_MC--是否标志代码表 名称
      ,g.MC as g_SFBZ_MC--是否标志代码表 名称
      ,h.MC as h_HJXZ_MC--户籍性质代码 名称

FROM dbo.EDU_ZZJX_07_03_XSXWSXQK AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*学生信息ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS d ON a.QYID = d.ID /*企业表ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS e ON a.GWID = e.ID /*岗位表ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFGMSXZRBX = f.DM /*是否购买实习责任保险*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS g ON a.SFSDGSX = g.DM /*是否是顶岗实习*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_HJXZ AS h ON a.XSHJXZM = h.DM /*学生户籍性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS db ON d.JDLBM = db.DM /*基地类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.QYXZQ = dc.DM /*企业行政区*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS dd ON d.QYXZ = dd.DM /*企业性质*/
GO

--实习奖惩表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A11_SXJC_DISP]
AS
SELECT a.[ID]--奖惩信息ID
      ,a.[SCHOOLID]--学校ID
      ,a.[SXJHID]--实习计划ID
      ,a.[XSXXID]--学生信息ID
      ,a.[JCLX]--奖惩类型
      ,a.[JCRQ]--奖惩日期
      ,a.[CLJG]--处理结果
      ,a.[BZ]--备注
      ,a.[TJR]--添加人
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--学校实习计划表 学校ID
      ,c.JHBT as c_XXSXJH_JHBT--学校实习计划表 计划标题
      ,c.NJ as c_XXSXJH_NJ--学校实习计划表 年级
      ,c.BGXS as c_XXSXJH_BGXS--学校实习计划表 报告形式
      ,c.SFSX as c_XXSXJH_SFSX--学校实习计划表 计划是否生效
      ,cb.MC as c_XXSXJH_SFSX_MC--授课方式代码表 名称
      ,d.SCHOOLID as d_XSXX_SCHOOLID--学生信息数据表 学校名
      ,d.XH as d_XSXX_XH--学生信息数据表 学号
      ,d.XM as d_XSXX_XM--学生信息数据表 姓名
      ,d.YWXM as d_XSXX_YWXM--学生信息数据表 英文姓名
      ,d.XMPY as d_XSXX_XMPY--学生信息数据表 姓名拼音
      ,d.CYM as d_XSXX_CYM--学生信息数据表 曾用名
      ,d.SFZJLXM as d_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,db.MC as d_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,d.SFZJH as d_XSXX_SFZJH--学生信息数据表 身份证件号
      ,d.XBM as d_XSXX_XBM--学生信息数据表 性别码
      ,dc.MC as d_XSXX_XBM_MC--人的性别代码 名称
      ,d.XXM as d_XSXX_XXM--学生信息数据表 血型码
      ,dd.MC as d_XSXX_XXM_MC--血型代码表 名称
      ,dd.JC as d_XSXX_XXM_JC--血型代码表 简称
      ,d.CSRQ as d_XSXX_CSRQ--学生信息数据表 出生日期
      ,d.CSDM as d_XSXX_CSDM--学生信息数据表 出生地码
      ,de.MC as d_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,d.JG as d_XSXX_JG--学生信息数据表 籍贯
      ,d.MZM as d_XSXX_MZM--学生信息数据表 民族码
      ,df.MZMC as d_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,df.ZMDM as d_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,d.HYZKM as d_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,dg.MC as d_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,d.XYZJM as d_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,dh.MC as d_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,d.GATQWM as d_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,di.MC as d_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,di.SM as d_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,d.JKZKM as d_XSXX_JKZKM--学生信息数据表 健康状况码
      ,dj.MC as d_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,dj.SM as d_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,d.ZZMMM as d_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,dk.MC as d_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,dk.JC as d_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,d.HKSZDXZQHM as d_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,dl.MC as d_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,d.HKLBM as d_XSXX_HKLBM--学生信息数据表 户口类别码
      ,dm.MC as d_XSXX_HKLBM_MC--户口类别代码 名称
      ,d.SFSLDRK as d_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,dn.MC as d_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,d.GJDQM as d_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,do.GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,do.EZMDM as d_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,do.SZMDM as d_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,d.TC as d_XSXX_TC--学生信息数据表 特长
      ,d.XSLXDH as d_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,d.WLDZ as d_XSXX_WLDZ--学生信息数据表 网络地址
      ,d.JSTXH as d_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,d.DZXX as d_XSXX_DZXX--学生信息数据表 电子信箱
      ,d.ZP as d_XSXX_ZP--学生信息数据表 照片(路径)

FROM dbo.EDU_ZZJX_07_A11_SXJC AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*实习计划ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS d ON a.XSXXID = d.ID /*学生信息ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cb ON c.SFSX = cb.DM /*计划是否生效*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS db ON d.SFZJLXM = db.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS dc ON d.XBM = dc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dd ON d.XXM = dd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS de ON d.CSDM = de.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS df ON d.MZM = df.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZKM = dg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dh ON d.XYZJM = dh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS di ON d.GATQWM = di.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS dj ON d.JKZKM = dj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dk ON d.ZZMMM = dk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dl ON d.HKSZDXZQHM = dl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dm ON d.HKLBM = dm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dn ON d.SFSLDRK = dn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS do ON d.GJDQM = do.DM /*国籍/地区*/
GO

--实习鉴定表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A10_SXJD_DISP]
AS
SELECT a.[ID]--实习鉴定信息ID
      ,a.[SCHOOLID]--学校ID
      ,a.[SXJHID]--实习计划ID
      ,a.[XSXXID]--学生信息ID
      ,a.[JDNR]--鉴定内容
      ,a.[SXDWYJ]--实习单位意见
      ,a.[BJYJ]--班级意见
      ,a.[XXYJ]--学校意见
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--学校实习计划表 学校ID
      ,c.JHBT as c_XXSXJH_JHBT--学校实习计划表 计划标题
      ,c.NJ as c_XXSXJH_NJ--学校实习计划表 年级
      ,c.BGXS as c_XXSXJH_BGXS--学校实习计划表 报告形式
      ,c.SFSX as c_XXSXJH_SFSX--学校实习计划表 计划是否生效
      ,cb.MC as c_XXSXJH_SFSX_MC--授课方式代码表 名称
      ,d.SCHOOLID as d_XSXX_SCHOOLID--学生信息数据表 学校名
      ,d.XH as d_XSXX_XH--学生信息数据表 学号
      ,d.XM as d_XSXX_XM--学生信息数据表 姓名
      ,d.YWXM as d_XSXX_YWXM--学生信息数据表 英文姓名
      ,d.XMPY as d_XSXX_XMPY--学生信息数据表 姓名拼音
      ,d.CYM as d_XSXX_CYM--学生信息数据表 曾用名
      ,d.SFZJLXM as d_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,db.MC as d_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,d.SFZJH as d_XSXX_SFZJH--学生信息数据表 身份证件号
      ,d.XBM as d_XSXX_XBM--学生信息数据表 性别码
      ,dc.MC as d_XSXX_XBM_MC--人的性别代码 名称
      ,d.XXM as d_XSXX_XXM--学生信息数据表 血型码
      ,dd.MC as d_XSXX_XXM_MC--血型代码表 名称
      ,dd.JC as d_XSXX_XXM_JC--血型代码表 简称
      ,d.CSRQ as d_XSXX_CSRQ--学生信息数据表 出生日期
      ,d.CSDM as d_XSXX_CSDM--学生信息数据表 出生地码
      ,de.MC as d_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,d.JG as d_XSXX_JG--学生信息数据表 籍贯
      ,d.MZM as d_XSXX_MZM--学生信息数据表 民族码
      ,df.MZMC as d_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,df.ZMDM as d_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,d.HYZKM as d_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,dg.MC as d_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,d.XYZJM as d_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,dh.MC as d_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,d.GATQWM as d_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,di.MC as d_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,di.SM as d_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,d.JKZKM as d_XSXX_JKZKM--学生信息数据表 健康状况码
      ,dj.MC as d_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,dj.SM as d_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,d.ZZMMM as d_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,dk.MC as d_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,dk.JC as d_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,d.HKSZDXZQHM as d_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,dl.MC as d_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,d.HKLBM as d_XSXX_HKLBM--学生信息数据表 户口类别码
      ,dm.MC as d_XSXX_HKLBM_MC--户口类别代码 名称
      ,d.SFSLDRK as d_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,dn.MC as d_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,d.GJDQM as d_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,do.GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,do.EZMDM as d_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,do.SZMDM as d_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,d.TC as d_XSXX_TC--学生信息数据表 特长
      ,d.XSLXDH as d_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,d.WLDZ as d_XSXX_WLDZ--学生信息数据表 网络地址
      ,d.JSTXH as d_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,d.DZXX as d_XSXX_DZXX--学生信息数据表 电子信箱
      ,d.ZP as d_XSXX_ZP--学生信息数据表 照片(路径)

FROM dbo.EDU_ZZJX_07_A10_SXJD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*实习计划ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS d ON a.XSXXID = d.ID /*学生信息ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cb ON c.SFSX = cb.DM /*计划是否生效*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS db ON d.SFZJLXM = db.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS dc ON d.XBM = dc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dd ON d.XXM = dd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS de ON d.CSDM = de.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS df ON d.MZM = df.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZKM = dg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dh ON d.XYZJM = dh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS di ON d.GATQWM = di.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS dj ON d.JKZKM = dj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dk ON d.ZZMMM = dk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dl ON d.HKSZDXZQHM = dl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dm ON d.HKLBM = dm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dn ON d.SFSLDRK = dn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS do ON d.GJDQM = do.DM /*国籍/地区*/
GO

--实习日志表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A09_SXRZ_DISP]
AS
SELECT a.[ID]--实习日志ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XSXXID]--学生信息ID
      ,a.[SXJHID]--实习计划ID
      ,a.[SXJDID]--实习阶段ID
      ,a.[SXZYID]--实习周/月表ID
      ,a.[RZBT]--日志标题
      ,a.[NR]--内容
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生信息数据表 学校名
      ,c.XH as c_XSXX_XH--学生信息数据表 学号
      ,c.XM as c_XSXX_XM--学生信息数据表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生信息数据表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生信息数据表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生信息数据表 曾用名
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,cb.MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生信息数据表 身份证件号
      ,c.XBM as c_XSXX_XBM--学生信息数据表 性别码
      ,cc.MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.XXM as c_XSXX_XXM--学生信息数据表 血型码
      ,cd.MC as c_XSXX_XXM_MC--血型代码表 名称
      ,cd.JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.CSRQ as c_XSXX_CSRQ--学生信息数据表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生信息数据表 出生地码
      ,ce.MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生信息数据表 籍贯
      ,c.MZM as c_XSXX_MZM--学生信息数据表 民族码
      ,cf.MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.HYZKM as c_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,cg.MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.XYZJM as c_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,ch.MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,ci.MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,ci.SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JKZKM as c_XSXX_JKZKM--学生信息数据表 健康状况码
      ,cj.MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,cj.SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,ck.MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ck.JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_XSXX_HKLBM--学生信息数据表 户口类别码
      ,cm.MC as c_XSXX_HKLBM_MC--户口类别代码 名称
      ,c.SFSLDRK as c_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,cn.MC as c_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,c.GJDQM as c_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.TC as c_XSXX_TC--学生信息数据表 特长
      ,c.XSLXDH as c_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,c.WLDZ as c_XSXX_WLDZ--学生信息数据表 网络地址
      ,c.JSTXH as c_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,c.DZXX as c_XSXX_DZXX--学生信息数据表 电子信箱
      ,c.ZP as c_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.SCHOOLID as d_XXSXJH_SCHOOLID--学校实习计划表 学校ID
      ,d.JHBT as d_XXSXJH_JHBT--学校实习计划表 计划标题
      ,d.NJ as d_XXSXJH_NJ--学校实习计划表 年级
      ,d.BGXS as d_XXSXJH_BGXS--学校实习计划表 报告形式
      ,d.SFSX as d_XXSXJH_SFSX--学校实习计划表 计划是否生效
      ,db.MC as d_XXSXJH_SFSX_MC--授课方式代码表 名称
      ,e.SCHOOLID as e_XXSXJD_SCHOOLID--学校实习阶段表 学校ID
      ,e.SXJHID as e_XXSXJD_SXJHID--学校实习阶段表 实习计划ID
      ,e.JDM as e_XXSXJD_JDM--学校实习阶段表 阶段名
      ,e.JDKSSJ as e_XXSXJD_JDKSSJ--学校实习阶段表 阶段开始时间
      ,e.JDJSSJ as e_XXSXJD_JDJSSJ--学校实习阶段表 阶段结束时间
      ,f.SCHOOLID as f_XXSXZY_SCHOOLID--学校实习周/月表 学校ID
      ,f.SXJHID as f_XXSXZY_SXJHID--学校实习周/月表 实习计划ID
      ,f.SXJDID as f_XXSXZY_SXJDID--学校实习周/月表 实习阶段ID
      ,f.MC as f_XXSXZY_MC--学校实习周/月表 名称
      ,f.KSSJ as f_XXSXZY_KSSJ--学校实习周/月表 开始时间
      ,f.JSSJ as f_XXSXZY_JSSJ--学校实习周/月表 结束时间
      ,f.LX as f_XXSXZY_LX--学校实习周/月表 类型

FROM dbo.EDU_ZZJX_07_A09_SXRZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*学生信息ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS d ON a.SXJHID = d.ID /*实习计划ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A02_XXSXJD AS e ON a.SXJDID = e.ID /*实习阶段ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A03_XXSXZY AS f ON a.SXZYID = f.ID /*实习周/月表ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFSX = db.DM /*计划是否生效*/
GO

--实习投诉表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A08_SXTS_DISP]
AS
SELECT a.[ID]--实习投诉ID
      ,a.[SCHOOLID]--学校ID
      ,a.[QYID]--企业ID
      ,a.[SXJHID]--实习计划ID
      ,a.[XSXXID]--投诉学生ID
      ,a.[TSSJ]--投诉时间
      ,a.[TSYY]--投诉原因
      ,a.[TSJG]--投诉结果
      ,a.[QYJY]--企业建议
      ,c.SCHOOLID as c_XWSXJDXX_SCHOOLID--校外实习基地信息数据子类表 学校名
      ,c.QYBH as c_XWSXJDXX_QYBH--校外实习基地信息数据子类表 企业编号
      ,c.JDHZHTBH as c_XWSXJDXX_JDHZHTBH--校外实习基地信息数据子类表 基地合作合同编号
      ,c.JDHZHTMC as c_XWSXJDXX_JDHZHTMC--校外实习基地信息数据子类表 基地合作合同名称
      ,c.JDLBM as c_XWSXJDXX_JDLBM--校外实习基地信息数据子类表 基地类别码
      ,cb.MC as c_XWSXJDXX_JDLBM_MC--实习基地类别代码 名称
      ,c.DWMC as c_XWSXJDXX_DWMC--校外实习基地信息数据子类表 单位名称
      ,c.QYXZQ as c_XWSXJDXX_QYXZQ--校外实习基地信息数据子类表 企业行政区
      ,cc.MC as c_XWSXJDXX_QYXZQ_MC--中华人民共和国行政区划代码 名称
      ,c.QYDZ as c_XWSXJDXX_QYDZ--校外实习基地信息数据子类表 企业地址
      ,c.QYXZ as c_XWSXJDXX_QYXZ--校外实习基地信息数据子类表 企业性质
      ,cd.MC as c_XWSXJDXX_QYXZ_MC--经济类型分类与代码 名称
      ,c.FRDB as c_XWSXJDXX_FRDB--校外实习基地信息数据子类表 法人代表
      ,c.QYLXR as c_XWSXJDXX_QYLXR--校外实习基地信息数据子类表 企业联系人
      ,c.QYYZBM as c_XWSXJDXX_QYYZBM--校外实习基地信息数据子类表 企业邮政编码
      ,c.QYLXDH as c_XWSXJDXX_QYLXDH--校外实习基地信息数据子类表 企业联系电话
      ,c.QYYYZZ as c_XWSXJDXX_QYYYZZ--校外实习基地信息数据子类表 企业营业执照
      ,c.QYLX as c_XWSXJDXX_QYLX--校外实习基地信息数据子类表 企业类型
      ,c.QYRS as c_XWSXJDXX_QYRS--校外实习基地信息数据子类表 企业人数
      ,c.QYZCZJ as c_XWSXJDXX_QYZCZJ--校外实习基地信息数据子类表 企业注册资金
      ,c.QYCZ as c_XWSXJDXX_QYCZ--校外实习基地信息数据子类表 企业传真
      ,c.QYFZR as c_XWSXJDXX_QYFZR--校外实习基地信息数据子类表 企业负责人
      ,c.FZRZW as c_XWSXJDXX_FZRZW--校外实习基地信息数据子类表 负责人职位
      ,c.FZRLXDH as c_XWSXJDXX_FZRLXDH--校外实习基地信息数据子类表 负责人联系电话
      ,c.QYYXDZ as c_XWSXJDXX_QYYXDZ--校外实习基地信息数据子类表 企业邮箱地址
      ,c.QYQQ as c_XWSXJDXX_QYQQ--校外实习基地信息数据子类表 企业QQ
      ,c.QYMSN as c_XWSXJDXX_QYMSN--校外实习基地信息数据子类表 企业MSN
      ,c.QYWZ as c_XWSXJDXX_QYWZ--校外实习基地信息数据子类表 企业网址
      ,c.QYJJ as c_XWSXJDXX_QYJJ--校外实习基地信息数据子类表 企业简介
      ,c.SHZT as c_XWSXJDXX_SHZT--校外实习基地信息数据子类表 审核状态
      ,d.SCHOOLID as d_XXSXJH_SCHOOLID--学校实习计划表 学校ID
      ,d.JHBT as d_XXSXJH_JHBT--学校实习计划表 计划标题
      ,d.NJ as d_XXSXJH_NJ--学校实习计划表 年级
      ,d.BGXS as d_XXSXJH_BGXS--学校实习计划表 报告形式
      ,d.SFSX as d_XXSXJH_SFSX--学校实习计划表 计划是否生效
      ,db.MC as d_XXSXJH_SFSX_MC--授课方式代码表 名称
      ,e.SCHOOLID as e_XSXX_SCHOOLID--学生信息数据表 学校名
      ,e.XH as e_XSXX_XH--学生信息数据表 学号
      ,e.XM as e_XSXX_XM--学生信息数据表 姓名
      ,e.YWXM as e_XSXX_YWXM--学生信息数据表 英文姓名
      ,e.XMPY as e_XSXX_XMPY--学生信息数据表 姓名拼音
      ,e.CYM as e_XSXX_CYM--学生信息数据表 曾用名
      ,e.SFZJLXM as e_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,eb.MC as e_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,e.SFZJH as e_XSXX_SFZJH--学生信息数据表 身份证件号
      ,e.XBM as e_XSXX_XBM--学生信息数据表 性别码
      ,ec.MC as e_XSXX_XBM_MC--人的性别代码 名称
      ,e.XXM as e_XSXX_XXM--学生信息数据表 血型码
      ,ed.MC as e_XSXX_XXM_MC--血型代码表 名称
      ,ed.JC as e_XSXX_XXM_JC--血型代码表 简称
      ,e.CSRQ as e_XSXX_CSRQ--学生信息数据表 出生日期
      ,e.CSDM as e_XSXX_CSDM--学生信息数据表 出生地码
      ,ee.MC as e_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,e.JG as e_XSXX_JG--学生信息数据表 籍贯
      ,e.MZM as e_XSXX_MZM--学生信息数据表 民族码
      ,ef.MZMC as e_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,ef.ZMDM as e_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,e.HYZKM as e_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,eg.MC as e_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,e.XYZJM as e_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,eh.MC as e_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,e.GATQWM as e_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,ei.MC as e_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,ei.SM as e_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,e.JKZKM as e_XSXX_JKZKM--学生信息数据表 健康状况码
      ,ej.MC as e_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,ej.SM as e_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,e.ZZMMM as e_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,ek.MC as e_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ek.JC as e_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,e.HKSZDXZQHM as e_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,el.MC as e_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,e.HKLBM as e_XSXX_HKLBM--学生信息数据表 户口类别码
      ,em.MC as e_XSXX_HKLBM_MC--户口类别代码 名称
      ,e.SFSLDRK as e_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,en.MC as e_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,e.GJDQM as e_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,eo.GJDQMCJC as e_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,eo.EZMDM as e_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,eo.SZMDM as e_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,e.TC as e_XSXX_TC--学生信息数据表 特长
      ,e.XSLXDH as e_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,e.WLDZ as e_XSXX_WLDZ--学生信息数据表 网络地址
      ,e.JSTXH as e_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,e.DZXX as e_XSXX_DZXX--学生信息数据表 电子信箱
      ,e.ZP as e_XSXX_ZP--学生信息数据表 照片(路径)

FROM dbo.EDU_ZZJX_07_A08_SXTS AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS c ON a.QYID = c.ID /*企业ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS d ON a.SXJHID = d.ID /*实习计划ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS e ON a.XSXXID = e.ID /*投诉学生ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS cb ON c.JDLBM = cb.DM /*基地类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.QYXZQ = cc.DM /*企业行政区*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS cd ON c.QYXZ = cd.DM /*企业性质*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFSX = db.DM /*计划是否生效*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS eb ON e.SFZJLXM = eb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS ec ON e.XBM = ec.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ed ON e.XXM = ed.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ee ON e.CSDM = ee.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ef ON e.MZM = ef.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS eg ON e.HYZKM = eg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS eh ON e.XYZJM = eh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ei ON e.GATQWM = ei.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ej ON e.JKZKM = ej.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ek ON e.ZZMMM = ek.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS el ON e.HKSZDXZQHM = el.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS em ON e.HKLBM = em.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS en ON e.SFSLDRK = en.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS eo ON e.GJDQM = eo.DM /*国籍/地区*/
GO

--实习转岗表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A07_SXZG_DISP]
AS
SELECT a.[ID]--实习转岗ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XSXXID]--申请学生ID
      ,a.[ZCGW]--转出岗位ID
      ,a.[ZCGWQY]--转出岗位企业ID
      ,a.[ZRGW]--转入岗位ID
      ,a.[ZRGWQY]--转入岗位企业ID
      ,a.[BZRSH]--班主任审核
      ,a.[ZCQYSH]--转出企业审核
      ,a.[ZRQYSH]--转入企业审核
      ,a.[JYCSH]--就业处审核
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生信息数据表 学校名
      ,c.XH as c_XSXX_XH--学生信息数据表 学号
      ,c.XM as c_XSXX_XM--学生信息数据表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生信息数据表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生信息数据表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生信息数据表 曾用名
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,cb.MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生信息数据表 身份证件号
      ,c.XBM as c_XSXX_XBM--学生信息数据表 性别码
      ,cc.MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.XXM as c_XSXX_XXM--学生信息数据表 血型码
      ,cd.MC as c_XSXX_XXM_MC--血型代码表 名称
      ,cd.JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.CSRQ as c_XSXX_CSRQ--学生信息数据表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生信息数据表 出生地码
      ,ce.MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生信息数据表 籍贯
      ,c.MZM as c_XSXX_MZM--学生信息数据表 民族码
      ,cf.MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.HYZKM as c_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,cg.MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.XYZJM as c_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,ch.MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,ci.MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,ci.SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JKZKM as c_XSXX_JKZKM--学生信息数据表 健康状况码
      ,cj.MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,cj.SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,ck.MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ck.JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_XSXX_HKLBM--学生信息数据表 户口类别码
      ,cm.MC as c_XSXX_HKLBM_MC--户口类别代码 名称
      ,c.SFSLDRK as c_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,cn.MC as c_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,c.GJDQM as c_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.TC as c_XSXX_TC--学生信息数据表 特长
      ,c.XSLXDH as c_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,c.WLDZ as c_XSXX_WLDZ--学生信息数据表 网络地址
      ,c.JSTXH as c_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,c.DZXX as c_XSXX_DZXX--学生信息数据表 电子信箱
      ,c.ZP as c_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.SCHOOLID as d_SXGW_SCHOOLID--实习岗位表 学校ID
      ,d.QYID as d_SXGW_QYID--实习岗位表 企业ID
      ,d.GWMC as d_SXGW_GWMC--实习岗位表 岗位名称
      ,d.QYMC as d_SXGW_QYMC--实习岗位表 企业名称
      ,d.ZPKSSJ as d_SXGW_ZPKSSJ--实习岗位表 招聘开始时间
      ,d.ZPJSSJ as d_SXGW_ZPJSSJ--实习岗位表 招聘结束时间
      ,d.GZXS as d_SXGW_GZXS--实习岗位表 工作形式
      ,d.XBYQ as d_SXGW_XBYQ--实习岗位表 性别要求
      ,d.GWXC as d_SXGW_GWXC--实习岗位表 岗位薪酬
      ,d.WYYQ as d_SXGW_WYYQ--实习岗位表 外语要求
      ,d.GZDD as d_SXGW_GZDD--实习岗位表 工作地点
      ,d.JSJSP as d_SXGW_JSJSP--实习岗位表 计算机水平
      ,d.ZPRS as d_SXGW_ZPRS--实习岗位表 招聘人数
      ,d.XLYQ as d_SXGW_XLYQ--实习岗位表 学历要求
      ,d.ZYYQ as d_SXGW_ZYYQ--实习岗位表 专业要求
      ,d.NLYQ as d_SXGW_NLYQ--实习岗位表 年龄要求
      ,d.GWJJ as d_SXGW_GWJJ--实习岗位表 岗位简介
      ,d.JBQK as d_SXGW_JBQK--实习岗位表 基本情况
      ,d.GZJY as d_SXGW_GZJY--实习岗位表 工作经验
      ,d.SHZT as d_SXGW_SHZT--实习岗位表 审核状态
      ,d.GWZT as d_SXGW_GWZT--实习岗位表 岗位状态
      ,e.SCHOOLID as e_XWSXJDXX_SCHOOLID--校外实习基地信息数据子类表 学校名
      ,e.QYBH as e_XWSXJDXX_QYBH--校外实习基地信息数据子类表 企业编号
      ,e.JDHZHTBH as e_XWSXJDXX_JDHZHTBH--校外实习基地信息数据子类表 基地合作合同编号
      ,e.JDHZHTMC as e_XWSXJDXX_JDHZHTMC--校外实习基地信息数据子类表 基地合作合同名称
      ,e.JDLBM as e_XWSXJDXX_JDLBM--校外实习基地信息数据子类表 基地类别码
      ,eb.MC as e_XWSXJDXX_JDLBM_MC--实习基地类别代码 名称
      ,e.DWMC as e_XWSXJDXX_DWMC--校外实习基地信息数据子类表 单位名称
      ,e.QYXZQ as e_XWSXJDXX_QYXZQ--校外实习基地信息数据子类表 企业行政区
      ,ec.MC as e_XWSXJDXX_QYXZQ_MC--中华人民共和国行政区划代码 名称
      ,e.QYDZ as e_XWSXJDXX_QYDZ--校外实习基地信息数据子类表 企业地址
      ,e.QYXZ as e_XWSXJDXX_QYXZ--校外实习基地信息数据子类表 企业性质
      ,ed.MC as e_XWSXJDXX_QYXZ_MC--经济类型分类与代码 名称
      ,e.FRDB as e_XWSXJDXX_FRDB--校外实习基地信息数据子类表 法人代表
      ,e.QYLXR as e_XWSXJDXX_QYLXR--校外实习基地信息数据子类表 企业联系人
      ,e.QYYZBM as e_XWSXJDXX_QYYZBM--校外实习基地信息数据子类表 企业邮政编码
      ,e.QYLXDH as e_XWSXJDXX_QYLXDH--校外实习基地信息数据子类表 企业联系电话
      ,e.QYYYZZ as e_XWSXJDXX_QYYYZZ--校外实习基地信息数据子类表 企业营业执照
      ,e.QYLX as e_XWSXJDXX_QYLX--校外实习基地信息数据子类表 企业类型
      ,e.QYRS as e_XWSXJDXX_QYRS--校外实习基地信息数据子类表 企业人数
      ,e.QYZCZJ as e_XWSXJDXX_QYZCZJ--校外实习基地信息数据子类表 企业注册资金
      ,e.QYCZ as e_XWSXJDXX_QYCZ--校外实习基地信息数据子类表 企业传真
      ,e.QYFZR as e_XWSXJDXX_QYFZR--校外实习基地信息数据子类表 企业负责人
      ,e.FZRZW as e_XWSXJDXX_FZRZW--校外实习基地信息数据子类表 负责人职位
      ,e.FZRLXDH as e_XWSXJDXX_FZRLXDH--校外实习基地信息数据子类表 负责人联系电话
      ,e.QYYXDZ as e_XWSXJDXX_QYYXDZ--校外实习基地信息数据子类表 企业邮箱地址
      ,e.QYQQ as e_XWSXJDXX_QYQQ--校外实习基地信息数据子类表 企业QQ
      ,e.QYMSN as e_XWSXJDXX_QYMSN--校外实习基地信息数据子类表 企业MSN
      ,e.QYWZ as e_XWSXJDXX_QYWZ--校外实习基地信息数据子类表 企业网址
      ,e.QYJJ as e_XWSXJDXX_QYJJ--校外实习基地信息数据子类表 企业简介
      ,e.SHZT as e_XWSXJDXX_SHZT--校外实习基地信息数据子类表 审核状态
      ,f.SCHOOLID as f_SXGW_SCHOOLID--实习岗位表 学校ID
      ,f.QYID as f_SXGW_QYID--实习岗位表 企业ID
      ,f.GWMC as f_SXGW_GWMC--实习岗位表 岗位名称
      ,f.QYMC as f_SXGW_QYMC--实习岗位表 企业名称
      ,f.ZPKSSJ as f_SXGW_ZPKSSJ--实习岗位表 招聘开始时间
      ,f.ZPJSSJ as f_SXGW_ZPJSSJ--实习岗位表 招聘结束时间
      ,f.GZXS as f_SXGW_GZXS--实习岗位表 工作形式
      ,f.XBYQ as f_SXGW_XBYQ--实习岗位表 性别要求
      ,f.GWXC as f_SXGW_GWXC--实习岗位表 岗位薪酬
      ,f.WYYQ as f_SXGW_WYYQ--实习岗位表 外语要求
      ,f.GZDD as f_SXGW_GZDD--实习岗位表 工作地点
      ,f.JSJSP as f_SXGW_JSJSP--实习岗位表 计算机水平
      ,f.ZPRS as f_SXGW_ZPRS--实习岗位表 招聘人数
      ,f.XLYQ as f_SXGW_XLYQ--实习岗位表 学历要求
      ,f.ZYYQ as f_SXGW_ZYYQ--实习岗位表 专业要求
      ,f.NLYQ as f_SXGW_NLYQ--实习岗位表 年龄要求
      ,f.GWJJ as f_SXGW_GWJJ--实习岗位表 岗位简介
      ,f.JBQK as f_SXGW_JBQK--实习岗位表 基本情况
      ,f.GZJY as f_SXGW_GZJY--实习岗位表 工作经验
      ,f.SHZT as f_SXGW_SHZT--实习岗位表 审核状态
      ,f.GWZT as f_SXGW_GWZT--实习岗位表 岗位状态
      ,g.SCHOOLID as g_XWSXJDXX_SCHOOLID--校外实习基地信息数据子类表 学校名
      ,g.QYBH as g_XWSXJDXX_QYBH--校外实习基地信息数据子类表 企业编号
      ,g.JDHZHTBH as g_XWSXJDXX_JDHZHTBH--校外实习基地信息数据子类表 基地合作合同编号
      ,g.JDHZHTMC as g_XWSXJDXX_JDHZHTMC--校外实习基地信息数据子类表 基地合作合同名称
      ,g.JDLBM as g_XWSXJDXX_JDLBM--校外实习基地信息数据子类表 基地类别码
      ,gb.MC as g_XWSXJDXX_JDLBM_MC--实习基地类别代码 名称
      ,g.DWMC as g_XWSXJDXX_DWMC--校外实习基地信息数据子类表 单位名称
      ,g.QYXZQ as g_XWSXJDXX_QYXZQ--校外实习基地信息数据子类表 企业行政区
      ,gc.MC as g_XWSXJDXX_QYXZQ_MC--中华人民共和国行政区划代码 名称
      ,g.QYDZ as g_XWSXJDXX_QYDZ--校外实习基地信息数据子类表 企业地址
      ,g.QYXZ as g_XWSXJDXX_QYXZ--校外实习基地信息数据子类表 企业性质
      ,gd.MC as g_XWSXJDXX_QYXZ_MC--经济类型分类与代码 名称
      ,g.FRDB as g_XWSXJDXX_FRDB--校外实习基地信息数据子类表 法人代表
      ,g.QYLXR as g_XWSXJDXX_QYLXR--校外实习基地信息数据子类表 企业联系人
      ,g.QYYZBM as g_XWSXJDXX_QYYZBM--校外实习基地信息数据子类表 企业邮政编码
      ,g.QYLXDH as g_XWSXJDXX_QYLXDH--校外实习基地信息数据子类表 企业联系电话
      ,g.QYYYZZ as g_XWSXJDXX_QYYYZZ--校外实习基地信息数据子类表 企业营业执照
      ,g.QYLX as g_XWSXJDXX_QYLX--校外实习基地信息数据子类表 企业类型
      ,g.QYRS as g_XWSXJDXX_QYRS--校外实习基地信息数据子类表 企业人数
      ,g.QYZCZJ as g_XWSXJDXX_QYZCZJ--校外实习基地信息数据子类表 企业注册资金
      ,g.QYCZ as g_XWSXJDXX_QYCZ--校外实习基地信息数据子类表 企业传真
      ,g.QYFZR as g_XWSXJDXX_QYFZR--校外实习基地信息数据子类表 企业负责人
      ,g.FZRZW as g_XWSXJDXX_FZRZW--校外实习基地信息数据子类表 负责人职位
      ,g.FZRLXDH as g_XWSXJDXX_FZRLXDH--校外实习基地信息数据子类表 负责人联系电话
      ,g.QYYXDZ as g_XWSXJDXX_QYYXDZ--校外实习基地信息数据子类表 企业邮箱地址
      ,g.QYQQ as g_XWSXJDXX_QYQQ--校外实习基地信息数据子类表 企业QQ
      ,g.QYMSN as g_XWSXJDXX_QYMSN--校外实习基地信息数据子类表 企业MSN
      ,g.QYWZ as g_XWSXJDXX_QYWZ--校外实习基地信息数据子类表 企业网址
      ,g.QYJJ as g_XWSXJDXX_QYJJ--校外实习基地信息数据子类表 企业简介
      ,g.SHZT as g_XWSXJDXX_SHZT--校外实习基地信息数据子类表 审核状态

FROM dbo.EDU_ZZJX_07_A07_SXZG AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*申请学生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS d ON a.ZCGW = d.ID /*转出岗位ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS e ON a.ZCGWQY = e.ID /*转出岗位企业ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS f ON a.ZRGW = f.ID /*转入岗位ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS g ON a.ZRGWQY = g.ID /*转入岗位企业ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS eb ON e.JDLBM = eb.DM /*基地类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ec ON e.QYXZQ = ec.DM /*企业行政区*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS ed ON e.QYXZ = ed.DM /*企业性质*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS gb ON g.JDLBM = gb.DM /*基地类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gc ON g.QYXZQ = gc.DM /*企业行政区*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS gd ON g.QYXZ = gd.DM /*企业性质*/
GO

--校企互动表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A06_XQHD_DISP]
AS
SELECT a.[ID]--校企互动信息ID
      ,a.[SCHOOLID]--学校ID
      ,a.[QYID]--企业ID
      ,a.[XXJY]--企业对学校工作建议
      ,a.[XSJY]--企业对学生职业技能建议
      ,a.[GLJY]--实习生管理工作的建议
      ,a.[QTJY]--其他建议
      ,a.[FKNR]--反馈内容
      ,a.[FKSJ]--反馈时间
      ,c.SCHOOLID as c_XWSXJDXX_SCHOOLID--校外实习基地信息数据子类表 学校名
      ,c.QYBH as c_XWSXJDXX_QYBH--校外实习基地信息数据子类表 企业编号
      ,c.JDHZHTBH as c_XWSXJDXX_JDHZHTBH--校外实习基地信息数据子类表 基地合作合同编号
      ,c.JDHZHTMC as c_XWSXJDXX_JDHZHTMC--校外实习基地信息数据子类表 基地合作合同名称
      ,c.JDLBM as c_XWSXJDXX_JDLBM--校外实习基地信息数据子类表 基地类别码
      ,cb.MC as c_XWSXJDXX_JDLBM_MC--实习基地类别代码 名称
      ,c.DWMC as c_XWSXJDXX_DWMC--校外实习基地信息数据子类表 单位名称
      ,c.QYXZQ as c_XWSXJDXX_QYXZQ--校外实习基地信息数据子类表 企业行政区
      ,cc.MC as c_XWSXJDXX_QYXZQ_MC--中华人民共和国行政区划代码 名称
      ,c.QYDZ as c_XWSXJDXX_QYDZ--校外实习基地信息数据子类表 企业地址
      ,c.QYXZ as c_XWSXJDXX_QYXZ--校外实习基地信息数据子类表 企业性质
      ,cd.MC as c_XWSXJDXX_QYXZ_MC--经济类型分类与代码 名称
      ,c.FRDB as c_XWSXJDXX_FRDB--校外实习基地信息数据子类表 法人代表
      ,c.QYLXR as c_XWSXJDXX_QYLXR--校外实习基地信息数据子类表 企业联系人
      ,c.QYYZBM as c_XWSXJDXX_QYYZBM--校外实习基地信息数据子类表 企业邮政编码
      ,c.QYLXDH as c_XWSXJDXX_QYLXDH--校外实习基地信息数据子类表 企业联系电话
      ,c.QYYYZZ as c_XWSXJDXX_QYYYZZ--校外实习基地信息数据子类表 企业营业执照
      ,c.QYLX as c_XWSXJDXX_QYLX--校外实习基地信息数据子类表 企业类型
      ,c.QYRS as c_XWSXJDXX_QYRS--校外实习基地信息数据子类表 企业人数
      ,c.QYZCZJ as c_XWSXJDXX_QYZCZJ--校外实习基地信息数据子类表 企业注册资金
      ,c.QYCZ as c_XWSXJDXX_QYCZ--校外实习基地信息数据子类表 企业传真
      ,c.QYFZR as c_XWSXJDXX_QYFZR--校外实习基地信息数据子类表 企业负责人
      ,c.FZRZW as c_XWSXJDXX_FZRZW--校外实习基地信息数据子类表 负责人职位
      ,c.FZRLXDH as c_XWSXJDXX_FZRLXDH--校外实习基地信息数据子类表 负责人联系电话
      ,c.QYYXDZ as c_XWSXJDXX_QYYXDZ--校外实习基地信息数据子类表 企业邮箱地址
      ,c.QYQQ as c_XWSXJDXX_QYQQ--校外实习基地信息数据子类表 企业QQ
      ,c.QYMSN as c_XWSXJDXX_QYMSN--校外实习基地信息数据子类表 企业MSN
      ,c.QYWZ as c_XWSXJDXX_QYWZ--校外实习基地信息数据子类表 企业网址
      ,c.QYJJ as c_XWSXJDXX_QYJJ--校外实习基地信息数据子类表 企业简介
      ,c.SHZT as c_XWSXJDXX_SHZT--校外实习基地信息数据子类表 审核状态

FROM dbo.EDU_ZZJX_07_A06_XQHD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS c ON a.QYID = c.ID /*企业ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS cb ON c.JDLBM = cb.DM /*基地类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.QYXZQ = cc.DM /*企业行政区*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS cd ON c.QYXZ = cd.DM /*企业性质*/
GO

--学生应聘表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A05_XSYP_DISP]
AS
SELECT a.[ID]--学生应聘信息ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XSXXID]--学生信息ID
      ,a.[QYID]--企业ID
      ,a.[GWID]--实习岗位ID
      ,a.[XXSH]--学校审核
      ,a.[QYSH]--企业审核
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生信息数据表 学校名
      ,c.XH as c_XSXX_XH--学生信息数据表 学号
      ,c.XM as c_XSXX_XM--学生信息数据表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生信息数据表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生信息数据表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生信息数据表 曾用名
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,cb.MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生信息数据表 身份证件号
      ,c.XBM as c_XSXX_XBM--学生信息数据表 性别码
      ,cc.MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.XXM as c_XSXX_XXM--学生信息数据表 血型码
      ,cd.MC as c_XSXX_XXM_MC--血型代码表 名称
      ,cd.JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.CSRQ as c_XSXX_CSRQ--学生信息数据表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生信息数据表 出生地码
      ,ce.MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生信息数据表 籍贯
      ,c.MZM as c_XSXX_MZM--学生信息数据表 民族码
      ,cf.MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.HYZKM as c_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,cg.MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.XYZJM as c_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,ch.MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,ci.MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,ci.SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JKZKM as c_XSXX_JKZKM--学生信息数据表 健康状况码
      ,cj.MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,cj.SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,ck.MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ck.JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_XSXX_HKLBM--学生信息数据表 户口类别码
      ,cm.MC as c_XSXX_HKLBM_MC--户口类别代码 名称
      ,c.SFSLDRK as c_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,cn.MC as c_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,c.GJDQM as c_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.TC as c_XSXX_TC--学生信息数据表 特长
      ,c.XSLXDH as c_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,c.WLDZ as c_XSXX_WLDZ--学生信息数据表 网络地址
      ,c.JSTXH as c_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,c.DZXX as c_XSXX_DZXX--学生信息数据表 电子信箱
      ,c.ZP as c_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.SCHOOLID as d_XWSXJDXX_SCHOOLID--校外实习基地信息数据子类表 学校名
      ,d.QYBH as d_XWSXJDXX_QYBH--校外实习基地信息数据子类表 企业编号
      ,d.JDHZHTBH as d_XWSXJDXX_JDHZHTBH--校外实习基地信息数据子类表 基地合作合同编号
      ,d.JDHZHTMC as d_XWSXJDXX_JDHZHTMC--校外实习基地信息数据子类表 基地合作合同名称
      ,d.JDLBM as d_XWSXJDXX_JDLBM--校外实习基地信息数据子类表 基地类别码
      ,db.MC as d_XWSXJDXX_JDLBM_MC--实习基地类别代码 名称
      ,d.DWMC as d_XWSXJDXX_DWMC--校外实习基地信息数据子类表 单位名称
      ,d.QYXZQ as d_XWSXJDXX_QYXZQ--校外实习基地信息数据子类表 企业行政区
      ,dc.MC as d_XWSXJDXX_QYXZQ_MC--中华人民共和国行政区划代码 名称
      ,d.QYDZ as d_XWSXJDXX_QYDZ--校外实习基地信息数据子类表 企业地址
      ,d.QYXZ as d_XWSXJDXX_QYXZ--校外实习基地信息数据子类表 企业性质
      ,dd.MC as d_XWSXJDXX_QYXZ_MC--经济类型分类与代码 名称
      ,d.FRDB as d_XWSXJDXX_FRDB--校外实习基地信息数据子类表 法人代表
      ,d.QYLXR as d_XWSXJDXX_QYLXR--校外实习基地信息数据子类表 企业联系人
      ,d.QYYZBM as d_XWSXJDXX_QYYZBM--校外实习基地信息数据子类表 企业邮政编码
      ,d.QYLXDH as d_XWSXJDXX_QYLXDH--校外实习基地信息数据子类表 企业联系电话
      ,d.QYYYZZ as d_XWSXJDXX_QYYYZZ--校外实习基地信息数据子类表 企业营业执照
      ,d.QYLX as d_XWSXJDXX_QYLX--校外实习基地信息数据子类表 企业类型
      ,d.QYRS as d_XWSXJDXX_QYRS--校外实习基地信息数据子类表 企业人数
      ,d.QYZCZJ as d_XWSXJDXX_QYZCZJ--校外实习基地信息数据子类表 企业注册资金
      ,d.QYCZ as d_XWSXJDXX_QYCZ--校外实习基地信息数据子类表 企业传真
      ,d.QYFZR as d_XWSXJDXX_QYFZR--校外实习基地信息数据子类表 企业负责人
      ,d.FZRZW as d_XWSXJDXX_FZRZW--校外实习基地信息数据子类表 负责人职位
      ,d.FZRLXDH as d_XWSXJDXX_FZRLXDH--校外实习基地信息数据子类表 负责人联系电话
      ,d.QYYXDZ as d_XWSXJDXX_QYYXDZ--校外实习基地信息数据子类表 企业邮箱地址
      ,d.QYQQ as d_XWSXJDXX_QYQQ--校外实习基地信息数据子类表 企业QQ
      ,d.QYMSN as d_XWSXJDXX_QYMSN--校外实习基地信息数据子类表 企业MSN
      ,d.QYWZ as d_XWSXJDXX_QYWZ--校外实习基地信息数据子类表 企业网址
      ,d.QYJJ as d_XWSXJDXX_QYJJ--校外实习基地信息数据子类表 企业简介
      ,d.SHZT as d_XWSXJDXX_SHZT--校外实习基地信息数据子类表 审核状态
      ,e.SCHOOLID as e_SXGW_SCHOOLID--实习岗位表 学校ID
      ,e.QYID as e_SXGW_QYID--实习岗位表 企业ID
      ,e.GWMC as e_SXGW_GWMC--实习岗位表 岗位名称
      ,e.QYMC as e_SXGW_QYMC--实习岗位表 企业名称
      ,e.ZPKSSJ as e_SXGW_ZPKSSJ--实习岗位表 招聘开始时间
      ,e.ZPJSSJ as e_SXGW_ZPJSSJ--实习岗位表 招聘结束时间
      ,e.GZXS as e_SXGW_GZXS--实习岗位表 工作形式
      ,e.XBYQ as e_SXGW_XBYQ--实习岗位表 性别要求
      ,e.GWXC as e_SXGW_GWXC--实习岗位表 岗位薪酬
      ,e.WYYQ as e_SXGW_WYYQ--实习岗位表 外语要求
      ,e.GZDD as e_SXGW_GZDD--实习岗位表 工作地点
      ,e.JSJSP as e_SXGW_JSJSP--实习岗位表 计算机水平
      ,e.ZPRS as e_SXGW_ZPRS--实习岗位表 招聘人数
      ,e.XLYQ as e_SXGW_XLYQ--实习岗位表 学历要求
      ,e.ZYYQ as e_SXGW_ZYYQ--实习岗位表 专业要求
      ,e.NLYQ as e_SXGW_NLYQ--实习岗位表 年龄要求
      ,e.GWJJ as e_SXGW_GWJJ--实习岗位表 岗位简介
      ,e.JBQK as e_SXGW_JBQK--实习岗位表 基本情况
      ,e.GZJY as e_SXGW_GZJY--实习岗位表 工作经验
      ,e.SHZT as e_SXGW_SHZT--实习岗位表 审核状态
      ,e.GWZT as e_SXGW_GWZT--实习岗位表 岗位状态

FROM dbo.EDU_ZZJX_07_A05_XSYP AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*学生信息ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS d ON a.QYID = d.ID /*企业ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS e ON a.GWID = e.ID /*实习岗位ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS db ON d.JDLBM = db.DM /*基地类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.QYXZQ = dc.DM /*企业行政区*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS dd ON d.QYXZ = dd.DM /*企业性质*/
GO

--实习岗位表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A04_SXGW_DISP]
AS
SELECT a.[ID]--实习岗位ID
      ,a.[SCHOOLID]--学校ID
      ,a.[QYID]--企业ID
      ,a.[GWMC]--岗位名称
      ,a.[QYMC]--企业名称
      ,a.[ZPKSSJ]--招聘开始时间
      ,a.[ZPJSSJ]--招聘结束时间
      ,a.[GZXS]--工作形式
      ,a.[XBYQ]--性别要求
      ,a.[GWXC]--岗位薪酬
      ,a.[WYYQ]--外语要求
      ,a.[GZDD]--工作地点
      ,a.[JSJSP]--计算机水平
      ,a.[ZPRS]--招聘人数
      ,a.[XLYQ]--学历要求
      ,a.[ZYYQ]--专业要求
      ,a.[NLYQ]--年龄要求
      ,a.[GWJJ]--岗位简介
      ,a.[JBQK]--基本情况
      ,a.[GZJY]--工作经验
      ,a.[SHZT]--审核状态
      ,a.[GWZT]--岗位状态
      ,c.SCHOOLID as c_XWSXJDXX_SCHOOLID--校外实习基地信息数据子类表 学校名
      ,c.QYBH as c_XWSXJDXX_QYBH--校外实习基地信息数据子类表 企业编号
      ,c.JDHZHTBH as c_XWSXJDXX_JDHZHTBH--校外实习基地信息数据子类表 基地合作合同编号
      ,c.JDHZHTMC as c_XWSXJDXX_JDHZHTMC--校外实习基地信息数据子类表 基地合作合同名称
      ,c.JDLBM as c_XWSXJDXX_JDLBM--校外实习基地信息数据子类表 基地类别码
      ,cb.MC as c_XWSXJDXX_JDLBM_MC--实习基地类别代码 名称
      ,c.DWMC as c_XWSXJDXX_DWMC--校外实习基地信息数据子类表 单位名称
      ,c.QYXZQ as c_XWSXJDXX_QYXZQ--校外实习基地信息数据子类表 企业行政区
      ,cc.MC as c_XWSXJDXX_QYXZQ_MC--中华人民共和国行政区划代码 名称
      ,c.QYDZ as c_XWSXJDXX_QYDZ--校外实习基地信息数据子类表 企业地址
      ,c.QYXZ as c_XWSXJDXX_QYXZ--校外实习基地信息数据子类表 企业性质
      ,cd.MC as c_XWSXJDXX_QYXZ_MC--经济类型分类与代码 名称
      ,c.FRDB as c_XWSXJDXX_FRDB--校外实习基地信息数据子类表 法人代表
      ,c.QYLXR as c_XWSXJDXX_QYLXR--校外实习基地信息数据子类表 企业联系人
      ,c.QYYZBM as c_XWSXJDXX_QYYZBM--校外实习基地信息数据子类表 企业邮政编码
      ,c.QYLXDH as c_XWSXJDXX_QYLXDH--校外实习基地信息数据子类表 企业联系电话
      ,c.QYYYZZ as c_XWSXJDXX_QYYYZZ--校外实习基地信息数据子类表 企业营业执照
      ,c.QYLX as c_XWSXJDXX_QYLX--校外实习基地信息数据子类表 企业类型
      ,c.QYRS as c_XWSXJDXX_QYRS--校外实习基地信息数据子类表 企业人数
      ,c.QYZCZJ as c_XWSXJDXX_QYZCZJ--校外实习基地信息数据子类表 企业注册资金
      ,c.QYCZ as c_XWSXJDXX_QYCZ--校外实习基地信息数据子类表 企业传真
      ,c.QYFZR as c_XWSXJDXX_QYFZR--校外实习基地信息数据子类表 企业负责人
      ,c.FZRZW as c_XWSXJDXX_FZRZW--校外实习基地信息数据子类表 负责人职位
      ,c.FZRLXDH as c_XWSXJDXX_FZRLXDH--校外实习基地信息数据子类表 负责人联系电话
      ,c.QYYXDZ as c_XWSXJDXX_QYYXDZ--校外实习基地信息数据子类表 企业邮箱地址
      ,c.QYQQ as c_XWSXJDXX_QYQQ--校外实习基地信息数据子类表 企业QQ
      ,c.QYMSN as c_XWSXJDXX_QYMSN--校外实习基地信息数据子类表 企业MSN
      ,c.QYWZ as c_XWSXJDXX_QYWZ--校外实习基地信息数据子类表 企业网址
      ,c.QYJJ as c_XWSXJDXX_QYJJ--校外实习基地信息数据子类表 企业简介
      ,c.SHZT as c_XWSXJDXX_SHZT--校外实习基地信息数据子类表 审核状态

FROM dbo.EDU_ZZJX_07_A04_SXGW AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS c ON a.QYID = c.ID /*企业ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS cb ON c.JDLBM = cb.DM /*基地类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.QYXZQ = cc.DM /*企业行政区*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS cd ON c.QYXZ = cd.DM /*企业性质*/
GO

--学校实习周/月表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A03_XXSXZY_DISP]
AS
SELECT a.[ID]--实习周/月ID
      ,a.[SCHOOLID]--学校ID
      ,a.[SXJHID]--实习计划ID
      ,a.[SXJDID]--实习阶段ID
      ,a.[MC]--名称
      ,a.[KSSJ]--开始时间
      ,a.[JSSJ]--结束时间
      ,a.[LX]--类型
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--学校实习计划表 学校ID
      ,c.JHBT as c_XXSXJH_JHBT--学校实习计划表 计划标题
      ,c.NJ as c_XXSXJH_NJ--学校实习计划表 年级
      ,c.BGXS as c_XXSXJH_BGXS--学校实习计划表 报告形式
      ,c.SFSX as c_XXSXJH_SFSX--学校实习计划表 计划是否生效
      ,cb.MC as c_XXSXJH_SFSX_MC--授课方式代码表 名称
      ,d.SCHOOLID as d_XXSXJD_SCHOOLID--学校实习阶段表 学校ID
      ,d.SXJHID as d_XXSXJD_SXJHID--学校实习阶段表 实习计划ID
      ,d.JDM as d_XXSXJD_JDM--学校实习阶段表 阶段名
      ,d.JDKSSJ as d_XXSXJD_JDKSSJ--学校实习阶段表 阶段开始时间
      ,d.JDJSSJ as d_XXSXJD_JDJSSJ--学校实习阶段表 阶段结束时间

FROM dbo.EDU_ZZJX_07_A03_XXSXZY AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*实习计划ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A02_XXSXJD AS d ON a.SXJDID = d.ID /*实习阶段ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cb ON c.SFSX = cb.DM /*计划是否生效*/
GO

--学校实习阶段表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A02_XXSXJD_DISP]
AS
SELECT a.[ID]--实习阶段ID
      ,a.[SCHOOLID]--学校ID
      ,a.[SXJHID]--实习计划ID
      ,a.[JDM]--阶段名
      ,a.[JDKSSJ]--阶段开始时间
      ,a.[JDJSSJ]--阶段结束时间
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--学校实习计划表 学校ID
      ,c.JHBT as c_XXSXJH_JHBT--学校实习计划表 计划标题
      ,c.NJ as c_XXSXJH_NJ--学校实习计划表 年级
      ,c.BGXS as c_XXSXJH_BGXS--学校实习计划表 报告形式
      ,c.SFSX as c_XXSXJH_SFSX--学校实习计划表 计划是否生效
      ,cb.MC as c_XXSXJH_SFSX_MC--授课方式代码表 名称

FROM dbo.EDU_ZZJX_07_A02_XXSXJD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*实习计划ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cb ON c.SFSX = cb.DM /*计划是否生效*/
GO

--学校实习计划表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A01_XXSXJH_DISP]
AS
SELECT a.[ID]--实习计划ID
      ,a.[SCHOOLID]--学校ID
      ,a.[JHBT]--计划标题
      ,a.[NJ]--年级
      ,a.[BGXS]--报告形式
      ,a.[SFSX]--计划是否生效
      ,c.MC as c_SKFS_MC--授课方式代码表 名称

FROM dbo.EDU_ZZJX_07_A01_XXSXJH AS a LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS c ON a.SFSX = c.DM /*计划是否生效*/
GO

--学籍基本数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_07_01_XJSJ_DISP]
AS
SELECT a.[XSXXID]--学生信息数据表
      ,a.[SCHOOLID]--学校名
      ,a.[ZYXXID]--专业基本信息
      ,a.[ZZBJID]--学校班级数据表
      ,a.[ZZNJID]--学校年级数据表
      ,a.[RXNY]--入学年月
      ,a.[XSLBM]--学生类别码
      ,a.[XZ]--学制
      ,a.[ZYM]--专业码
      ,a.[XSDQZTM]--学生当前状态码
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生信息数据表 学校名
      ,b.XH as b_XSXX_XH--学生信息数据表 学号
      ,b.XM as b_XSXX_XM--学生信息数据表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生信息数据表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生信息数据表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生信息数据表 曾用名
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,bb.MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生信息数据表 身份证件号
      ,b.XBM as b_XSXX_XBM--学生信息数据表 性别码
      ,bc.MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.XXM as b_XSXX_XXM--学生信息数据表 血型码
      ,bd.MC as b_XSXX_XXM_MC--血型代码表 名称
      ,bd.JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.CSRQ as b_XSXX_CSRQ--学生信息数据表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生信息数据表 出生地码
      ,be.MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生信息数据表 籍贯
      ,b.MZM as b_XSXX_MZM--学生信息数据表 民族码
      ,bf.MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.HYZKM as b_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.XYZJM as b_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,bh.MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,bi.MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,bi.SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.JKZKM as b_XSXX_JKZKM--学生信息数据表 健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,bj.SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,bk.MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,bk.JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.HKLBM as b_XSXX_HKLBM--学生信息数据表 户口类别码
      ,bm.MC as b_XSXX_HKLBM_MC--户口类别代码 名称
      ,b.SFSLDRK as b_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,bn.MC as b_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,b.GJDQM as b_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.TC as b_XSXX_TC--学生信息数据表 特长
      ,b.XSLXDH as b_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,b.WLDZ as b_XSXX_WLDZ--学生信息数据表 网络地址
      ,b.JSTXH as b_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,b.DZXX as b_XSXX_DZXX--学生信息数据表 电子信箱
      ,b.ZP as b_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,d.ZYDM as d_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,db.ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,db.MC as d_ZYXX_ZYDM_MC--自建专业代码 名称
      ,d.ZYMC as d_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,d.XZ as d_ZYXX_XZ--专业基本信息数据表 学制
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,d.ZYJC as d_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,d.JLNY as d_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,d.ZYJSS as d_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,d.KSJGH as d_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,d.ZXF as d_ZYXX_ZXF--专业基本信息数据表 总学分
      ,d.SSZYML as d_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,dc.MC as d_ZYXX_SSZYML_MC--专业目录代码 名称
      ,d.ZYLB as d_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,e.SCHOOLID as e_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,e.ZYXXID as e_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,e.ZZNJID as e_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,e.XZBMC as e_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,e.JBNY as e_ZZBJ_JBNY--学校班级数据表 建班年月
      ,e.BZRGH as e_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,e.JSBH as e_ZZBJ_JSBH--学校班级数据表 教室编号
      ,e.NANSRS as e_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,e.NVSRS as e_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,e.ZRS as e_ZZBJ_ZRS--学校班级数据表 总人数
      ,e.BZXH as e_ZZBJ_BZXH--学校班级数据表 班长学号
      ,e.JXJH as e_ZZBJ_JXJH--学校班级数据表 教学计划
      ,e.JGH as e_ZZBJ_JGH--学校班级数据表 机构号
      ,e.XQDM as e_ZZBJ_XQDM--学校班级数据表 校区代码
      ,f.SCHOOLID as f_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,f.NJMC as f_ZZNJ_NJMC--学校年级数据表 年级名称
      ,f.SSNF as f_ZZNJ_SSNF--学校年级数据表 所属年份
      ,f.NJZT as f_ZZNJ_NJZT--学校年级数据表 年级状态
      ,fb.MC as f_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,g.MC as g_XSLB_MC--学生类别代码表 名称
      ,g.SM as g_XSLB_SM--学生类别代码表 说明
      ,h.MC as h_XSDQZT_MC--学生当前状态代码表 名称
      ,h.SM as h_XSDQZT_SM--学生当前状态代码表 说明

FROM dbo.EDU_ZZXS_07_01_XJSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生信息数据表*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*专业基本信息*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS e ON a.ZZBJID = e.XZBDM /*学校班级数据表*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS f ON a.ZZNJID = f.NJDM /*学校年级数据表*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS g ON a.XSLBM = g.DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS h ON a.XSDQZTM = h.DM /*学生当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS db ON d.ZYDM = db.DM /*专业代码*/ AND d.SSZYML = db.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS dc ON d.SSZYML = dc.DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fb ON f.NJZT = fb.DM /*年级状态*/
GO

--学生家庭经济情况数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_02_A02_XSJTJJ_DISP]
AS
SELECT a.[XSXXID]--学生信息数据表
      ,a.[SCHOOLID]--学校名
      ,a.[SYRK]--赡养人口
      ,a.[LDLRK]--劳动力人口
      ,a.[JTRJYSR]--家庭人均月收入
      ,a.[JTLBM]--家庭类别码
      ,a.[KNYYM]--困难原因码
      ,a.[KNCDM]--困难程度码
      ,a.[SFDB]--是否低保
      ,a.[RXQHKLBM]--入学前户口类别码
      ,a.[JXDDBX]--就学地低保线
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生信息数据表 学校名
      ,b.XH as b_XSXX_XH--学生信息数据表 学号
      ,b.XM as b_XSXX_XM--学生信息数据表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生信息数据表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生信息数据表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生信息数据表 曾用名
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,bb.MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生信息数据表 身份证件号
      ,b.XBM as b_XSXX_XBM--学生信息数据表 性别码
      ,bc.MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.XXM as b_XSXX_XXM--学生信息数据表 血型码
      ,bd.MC as b_XSXX_XXM_MC--血型代码表 名称
      ,bd.JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.CSRQ as b_XSXX_CSRQ--学生信息数据表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生信息数据表 出生地码
      ,be.MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生信息数据表 籍贯
      ,b.MZM as b_XSXX_MZM--学生信息数据表 民族码
      ,bf.MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.HYZKM as b_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.XYZJM as b_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,bh.MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,bi.MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,bi.SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.JKZKM as b_XSXX_JKZKM--学生信息数据表 健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,bj.SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,bk.MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,bk.JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.HKLBM as b_XSXX_HKLBM--学生信息数据表 户口类别码
      ,bm.MC as b_XSXX_HKLBM_MC--户口类别代码 名称
      ,b.SFSLDRK as b_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,bn.MC as b_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,b.GJDQM as b_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.TC as b_XSXX_TC--学生信息数据表 特长
      ,b.XSLXDH as b_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,b.WLDZ as b_XSXX_WLDZ--学生信息数据表 网络地址
      ,b.JSTXH as b_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,b.DZXX as b_XSXX_DZXX--学生信息数据表 电子信箱
      ,b.ZP as b_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.MC as d_JTLB_MC--家庭类别代码表 名称
      ,e.MC as e_KNYY_MC--困难原因代码表 名称
      ,f.MC as f_KNCD_MC--困难程度代码表 名称
      ,f.SM as f_KNCD_SM--困难程度代码表 说明
      ,g.MC as g_SFBZ_MC--是否标志代码表 名称
      ,h.MC as h_HKLB_MC--户口类别代码 名称

FROM dbo.EDU_ZZXS_02_A02_XSJTJJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生信息数据表*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_JTLB AS d ON a.JTLBM = d.DM /*家庭类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KNYY AS e ON a.KNYYM = e.DM /*困难原因码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KNCD AS f ON a.KNCDM = f.DM /*困难程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS g ON a.SFDB = g.DM /*是否低保*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS h ON a.RXQHKLBM = h.DM /*入学前户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*国籍/地区*/
GO

--学生联系人数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_02_A01_XSLXR_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XSXXID]--学生信息数据表
      ,a.[GXM]--关系码
      ,a.[LXRXM]--联系人姓名
      ,a.[YZBM]--邮政编码
      ,a.[TXDZ]--通信地址
      ,a.[DH]--电话
      ,a.[YDDH]--移动电话
      ,a.[CZDH]--传真电话
      ,a.[DZXX]--电子信箱
      ,a.[WLDZ]--网络地址
      ,a.[JSTXH]--即时通讯号
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生信息数据表 学校名
      ,c.XH as c_XSXX_XH--学生信息数据表 学号
      ,c.XM as c_XSXX_XM--学生信息数据表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生信息数据表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生信息数据表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生信息数据表 曾用名
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,cb.MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生信息数据表 身份证件号
      ,c.XBM as c_XSXX_XBM--学生信息数据表 性别码
      ,cc.MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.XXM as c_XSXX_XXM--学生信息数据表 血型码
      ,cd.MC as c_XSXX_XXM_MC--血型代码表 名称
      ,cd.JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.CSRQ as c_XSXX_CSRQ--学生信息数据表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生信息数据表 出生地码
      ,ce.MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生信息数据表 籍贯
      ,c.MZM as c_XSXX_MZM--学生信息数据表 民族码
      ,cf.MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.HYZKM as c_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,cg.MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.XYZJM as c_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,ch.MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,ci.MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,ci.SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JKZKM as c_XSXX_JKZKM--学生信息数据表 健康状况码
      ,cj.MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,cj.SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,ck.MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ck.JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_XSXX_HKLBM--学生信息数据表 户口类别码
      ,cm.MC as c_XSXX_HKLBM_MC--户口类别代码 名称
      ,c.SFSLDRK as c_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,cn.MC as c_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,c.GJDQM as c_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.TC as c_XSXX_TC--学生信息数据表 特长
      ,c.XSLXDH as c_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,c.WLDZ as c_XSXX_WLDZ--学生信息数据表 网络地址
      ,c.JSTXH as c_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,c.DZXX as c_XSXX_DZXX--学生信息数据表 电子信箱
      ,c.ZP as c_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.MC as d_JTGX_MC--家庭关系代码 名称

FROM dbo.EDU_ZZXS_02_A01_XSLXR AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*学生信息数据表*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_JTGX AS d ON a.GXM = d.DM /*关系码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*国籍/地区*/
GO

--学生家庭成员数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_02_02_XSJTCY_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XSXXID]--学生信息数据表
      ,a.[XM]--姓名
      ,a.[GXM]--关系码
      ,a.[JTCYZYM]--家庭成员职业码
      ,a.[SZDW]--所在单位
      ,a.[ZZMMM]--政治面貌码
      ,a.[DH]--电话
      ,a.[YDDH]--移动电话
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生信息数据表 学校名
      ,c.XH as c_XSXX_XH--学生信息数据表 学号
      ,c.XM as c_XSXX_XM--学生信息数据表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生信息数据表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生信息数据表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生信息数据表 曾用名
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,cb.MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生信息数据表 身份证件号
      ,c.XBM as c_XSXX_XBM--学生信息数据表 性别码
      ,cc.MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.XXM as c_XSXX_XXM--学生信息数据表 血型码
      ,cd.MC as c_XSXX_XXM_MC--血型代码表 名称
      ,cd.JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.CSRQ as c_XSXX_CSRQ--学生信息数据表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生信息数据表 出生地码
      ,ce.MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生信息数据表 籍贯
      ,c.MZM as c_XSXX_MZM--学生信息数据表 民族码
      ,cf.MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.HYZKM as c_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,cg.MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.XYZJM as c_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,ch.MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,ci.MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,ci.SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JKZKM as c_XSXX_JKZKM--学生信息数据表 健康状况码
      ,cj.MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,cj.SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,ck.MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ck.JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_XSXX_HKLBM--学生信息数据表 户口类别码
      ,cm.MC as c_XSXX_HKLBM_MC--户口类别代码 名称
      ,c.SFSLDRK as c_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,cn.MC as c_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,c.GJDQM as c_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.TC as c_XSXX_TC--学生信息数据表 特长
      ,c.XSLXDH as c_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,c.WLDZ as c_XSXX_WLDZ--学生信息数据表 网络地址
      ,c.JSTXH as c_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,c.DZXX as c_XSXX_DZXX--学生信息数据表 电子信箱
      ,c.ZP as c_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.MC as d_JTGX_MC--家庭关系代码 名称
      ,e.MC as e_ZYFL_MC--职业分类与代码 名称
      ,f.MC as f_ZZMM_MC--政治面貌代码 名称
      ,f.JC as f_ZZMM_JC--政治面貌代码 简称

FROM dbo.EDU_ZZXS_02_02_XSJTCY AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*学生信息数据表*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_JTGX AS d ON a.GXM = d.DM /*关系码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZYFL AS e ON a.JTCYZYM = e.DM /*家庭成员职业码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS f ON a.ZZMMM = f.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*国籍/地区*/
GO

--学生家庭信息数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_02_01_XSJTXX_DISP]
AS
SELECT a.[XSXXID]--学生信息数据表
      ,a.[SCHOOLID]--学校名
      ,a.[JTZZ]--家庭住址
      ,a.[JTYZBM]--家庭邮政编码
      ,a.[JTDH]--家庭电话
      ,a.[JTLXR]--家庭联系人
      ,a.[JTDZXX]--家庭电子信箱
      ,a.[JTRK]--家庭人口
      ,a.[JTZYSRLY]--家庭主要收入来源
      ,a.[JTYSRJE]--家庭月收入金额
      ,a.[JTNSRJE]--家庭年收入金额
      ,a.[LJZJHCZ]--离家最近火车站
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生信息数据表 学校名
      ,b.XH as b_XSXX_XH--学生信息数据表 学号
      ,b.XM as b_XSXX_XM--学生信息数据表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生信息数据表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生信息数据表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生信息数据表 曾用名
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,bb.MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生信息数据表 身份证件号
      ,b.XBM as b_XSXX_XBM--学生信息数据表 性别码
      ,bc.MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.XXM as b_XSXX_XXM--学生信息数据表 血型码
      ,bd.MC as b_XSXX_XXM_MC--血型代码表 名称
      ,bd.JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.CSRQ as b_XSXX_CSRQ--学生信息数据表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生信息数据表 出生地码
      ,be.MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生信息数据表 籍贯
      ,b.MZM as b_XSXX_MZM--学生信息数据表 民族码
      ,bf.MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.HYZKM as b_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.XYZJM as b_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,bh.MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,bi.MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,bi.SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.JKZKM as b_XSXX_JKZKM--学生信息数据表 健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,bj.SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,bk.MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,bk.JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.HKLBM as b_XSXX_HKLBM--学生信息数据表 户口类别码
      ,bm.MC as b_XSXX_HKLBM_MC--户口类别代码 名称
      ,b.SFSLDRK as b_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,bn.MC as b_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,b.GJDQM as b_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.TC as b_XSXX_TC--学生信息数据表 特长
      ,b.XSLXDH as b_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,b.WLDZ as b_XSXX_WLDZ--学生信息数据表 网络地址
      ,b.JSTXH as b_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,b.DZXX as b_XSXX_DZXX--学生信息数据表 电子信箱
      ,b.ZP as b_XSXX_ZP--学生信息数据表 照片(路径)

FROM dbo.EDU_ZZXS_02_01_XSJTXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生信息数据表*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*国籍/地区*/
GO

--学生扩展数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_01_A01_XSXX_DISP]
AS
SELECT a.[XSXXID]--学生信息数据表
      ,a.[SCHOOLID]--学校名
      ,a.[ZYXXID]--专业基本信息
      ,a.[XNID]--学年
      ,a.[ZZXQID]--学期表
      ,a.[JTDZQH]--家庭地址区划码
      ,a.[JTXXDZ]--家庭详细地址
      ,a.[HJXXDZ]--户籍详细地址
      ,a.[HJXZ]--户籍性质代码
      ,a.[BYJX]--不宜军训
      ,a.[CSBZR]--初三班主任
      ,a.[DRZW]--曾担任何种职务
      ,a.[YYDR]--愿意担任班干部，何职
      ,a.[BZ]--备注
      ,a.[BYLX]--毕业生类型
      ,a.[XSLX]--学生类型
      ,a.[SFZS]--是否住宿
      ,a.[XSBMSJ]--学生报名时间
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生信息数据表 学校名
      ,b.XH as b_XSXX_XH--学生信息数据表 学号
      ,b.XM as b_XSXX_XM--学生信息数据表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生信息数据表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生信息数据表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生信息数据表 曾用名
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,bb.MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生信息数据表 身份证件号
      ,b.XBM as b_XSXX_XBM--学生信息数据表 性别码
      ,bc.MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.XXM as b_XSXX_XXM--学生信息数据表 血型码
      ,bd.MC as b_XSXX_XXM_MC--血型代码表 名称
      ,bd.JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.CSRQ as b_XSXX_CSRQ--学生信息数据表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生信息数据表 出生地码
      ,be.MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生信息数据表 籍贯
      ,b.MZM as b_XSXX_MZM--学生信息数据表 民族码
      ,bf.MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.HYZKM as b_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.XYZJM as b_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,bh.MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,bi.MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,bi.SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.JKZKM as b_XSXX_JKZKM--学生信息数据表 健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,bj.SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,bk.MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,bk.JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.HKLBM as b_XSXX_HKLBM--学生信息数据表 户口类别码
      ,bm.MC as b_XSXX_HKLBM_MC--户口类别代码 名称
      ,b.SFSLDRK as b_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,bn.MC as b_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,b.GJDQM as b_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.TC as b_XSXX_TC--学生信息数据表 特长
      ,b.XSLXDH as b_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,b.WLDZ as b_XSXX_WLDZ--学生信息数据表 网络地址
      ,b.JSTXH as b_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,b.DZXX as b_XSXX_DZXX--学生信息数据表 电子信箱
      ,b.ZP as b_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,d.ZYDM as d_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,db.ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,db.MC as d_ZYXX_ZYDM_MC--自建专业代码 名称
      ,d.ZYMC as d_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,d.XZ as d_ZYXX_XZ--专业基本信息数据表 学制
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,d.ZYJC as d_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,d.JLNY as d_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,d.ZYJSS as d_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,d.KSJGH as d_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,d.ZXF as d_ZYXX_ZXF--专业基本信息数据表 总学分
      ,d.SSZYML as d_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,dc.MC as d_ZYXX_SSZYML_MC--专业目录代码 名称
      ,d.ZYLB as d_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,e.SCHOOLID as e_XN_SCHOOLID--学年表 学校名
      ,e.XN as e_XN_XN--学年表 学年
      ,f.SCHOOLID as f_XQ_SCHOOLID--学期数据表 学校名
      ,f.XNID as f_XQ_XNID--学期数据表 学年
      ,f.XQM as f_XQ_XQM--学期数据表 学期码
      ,fb.MC as f_XQ_XQM_MC--学期代码表 名称
      ,f.XQMC as f_XQ_XQMC--学期数据表 学期名称
      ,f.XQKSRQ as f_XQ_XQKSRQ--学期数据表 学期开始日期
      ,f.XQJSRQ as f_XQ_XQJSRQ--学期数据表 学期结束日期
      ,g.MC as g_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,h.MC as h_HJXZ_MC--户籍性质代码 名称
      ,i.MC as i_SFBZ_MC--是否标志代码表 名称
      ,j.MC as j_BYSLX_MC--毕业生类型代码 名称
      ,k.MC as k_XSLB_MC--学生类别代码表 名称
      ,k.SM as k_XSLB_SM--学生类别代码表 说明
      ,l.MC as l_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZZXS_01_A01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生信息数据表*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*专业基本信息*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS e ON a.XNID = e.ID /*学年*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS f ON a.ZZXQID = f.ID /*学期表*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS g ON a.JTDZQH = g.DM /*家庭地址区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_HJXZ AS h ON a.HJXZ = h.DM /*户籍性质代码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS i ON a.BYJX = i.DM /*不宜军训*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_BYSLX AS j ON a.BYLX = j.DM /*毕业生类型*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS k ON a.XSLX = k.DM /*学生类型*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS l ON a.SFZS = l.DM /*是否住宿*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS db ON d.ZYDM = db.DM /*专业代码*/ AND d.SSZYML = db.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS dc ON d.SSZYML = dc.DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS fb ON f.XQM = fb.DM /*学期码*/
GO

--学生信息数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_01_01_XSXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XH]--学号
      ,a.[XM]--姓名
      ,a.[YWXM]--英文姓名
      ,a.[XMPY]--姓名拼音
      ,a.[CYM]--曾用名
      ,a.[SFZJLXM]--身份证件类型码
      ,a.[SFZJH]--身份证件号
      ,a.[XBM]--性别码
      ,a.[XXM]--血型码
      ,a.[CSRQ]--出生日期
      ,a.[CSDM]--出生地码
      ,a.[JG]--籍贯
      ,a.[MZM]--民族码
      ,a.[HYZKM]--婚姻状况码
      ,a.[XYZJM]--信仰宗教码
      ,a.[GATQWM]--港澳台侨外码
      ,a.[JKZKM]--健康状况码
      ,a.[ZZMMM]--政治面貌码
      ,a.[HKSZDXZQHM]--户口所在地行政区划码
      ,a.[HKLBM]--户口类别码
      ,a.[SFSLDRK]--是否是流动人口
      ,a.[GJDQM]--国籍/地区
      ,a.[TC]--特长
      ,a.[XSLXDH]--学生联系电话
      ,a.[WLDZ]--网络地址
      ,a.[JSTXH]--即时通讯号
      ,a.[DZXX]--电子信箱
      ,a.[ZP]--照片(路径)
      ,c.MC as c_SFZJLX_MC--身份证件类型代码表 名称
      ,d.MC as d_RDXB_MC--人的性别代码 名称
      ,e.MC as e_XX_MC--血型代码表 名称
      ,e.JC as e_XX_JC--血型代码表 简称
      ,f.MC as f_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,g.MZMC as g_ZGGMZMCDLMZMPXF_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,g.ZMDM as g_ZGGMZMCDLMZMPXF_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,h.MC as h_HYZZ_MC--婚姻状况代码 名称
      ,i.MC as i_ZJXY_MC--宗教信仰代码 名称
      ,j.MC as j_GATQW_MC--港澳台侨外代码表 名称
      ,j.SM as j_GATQW_SM--港澳台侨外代码表 说明
      ,k.MC as k_JKZKYWSZ_MC--健康状况1位数字代码 名称
      ,k.SM as k_JKZKYWSZ_SM--健康状况1位数字代码 说明
      ,l.MC as l_ZZMM_MC--政治面貌代码 名称
      ,l.JC as l_ZZMM_JC--政治面貌代码 简称
      ,m.MC as m_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,n.MC as n_HKLB_MC--户口类别代码 名称
      ,o.MC as o_SFBZ_MC--是否标志代码表 名称
      ,p.GJDQMCJC as p_SJGGHDQMC_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,p.EZMDM as p_SJGGHDQMC_EZMDM--世界各国和地区名称代码 二字母代码
      ,p.SZMDM as p_SJGGHDQMC_SZMDM--世界各国和地区名称代码 三字母代码

FROM dbo.EDU_ZZXS_01_01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS c ON a.SFZJLXM = c.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS d ON a.XBM = d.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS e ON a.XXM = e.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS f ON a.CSDM = f.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS g ON a.MZM = g.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS h ON a.HYZKM = h.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS i ON a.XYZJM = i.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS j ON a.GATQWM = j.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS k ON a.JKZKM = k.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS l ON a.ZZMMM = l.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS m ON a.HKSZDXZQHM = m.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS n ON a.HKLBM = n.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS o ON a.SFSLDRK = o.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS p ON a.GJDQM = p.DM /*国籍/地区*/
GO

--学生注册信息数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_07_03_XSZCXX_DISP]
AS
SELECT a.[XSXXID]--学生ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCZKM]--注册状况码
      ,a.[ZCRQ]--注册日期
      ,a.[BDRQ]--报到日期
      ,a.[WZCYY]--未注册原因
      ,a.[WZCWBDQX]--未注册/未报到去向
      ,a.[SFQJ]--是否请假
      ,a.[WASZCXQM]--未按时注册学期码
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生信息数据表 学校名
      ,b.XH as b_XSXX_XH--学生信息数据表 学号
      ,b.XM as b_XSXX_XM--学生信息数据表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生信息数据表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生信息数据表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生信息数据表 曾用名
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,bb.MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生信息数据表 身份证件号
      ,b.XBM as b_XSXX_XBM--学生信息数据表 性别码
      ,bc.MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.XXM as b_XSXX_XXM--学生信息数据表 血型码
      ,bd.MC as b_XSXX_XXM_MC--血型代码表 名称
      ,bd.JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.CSRQ as b_XSXX_CSRQ--学生信息数据表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生信息数据表 出生地码
      ,be.MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生信息数据表 籍贯
      ,b.MZM as b_XSXX_MZM--学生信息数据表 民族码
      ,bf.MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.HYZKM as b_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.XYZJM as b_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,bh.MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,bi.MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,bi.SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.JKZKM as b_XSXX_JKZKM--学生信息数据表 健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,bj.SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,bk.MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,bk.JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.HKLBM as b_XSXX_HKLBM--学生信息数据表 户口类别码
      ,bm.MC as b_XSXX_HKLBM_MC--户口类别代码 名称
      ,b.SFSLDRK as b_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,bn.MC as b_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,b.GJDQM as b_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.TC as b_XSXX_TC--学生信息数据表 特长
      ,b.XSLXDH as b_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,b.WLDZ as b_XSXX_WLDZ--学生信息数据表 网络地址
      ,b.JSTXH as b_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,b.DZXX as b_XSXX_DZXX--学生信息数据表 电子信箱
      ,b.ZP as b_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.SCHOOLID as d_XQ_SCHOOLID--学期数据表 学校名
      ,d.XNID as d_XQ_XNID--学期数据表 学年
      ,d.XQM as d_XQ_XQM--学期数据表 学期码
      ,db.MC as d_XQ_XQM_MC--学期代码表 名称
      ,d.XQMC as d_XQ_XQMC--学期数据表 学期名称
      ,d.XQKSRQ as d_XQ_XQKSRQ--学期数据表 学期开始日期
      ,d.XQJSRQ as d_XQ_XQJSRQ--学期数据表 学期结束日期
      ,e.MC as e_ZCZK_MC--注册状况代码表 名称
      ,f.MC as f_SFBZ_MC--是否标志代码表 名称
      ,g.MC as g_XQ_MC--学期代码表 名称

FROM dbo.EDU_ZZXS_07_03_XSZCXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*学期ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZCZK AS e ON a.ZCZKM = e.DM /*注册状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFQJ = f.DM /*是否请假*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS g ON a.WASZCXQM = g.DM /*未按时注册学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS db ON d.XQM = db.DM /*学期码*/
GO

--学籍异动数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_07_02_XJYD_DISP]
AS
SELECT a.[ID]--学籍异动表编号
      ,a.[XSXXID]--学生ID
      ,a.[SCHOOLID]--学校ID
      ,a.[YDLBM]--异动类别码
      ,a.[YDRQ]--异动日期
      ,a.[YDYYM]--异动原因码
      ,a.[SPRQ]--审批日期
      ,a.[SPWH]--审批文号
      ,a.[JBRID]--经办人ID
      ,a.[JBRGH]--经办人工号
      ,a.[YDLYXXM]--异动来源学校码
      ,a.[YDQXXXM]--异动去向学校码
      ,a.[YDSM]--异动说明
      ,a.[YZYM]--原专业码
      ,a.[YZYID]--原专业ID
      ,a.[YBH]--原班号
      ,a.[YNJ]--原年级
      ,a.[XZYM]--现专业码
      ,a.[XZYID]--现专业ID
      ,a.[XBH]--现班号
      ,a.[XNJ]--现年级
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生信息数据表 学校名
      ,b.XH as b_XSXX_XH--学生信息数据表 学号
      ,b.XM as b_XSXX_XM--学生信息数据表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生信息数据表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生信息数据表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生信息数据表 曾用名
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,bb.MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生信息数据表 身份证件号
      ,b.XBM as b_XSXX_XBM--学生信息数据表 性别码
      ,bc.MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.XXM as b_XSXX_XXM--学生信息数据表 血型码
      ,bd.MC as b_XSXX_XXM_MC--血型代码表 名称
      ,bd.JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.CSRQ as b_XSXX_CSRQ--学生信息数据表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生信息数据表 出生地码
      ,be.MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生信息数据表 籍贯
      ,b.MZM as b_XSXX_MZM--学生信息数据表 民族码
      ,bf.MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.HYZKM as b_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.XYZJM as b_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,bh.MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,bi.MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,bi.SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.JKZKM as b_XSXX_JKZKM--学生信息数据表 健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,bj.SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,bk.MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,bk.JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.HKLBM as b_XSXX_HKLBM--学生信息数据表 户口类别码
      ,bm.MC as b_XSXX_HKLBM_MC--户口类别代码 名称
      ,b.SFSLDRK as b_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,bn.MC as b_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,b.GJDQM as b_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.TC as b_XSXX_TC--学生信息数据表 特长
      ,b.XSLXDH as b_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,b.WLDZ as b_XSXX_WLDZ--学生信息数据表 网络地址
      ,b.JSTXH as b_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,b.DZXX as b_XSXX_DZXX--学生信息数据表 电子信箱
      ,b.ZP as b_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.MC as d_XJYDLB_MC--学籍异动类别代码表 名称
      ,e.MC as e_XJYDYY_MC--学籍异动原因代码表 名称
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,f.GH as f_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,f.XM as f_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,f.YWXM as f_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,f.XMPY as f_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,f.CYM as f_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,fb.MC as f_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,f.SFZJH as f_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,f.CSRQ as f_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,f.XBM as f_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,fc.MC as f_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,f.MZM as f_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,f.XXM as f_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,fe.MC as f_JZGJBSJ_XXM_MC--血型代码表 名称
      ,fe.JC as f_JZGJBSJ_XXM_JC--血型代码表 简称
      ,f.JKZKM as f_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,ff.MC as f_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,ff.SM as f_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,f.HYZTM as f_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,fg.MC as f_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,fh.MC as f_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,fh.JC as f_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,f.GATQWM as f_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,fi.MC as f_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,fi.SM as f_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,f.JG as f_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,f.GJDQM as f_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,fj.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,fj.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,fj.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,f.CSDXZQHM as f_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,fk.MC as f_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,f.XYZJM as f_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,fl.MC as f_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,f.JZGHKSZDXZQHM as f_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,fm.MC as f_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,f.HKLBM as f_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,fn.MC as f_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,f.DQZZ as f_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,f.DQZZYZBM as f_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,f.CJGZNY as f_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,f.CJNY as f_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,f.LXNY as f_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,f.BZLBM as f_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,fo.MC as f_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,f.JZGLBM as f_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,fp.MC as f_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,fp.SM as f_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,f.GWLBM as f_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,fq.MC as f_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,f.SFJZJS as f_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,fr.MC as f_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,f.SFSSXJS as f_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教
      ,fs.MC as f_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,f.ZP as f_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,f.DQZTM as f_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,ft.MC as f_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,f.YDDH as f_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,f.GDDH as f_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,f.TXDZYZBM as f_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,f.TXDZ as f_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,f.DZXX as f_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,f.WLDZ as f_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,f.JSTXH as f_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,g.SCHOOLID as g_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,g.ZYDM as g_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,gb.ZYMLLB as g_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,gb.MC as g_ZYXX_ZYDM_MC--自建专业代码 名称
      ,g.ZYMC as g_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,g.ZYYWMC as g_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,g.XZ as g_ZYXX_XZ--专业基本信息数据表 学制
      ,g.ZYFXMC as g_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,g.ZYJC as g_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,g.JLNY as g_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,g.ZYJSS as g_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,g.KSJGH as g_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,g.ZXF as g_ZYXX_ZXF--专业基本信息数据表 总学分
      ,g.SSZYML as g_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,gc.MC as g_ZYXX_SSZYML_MC--专业目录代码 名称
      ,g.ZYLB as g_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,h.SCHOOLID as h_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,h.ZYXXID as h_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,h.ZZNJID as h_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,h.XZBMC as h_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,h.JBNY as h_ZZBJ_JBNY--学校班级数据表 建班年月
      ,h.BZRGH as h_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,h.JSBH as h_ZZBJ_JSBH--学校班级数据表 教室编号
      ,h.NANSRS as h_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,h.NVSRS as h_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,h.ZRS as h_ZZBJ_ZRS--学校班级数据表 总人数
      ,h.BZXH as h_ZZBJ_BZXH--学校班级数据表 班长学号
      ,h.JXJH as h_ZZBJ_JXJH--学校班级数据表 教学计划
      ,h.JGH as h_ZZBJ_JGH--学校班级数据表 机构号
      ,h.XQDM as h_ZZBJ_XQDM--学校班级数据表 校区代码
      ,i.SCHOOLID as i_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,i.NJMC as i_ZZNJ_NJMC--学校年级数据表 年级名称
      ,i.SSNF as i_ZZNJ_SSNF--学校年级数据表 所属年份
      ,i.NJZT as i_ZZNJ_NJZT--学校年级数据表 年级状态
      ,ib.MC as i_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,j.SCHOOLID as j_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,j.ZYDM as j_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,jb.ZYMLLB as j_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,jb.MC as j_ZYXX_ZYDM_MC--自建专业代码 名称
      ,j.ZYMC as j_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,j.ZYYWMC as j_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,j.XZ as j_ZYXX_XZ--专业基本信息数据表 学制
      ,j.ZYFXMC as j_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,j.ZYJC as j_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,j.JLNY as j_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,j.ZYJSS as j_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,j.KSJGH as j_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,j.ZXF as j_ZYXX_ZXF--专业基本信息数据表 总学分
      ,j.SSZYML as j_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,jc.MC as j_ZYXX_SSZYML_MC--专业目录代码 名称
      ,j.ZYLB as j_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,k.SCHOOLID as k_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,k.ZYXXID as k_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,k.ZZNJID as k_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,k.XZBMC as k_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,k.JBNY as k_ZZBJ_JBNY--学校班级数据表 建班年月
      ,k.BZRGH as k_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,k.JSBH as k_ZZBJ_JSBH--学校班级数据表 教室编号
      ,k.NANSRS as k_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,k.NVSRS as k_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,k.ZRS as k_ZZBJ_ZRS--学校班级数据表 总人数
      ,k.BZXH as k_ZZBJ_BZXH--学校班级数据表 班长学号
      ,k.JXJH as k_ZZBJ_JXJH--学校班级数据表 教学计划
      ,k.JGH as k_ZZBJ_JGH--学校班级数据表 机构号
      ,k.XQDM as k_ZZBJ_XQDM--学校班级数据表 校区代码
      ,l.SCHOOLID as l_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,l.NJMC as l_ZZNJ_NJMC--学校年级数据表 年级名称
      ,l.SSNF as l_ZZNJ_SSNF--学校年级数据表 所属年份
      ,l.NJZT as l_ZZNJ_NJZT--学校年级数据表 年级状态
      ,lb.MC as l_ZZNJ_NJZT_MC--是否标志代码表 名称

FROM dbo.EDU_ZZXS_07_02_XJYD AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDLB AS d ON a.YDLBM = d.DM /*异动类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDYY AS e ON a.YDYYM = e.DM /*异动原因码*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS f ON a.JBRID = f.ID /*经办人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS g ON a.YZYID = g.ZYBH /*原专业ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS h ON a.YBH = h.XZBDM /*原班号*/ AND a.SCHOOLID = h.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS i ON a.YNJ = i.NJDM /*原年级*/ AND a.SCHOOLID = i.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS j ON a.XZYID = j.ZYBH /*现专业ID*/ AND a.SCHOOLID = j.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS k ON a.XBH = k.XZBDM /*现班号*/ AND a.SCHOOLID = k.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS l ON a.XNJ = l.NJDM /*现年级*/ AND a.SCHOOLID = l.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS fb ON f.SFZJLXM = fb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fc ON f.XBM = fc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fe ON f.XXM = fe.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ff ON f.JKZKM = ff.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS fg ON f.HYZTM = fg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fh ON f.ZZMMM = fh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fi ON f.GATQWM = fi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fj ON f.GJDQM = fj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fk ON f.CSDXZQHM = fk.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fl ON f.XYZJM = fl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fm ON f.JZGHKSZDXZQHM = fm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS fn ON f.HKLBM = fn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS fo ON f.BZLBM = fo.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS fp ON f.JZGLBM = fp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS fq ON f.GWLBM = fq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fr ON f.SFJZJS = fr.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fs ON f.SFSSXJS = fs.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ft ON f.DQZTM = ft.DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS gb ON g.ZYDM = gb.DM /*专业代码*/ AND g.SSZYML = gb.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS gc ON g.SSZYML = gc.DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ib ON i.NJZT = ib.DM /*年级状态*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS jb ON j.ZYDM = jb.DM /*专业代码*/ AND j.SSZYML = jb.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS jc ON j.SSZYML = jc.DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS lb ON l.NJZT = lb.DM /*年级状态*/
GO

--学生成绩数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_06_01_XSCJ_DISP]
AS
SELECT a.[XSXXID]--学生ID
      ,a.[SCHOOLID]--学校ID
      ,a.[KCH]--课程号
      ,a.[XQID]--学期ID
      ,a.[KCMC]--课程名称
      ,a.[XF]--学分
      ,a.[XQMC]--学期名称
      ,a.[PSCJ]--平时成绩
      ,a.[CJ]--成绩
      ,a.[KSXZ]--考试性质
      ,a.[RKJGID]--任课教工ID
      ,a.[RKJGH]--任课教工号
      ,a.[CJLRJGID]--成绩录入教工ID
      ,a.[CJLRJGH]--成绩录入教工号
      ,a.[CJLRRQ]--成绩录入日期
      ,a.[QZCJ]--期中成绩
      ,a.[QMCJ]--期末成绩
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生信息数据表 学校名
      ,b.XH as b_XSXX_XH--学生信息数据表 学号
      ,b.XM as b_XSXX_XM--学生信息数据表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生信息数据表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生信息数据表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生信息数据表 曾用名
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,bb.MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生信息数据表 身份证件号
      ,b.XBM as b_XSXX_XBM--学生信息数据表 性别码
      ,bc.MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.XXM as b_XSXX_XXM--学生信息数据表 血型码
      ,bd.MC as b_XSXX_XXM_MC--血型代码表 名称
      ,bd.JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.CSRQ as b_XSXX_CSRQ--学生信息数据表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生信息数据表 出生地码
      ,be.MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生信息数据表 籍贯
      ,b.MZM as b_XSXX_MZM--学生信息数据表 民族码
      ,bf.MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.HYZKM as b_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.XYZJM as b_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,bh.MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,bi.MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,bi.SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.JKZKM as b_XSXX_JKZKM--学生信息数据表 健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,bj.SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,bk.MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,bk.JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.HKLBM as b_XSXX_HKLBM--学生信息数据表 户口类别码
      ,bm.MC as b_XSXX_HKLBM_MC--户口类别代码 名称
      ,b.SFSLDRK as b_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,bn.MC as b_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,b.GJDQM as b_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.TC as b_XSXX_TC--学生信息数据表 特长
      ,b.XSLXDH as b_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,b.WLDZ as b_XSXX_WLDZ--学生信息数据表 网络地址
      ,b.JSTXH as b_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,b.DZXX as b_XSXX_DZXX--学生信息数据表 电子信箱
      ,b.ZP as b_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.SCHOOLID as d_KC_SCHOOLID--课程数据子类表 学校ID
      ,d.KCMC as d_KC_KCMC--课程数据子类表 课程名称
      ,d.KCYWM as d_KC_KCYWM--课程数据子类表 课程英文名
      ,d.KCBM as d_KC_KCBM--课程数据子类表 课程别名
      ,d.KCJS as d_KC_KCJS--课程数据子类表 课程介绍
      ,d.XF as d_KC_XF--课程数据子类表 学分
      ,d.ZXS as d_KC_ZXS--课程数据子类表 总学时
      ,d.LLXS as d_KC_LLXS--课程数据子类表 理论学时
      ,d.SJXS as d_KC_SJXS--课程数据子类表 实践学时
      ,d.QTXS as d_KC_QTXS--课程数据子类表 其他学时
      ,d.CKSM as d_KC_CKSM--课程数据子类表 参考书目
      ,d.KKDW as d_KC_KKDW--课程数据子类表 开课单位
      ,d.KSXS as d_KC_KSXS--课程数据子类表 考试形式
      ,db.MC as d_KC_KSXS_MC--考试形式代码表 名称
      ,d.SKFSM as d_KC_SKFSM--课程数据子类表 授课方式码
      ,dc.MC as d_KC_SKFSM_MC--授课方式代码表 名称
      ,d.KCFY as d_KC_KCFY--课程数据子类表 课程费用
      ,e.SCHOOLID as e_XQ_SCHOOLID--学期数据表 学校名
      ,e.XNID as e_XQ_XNID--学期数据表 学年
      ,e.XQM as e_XQ_XQM--学期数据表 学期码
      ,eb.MC as e_XQ_XQM_MC--学期代码表 名称
      ,e.XQMC as e_XQ_XQMC--学期数据表 学期名称
      ,e.XQKSRQ as e_XQ_XQKSRQ--学期数据表 学期开始日期
      ,e.XQJSRQ as e_XQ_XQJSRQ--学期数据表 学期结束日期
      ,f.MC as f_KSXZ_MC--考试性质代码表 名称
      ,f.SM as f_KSXZ_SM--考试性质代码表 说明
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,g.GH as g_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,g.XM as g_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,g.YWXM as g_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,g.XMPY as g_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,g.CYM as g_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,gb.MC as g_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,g.SFZJH as g_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,g.CSRQ as g_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,g.XBM as g_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,gc.MC as g_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,g.MZM as g_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,gd.MZMC as g_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,gd.ZMDM as g_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,g.XXM as g_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,ge.MC as g_JZGJBSJ_XXM_MC--血型代码表 名称
      ,ge.JC as g_JZGJBSJ_XXM_JC--血型代码表 简称
      ,g.JKZKM as g_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,gf.MC as g_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,gf.SM as g_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,g.HYZTM as g_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,gg.MC as g_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,gh.MC as g_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,gh.JC as g_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,g.GATQWM as g_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,gi.MC as g_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,gi.SM as g_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,g.JG as g_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,g.GJDQM as g_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,gj.GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,gj.EZMDM as g_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,gj.SZMDM as g_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,g.CSDXZQHM as g_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,gk.MC as g_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,g.XYZJM as g_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,gl.MC as g_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,g.JZGHKSZDXZQHM as g_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,gm.MC as g_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,g.HKLBM as g_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,gn.MC as g_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,g.DQZZ as g_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,g.DQZZYZBM as g_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,g.CJGZNY as g_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,g.CJNY as g_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,g.LXNY as g_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,g.BZLBM as g_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,go.MC as g_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,g.JZGLBM as g_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,gp.MC as g_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,gp.SM as g_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,g.GWLBM as g_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,gq.MC as g_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,g.SFJZJS as g_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,gr.MC as g_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,g.SFSSXJS as g_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教
      ,gs.MC as g_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,g.ZP as g_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,g.DQZTM as g_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,gt.MC as g_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,g.YDDH as g_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,g.GDDH as g_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,g.TXDZYZBM as g_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,g.TXDZ as g_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,g.DZXX as g_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,g.WLDZ as g_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,g.JSTXH as g_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,h.SCHOOLID as h_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,h.GH as h_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,h.XM as h_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,h.YWXM as h_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,h.XMPY as h_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,h.CYM as h_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,h.SFZJLXM as h_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,hb.MC as h_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,h.SFZJH as h_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,h.CSRQ as h_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,h.XBM as h_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,hc.MC as h_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,h.MZM as h_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,hd.MZMC as h_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,hd.ZMDM as h_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,h.XXM as h_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,he.MC as h_JZGJBSJ_XXM_MC--血型代码表 名称
      ,he.JC as h_JZGJBSJ_XXM_JC--血型代码表 简称
      ,h.JKZKM as h_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,hf.MC as h_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,hf.SM as h_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,h.HYZTM as h_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,hg.MC as h_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,h.ZZMMM as h_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,hh.MC as h_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,hh.JC as h_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,h.GATQWM as h_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,hi.MC as h_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,hi.SM as h_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,h.JG as h_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,h.GJDQM as h_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,hj.GJDQMCJC as h_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,hj.EZMDM as h_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,hj.SZMDM as h_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,h.CSDXZQHM as h_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,hk.MC as h_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,h.XYZJM as h_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,hl.MC as h_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,h.JZGHKSZDXZQHM as h_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,hm.MC as h_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,h.HKLBM as h_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,hn.MC as h_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,h.DQZZ as h_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,h.DQZZYZBM as h_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,h.CJGZNY as h_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,h.CJNY as h_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,h.LXNY as h_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,h.BZLBM as h_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,ho.MC as h_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,h.JZGLBM as h_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,hp.MC as h_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,hp.SM as h_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,h.GWLBM as h_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,hq.MC as h_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,h.SFJZJS as h_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,hr.MC as h_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,h.SFSSXJS as h_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教
      ,hs.MC as h_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,h.ZP as h_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,h.DQZTM as h_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,ht.MC as h_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,h.YDDH as h_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,h.GDDH as h_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,h.TXDZYZBM as h_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,h.TXDZ as h_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,h.DZXX as h_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,h.WLDZ as h_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,h.JSTXH as h_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号

FROM dbo.EDU_ZZXS_06_01_XSCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCH = d.KCH /*课程号*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*学期ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXZ AS f ON a.KSXZ = f.DM /*考试性质*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS g ON a.RKJGID = g.ID /*任课教工ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS h ON a.CJLRJGID = h.ID /*成绩录入教工ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS db ON d.KSXS = db.DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dc ON d.SKFSM = dc.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS eb ON e.XQM = eb.DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS gb ON g.SFZJLXM = gb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS gc ON g.XBM = gc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS gd ON g.MZM = gd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ge ON g.XXM = ge.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS gf ON g.JKZKM = gf.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS gg ON g.HYZTM = gg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS gh ON g.ZZMMM = gh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS gi ON g.GATQWM = gi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS gj ON g.GJDQM = gj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gk ON g.CSDXZQHM = gk.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS gl ON g.XYZJM = gl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gm ON g.JZGHKSZDXZQHM = gm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS gn ON g.HKLBM = gn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS go ON g.BZLBM = go.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS gp ON g.JZGLBM = gp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS gq ON g.GWLBM = gq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS gr ON g.SFJZJS = gr.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS gs ON g.SFSSXJS = gs.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS gt ON g.DQZTM = gt.DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS hb ON h.SFZJLXM = hb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS hc ON h.XBM = hc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS hd ON h.MZM = hd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS he ON h.XXM = he.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS hf ON h.JKZKM = hf.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS hg ON h.HYZTM = hg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS hh ON h.ZZMMM = hh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS hi ON h.GATQWM = hi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS hj ON h.GJDQM = hj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS hk ON h.CSDXZQHM = hk.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS hl ON h.XYZJM = hl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS hm ON h.JZGHKSZDXZQHM = hm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS hn ON h.HKLBM = hn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS ho ON h.BZLBM = ho.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS hp ON h.JZGLBM = hp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS hq ON h.GWLBM = hq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS hr ON h.SFJZJS = hr.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS hs ON h.SFSSXJS = hs.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ht ON h.DQZTM = ht.DM /*当前状态码*/
GO

--学生简历表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_13_A01_XSJL_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[XSXXID]--学生信息ID
      ,a.[YYNL]--英语能力
      ,a.[GZNX]--工作年限
      ,a.[ZWPJ]--自我评价
      ,a.[JYJL]--教育经历
      ,a.[SHZS]--所获证书
      ,a.[GZJY]--工作经验
      ,a.[QZYX]--求职意向
      ,a.[JNZC]--技能专长
      ,a.[XMJY]--项目经验
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生信息数据表 学校名
      ,c.XH as c_XSXX_XH--学生信息数据表 学号
      ,c.XM as c_XSXX_XM--学生信息数据表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生信息数据表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生信息数据表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生信息数据表 曾用名
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,cb.MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生信息数据表 身份证件号
      ,c.XBM as c_XSXX_XBM--学生信息数据表 性别码
      ,cc.MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.XXM as c_XSXX_XXM--学生信息数据表 血型码
      ,cd.MC as c_XSXX_XXM_MC--血型代码表 名称
      ,cd.JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.CSRQ as c_XSXX_CSRQ--学生信息数据表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生信息数据表 出生地码
      ,ce.MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生信息数据表 籍贯
      ,c.MZM as c_XSXX_MZM--学生信息数据表 民族码
      ,cf.MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.HYZKM as c_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,cg.MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.XYZJM as c_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,ch.MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,ci.MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,ci.SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JKZKM as c_XSXX_JKZKM--学生信息数据表 健康状况码
      ,cj.MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,cj.SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,ck.MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ck.JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_XSXX_HKLBM--学生信息数据表 户口类别码
      ,cm.MC as c_XSXX_HKLBM_MC--户口类别代码 名称
      ,c.SFSLDRK as c_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,cn.MC as c_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,c.GJDQM as c_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.TC as c_XSXX_TC--学生信息数据表 特长
      ,c.XSLXDH as c_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,c.WLDZ as c_XSXX_WLDZ--学生信息数据表 网络地址
      ,c.JSTXH as c_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,c.DZXX as c_XSXX_DZXX--学生信息数据表 电子信箱
      ,c.ZP as c_XSXX_ZP--学生信息数据表 照片(路径)

FROM dbo.EDU_ZZXS_13_A01_XSJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*学生信息ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*国籍/地区*/
GO

--校内机构数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZZXX_03_01_XNJG_DISP]
AS
SELECT a.[JGH]--机构号
      ,a.[SCHOOLID]--学校名
      ,a.[JGMC]--机构名称
      ,a.[JGYWMC]--机构英文名称
      ,a.[JGJC]--机构简称
      ,a.[JGJP]--机构简拼
      ,a.[JGDZ]--机构地址
      ,a.[LSSJJGH]--隶属上级机构号
      ,a.[LSXQH]--隶属校区号
      ,a.[JGYXBS]--机构有效标识
      ,a.[SFST]--是否实体
      ,a.[JLNY]--建立年月
      ,a.[JGYZBM]--机构邮政编码
      ,a.[FZRH]--负责人号
      ,c.SCHOOLID as c_XNJG_SCHOOLID--校内机构数据类表 学校名
      ,c.JGMC as c_XNJG_JGMC--校内机构数据类表 机构名称
      ,c.JGYWMC as c_XNJG_JGYWMC--校内机构数据类表 机构英文名称
      ,c.JGJC as c_XNJG_JGJC--校内机构数据类表 机构简称
      ,c.JGJP as c_XNJG_JGJP--校内机构数据类表 机构简拼
      ,c.JGDZ as c_XNJG_JGDZ--校内机构数据类表 机构地址
      ,c.LSSJJGH as c_XNJG_LSSJJGH--校内机构数据类表 隶属上级机构号
      ,c.LSXQH as c_XNJG_LSXQH--校内机构数据类表 隶属校区号
      ,c.JGYXBS as c_XNJG_JGYXBS--校内机构数据类表 机构有效标识
      ,cb.MC as c_XNJG_JGYXBS_MC--是否标志代码表 名称
      ,c.SFST as c_XNJG_SFST--校内机构数据类表 是否实体
      ,cc.MC as c_XNJG_SFST_MC--是否标志代码表 名称
      ,c.JLNY as c_XNJG_JLNY--校内机构数据类表 建立年月
      ,c.JGYZBM as c_XNJG_JGYZBM--校内机构数据类表 机构邮政编码
      ,c.FZRH as c_XNJG_FZRH--校内机构数据类表 负责人号
      ,d.MC as d_SFBZ_MC--是否标志代码表 名称
      ,e.MC as e_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZZXX_03_01_XNJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.LSSJJGH = c.JGH /*隶属上级机构号*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.JGYXBS = d.DM /*机构有效标识*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFST = e.DM /*是否实体*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.JGYXBS = cb.DM /*机构有效标识*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cc ON c.SFST = cc.DM /*是否实体*/
GO

--学校基本数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZXX_01_01_ZZXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[XXDM]--学校代码
      ,a.[XXMC]--学校名称
      ,a.[XXYWMC]--学校英文名称
      ,a.[XXJBZM]--学校举办者码
      ,a.[XXZGBMM]--学校主管部门码
      ,a.[XXDZ]--学校地址
      ,a.[XXYZBM]--学校邮政编码
      ,a.[XZQHM]--行政区划码
      ,a.[JXNY]--建校年月
      ,a.[XQR]--校庆日
      ,a.[CLBJ]--成立背景
      ,a.[LSYG]--历史沿革
      ,a.[XXXQS]--学校校区数
      ,a.[XXPGLX]--学校评估类型
      ,a.[XXPGQKSM]--学校评估情况说明
      ,a.[ZYDZ]--主页地址
      ,a.[FDDBRH]--法定代表人号
      ,a.[FRZSH]--法人证书号
      ,a.[LXDH]--联系电话
      ,a.[CZDH]--传真电话
      ,a.[DZXX]--电子信箱
      ,b.MC as b_XXJYJGJBZ_MC--学校（教育机构）举办者代码表 名称
      ,b.SM as b_XXJYJGJBZ_SM--学校（教育机构）举办者代码表 说明
      ,c.MC as c_XXJYJGJBZ_MC--学校（教育机构）举办者代码表 名称
      ,c.SM as c_XXJYJGJBZ_SM--学校（教育机构）举办者代码表 说明
      ,d.MC as d_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,e.MC as e_PGQK_MC--评估情况代码 名称

FROM dbo.EDU_ZZXX_01_01_ZZXX AS a LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS b ON a.XXJBZM = b.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS c ON a.XXZGBMM = c.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.XZQHM = d.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS e ON a.XXPGLX = e.DM /*学校评估类型*/
GO

--机构岗位表
CREATE VIEW [dbo].[VIEW_EDU_ZZXX_03_A01_JGGW_DISP]
AS
SELECT a.[ID]--岗位表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[JGH]--机构号
      ,a.[GWBH]--岗位编号
      ,a.[GWMC]--岗位名称
      ,a.[GWSM]--岗位说明
      ,c.SCHOOLID as c_XNJG_SCHOOLID--校内机构数据类表 学校名
      ,c.JGMC as c_XNJG_JGMC--校内机构数据类表 机构名称
      ,c.JGYWMC as c_XNJG_JGYWMC--校内机构数据类表 机构英文名称
      ,c.JGJC as c_XNJG_JGJC--校内机构数据类表 机构简称
      ,c.JGJP as c_XNJG_JGJP--校内机构数据类表 机构简拼
      ,c.JGDZ as c_XNJG_JGDZ--校内机构数据类表 机构地址
      ,c.LSSJJGH as c_XNJG_LSSJJGH--校内机构数据类表 隶属上级机构号
      ,c.LSXQH as c_XNJG_LSXQH--校内机构数据类表 隶属校区号
      ,c.JGYXBS as c_XNJG_JGYXBS--校内机构数据类表 机构有效标识
      ,cb.MC as c_XNJG_JGYXBS_MC--是否标志代码表 名称
      ,c.SFST as c_XNJG_SFST--校内机构数据类表 是否实体
      ,cc.MC as c_XNJG_SFST_MC--是否标志代码表 名称
      ,c.JLNY as c_XNJG_JLNY--校内机构数据类表 建立年月
      ,c.JGYZBM as c_XNJG_JGYZBM--校内机构数据类表 机构邮政编码
      ,c.FZRH as c_XNJG_FZRH--校内机构数据类表 负责人号

FROM dbo.EDU_ZZXX_03_A01_JGGW AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.JGH = c.JGH /*机构号*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.JGYXBS = cb.DM /*机构有效标识*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cc ON c.SFST = cc.DM /*是否实体*/
GO

--入学成绩数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZZS_02_01_RXCJ_DISP]
AS
SELECT a.[XSXXID]--学生信息数据表
      ,a.[SCHOOLID]--学校名
      ,a.[RXZF]--入学总分
      ,a.[GKZF]--中考总分
      ,a.[FJF]--附加分
      ,a.[FJFLBM]--附加分类别码
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生信息数据表 学校名
      ,b.XH as b_XSXX_XH--学生信息数据表 学号
      ,b.XM as b_XSXX_XM--学生信息数据表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生信息数据表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生信息数据表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生信息数据表 曾用名
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,bb.MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生信息数据表 身份证件号
      ,b.XBM as b_XSXX_XBM--学生信息数据表 性别码
      ,bc.MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.XXM as b_XSXX_XXM--学生信息数据表 血型码
      ,bd.MC as b_XSXX_XXM_MC--血型代码表 名称
      ,bd.JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.CSRQ as b_XSXX_CSRQ--学生信息数据表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生信息数据表 出生地码
      ,be.MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生信息数据表 籍贯
      ,b.MZM as b_XSXX_MZM--学生信息数据表 民族码
      ,bf.MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.HYZKM as b_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.XYZJM as b_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,bh.MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,bi.MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,bi.SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.JKZKM as b_XSXX_JKZKM--学生信息数据表 健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,bj.SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,bk.MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,bk.JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.HKLBM as b_XSXX_HKLBM--学生信息数据表 户口类别码
      ,bm.MC as b_XSXX_HKLBM_MC--户口类别代码 名称
      ,b.SFSLDRK as b_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,bn.MC as b_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,b.GJDQM as b_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.TC as b_XSXX_TC--学生信息数据表 特长
      ,b.XSLXDH as b_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,b.WLDZ as b_XSXX_WLDZ--学生信息数据表 网络地址
      ,b.JSTXH as b_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,b.DZXX as b_XSXX_DZXX--学生信息数据表 电子信箱
      ,b.ZP as b_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.MC as d_FJFLB_MC--附加分类别代码表 名称

FROM dbo.EDU_ZZZS_02_01_RXCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生信息数据表*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_FJFLB AS d ON a.FJFLBM = d.DM /*附加分类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*国籍/地区*/
GO

--招生计划数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZZS_01_A01_ZSJH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[ZYXXID]--专业基本信息
      ,a.[XNID]--学年
      ,a.[ZSJHRS]--招生计划
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,c.ZYDM as c_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,cb.ZYMLLB as c_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,cb.MC as c_ZYXX_ZYDM_MC--自建专业代码 名称
      ,c.ZYMC as c_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,c.ZYYWMC as c_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,c.XZ as c_ZYXX_XZ--专业基本信息数据表 学制
      ,c.ZYFXMC as c_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,c.ZYJC as c_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,c.JLNY as c_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,c.ZYJSS as c_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,c.KSJGH as c_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,c.ZXF as c_ZYXX_ZXF--专业基本信息数据表 总学分
      ,c.SSZYML as c_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,cc.MC as c_ZYXX_SSZYML_MC--专业目录代码 名称
      ,c.ZYLB as c_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,d.SCHOOLID as d_XN_SCHOOLID--学年表 学校名
      ,d.XN as d_XN_XN--学年表 学年

FROM dbo.EDU_ZZZS_01_A01_ZSJH AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS c ON a.ZYXXID = c.ZYBH /*专业基本信息*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS d ON a.XNID = d.ID /*学年*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS cb ON c.ZYDM = cb.DM /*专业代码*/ AND c.SSZYML = cb.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS cc ON c.SSZYML = cc.DM /*所属专业目录*/
GO

--考生数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZZS_01_01_ZSXX_DISP]
AS
SELECT a.[XSXXID]--学生信息数据表
      ,a.[SCHOOLID]--学校名
      ,a.[ZKZH]--准考证号
      ,a.[KSH]--考生号
      ,a.[KQXZQHM]--考区行政区划码
      ,a.[RXNY]--入学年月
      ,a.[YSWGYZM]--应试外国语种码
      ,a.[BKZYM1]--报考专业码1
      ,a.[BKZYM2]--报考专业码2
      ,a.[BKZYM3]--报考专业码3
      ,a.[BKZYM4]--报考专业码4
      ,a.[BKZYM5]--报考专业码5
      ,a.[BKZYM6]--报考专业码6
      ,a.[KSFSM]--考试方式码
      ,a.[BYZX]--毕业中学
      ,a.[BYZXYZBM]--毕业中学邮政编码
      ,a.[KSTC]--考生特长
      ,a.[JLYCC]--奖励与惩处
      ,a.[JSHJ]--竞赛获奖
      ,a.[SHGZ]--社会工作
      ,a.[TJJL]--体检结论
      ,a.[JZBS]--家族病史
      ,a.[KSJWBS]--考生既往病史
      ,a.[SG]--身高
      ,a.[KSSL]--考生视力
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生信息数据表 学校名
      ,b.XH as b_XSXX_XH--学生信息数据表 学号
      ,b.XM as b_XSXX_XM--学生信息数据表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生信息数据表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生信息数据表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生信息数据表 曾用名
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,bb.MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生信息数据表 身份证件号
      ,b.XBM as b_XSXX_XBM--学生信息数据表 性别码
      ,bc.MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.XXM as b_XSXX_XXM--学生信息数据表 血型码
      ,bd.MC as b_XSXX_XXM_MC--血型代码表 名称
      ,bd.JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.CSRQ as b_XSXX_CSRQ--学生信息数据表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生信息数据表 出生地码
      ,be.MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生信息数据表 籍贯
      ,b.MZM as b_XSXX_MZM--学生信息数据表 民族码
      ,bf.MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.HYZKM as b_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.XYZJM as b_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,bh.MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,bi.MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,bi.SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.JKZKM as b_XSXX_JKZKM--学生信息数据表 健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,bj.SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,bk.MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,bk.JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.HKLBM as b_XSXX_HKLBM--学生信息数据表 户口类别码
      ,bm.MC as b_XSXX_HKLBM_MC--户口类别代码 名称
      ,b.SFSLDRK as b_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,bn.MC as b_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,b.GJDQM as b_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.TC as b_XSXX_TC--学生信息数据表 特长
      ,b.XSLXDH as b_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,b.WLDZ as b_XSXX_WLDZ--学生信息数据表 网络地址
      ,b.JSTXH as b_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,b.DZXX as b_XSXX_DZXX--学生信息数据表 电子信箱
      ,b.ZP as b_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.MC as d_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,e.MC as e_YZMCEZM_MC--语种名称代码2字母代码 名称
      ,f.MC as f_KSFS_MC--考试方式代码表 名称
      ,f.SM as f_KSFS_SM--考试方式代码表 说明

FROM dbo.EDU_ZZZS_01_01_ZSXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生信息数据表*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.KQXZQHM = d.DM /*考区行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_YZMCEZM AS e ON a.YSWGYZM = e.DM /*应试外国语种码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSFS AS f ON a.KSFSM = f.DM /*考试方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*国籍/地区*/
GO

--考生科目成绩数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZZZS_03_01_KSKMCJ_DISP]
AS
SELECT a.[XSXXID]--考生ID
      ,a.[SCHOOLID]--学校ID
      ,a.[KMM]--科目码
      ,a.[ZKFS]--中考分数
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生信息数据表 学校名
      ,b.XH as b_XSXX_XH--学生信息数据表 学号
      ,b.XM as b_XSXX_XM--学生信息数据表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生信息数据表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生信息数据表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生信息数据表 曾用名
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,bb.MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生信息数据表 身份证件号
      ,b.XBM as b_XSXX_XBM--学生信息数据表 性别码
      ,bc.MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.XXM as b_XSXX_XXM--学生信息数据表 血型码
      ,bd.MC as b_XSXX_XXM_MC--血型代码表 名称
      ,bd.JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.CSRQ as b_XSXX_CSRQ--学生信息数据表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生信息数据表 出生地码
      ,be.MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生信息数据表 籍贯
      ,b.MZM as b_XSXX_MZM--学生信息数据表 民族码
      ,bf.MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.HYZKM as b_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.XYZJM as b_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,bh.MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,bi.MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,bi.SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.JKZKM as b_XSXX_JKZKM--学生信息数据表 健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,bj.SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,bk.MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,bk.JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.HKLBM as b_XSXX_HKLBM--学生信息数据表 户口类别码
      ,bm.MC as b_XSXX_HKLBM_MC--户口类别代码 名称
      ,b.SFSLDRK as b_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,bn.MC as b_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,b.GJDQM as b_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.TC as b_XSXX_TC--学生信息数据表 特长
      ,b.XSLXDH as b_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,b.WLDZ as b_XSXX_WLDZ--学生信息数据表 网络地址
      ,b.JSTXH as b_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,b.DZXX as b_XSXX_DZXX--学生信息数据表 电子信箱
      ,b.ZP as b_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.MC as d_ZKKM_MC--中考科目代码 名称

FROM dbo.EDU_ZZZS_03_01_KSKMCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*考生ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_ZKKM AS d ON a.KMM = d.DM /*科目码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*国籍/地区*/
GO
