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
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_03_APPRZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_03_APPRZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_03_APPLL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_03_APPLL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_02_YHFZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_02_YHFZ_DISP
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
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXJZ_01_01_JZGJBSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXJZ_01_01_JZGJBSJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXJZ_02_A01_XNGWSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXJZ_02_A01_XNGWSJ_DISP
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
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXX_05_A01_ZXXQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXX_05_A01_ZXXQ_DISP
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
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJG_02_01_JZGLXFS_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJG_02_01_JZGLXFS_DISP
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
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZZJX_01_03_ZZXQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZZJX_01_03_ZZXQ_DISP
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_APP_SCHOOLID--ѧУID
      ,c.NAME as c_APP_NAME--Ӧ������
      ,c.URL as c_APP_URL--��ַ
      ,c.AUTHIP as c_APP_AUTHIP--����IP
      ,c.SM as c_APP_SM--˵��
      ,c.DLFS as c_APP_DLFS--��¼��ʽ
      ,c.STATUS as c_APP_STATUS--Ӧ��״̬

FROM dbo.EDU_ELE_01_USER AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����

FROM dbo.EDU_ELE_01_APP AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/
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
      ,a.[LogLevel]--��־����
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_ZZXQ_SCHOOLID--ѧУ��
      ,c.XNID as c_ZZXQ_XNID--ѧ��
      ,c.XQM as c_ZZXQ_XQM--ѧ����
      ,cb.MC as c_ZZXQ_XQM_MC--����
      ,c.XQMC as c_ZZXQ_XQMC--ѧ������
      ,c.XQKSRQ as c_ZZXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_ZZXQ_XQJSRQ--ѧ�ڽ�������

FROM dbo.EDU_ELE_01_SCHOOL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_03_ZZXQ AS c ON a.XQID = c.ID /*ѧ��ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_USER_SCHOOLID--ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ID
      ,c.PWD as c_USER_PWD--����
      ,c.STATUS as c_USER_STATUS--�û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--�û����
      ,c.USERID as c_USER_USERID--�û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--�û���ɫ
      ,c.XM as c_USER_XM--����
      ,c.XB as c_USER_XB--�Ա�
      ,c.QQ as c_USER_QQ--QQ
      ,c.DZYJ as c_USER_DZYJ--�����ʼ�
      ,c.LXDH as c_USER_LXDH--��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_ELE_03_APPRZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_USER_SCHOOLID--ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ID
      ,c.PWD as c_USER_PWD--����
      ,c.STATUS as c_USER_STATUS--�û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--�û����
      ,c.USERID as c_USER_USERID--�û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--�û���ɫ
      ,c.XM as c_USER_XM--����
      ,c.XB as c_USER_XB--�Ա�
      ,c.QQ as c_USER_QQ--QQ
      ,c.DZYJ as c_USER_DZYJ--�����ʼ�
      ,c.LXDH as c_USER_LXDH--��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_ELE_03_APPLL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*�����û�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_APP_SCHOOLID--ѧУID
      ,c.NAME as c_APP_NAME--Ӧ������
      ,c.URL as c_APP_URL--��ַ
      ,c.AUTHIP as c_APP_AUTHIP--����IP
      ,c.SM as c_APP_SM--˵��
      ,c.DLFS as c_APP_DLFS--��¼��ʽ
      ,c.STATUS as c_APP_STATUS--Ӧ��״̬
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��
      ,e.SCHOOLID as e_YHFZ_SCHOOLID--ѧУID
      ,e.APPID as e_YHFZ_APPID--Ӧ��ID
      ,e.YHID as e_YHFZ_YHID--�û�ID
      ,e.SJFZID as e_YHFZ_SJFZID--�ϼ�����ID
      ,e.FZMC as e_YHFZ_FZMC--��������
      ,e.FZYHID as e_YHFZ_FZYHID--�����û�ID�б�

FROM dbo.EDU_ELE_02_YHFZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*Ӧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YHID = d.LOGINNAME /*�û�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_02_YHFZ AS e ON a.SJFZID = e.ID /*�ϼ�����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ AND a.APPID = e.APPID /*Ӧ��ID*/
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_USER_SCHOOLID--ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ID
      ,c.PWD as c_USER_PWD--����
      ,c.STATUS as c_USER_STATUS--�û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--�û����
      ,c.USERID as c_USER_USERID--�û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--�û���ɫ
      ,c.XM as c_USER_XM--����
      ,c.XB as c_USER_XB--�Ա�
      ,c.QQ as c_USER_QQ--QQ
      ,c.DZYJ as c_USER_DZYJ--�����ʼ�
      ,c.LXDH as c_USER_LXDH--��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_OAXT_10_A01_TZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_TZ_SCHOOLID--ѧУID
      ,c.FSRID as c_TZ_FSRID--������ID
      ,c.FSRLB as c_TZ_FSRLB--���������
      ,c.BT as c_TZ_BT--����
      ,c.NR as c_TZ_NR--����
      ,c.FJ as c_TZ_FJ--����
      ,c.TJRQ as c_TZ_TJRQ--�������
      ,c.JSRS as c_TZ_JSRS--��������
      ,c.JSRIDLB as c_TZ_JSRIDLB--������ID�б�
      ,c.JSRMZLB as c_TZ_JSRMZLB--�����������б�
      ,c.YYDRIDLB as c_TZ_YYDRIDLB--���Ķ���ID�б�
      ,c.YYDRMZLB as c_TZ_YYDRMZLB--���Ķ��������б�
      ,c.FSZT as c_TZ_FSZT--����״̬
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��
      ,e.MC as e_SFBZ_MC--����

FROM dbo.EDU_OAXT_10_A02_TZYDJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_USER_SCHOOLID--ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ID
      ,c.PWD as c_USER_PWD--����
      ,c.STATUS as c_USER_STATUS--�û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--�û����
      ,c.USERID as c_USER_USERID--�û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--�û���ɫ
      ,c.XM as c_USER_XM--����
      ,c.XB as c_USER_XB--�Ա�
      ,c.QQ as c_USER_QQ--QQ
      ,c.DZYJ as c_USER_DZYJ--�����ʼ�
      ,c.LXDH as c_USER_LXDH--��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_OAXT_10_A03_GG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_USER_SCHOOLID--ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ID
      ,c.PWD as c_USER_PWD--����
      ,c.STATUS as c_USER_STATUS--�û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--�û����
      ,c.USERID as c_USER_USERID--�û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--�û���ɫ
      ,c.XM as c_USER_XM--����
      ,c.XB as c_USER_XB--�Ա�
      ,c.QQ as c_USER_QQ--QQ
      ,c.DZYJ as c_USER_DZYJ--�����ʼ�
      ,c.LXDH as c_USER_LXDH--��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--�û�����ʱ��
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��
      ,e.SCHOOLID as e_USER_SCHOOLID--ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ID
      ,e.PWD as e_USER_PWD--����
      ,e.STATUS as e_USER_STATUS--�û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--�û����
      ,e.USERID as e_USER_USERID--�û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--�û���ɫ
      ,e.XM as e_USER_XM--����
      ,e.XB as e_USER_XB--�Ա�
      ,e.QQ as e_USER_QQ--QQ
      ,e.DZYJ as e_USER_DZYJ--�����ʼ�
      ,e.LXDH as e_USER_LXDH--��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--�û�����ʱ��
      ,f.MC as f_SFBZ_MC--����

FROM dbo.EDU_OAXT_11_A01_YJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.HYPYDM as c_WXBMZJ_HYPYDM--����ƴ������
      ,c.HZDM as c_WXBMZJ_HZDM--���ִ���
      ,c.MC as c_WXBMZJ_MC--����
      ,d.MC as d_JJCD_MC--����
      ,e.MC as e_WJFL_MC--����
      ,e.SM as e_WJFL_SM--˵��

FROM dbo.EDU_OAXT_01_01_WJJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--����
      ,c.ZTC as c_WJJBSJ_ZTC--�����
      ,c.MJM as c_WJJBSJ_MJM--�ܼ���
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--����
      ,c.YS as c_WJJBSJ_YS--ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--˵��
      ,c.ZW as c_WJJBSJ_ZW--����
      ,c.FJ as c_WJJBSJ_FJ--����
      ,c.FWRQ as c_WJJBSJ_FWRQ--��������
      ,c.CSDW as c_WJJBSJ_CSDW--���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��
      ,e.SCHOOLID as e_USER_SCHOOLID--ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ID
      ,e.PWD as e_USER_PWD--����
      ,e.STATUS as e_USER_STATUS--�û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--�û����
      ,e.USERID as e_USER_USERID--�û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--�û���ɫ
      ,e.XM as e_USER_XM--����
      ,e.XB as e_USER_XB--�Ա�
      ,e.QQ as e_USER_QQ--QQ
      ,e.DZYJ as e_USER_DZYJ--�����ʼ�
      ,e.LXDH as e_USER_LXDH--��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--�û�����ʱ��
      ,f.SCHOOLID as f_USER_SCHOOLID--ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ID
      ,f.PWD as f_USER_PWD--����
      ,f.STATUS as f_USER_STATUS--�û�״̬
      ,f.USERTYPE as f_USER_USERTYPE--�û����
      ,f.USERID as f_USER_USERID--�û�ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--�û���ɫ
      ,f.XM as f_USER_XM--����
      ,f.XB as f_USER_XB--�Ա�
      ,f.QQ as f_USER_QQ--QQ
      ,f.DZYJ as f_USER_DZYJ--�����ʼ�
      ,f.LXDH as f_USER_LXDH--��ϵ�绰
      ,f.ZJDLSJ as f_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,f.DLCGCS as f_USER_DLCGCS--��¼�ɹ�����
      ,f.YHCJSJ as f_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_OAXT_02_01_SWCL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--����
      ,c.ZTC as c_WJJBSJ_ZTC--�����
      ,c.MJM as c_WJJBSJ_MJM--�ܼ���
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--����
      ,c.YS as c_WJJBSJ_YS--ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--˵��
      ,c.ZW as c_WJJBSJ_ZW--����
      ,c.FJ as c_WJJBSJ_FJ--����
      ,c.FWRQ as c_WJJBSJ_FWRQ--��������
      ,c.CSDW as c_WJJBSJ_CSDW--���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��
      ,e.MC as e_YBLB_MC--����
      ,e.SM as e_YBLB_SM--˵��

FROM dbo.EDU_OAXT_02_02_WJYB AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--����
      ,c.ZTC as c_WJJBSJ_ZTC--�����
      ,c.MJM as c_WJJBSJ_MJM--�ܼ���
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--����
      ,c.YS as c_WJJBSJ_YS--ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--˵��
      ,c.ZW as c_WJJBSJ_ZW--����
      ,c.FJ as c_WJJBSJ_FJ--����
      ,c.FWRQ as c_WJJBSJ_FWRQ--��������
      ,c.CSDW as c_WJJBSJ_CSDW--���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��
      ,e.SCHOOLID as e_USER_SCHOOLID--ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ID
      ,e.PWD as e_USER_PWD--����
      ,e.STATUS as e_USER_STATUS--�û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--�û����
      ,e.USERID as e_USER_USERID--�û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--�û���ɫ
      ,e.XM as e_USER_XM--����
      ,e.XB as e_USER_XB--�Ա�
      ,e.QQ as e_USER_QQ--QQ
      ,e.DZYJ as e_USER_DZYJ--�����ʼ�
      ,e.LXDH as e_USER_LXDH--��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--�û�����ʱ��
      ,f.SCHOOLID as f_USER_SCHOOLID--ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ID
      ,f.PWD as f_USER_PWD--����
      ,f.STATUS as f_USER_STATUS--�û�״̬
      ,f.USERTYPE as f_USER_USERTYPE--�û����
      ,f.USERID as f_USER_USERID--�û�ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--�û���ɫ
      ,f.XM as f_USER_XM--����
      ,f.XB as f_USER_XB--�Ա�
      ,f.QQ as f_USER_QQ--QQ
      ,f.DZYJ as f_USER_DZYJ--�����ʼ�
      ,f.LXDH as f_USER_LXDH--��ϵ�绰
      ,f.ZJDLSJ as f_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,f.DLCGCS as f_USER_DLCGCS--��¼�ɹ�����
      ,f.YHCJSJ as f_USER_YHCJSJ--�û�����ʱ��
      ,g.SCHOOLID as g_USER_SCHOOLID--ѧУID
      ,g.APPID as g_USER_APPID--Ӧ��ID
      ,g.PWD as g_USER_PWD--����
      ,g.STATUS as g_USER_STATUS--�û�״̬
      ,g.USERTYPE as g_USER_USERTYPE--�û����
      ,g.USERID as g_USER_USERID--�û�ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--�û���ɫ
      ,g.XM as g_USER_XM--����
      ,g.XB as g_USER_XB--�Ա�
      ,g.QQ as g_USER_QQ--QQ
      ,g.DZYJ as g_USER_DZYJ--�����ʼ�
      ,g.LXDH as g_USER_LXDH--��ϵ�绰
      ,g.ZJDLSJ as g_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,g.DLCGCS as g_USER_DLCGCS--��¼�ɹ�����
      ,g.YHCJSJ as g_USER_YHCJSJ--�û�����ʱ��
      ,h.SCHOOLID as h_USER_SCHOOLID--ѧУID
      ,h.APPID as h_USER_APPID--Ӧ��ID
      ,h.PWD as h_USER_PWD--����
      ,h.STATUS as h_USER_STATUS--�û�״̬
      ,h.USERTYPE as h_USER_USERTYPE--�û����
      ,h.USERID as h_USER_USERID--�û�ID
      ,h.ROLEIDLst as h_USER_ROLEIDLst--�û���ɫ
      ,h.XM as h_USER_XM--����
      ,h.XB as h_USER_XB--�Ա�
      ,h.QQ as h_USER_QQ--QQ
      ,h.DZYJ as h_USER_DZYJ--�����ʼ�
      ,h.LXDH as h_USER_LXDH--��ϵ�绰
      ,h.ZJDLSJ as h_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,h.DLCGCS as h_USER_DLCGCS--��¼�ɹ�����
      ,h.YHCJSJ as h_USER_YHCJSJ--�û�����ʱ��
      ,i.MC as i_FSFS_MC--����
      ,j.MC as j_GWFZFS_MC--����

FROM dbo.EDU_OAXT_03_01_FWCL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--����
      ,c.ZTC as c_WJJBSJ_ZTC--�����
      ,c.MJM as c_WJJBSJ_MJM--�ܼ���
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--����
      ,c.YS as c_WJJBSJ_YS--ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--˵��
      ,c.ZW as c_WJJBSJ_ZW--����
      ,c.FJ as c_WJJBSJ_FJ--����
      ,c.FWRQ as c_WJJBSJ_FWRQ--��������
      ,c.CSDW as c_WJJBSJ_CSDW--���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_OAXT_03_02_HG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--����
      ,c.ZTC as c_WJJBSJ_ZTC--�����
      ,c.MJM as c_WJJBSJ_MJM--�ܼ���
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--����
      ,c.YS as c_WJJBSJ_YS--ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--˵��
      ,c.ZW as c_WJJBSJ_ZW--����
      ,c.FJ as c_WJJBSJ_FJ--����
      ,c.FWRQ as c_WJJBSJ_FWRQ--��������
      ,c.CSDW as c_WJJBSJ_CSDW--���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_OAXT_03_03_HQ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--����
      ,c.ZTC as c_WJJBSJ_ZTC--�����
      ,c.MJM as c_WJJBSJ_MJM--�ܼ���
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--����
      ,c.YS as c_WJJBSJ_YS--ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--˵��
      ,c.ZW as c_WJJBSJ_ZW--����
      ,c.FJ as c_WJJBSJ_FJ--����
      ,c.FWRQ as c_WJJBSJ_FWRQ--��������
      ,c.CSDW as c_WJJBSJ_CSDW--���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_OAXT_03_04_CP AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--����
      ,c.ZTC as c_WJJBSJ_ZTC--�����
      ,c.MJM as c_WJJBSJ_MJM--�ܼ���
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--����
      ,c.YS as c_WJJBSJ_YS--ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--˵��
      ,c.ZW as c_WJJBSJ_ZW--����
      ,c.FJ as c_WJJBSJ_FJ--����
      ,c.FWRQ as c_WJJBSJ_FWRQ--��������
      ,c.CSDW as c_WJJBSJ_CSDW--���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_OAXT_04_01_WJQT AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--����
      ,c.ZTC as c_WJJBSJ_ZTC--�����
      ,c.MJM as c_WJJBSJ_MJM--�ܼ���
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--����
      ,c.YS as c_WJJBSJ_YS--ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--˵��
      ,c.ZW as c_WJJBSJ_ZW--����
      ,c.FJ as c_WJJBSJ_FJ--����
      ,c.FWRQ as c_WJJBSJ_FWRQ--��������
      ,c.CSDW as c_WJJBSJ_CSDW--���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��
      ,e.SCHOOLID as e_USER_SCHOOLID--ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ID
      ,e.PWD as e_USER_PWD--����
      ,e.STATUS as e_USER_STATUS--�û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--�û����
      ,e.USERID as e_USER_USERID--�û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--�û���ɫ
      ,e.XM as e_USER_XM--����
      ,e.XB as e_USER_XB--�Ա�
      ,e.QQ as e_USER_QQ--QQ
      ,e.DZYJ as e_USER_DZYJ--�����ʼ�
      ,e.LXDH as e_USER_LXDH--��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_OAXT_05_01_WJXH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--����
      ,c.ZTC as c_WJJBSJ_ZTC--�����
      ,c.MJM as c_WJJBSJ_MJM--�ܼ���
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--����
      ,c.YS as c_WJJBSJ_YS--ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--˵��
      ,c.ZW as c_WJJBSJ_ZW--����
      ,c.FJ as c_WJJBSJ_FJ--����
      ,c.FWRQ as c_WJJBSJ_FWRQ--��������
      ,c.CSDW as c_WJJBSJ_CSDW--���͵�λ
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��
      ,e.SCHOOLID as e_USER_SCHOOLID--ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ID
      ,e.PWD as e_USER_PWD--����
      ,e.STATUS as e_USER_STATUS--�û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--�û����
      ,e.USERID as e_USER_USERID--�û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--�û���ɫ
      ,e.XM as e_USER_XM--����
      ,e.XB as e_USER_XB--�Ա�
      ,e.QQ as e_USER_QQ--QQ
      ,e.DZYJ as e_USER_DZYJ--�����ʼ�
      ,e.LXDH as e_USER_LXDH--��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_OAXT_06_01_WJJQ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ

FROM dbo.EDU_OAXT_12_A01_SJFB AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_DWSJ_SCHOOLID--ѧУID
      ,c.SJDWID as c_DWSJ_SJDWID--�ϼ���λID
      ,c.DWFZRID as c_DWSJ_DWFZRID--��λ������ID
      ,c.DWMC as c_DWSJ_DWMC--��λ����
      ,c.DWCYIDLB as c_DWSJ_DWCYIDLB--��λ��ԱID�б�
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_OAXT_13_A01_DWSJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_13_A01_DWSJ AS c ON a.SJDWID = c.ID /*�ϼ���λID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.DWFZRID = d.LOGINNAME /*��λ������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/
GO

--ѧ���
CREATE VIEW [dbo].[VIEW_EDU_SYS_01_XN_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XN]--ѧ��
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������

FROM dbo.EDU_SYS_01_XN AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ

FROM dbo.EDU_WZXT_VIP AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ

FROM dbo.EDU_WZXT_TPXT_TPYS AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ
      ,d.SCHOOLID as d_TPSZ_SCHOOLID--ѧУ��
      ,d.WEBID as d_TPSZ_WEBID--��վID
      ,d.TITLE as d_TPSZ_TITLE--����
      ,d.CONTENT as d_TPSZ_CONTENT--����
      ,d.SHOWSTYLEID as d_TPSZ_SHOWSTYLEID--��ʾ��ʽ
      ,d.CSSID as d_TPSZ_CSSID--��ʾ��ʽ
      ,d.LOGINNAMELIST as d_TPSZ_LOGINNAMELIST--ͶƱ��
      ,d.STARTSTATU as d_TPSZ_STARTSTATU--�Ƿ���
      ,e.SCHOOLID as e_TPTM_SCHOOLID--ѧУ��
      ,e.WEBID as e_TPTM_WEBID--��վID
      ,e.TPID as e_TPTM_TPID--ͶƱ
      ,e.TYPEID as e_TPTM_TYPEID--ͶƱ��ʽ
      ,e.TITLE as e_TPTM_TITLE--����
      ,e.CONTENT as e_TPTM_CONTENT--����

FROM dbo.EDU_WZXT_TPXT_TPXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ
      ,d.SCHOOLID as d_TPSZ_SCHOOLID--ѧУ��
      ,d.WEBID as d_TPSZ_WEBID--��վID
      ,d.TITLE as d_TPSZ_TITLE--����
      ,d.CONTENT as d_TPSZ_CONTENT--����
      ,d.SHOWSTYLEID as d_TPSZ_SHOWSTYLEID--��ʾ��ʽ
      ,d.CSSID as d_TPSZ_CSSID--��ʾ��ʽ
      ,d.LOGINNAMELIST as d_TPSZ_LOGINNAMELIST--ͶƱ��
      ,d.STARTSTATU as d_TPSZ_STARTSTATU--�Ƿ���

FROM dbo.EDU_WZXT_TPXT_TPTM AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ
      ,d.SCHOOLID as d_TPYS_SCHOOLID--ѧУ��
      ,d.WEBID as d_TPYS_WEBID--��վID
      ,d.NAME as d_TPYS_NAME--��ʽ��
      ,d.SHOWIMG as d_TPYS_SHOWIMG--Ч��ͼ

FROM dbo.EDU_WZXT_TPXT_TPSZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ
      ,d.SCHOOLID as d_TPSZ_SCHOOLID--ѧУ��
      ,d.WEBID as d_TPSZ_WEBID--��վID
      ,d.TITLE as d_TPSZ_TITLE--����
      ,d.CONTENT as d_TPSZ_CONTENT--����
      ,d.SHOWSTYLEID as d_TPSZ_SHOWSTYLEID--��ʾ��ʽ
      ,d.CSSID as d_TPSZ_CSSID--��ʾ��ʽ
      ,d.LOGINNAMELIST as d_TPSZ_LOGINNAMELIST--ͶƱ��
      ,d.STARTSTATU as d_TPSZ_STARTSTATU--�Ƿ���

FROM dbo.EDU_WZXT_TPXT_TPJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ

FROM dbo.EDU_WZXT_MHXT_YQLJLX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ
      ,d.SCHOOLID as d_YQLJLX_SCHOOLID--ѧУ��
      ,d.WEBID as d_YQLJLX_WEBID--��վID
      ,d.NAME as d_YQLJLX_NAME--������
      ,d.SHOWSTYLE as d_YQLJLX_SHOWSTYLE--��ʾ��ʽ

FROM dbo.EDU_WZXT_MHXT_YQLJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ

FROM dbo.EDU_WZXT_MHXT_WZYS AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,a.[DISPLAYTYPE]--�Ƿ���ʾ
      ,a.[OPENFLAG]--������
      ,a.[LLQX]--���Ȩ��
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ
      ,d.SCHOOLID as d_WZLM_SCHOOLID--ѧУ��
      ,d.WEBID as d_WZLM_WEBID--��վID
      ,d.LMSHOWSTYLE as d_WZLM_LMSHOWSTYLE--��Ŀʹ������
      ,d.NAME as d_WZLM_NAME--��Ŀ����
      ,d.URL as d_WZLM_URL--��Ŀ����
      ,d.IMAGEURL as d_WZLM_IMAGEURL--ͼƬ����
      ,d.DEPTH as d_WZLM_DEPTH--�㼶
      ,d.PID as d_WZLM_PID--��Ŀ¼
      ,d.LISTSHOWSTYLE as d_WZLM_LISTSHOWSTYLE--�б���ʾ��ʽ
      ,d.ORDERTYPE as d_WZLM_ORDERTYPE--����ʽ
      ,d.SHOWNUMBER as d_WZLM_SHOWNUMBER--��ʾ����
      ,d.OPENFLAG as d_WZLM_OPENFLAG--������
      ,d.LLQX as d_WZLM_LLQX--���Ȩ��

FROM dbo.EDU_WZXT_MHXT_WZWZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ
      ,d.SCHOOLID as d_WZWZ_SCHOOLID--ѧУ��
      ,d.WEBID as d_WZWZ_WEBID--��վID
      ,d.TYPENAME as d_WZWZ_TYPENAME--��������
      ,d.LMID as d_WZWZ_LMID--��Ŀ
      ,d.TITLE as d_WZWZ_TITLE--����
      ,d.PUBLISHERNAME as d_WZWZ_PUBLISHERNAME--������
      ,d.AUTHOR as d_WZWZ_AUTHOR--����
      ,d.AUTHORDEPART as d_WZWZ_AUTHORDEPART--���߲���
      ,d.PUBLISHDATE as d_WZWZ_PUBLISHDATE--����ʱ��
      ,d.CONTENT as d_WZWZ_CONTENT--����
      ,d.URL as d_WZWZ_URL--����
      ,d.IMAGEURL as d_WZWZ_IMAGEURL--ͼƬ
      ,d.ATTACHMENTNAME as d_WZWZ_ATTACHMENTNAME--������
      ,d.ATTACHMENT as d_WZWZ_ATTACHMENT--����
      ,d.CHICKNUB as d_WZWZ_CHICKNUB--�����
      ,d.AUDITSTATU as d_WZWZ_AUDITSTATU--���״̬
      ,d.AUDITOR as d_WZWZ_AUDITOR--�����ID
      ,d.AUDITORNAME as d_WZWZ_AUDITORNAME--�����
      ,d.AUDITTIME as d_WZWZ_AUDITTIME--���ʱ��
      ,d.REMARK as d_WZWZ_REMARK--��ע
      ,d.SUMMARY as d_WZWZ_SUMMARY--ժҪ
      ,d.DISPLAYTYPE as d_WZWZ_DISPLAYTYPE--�Ƿ���ʾ
      ,d.OPENFLAG as d_WZWZ_OPENFLAG--������
      ,d.LLQX as d_WZWZ_LLQX--���Ȩ��

FROM dbo.EDU_WZXT_MHXT_WZPJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
      ,b.SCHOOLID as b_WZPZ_SCHOOLID--ѧУ��
      ,b.WEBNAME as b_WZPZ_WEBNAME--��վ��
      ,b.STATUID as b_WZPZ_STATUID--�Ƿ���
      ,b.WEBURL as b_WZPZ_WEBURL--��ַ
      ,b.CSSID as b_WZPZ_CSSID--��վ��ʽ
      ,c.SCHOOLNAME as c_SCHOOL_SCHOOLNAME--ѧУ����
      ,c.SCHOOLTYPE as c_SCHOOL_SCHOOLTYPE--ѧУ����
      ,c.XNID as c_SCHOOL_XNID--ѧ��ID
      ,c.XQID as c_SCHOOL_XQID--ѧ��ID
      ,c.MatchURL as c_SCHOOL_MatchURL--ƥ��url
      ,c.LogLevel as c_SCHOOL_LogLevel--��־����
      ,d.SCHOOLID as d_WZYS_SCHOOLID--ѧУ��
      ,d.WEBID as d_WZYS_WEBID--��վID
      ,d.NAME as d_WZYS_NAME--��ʽ��
      ,d.SHOWIMG as d_WZYS_SHOWIMG--Ч��ͼ

FROM dbo.EDU_WZXT_MHXT_WZPZ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS b ON a.WEBID = b.WEBID /*��վID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS c ON a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,a.[OPENFLAG]--������
      ,a.[LLQX]--���Ȩ��
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ
      ,d.SCHOOLID as d_WZLM_SCHOOLID--ѧУ��
      ,d.WEBID as d_WZLM_WEBID--��վID
      ,d.LMSHOWSTYLE as d_WZLM_LMSHOWSTYLE--��Ŀʹ������
      ,d.NAME as d_WZLM_NAME--��Ŀ����
      ,d.URL as d_WZLM_URL--��Ŀ����
      ,d.IMAGEURL as d_WZLM_IMAGEURL--ͼƬ����
      ,d.DEPTH as d_WZLM_DEPTH--�㼶
      ,d.PID as d_WZLM_PID--��Ŀ¼
      ,d.LISTSHOWSTYLE as d_WZLM_LISTSHOWSTYLE--�б���ʾ��ʽ
      ,d.ORDERTYPE as d_WZLM_ORDERTYPE--����ʽ
      ,d.SHOWNUMBER as d_WZLM_SHOWNUMBER--��ʾ����
      ,d.OPENFLAG as d_WZLM_OPENFLAG--������
      ,d.LLQX as d_WZLM_LLQX--���Ȩ��

FROM dbo.EDU_WZXT_MHXT_WZLM AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ

FROM dbo.EDU_WZXT_MHXT_WZGG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ

FROM dbo.EDU_WZXT_MHXT_FWLL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ

FROM dbo.EDU_WZXT_MHXT_FBQX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO

--�Խ�רҵ����
CREATE VIEW [dbo].[VIEW_EDU_ZJ_ZJZY_DISP]
AS
SELECT a.[DM]--����
      ,a.[ZYMLLB]--רҵĿ¼���
      ,a.[MC]--����
      ,b.MC as b_ZYML_MC--����

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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--ѧУ��
      ,c.XNID as c_ZXXQ_XNID--ѧ��
      ,c.XQM as c_ZXXQ_XQM--ѧ����
      ,cb.MC as c_ZXXQ_XQM_MC--����
      ,c.XQMC as c_ZXXQ_XQMC--ѧ������
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--ѧ�ڽ�������

FROM dbo.EDU_ZXDY_04_A01_ZZGW AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--ѧУ��
      ,c.XNID as c_ZXXQ_XNID--ѧ��
      ,c.XQM as c_ZXXQ_XQM--ѧ����
      ,cb.MC as c_ZXXQ_XQM_MC--����
      ,c.XQMC as c_ZXXQ_XQMC--ѧ������
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--ѧ�ڽ�������
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--ѧУID
      ,d.XQID as d_ZZZC_XQID--ѧ��ID
      ,d.ZCM as d_ZZZC_ZCM--�ܴ���
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--��ʼ����
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--��������
      ,e.SCHOOLID as e_BJ_SCHOOLID--ѧУ��
      ,e.NJ as e_BJ_NJ--�꼶��
      ,e.BJ as e_BJ_BJ--�༶����
      ,e.JBNY as e_BJ_JBNY--��������
      ,e.BZRGH as e_BJ_BZRGH--�����ι���
      ,e.BZXH as e_BJ_BZXH--�೤ѧ��
      ,e.BJRYCH as e_BJ_BJRYCH--�༶�����ƺ�
      ,e.XZ as e_BJ_XZ--ѧ��
      ,e.BJLXM as e_BJ_BJLXM--�༶������
      ,eb.MC as e_BJ_BJLXM_MC--����
      ,e.WLLX as e_BJ_WLLX--��������
      ,e.BYRQ as e_BJ_BYRQ--��ҵ����
      ,e.SFSSMZSYJXB as e_BJ_SFSSMZSYJXB--�Ƿ���������˫���ѧ��
      ,ec.MC as e_BJ_SFSSMZSYJXB_MC--����
      ,e.SYJXMSM as e_BJ_SYJXMSM--˫���ѧģʽ��
      ,ed.MC as e_BJ_SYJXMSM_MC--����
      ,ed.SM as e_BJ_SYJXMSM_SM--˵��
      ,f.SCHOOLID as f_USER_SCHOOLID--ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ID
      ,f.PWD as f_USER_PWD--����
      ,f.STATUS as f_USER_STATUS--�û�״̬
      ,f.USERTYPE as f_USER_USERTYPE--�û����
      ,f.USERID as f_USER_USERID--�û�ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--�û���ɫ
      ,f.XM as f_USER_XM--����
      ,f.XB as f_USER_XB--�Ա�
      ,f.QQ as f_USER_QQ--QQ
      ,f.DZYJ as f_USER_DZYJ--�����ʼ�
      ,f.LXDH as f_USER_LXDH--��ϵ�绰
      ,f.ZJDLSJ as f_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,f.DLCGCS as f_USER_DLCGCS--��¼�ɹ�����
      ,f.YHCJSJ as f_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_ZXDY_04_A02_ZZRYAP AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*�ܴ�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS e ON a.ZZBJ = e.BH /*ֵ�ܰ༶���*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.ZZID = f.LOGINNAME /*�鳤ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--ѧУ��
      ,c.XNID as c_ZXXQ_XNID--ѧ��
      ,c.XQM as c_ZXXQ_XQM--ѧ����
      ,cb.MC as c_ZXXQ_XQM_MC--����
      ,c.XQMC as c_ZXXQ_XQMC--ѧ������
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--ѧ�ڽ�������
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--ѧУID
      ,d.XQID as d_ZZZC_XQID--ѧ��ID
      ,d.ZCM as d_ZZZC_ZCM--�ܴ���
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--��ʼ����
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--��������
      ,e.SCHOOLID as e_ZZGW_SCHOOLID--ѧУID
      ,e.XQID as e_ZZGW_XQID--ѧ��ID
      ,e.GWGZNR as e_ZZGW_GWGZNR--��λ��������
      ,f.SCHOOLID as f_USER_SCHOOLID--ѧУID
      ,f.APPID as f_USER_APPID--Ӧ��ID
      ,f.PWD as f_USER_PWD--����
      ,f.STATUS as f_USER_STATUS--�û�״̬
      ,f.USERTYPE as f_USER_USERTYPE--�û����
      ,f.USERID as f_USER_USERID--�û�ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--�û���ɫ
      ,f.XM as f_USER_XM--����
      ,f.XB as f_USER_XB--�Ա�
      ,f.QQ as f_USER_QQ--QQ
      ,f.DZYJ as f_USER_DZYJ--�����ʼ�
      ,f.LXDH as f_USER_LXDH--��ϵ�绰
      ,f.ZJDLSJ as f_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,f.DLCGCS as f_USER_DLCGCS--��¼�ɹ�����
      ,f.YHCJSJ as f_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_ZXDY_04_A03_ZZGWFP AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*�ܴ�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A01_ZZGW AS e ON a.GWID = e.ID /*��λID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.JSID = f.LOGINNAME /*��ʦID*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/
GO

--��λ����ģ���
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A04_GWFPMB_DISP]
AS
SELECT a.[ID]--��λ����ģ���ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[MBMC]--ģ������
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶

FROM dbo.EDU_ZXDY_04_A04_GWFPMB AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/
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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--ѧУ��
      ,c.XNID as c_ZXXQ_XNID--ѧ��
      ,c.XQM as c_ZXXQ_XQM--ѧ����
      ,cb.MC as c_ZXXQ_XQM_MC--����
      ,c.XQMC as c_ZXXQ_XQMC--ѧ������
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--ѧ�ڽ�������
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_ZXDY_04_A05_TBZZJS AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JSID = d.LOGINNAME /*��ʦID*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--ѧУ��
      ,c.XNID as c_ZXXQ_XNID--ѧ��
      ,c.XQM as c_ZXXQ_XQM--ѧ����
      ,cb.MC as c_ZXXQ_XQM_MC--����
      ,c.XQMC as c_ZXXQ_XQMC--ѧ������
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--ѧ�ڽ�������

FROM dbo.EDU_ZXDY_04_A06_ZZZC AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/ LEFT OUTER JOIN
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
      ,b.SCHOOLID as b_GWFPMB_SCHOOLID--ѧУID
      ,b.MBMC as b_GWFPMB_MBMC--ģ������
      ,c.SCHOOLID as c_ZZGW_SCHOOLID--ѧУID
      ,c.XQID as c_ZZGW_XQID--ѧ��ID
      ,c.GWGZNR as c_ZZGW_GWGZNR--��λ��������

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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--ѧУ��
      ,c.XNID as c_ZXXQ_XNID--ѧ��
      ,c.XQM as c_ZXXQ_XQM--ѧ����
      ,cb.MC as c_ZXXQ_XQM_MC--����
      ,c.XQMC as c_ZXXQ_XQMC--ѧ������
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--ѧ�ڽ�������

FROM dbo.EDU_ZXDY_05_A01_ZZDFDL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_ZZDFDL_SCHOOLID--ѧУID
      ,c.XQID as c_ZZDFDL_XQID--ѧ��ID
      ,c.DLMC as c_ZZDFDL_DLMC--��������

FROM dbo.EDU_ZXDY_05_A02_ZZDFXZ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_05_A01_ZZDFDL AS c ON a.SSDLID = c.ID /*��������ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/
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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--ѧУ��
      ,c.XNID as c_ZXXQ_XNID--ѧ��
      ,c.XQM as c_ZXXQ_XQM--ѧ����
      ,cb.MC as c_ZXXQ_XQM_MC--����
      ,c.XQMC as c_ZXXQ_XQMC--ѧ������
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--ѧ�ڽ�������
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--ѧУID
      ,d.XQID as d_ZZZC_XQID--ѧ��ID
      ,d.ZCM as d_ZZZC_ZCM--�ܴ���
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--��ʼ����
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--��������
      ,e.SCHOOLID as e_BJ_SCHOOLID--ѧУ��
      ,e.NJ as e_BJ_NJ--�꼶��
      ,e.BJ as e_BJ_BJ--�༶����
      ,e.JBNY as e_BJ_JBNY--��������
      ,e.BZRGH as e_BJ_BZRGH--�����ι���
      ,e.BZXH as e_BJ_BZXH--�೤ѧ��
      ,e.BJRYCH as e_BJ_BJRYCH--�༶�����ƺ�
      ,e.XZ as e_BJ_XZ--ѧ��
      ,e.BJLXM as e_BJ_BJLXM--�༶������
      ,eb.MC as e_BJ_BJLXM_MC--����
      ,e.WLLX as e_BJ_WLLX--��������
      ,e.BYRQ as e_BJ_BYRQ--��ҵ����
      ,e.SFSSMZSYJXB as e_BJ_SFSSMZSYJXB--�Ƿ���������˫���ѧ��
      ,ec.MC as e_BJ_SFSSMZSYJXB_MC--����
      ,e.SYJXMSM as e_BJ_SYJXMSM--˫���ѧģʽ��
      ,ed.MC as e_BJ_SYJXMSM_MC--����
      ,ed.SM as e_BJ_SYJXMSM_SM--˵��
      ,f.SCHOOLID as f_ZZDFXZ_SCHOOLID--ѧУID
      ,f.SSDLID as f_ZZDFXZ_SSDLID--��������ID
      ,f.XZNR as f_ZZDFXZ_XZNR--ϸ������
      ,f.XZFZ as f_ZZDFXZ_XZFZ--ϸ���ֵ
      ,g.SCHOOLID as g_USER_SCHOOLID--ѧУID
      ,g.APPID as g_USER_APPID--Ӧ��ID
      ,g.PWD as g_USER_PWD--����
      ,g.STATUS as g_USER_STATUS--�û�״̬
      ,g.USERTYPE as g_USER_USERTYPE--�û����
      ,g.USERID as g_USER_USERID--�û�ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--�û���ɫ
      ,g.XM as g_USER_XM--����
      ,g.XB as g_USER_XB--�Ա�
      ,g.QQ as g_USER_QQ--QQ
      ,g.DZYJ as g_USER_DZYJ--�����ʼ�
      ,g.LXDH as g_USER_LXDH--��ϵ�绰
      ,g.ZJDLSJ as g_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,g.DLCGCS as g_USER_DLCGCS--��¼�ɹ�����
      ,g.YHCJSJ as g_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_ZXDY_05_A03_ZZDFD AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*�ܴ�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS e ON a.BJ = e.BH /*�༶*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_05_A02_ZZDFXZ AS f ON a.SSXZID = f.ID /*����ϸ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.DFJSID = g.LOGINNAME /*��ֽ�ʦID*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--ѧУ��
      ,c.XNID as c_ZXXQ_XNID--ѧ��
      ,c.XQM as c_ZXXQ_XQM--ѧ����
      ,cb.MC as c_ZXXQ_XQM_MC--����
      ,c.XQMC as c_ZXXQ_XQMC--ѧ������
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--ѧ�ڽ�������
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--ѧУID
      ,d.XQID as d_ZZZC_XQID--ѧ��ID
      ,d.ZCM as d_ZZZC_ZCM--�ܴ���
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--��ʼ����
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--��������

FROM dbo.EDU_ZXDY_06_A01_ZZXJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*�ܴ�ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--ѧУ��
      ,c.XNID as c_ZXXQ_XNID--ѧ��
      ,c.XQM as c_ZXXQ_XQM--ѧ����
      ,cb.MC as c_ZXXQ_XQM_MC--����
      ,c.XQMC as c_ZXXQ_XQMC--ѧ������
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--ѧ�ڽ�������
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--ѧУID
      ,d.XQID as d_ZZZC_XQID--ѧ��ID
      ,d.ZCM as d_ZZZC_ZCM--�ܴ���
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--��ʼ����
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--��������

FROM dbo.EDU_ZXDY_06_A02_GQXJH AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*�ܴ�ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/
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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.MC as c_RDXB_MC--����
      ,d.MC as d_ZHRMGHGXZQH_MC--����
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--��������
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--��ĸ����
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--����/�������Ƽ��
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--����ĸ����
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--����ĸ����
      ,g.MC as g_SFZJLX_MC--����
      ,h.MC as h_HYZZ_MC--����
      ,i.MC as i_GATQW_MC--����
      ,i.SM as i_GATQW_SM--˵��
      ,j.MC as j_ZZMM_MC--����
      ,j.JC as j_ZZMM_JC--���
      ,k.MC as k_JKZKYWSZ_MC--����
      ,k.SM as k_JKZKYWSZ_SM--˵��
      ,l.MC as l_ZJXY_MC--����
      ,m.MC as m_XX_MC--����
      ,m.JC as m_XX_JC--���
      ,n.MC as n_HKLB_MC--����
      ,o.MC as o_XL_MC--����
      ,p.MC as p_ZXXBZLB_MC--����
      ,q.MC as q_GWZY_MC--����
      ,r.MC as r_RKXD_MC--����

FROM dbo.EDU_ZXJZ_01_01_JZGJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_RKXD AS r ON a.ZYRKXD = r.DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/
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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_JGGW_SCHOOLID--ѧУID
      ,c.JGH as c_JGGW_JGH--������
      ,c.GWBH as c_JGGW_GWBH--��λ���
      ,c.GWMC as c_JGGW_GWMC--��λ����
      ,c.GWSM as c_JGGW_GWSM--��λ˵��
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--ѧУ��
      ,d.GH as d_JZGJBSJ_GH--����
      ,d.XM as d_JZGJBSJ_XM--����
      ,d.YWXM as d_JZGJBSJ_YWXM--Ӣ������
      ,d.XMPY as d_JZGJBSJ_XMPY--����ƴ��
      ,d.CYM as d_JZGJBSJ_CYM--������
      ,d.XBM as d_JZGJBSJ_XBM--�Ա���
      ,db.MC as d_JZGJBSJ_XBM_MC--����
      ,d.CSRQ as d_JZGJBSJ_CSRQ--��������
      ,d.CSDM as d_JZGJBSJ_CSDM--��������
      ,dc.MC as d_JZGJBSJ_CSDM_MC--����
      ,d.JG as d_JZGJBSJ_JG--����
      ,d.MZM as d_JZGJBSJ_MZM--������
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--��������
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,d.GJDQM as d_JZGJBSJ_GJDQM--����/������
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--���֤��������
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--����
      ,d.SFZJH as d_JZGJBSJ_SFZJH--���֤����
      ,d.HYZKM as d_JZGJBSJ_HYZKM--����״����
      ,dg.MC as d_JZGJBSJ_HYZKM_MC--����
      ,d.GATQWM as d_JZGJBSJ_GATQWM--�۰�̨������
      ,dh.MC as d_JZGJBSJ_GATQWM_MC--����
      ,dh.SM as d_JZGJBSJ_GATQWM_SM--˵��
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--������ò��
      ,di.MC as d_JZGJBSJ_ZZMMM_MC--����
      ,di.JC as d_JZGJBSJ_ZZMMM_JC--���
      ,d.JKZKM as d_JZGJBSJ_JKZKM--����״����
      ,dj.MC as d_JZGJBSJ_JKZKM_MC--����
      ,dj.SM as d_JZGJBSJ_JKZKM_SM--˵��
      ,d.XYZJM as d_JZGJBSJ_XYZJM--�����ڽ���
      ,dk.MC as d_JZGJBSJ_XYZJM_MC--����
      ,d.XXM as d_JZGJBSJ_XXM--Ѫ����
      ,dl.MC as d_JZGJBSJ_XXM_MC--����
      ,dl.JC as d_JZGJBSJ_XXM_JC--���
      ,d.ZP as d_JZGJBSJ_ZP--��Ƭ
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--���֤����Ч��
      ,d.JGH as d_JZGJBSJ_JGH--������
      ,d.JTZZ as d_JZGJBSJ_JTZZ--��ͥסַ
      ,d.XZZ as d_JZGJBSJ_XZZ--��סַ
      ,d.HKSZD as d_JZGJBSJ_HKSZD--�������ڵ�
      ,d.HKXZM as d_JZGJBSJ_HKXZM--����������
      ,dm.MC as d_JZGJBSJ_HKXZM_MC--����
      ,d.XLM as d_JZGJBSJ_XLM--ѧ����
      ,dn.MC as d_JZGJBSJ_XLM_MC--����
      ,d.GZNY as d_JZGJBSJ_GZNY--�μӹ�������
      ,d.LXNY as d_JZGJBSJ_LXNY--��У����
      ,d.CJNY as d_JZGJBSJ_CJNY--�ӽ�����
      ,d.BZLBM as d_JZGJBSJ_BZLBM--���������
      ,do.MC as d_JZGJBSJ_BZLBM_MC--����
      ,d.DABH as d_JZGJBSJ_DABH--�������
      ,d.DAWB as d_JZGJBSJ_DAWB--�����ı�
      ,d.TXDZ as d_JZGJBSJ_TXDZ--ͨ�ŵ�ַ
      ,d.LXDH as d_JZGJBSJ_LXDH--��ϵ�绰
      ,d.YZBM as d_JZGJBSJ_YZBM--��������
      ,d.DZXX as d_JZGJBSJ_DZXX--��������
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--��ҳ��ַ
      ,d.TC as d_JZGJBSJ_TC--�س�
      ,d.GWZYM as d_JZGJBSJ_GWZYM--��λְҵ��
      ,dp.MC as d_JZGJBSJ_GWZYM_MC--����
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--��Ҫ�ο�ѧ��
      ,dq.MC as d_JZGJBSJ_ZYRKXD_MC--����
      ,e.MC as e_SFBZ_MC--����
      ,f.SCHOOLID as f_JG_SCHOOLID--ѧУ��
      ,f.LSJGH as f_JG_LSJGH--����������
      ,f.JGMC as f_JG_JGMC--��������
      ,f.JGJC as f_JG_JGJC--�������
      ,f.FZRGH as f_JG_FZRGH--�����˹���

FROM dbo.EDU_ZXJZ_02_A01_XNGWSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_A01_JGGW AS c ON a.GWID = c.ID /*��λ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.JZGJBSJID = d.ID /*��ְ���������������*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFZG = e.DM /*�Ƿ��ڸ�*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS f ON a.JGH = f.JGH /*������*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.MC as c_RDXB_MC--����
      ,d.MC as d_ZHRMGHGXZQH_MC--����
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--��������
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--��ĸ����
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--����/�������Ƽ��
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--����ĸ����
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--����ĸ����
      ,g.MC as g_SFZJLX_MC--����
      ,h.MC as h_HYZZ_MC--����
      ,i.MC as i_GATQW_MC--����
      ,i.SM as i_GATQW_SM--˵��
      ,j.MC as j_ZZMM_MC--����
      ,j.JC as j_ZZMM_JC--���
      ,k.MC as k_JKZKYWSZ_MC--����
      ,k.SM as k_JKZKYWSZ_SM--˵��
      ,l.MC as l_ZJXY_MC--����
      ,m.MC as m_XX_MC--����
      ,m.JC as m_XX_JC--���
      ,n.MC as n_SFBZ_MC--����
      ,o.SCHOOLID as o_NJ_SCHOOLID--ѧУ��
      ,o.NJMC as o_NJ_NJMC--�꼶����
      ,p.SCHOOLID as p_BJ_SCHOOLID--ѧУ��
      ,p.NJ as p_BJ_NJ--�꼶��
      ,p.BJ as p_BJ_BJ--�༶����
      ,p.JBNY as p_BJ_JBNY--��������
      ,p.BZRGH as p_BJ_BZRGH--�����ι���
      ,p.BZXH as p_BJ_BZXH--�೤ѧ��
      ,p.BJRYCH as p_BJ_BJRYCH--�༶�����ƺ�
      ,p.XZ as p_BJ_XZ--ѧ��
      ,p.BJLXM as p_BJ_BJLXM--�༶������
      ,pb.MC as p_BJ_BJLXM_MC--����
      ,p.WLLX as p_BJ_WLLX--��������
      ,p.BYRQ as p_BJ_BYRQ--��ҵ����
      ,p.SFSSMZSYJXB as p_BJ_SFSSMZSYJXB--�Ƿ���������˫���ѧ��
      ,pc.MC as p_BJ_SFSSMZSYJXB_MC--����
      ,p.SYJXMSM as p_BJ_SYJXMSM--˫���ѧģʽ��
      ,pd.MC as p_BJ_SYJXMSM_MC--����
      ,pd.SM as p_BJ_SYJXMSM_SM--˵��
      ,q.MC as q_XSLB_MC--����
      ,q.SM as q_XSLB_SM--˵��
      ,r.MC as r_HKLB_MC--����
      ,s.MC as s_SFBZ_MC--����

FROM dbo.EDU_ZXXS_01_01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
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
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��
      ,c.XM as c_XSXX_XM--����
      ,c.YWXM as c_XSXX_YWXM--Ӣ������
      ,c.XMPY as c_XSXX_XMPY--����ƴ��
      ,c.CYM as c_XSXX_CYM--������
      ,c.XBM as c_XSXX_XBM--�Ա���
      ,cb.MC as c_XSXX_XBM_MC--����
      ,c.CSRQ as c_XSXX_CSRQ--��������
      ,c.CSDM as c_XSXX_CSDM--��������
      ,cc.MC as c_XSXX_CSDM_MC--����
      ,c.JG as c_XSXX_JG--����
      ,c.MZM as c_XSXX_MZM--������
      ,cd.MZMC as c_XSXX_MZM_MZMC--��������
      ,cd.ZMDM as c_XSXX_MZM_ZMDM--��ĸ����
      ,c.GJDQM as c_XSXX_GJDQM--����/������
      ,ce.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,ce.EZMDM as c_XSXX_GJDQM_EZMDM--����ĸ����
      ,ce.SZMDM as c_XSXX_GJDQM_SZMDM--����ĸ����
      ,c.SFZJLXM as c_XSXX_SFZJLXM--���֤��������
      ,cf.MC as c_XSXX_SFZJLXM_MC--����
      ,c.SFZJH as c_XSXX_SFZJH--���֤����
      ,c.HYZKM as c_XSXX_HYZKM--����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����
      ,c.GATQWM as c_XSXX_GATQWM--�۰�̨������
      ,ch.MC as c_XSXX_GATQWM_MC--����
      ,ch.SM as c_XSXX_GATQWM_SM--˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--������ò��
      ,ci.MC as c_XSXX_ZZMMM_MC--����
      ,ci.JC as c_XSXX_ZZMMM_JC--���
      ,c.JKZKM as c_XSXX_JKZKM--����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����
      ,cj.SM as c_XSXX_JKZKM_SM--˵��
      ,c.XYZJM as c_XSXX_XYZJM--�����ڽ���
      ,ck.MC as c_XSXX_XYZJM_MC--����
      ,c.XXM as c_XSXX_XXM--Ѫ����
      ,cl.MC as c_XSXX_XXM_MC--����
      ,cl.JC as c_XSXX_XXM_JC--���
      ,c.ZP as c_XSXX_ZP--��Ƭ
      ,c.SFZJYXQ as c_XSXX_SFZJYXQ--���֤����Ч��
      ,c.DSZYBZ as c_XSXX_DSZYBZ--������Ů��־
      ,cm.MC as c_XSXX_DSZYBZ_MC--����
      ,c.RXNY as c_XSXX_RXNY--��ѧ����
      ,c.NJ as c_XSXX_NJ--�꼶
      ,c.BH as c_XSXX_BH--���
      ,c.XSLBM as c_XSXX_XSLBM--ѧ�������
      ,cn.MC as c_XSXX_XSLBM_MC--����
      ,cn.SM as c_XSXX_XSLBM_SM--˵��
      ,c.XZZ as c_XSXX_XZZ--��סַ
      ,c.HKSZD as c_XSXX_HKSZD--�������ڵ�
      ,c.HKXZM as c_XSXX_HKXZM--����������
      ,co.MC as c_XSXX_HKXZM_MC--����
      ,c.SFLDRK as c_XSXX_SFLDRK--�Ƿ������˿�
      ,cp.MC as c_XSXX_SFLDRK_MC--����
      ,c.TC as c_XSXX_TC--�س�
      ,c.LXDH as c_XSXX_LXDH--��ϵ�绰
      ,c.TXDZ as c_XSXX_TXDZ--ͨ�ŵ�ַ
      ,c.YZBM as c_XSXX_YZBM--��������
      ,c.DZXX as c_XSXX_DZXX--��������
      ,c.ZYDZ as c_XSXX_ZYDZ--��ҳ��ַ
      ,c.XJH as c_XSXX_XJH--ѧ����
      ,d.MC as d_JTGX_MC--����
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--��������
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--��ĸ����
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--����/�������Ƽ��
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--����ĸ����
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--����ĸ����
      ,g.MC as g_JKZKYWSZ_MC--����
      ,g.SM as g_JKZKYWSZ_SM--˵��
      ,h.MC as h_CYZK_MC--����
      ,h.SM as h_CYZK_SM--˵��
      ,i.MC as i_ZYJSZW_MC--����
      ,j.MC as j_ZWJBDM_MC--����
      ,k.MC as k_SFBZ_MC--����
      ,l.MC as l_RDXB_MC--����
      ,m.MC as m_XL_MC--����

FROM dbo.EDU_ZXXS_01_06_XSJTCY AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
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
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/ LEFT OUTER JOIN
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
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bb.MC as b_XSXX_XBM_MC--����
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,bc.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bd.MZMC as b_XSXX_MZM_MZMC--��������
      ,bd.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.GJDQM as b_XSXX_GJDQM--����/������
      ,be.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,be.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,be.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bf.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bh.MC as b_XSXX_GATQWM_MC--����
      ,bh.SM as b_XSXX_GATQWM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bi.MC as b_XSXX_ZZMMM_MC--����
      ,bi.JC as b_XSXX_ZZMMM_JC--���
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bk.MC as b_XSXX_XYZJM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bl.MC as b_XSXX_XXM_MC--����
      ,bl.JC as b_XSXX_XXM_JC--���
      ,b.ZP as b_XSXX_ZP--��Ƭ
      ,b.SFZJYXQ as b_XSXX_SFZJYXQ--���֤����Ч��
      ,b.DSZYBZ as b_XSXX_DSZYBZ--������Ů��־
      ,bm.MC as b_XSXX_DSZYBZ_MC--����
      ,b.RXNY as b_XSXX_RXNY--��ѧ����
      ,b.NJ as b_XSXX_NJ--�꼶
      ,b.BH as b_XSXX_BH--���
      ,b.XSLBM as b_XSXX_XSLBM--ѧ�������
      ,bn.MC as b_XSXX_XSLBM_MC--����
      ,bn.SM as b_XSXX_XSLBM_SM--˵��
      ,b.XZZ as b_XSXX_XZZ--��סַ
      ,b.HKSZD as b_XSXX_HKSZD--�������ڵ�
      ,b.HKXZM as b_XSXX_HKXZM--����������
      ,bo.MC as b_XSXX_HKXZM_MC--����
      ,b.SFLDRK as b_XSXX_SFLDRK--�Ƿ������˿�
      ,bp.MC as b_XSXX_SFLDRK_MC--����
      ,b.TC as b_XSXX_TC--�س�
      ,b.LXDH as b_XSXX_LXDH--��ϵ�绰
      ,b.TXDZ as b_XSXX_TXDZ--ͨ�ŵ�ַ
      ,b.YZBM as b_XSXX_YZBM--��������
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZYDZ as b_XSXX_ZYDZ--��ҳ��ַ
      ,b.XJH as b_XSXX_XJH--ѧ����
      ,c.XXDM as c_ZXXX_XXDM--ѧУ����
      ,c.XXMC as c_ZXXX_XXMC--ѧУ����
      ,c.XXYWMC as c_ZXXX_XXYWMC--ѧУӢ������
      ,c.XXDZ as c_ZXXX_XXDZ--ѧУ��ַ
      ,c.XXYZBM as c_ZXXX_XXYZBM--ѧУ��������
      ,c.XZQHM as c_ZXXX_XZQHM--����������
      ,cb.MC as c_ZXXX_XZQHM_MC--����
      ,c.JXNY as c_ZXXX_JXNY--��У����
      ,c.XQR as c_ZXXX_XQR--У����
      ,c.XXBXLXM as c_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,cc.MC as c_ZXXX_XXBXLXM_MC--����
      ,cc.SM as c_ZXXX_XXBXLXM_SM--˵��
      ,c.XXZGBMM as c_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,cd.MC as c_ZXXX_XXZGBMM_MC--����
      ,cd.SM as c_ZXXX_XXZGBMM_SM--˵��
      ,c.FDDBRH as c_ZXXX_FDDBRH--���������˺�
      ,c.FRZSH as c_ZXXX_FRZSH--����֤���
      ,c.XZGH as c_ZXXX_XZGH--У������
      ,c.XZXM as c_ZXXX_XZXM--У������
      ,c.DWFZRH as c_ZXXX_DWFZRH--��ί�����˺�
      ,c.ZZJGM as c_ZXXX_ZZJGM--��֯������
      ,c.LXDH as c_ZXXX_LXDH--��ϵ�绰
      ,c.CZDH as c_ZXXX_CZDH--����绰
      ,c.DZXX as c_ZXXX_DZXX--��������
      ,c.ZYDZ as c_ZXXX_ZYDZ--��ҳ��ַ
      ,c.LSYG as c_ZXXX_LSYG--��ʷ�ظ�
      ,c.XXBBM as c_ZXXX_XXBBM--ѧУ�����
      ,ce.MC as c_ZXXX_XXBBM_MC--����
      ,c.SSZGDWM as c_ZXXX_SSZGDWM--�������ܵ�λ��
      ,cf.MC as c_ZXXX_SSZGDWM_MC--����
      ,cf.SM as c_ZXXX_SSZGDWM_SM--˵��
      ,c.SZDCXLXM as c_ZXXX_SZDCXLXM--���ڵس���������
      ,cg.MC as c_ZXXX_SZDCXLXM_MC--����
      ,c.SZDJJSXM as c_ZXXX_SZDJJSXM--���ڵؾ���������
      ,ch.MC as c_ZXXX_SZDJJSXM_MC--����
      ,c.SZDMZSX as c_ZXXX_SZDMZSX--���ڵ���������
      ,ci.MC as c_ZXXX_SZDMZSX_MC--����
      ,c.XXXZ as c_ZXXX_XXXZ--Сѧѧ��
      ,c.XXRXNL as c_ZXXX_XXRXNL--Сѧ��ѧ����
      ,c.CZXZ as c_ZXXX_CZXZ--����ѧ��
      ,c.CZRXNL as c_ZXXX_CZRXNL--������ѧ����
      ,c.GZXZ as c_ZXXX_GZXZ--����ѧ��
      ,c.ZJXYYM as c_ZXXX_ZJXYYM--����ѧ������
      ,cj.MC as c_ZXXX_ZJXYYM_MC--����
      ,cj.ZMDM as c_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,c.FJXYYM as c_ZXXX_FJXYYM--����ѧ������
      ,ck.MC as c_ZXXX_FJXYYM_MC--����
      ,ck.ZMDM as c_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,c.ZSBJ as c_ZXXX_ZSBJ--�����뾶

FROM dbo.EDU_ZXXS_02_A01_XSJTXX AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS c ON a.SCHOOLID = c.ID /*ѧУ��*/ LEFT OUTER JOIN
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
      dbo.EDU_GB_ZHRMGHGXZQH AS cb ON c.XZQHM = cb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS cc ON c.XXBXLXM = cc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cd ON c.XXZGBMM = cd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS ce ON c.XXBBM = ce.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cf ON c.SSZGDWM = cf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS cg ON c.SZDCXLXM = cg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS ch ON c.SZDJJSXM = ch.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ci ON c.SZDMZSX = ci.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS cj ON c.ZJXYYM = cj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS ck ON c.FJXYYM = ck.DM /*����ѧ������*/
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
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bb.MC as b_XSXX_XBM_MC--����
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,bc.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bd.MZMC as b_XSXX_MZM_MZMC--��������
      ,bd.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.GJDQM as b_XSXX_GJDQM--����/������
      ,be.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,be.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,be.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bf.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bh.MC as b_XSXX_GATQWM_MC--����
      ,bh.SM as b_XSXX_GATQWM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bi.MC as b_XSXX_ZZMMM_MC--����
      ,bi.JC as b_XSXX_ZZMMM_JC--���
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bk.MC as b_XSXX_XYZJM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bl.MC as b_XSXX_XXM_MC--����
      ,bl.JC as b_XSXX_XXM_JC--���
      ,b.ZP as b_XSXX_ZP--��Ƭ
      ,b.SFZJYXQ as b_XSXX_SFZJYXQ--���֤����Ч��
      ,b.DSZYBZ as b_XSXX_DSZYBZ--������Ů��־
      ,bm.MC as b_XSXX_DSZYBZ_MC--����
      ,b.RXNY as b_XSXX_RXNY--��ѧ����
      ,b.NJ as b_XSXX_NJ--�꼶
      ,b.BH as b_XSXX_BH--���
      ,b.XSLBM as b_XSXX_XSLBM--ѧ�������
      ,bn.MC as b_XSXX_XSLBM_MC--����
      ,bn.SM as b_XSXX_XSLBM_SM--˵��
      ,b.XZZ as b_XSXX_XZZ--��סַ
      ,b.HKSZD as b_XSXX_HKSZD--�������ڵ�
      ,b.HKXZM as b_XSXX_HKXZM--����������
      ,bo.MC as b_XSXX_HKXZM_MC--����
      ,b.SFLDRK as b_XSXX_SFLDRK--�Ƿ������˿�
      ,bp.MC as b_XSXX_SFLDRK_MC--����
      ,b.TC as b_XSXX_TC--�س�
      ,b.LXDH as b_XSXX_LXDH--��ϵ�绰
      ,b.TXDZ as b_XSXX_TXDZ--ͨ�ŵ�ַ
      ,b.YZBM as b_XSXX_YZBM--��������
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZYDZ as b_XSXX_ZYDZ--��ҳ��ַ
      ,b.XJH as b_XSXX_XJH--ѧ����
      ,c.XXDM as c_ZXXX_XXDM--ѧУ����
      ,c.XXMC as c_ZXXX_XXMC--ѧУ����
      ,c.XXYWMC as c_ZXXX_XXYWMC--ѧУӢ������
      ,c.XXDZ as c_ZXXX_XXDZ--ѧУ��ַ
      ,c.XXYZBM as c_ZXXX_XXYZBM--ѧУ��������
      ,c.XZQHM as c_ZXXX_XZQHM--����������
      ,cb.MC as c_ZXXX_XZQHM_MC--����
      ,c.JXNY as c_ZXXX_JXNY--��У����
      ,c.XQR as c_ZXXX_XQR--У����
      ,c.XXBXLXM as c_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,cc.MC as c_ZXXX_XXBXLXM_MC--����
      ,cc.SM as c_ZXXX_XXBXLXM_SM--˵��
      ,c.XXZGBMM as c_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,cd.MC as c_ZXXX_XXZGBMM_MC--����
      ,cd.SM as c_ZXXX_XXZGBMM_SM--˵��
      ,c.FDDBRH as c_ZXXX_FDDBRH--���������˺�
      ,c.FRZSH as c_ZXXX_FRZSH--����֤���
      ,c.XZGH as c_ZXXX_XZGH--У������
      ,c.XZXM as c_ZXXX_XZXM--У������
      ,c.DWFZRH as c_ZXXX_DWFZRH--��ί�����˺�
      ,c.ZZJGM as c_ZXXX_ZZJGM--��֯������
      ,c.LXDH as c_ZXXX_LXDH--��ϵ�绰
      ,c.CZDH as c_ZXXX_CZDH--����绰
      ,c.DZXX as c_ZXXX_DZXX--��������
      ,c.ZYDZ as c_ZXXX_ZYDZ--��ҳ��ַ
      ,c.LSYG as c_ZXXX_LSYG--��ʷ�ظ�
      ,c.XXBBM as c_ZXXX_XXBBM--ѧУ�����
      ,ce.MC as c_ZXXX_XXBBM_MC--����
      ,c.SSZGDWM as c_ZXXX_SSZGDWM--�������ܵ�λ��
      ,cf.MC as c_ZXXX_SSZGDWM_MC--����
      ,cf.SM as c_ZXXX_SSZGDWM_SM--˵��
      ,c.SZDCXLXM as c_ZXXX_SZDCXLXM--���ڵس���������
      ,cg.MC as c_ZXXX_SZDCXLXM_MC--����
      ,c.SZDJJSXM as c_ZXXX_SZDJJSXM--���ڵؾ���������
      ,ch.MC as c_ZXXX_SZDJJSXM_MC--����
      ,c.SZDMZSX as c_ZXXX_SZDMZSX--���ڵ���������
      ,ci.MC as c_ZXXX_SZDMZSX_MC--����
      ,c.XXXZ as c_ZXXX_XXXZ--Сѧѧ��
      ,c.XXRXNL as c_ZXXX_XXRXNL--Сѧ��ѧ����
      ,c.CZXZ as c_ZXXX_CZXZ--����ѧ��
      ,c.CZRXNL as c_ZXXX_CZRXNL--������ѧ����
      ,c.GZXZ as c_ZXXX_GZXZ--����ѧ��
      ,c.ZJXYYM as c_ZXXX_ZJXYYM--����ѧ������
      ,cj.MC as c_ZXXX_ZJXYYM_MC--����
      ,cj.ZMDM as c_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,c.FJXYYM as c_ZXXX_FJXYYM--����ѧ������
      ,ck.MC as c_ZXXX_FJXYYM_MC--����
      ,ck.ZMDM as c_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,c.ZSBJ as c_ZXXX_ZSBJ--�����뾶
      ,d.MC as d_XJYDLB_MC--����
      ,e.MC as e_XJYDYY_MC--����
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--ѧУ��
      ,f.GH as f_JZGJBSJ_GH--����
      ,f.XM as f_JZGJBSJ_XM--����
      ,f.YWXM as f_JZGJBSJ_YWXM--Ӣ������
      ,f.XMPY as f_JZGJBSJ_XMPY--����ƴ��
      ,f.CYM as f_JZGJBSJ_CYM--������
      ,f.XBM as f_JZGJBSJ_XBM--�Ա���
      ,fb.MC as f_JZGJBSJ_XBM_MC--����
      ,f.CSRQ as f_JZGJBSJ_CSRQ--��������
      ,f.CSDM as f_JZGJBSJ_CSDM--��������
      ,fc.MC as f_JZGJBSJ_CSDM_MC--����
      ,f.JG as f_JZGJBSJ_JG--����
      ,f.MZM as f_JZGJBSJ_MZM--������
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--��������
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,f.GJDQM as f_JZGJBSJ_GJDQM--����/������
      ,fe.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,fe.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,fe.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--���֤��������
      ,ff.MC as f_JZGJBSJ_SFZJLXM_MC--����
      ,f.SFZJH as f_JZGJBSJ_SFZJH--���֤����
      ,f.HYZKM as f_JZGJBSJ_HYZKM--����״����
      ,fg.MC as f_JZGJBSJ_HYZKM_MC--����
      ,f.GATQWM as f_JZGJBSJ_GATQWM--�۰�̨������
      ,fh.MC as f_JZGJBSJ_GATQWM_MC--����
      ,fh.SM as f_JZGJBSJ_GATQWM_SM--˵��
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--������ò��
      ,fi.MC as f_JZGJBSJ_ZZMMM_MC--����
      ,fi.JC as f_JZGJBSJ_ZZMMM_JC--���
      ,f.JKZKM as f_JZGJBSJ_JKZKM--����״����
      ,fj.MC as f_JZGJBSJ_JKZKM_MC--����
      ,fj.SM as f_JZGJBSJ_JKZKM_SM--˵��
      ,f.XYZJM as f_JZGJBSJ_XYZJM--�����ڽ���
      ,fk.MC as f_JZGJBSJ_XYZJM_MC--����
      ,f.XXM as f_JZGJBSJ_XXM--Ѫ����
      ,fl.MC as f_JZGJBSJ_XXM_MC--����
      ,fl.JC as f_JZGJBSJ_XXM_JC--���
      ,f.ZP as f_JZGJBSJ_ZP--��Ƭ
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--���֤����Ч��
      ,f.JGH as f_JZGJBSJ_JGH--������
      ,f.JTZZ as f_JZGJBSJ_JTZZ--��ͥסַ
      ,f.XZZ as f_JZGJBSJ_XZZ--��סַ
      ,f.HKSZD as f_JZGJBSJ_HKSZD--�������ڵ�
      ,f.HKXZM as f_JZGJBSJ_HKXZM--����������
      ,fm.MC as f_JZGJBSJ_HKXZM_MC--����
      ,f.XLM as f_JZGJBSJ_XLM--ѧ����
      ,fn.MC as f_JZGJBSJ_XLM_MC--����
      ,f.GZNY as f_JZGJBSJ_GZNY--�μӹ�������
      ,f.LXNY as f_JZGJBSJ_LXNY--��У����
      ,f.CJNY as f_JZGJBSJ_CJNY--�ӽ�����
      ,f.BZLBM as f_JZGJBSJ_BZLBM--���������
      ,fo.MC as f_JZGJBSJ_BZLBM_MC--����
      ,f.DABH as f_JZGJBSJ_DABH--�������
      ,f.DAWB as f_JZGJBSJ_DAWB--�����ı�
      ,f.TXDZ as f_JZGJBSJ_TXDZ--ͨ�ŵ�ַ
      ,f.LXDH as f_JZGJBSJ_LXDH--��ϵ�绰
      ,f.YZBM as f_JZGJBSJ_YZBM--��������
      ,f.DZXX as f_JZGJBSJ_DZXX--��������
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--��ҳ��ַ
      ,f.TC as f_JZGJBSJ_TC--�س�
      ,f.GWZYM as f_JZGJBSJ_GWZYM--��λְҵ��
      ,fp.MC as f_JZGJBSJ_GWZYM_MC--����
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--��Ҫ�ο�ѧ��
      ,fq.MC as f_JZGJBSJ_ZYRKXD_MC--����
      ,g.SCHOOLID as g_BJ_SCHOOLID--ѧУ��
      ,g.NJ as g_BJ_NJ--�꼶��
      ,g.BJ as g_BJ_BJ--�༶����
      ,g.JBNY as g_BJ_JBNY--��������
      ,g.BZRGH as g_BJ_BZRGH--�����ι���
      ,g.BZXH as g_BJ_BZXH--�೤ѧ��
      ,g.BJRYCH as g_BJ_BJRYCH--�༶�����ƺ�
      ,g.XZ as g_BJ_XZ--ѧ��
      ,g.BJLXM as g_BJ_BJLXM--�༶������
      ,gb.MC as g_BJ_BJLXM_MC--����
      ,g.WLLX as g_BJ_WLLX--��������
      ,g.BYRQ as g_BJ_BYRQ--��ҵ����
      ,g.SFSSMZSYJXB as g_BJ_SFSSMZSYJXB--�Ƿ���������˫���ѧ��
      ,gc.MC as g_BJ_SFSSMZSYJXB_MC--����
      ,g.SYJXMSM as g_BJ_SYJXMSM--˫���ѧģʽ��
      ,gd.MC as g_BJ_SYJXMSM_MC--����
      ,gd.SM as g_BJ_SYJXMSM_SM--˵��
      ,h.SCHOOLID as h_NJ_SCHOOLID--ѧУ��
      ,h.NJMC as h_NJ_NJMC--�꼶����
      ,i.SCHOOLID as i_BJ_SCHOOLID--ѧУ��
      ,i.NJ as i_BJ_NJ--�꼶��
      ,i.BJ as i_BJ_BJ--�༶����
      ,i.JBNY as i_BJ_JBNY--��������
      ,i.BZRGH as i_BJ_BZRGH--�����ι���
      ,i.BZXH as i_BJ_BZXH--�೤ѧ��
      ,i.BJRYCH as i_BJ_BJRYCH--�༶�����ƺ�
      ,i.XZ as i_BJ_XZ--ѧ��
      ,i.BJLXM as i_BJ_BJLXM--�༶������
      ,ib.MC as i_BJ_BJLXM_MC--����
      ,i.WLLX as i_BJ_WLLX--��������
      ,i.BYRQ as i_BJ_BYRQ--��ҵ����
      ,i.SFSSMZSYJXB as i_BJ_SFSSMZSYJXB--�Ƿ���������˫���ѧ��
      ,ic.MC as i_BJ_SFSSMZSYJXB_MC--����
      ,i.SYJXMSM as i_BJ_SYJXMSM--˫���ѧģʽ��
      ,id.MC as i_BJ_SYJXMSM_MC--����
      ,id.SM as i_BJ_SYJXMSM_SM--˵��
      ,j.SCHOOLID as j_NJ_SCHOOLID--ѧУ��
      ,j.NJMC as j_NJ_NJMC--�꼶����

FROM dbo.EDU_ZXXS_07_A02_XJYD AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ��ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS c ON a.SCHOOLID = c.ID /*ѧУID*/ LEFT OUTER JOIN
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
      dbo.EDU_GB_ZHRMGHGXZQH AS cb ON c.XZQHM = cb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS cc ON c.XXBXLXM = cc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cd ON c.XXZGBMM = cd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS ce ON c.XXBBM = ce.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cf ON c.SSZGDWM = cf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS cg ON c.SZDCXLXM = cg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS ch ON c.SZDJJSXM = ch.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ci ON c.SZDMZSX = ci.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS cj ON c.ZJXYYM = cj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS ck ON c.FJXYYM = ck.DM /*����ѧ������*/ LEFT OUTER JOIN
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
      ,b.MC as b_ZHRMGHGXZQH_MC--����
      ,c.MC as c_BXLX_MC--����
      ,c.SM as c_BXLX_SM--˵��
      ,d.MC as d_XXJYJGJBZ_MC--����
      ,d.SM as d_XXJYJGJBZ_SM--˵��
      ,e.MC as e_XXBB_MC--����
      ,f.MC as f_XXJYJGJBZ_MC--����
      ,f.SM as f_XXJYJGJBZ_SM--˵��
      ,g.MC as g_SZDCXLX_MC--����
      ,h.MC as h_SZDQJJSX_MC--����
      ,i.MC as i_SFBZ_MC--����
      ,j.MC as j_ZGYZ_MC--����
      ,j.ZMDM as j_ZGYZ_ZMDM--��ĸ����
      ,k.MC as k_ZGYZ_MC--����
      ,k.ZMDM as k_ZGYZ_ZMDM--��ĸ����

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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶

FROM dbo.EDU_ZXXX_02_01_NJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/
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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_NJ_SCHOOLID--ѧУ��
      ,c.NJMC as c_NJ_NJMC--�꼶����
      ,d.MC as d_ZXXBJLX_MC--����
      ,e.MC as e_SFBZ_MC--����
      ,f.MC as f_SSMZSYJXMS_MC--����
      ,f.SM as f_SSMZSYJXMS_SM--˵��

FROM dbo.EDU_ZXXX_03_01_BJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS c ON a.NJ = c.NJ /*�꼶��*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS d ON a.BJLXM = d.DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFSSMZSYJXB = e.DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS f ON a.SYJXMSM = f.DM /*˫���ѧģʽ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/
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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_JG_SCHOOLID--ѧУ��
      ,c.LSJGH as c_JG_LSJGH--����������
      ,c.JGMC as c_JG_JGMC--��������
      ,c.JGJC as c_JG_JGJC--�������
      ,c.FZRGH as c_JG_FZRGH--�����˹���

FROM dbo.EDU_ZXXX_04_01_JG AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS c ON a.LSJGH = c.JGH /*����������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/
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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_JG_SCHOOLID--ѧУ��
      ,c.LSJGH as c_JG_LSJGH--����������
      ,c.JGMC as c_JG_JGMC--��������
      ,c.JGJC as c_JG_JGJC--�������
      ,c.FZRGH as c_JG_FZRGH--�����˹���

FROM dbo.EDU_ZXXX_04_A01_JGGW AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS c ON a.JGH = c.JGH /*������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/
GO

--ѧ�����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_05_A01_ZXXQ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XNID]--ѧ��
      ,a.[XQM]--ѧ����
      ,a.[XQMC]--ѧ������
      ,a.[XQKSRQ]--ѧ�ڿ�ʼ����
      ,a.[XQJSRQ]--ѧ�ڽ�������
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,bb.MC as b_ZXXX_XZQHM_MC--����
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,bc.MC as b_ZXXX_XXBXLXM_MC--����
      ,bc.SM as b_ZXXX_XXBXLXM_SM--˵��
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,bd.MC as b_ZXXX_XXZGBMM_MC--����
      ,bd.SM as b_ZXXX_XXZGBMM_SM--˵��
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,be.MC as b_ZXXX_XXBBM_MC--����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,bf.MC as b_ZXXX_SSZGDWM_MC--����
      ,bf.SM as b_ZXXX_SSZGDWM_SM--˵��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,bg.MC as b_ZXXX_SZDCXLXM_MC--����
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,bh.MC as b_ZXXX_SZDJJSXM_MC--����
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,bi.MC as b_ZXXX_SZDMZSX_MC--����
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,bj.MC as b_ZXXX_ZJXYYM_MC--����
      ,bj.ZMDM as b_ZXXX_ZJXYYM_ZMDM--��ĸ����
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,bk.MC as b_ZXXX_FJXYYM_MC--����
      ,bk.ZMDM as b_ZXXX_FJXYYM_ZMDM--��ĸ����
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
      ,c.SCHOOLID as c_XN_SCHOOLID--ѧУ��
      ,c.XN as c_XN_XN--ѧ��
      ,d.MC as d_XQ_MC--����

FROM dbo.EDU_ZXXX_05_A01_ZXXQ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS d ON a.XQM = d.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bb ON b.XZQHM = bb.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS bc ON b.XXBXLXM = bc.DM /*ѧУ��ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bd ON b.XXZGBMM = bd.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS be ON b.XXBBM = be.DM /*ѧУ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bf ON b.SSZGDWM = bf.DM /*�������ܵ�λ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS bg ON b.SZDCXLXM = bg.DM /*���ڵس���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS bh ON b.SZDJJSXM = bh.DM /*���ڵؾ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bi ON b.SZDMZSX = bi.DM /*���ڵ���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bj ON b.ZJXYYM = bj.DM /*����ѧ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS bk ON b.FJXYYM = bk.DM /*����ѧ������*/
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.MC as c_SYZK_MC--����
      ,d.MC as d_CQ_MC--����
      ,e.MC as e_JZWFL_MC--����
      ,f.MC as f_JZWJG_MC--����
      ,g.MC as g_JFLY_MC--����
      ,h.JC as h_KZSFLD_JC--���
      ,h.MC as h_KZSFLD_MC--����
      ,i.JC as i_KZSFBZ_JC--���
      ,i.MC as i_KZSFBZ_MC--����
      ,i.SM as i_KZSFBZ_SM--˵��
      ,j.MC as j_JZWZK_MC--����
      ,j.SM as j_JZWZK_SM--˵��
      ,k.MC as k_XXDWCC_MC--����
      ,l.MC as l_SFBZ_MC--����
      ,m.MC as m_SFBZ_MC--����
      ,n.MC as n_JZWYT_MC--����
      ,o.MC as o_GNFS_MC--����
      ,p.MC as p_JZWJCXS_MC--����
      ,q.MC as q_JZWPMXS_MC--����
      ,r.MC as r_JZWLBXS_MC--����
      ,s.MC as s_SFBZ_MC--����
      ,t.MC as t_SFBZ_MC--����
      ,u.MC as u_ZYZXTZBZMC_MC--����
      ,v.MC as v_WWJZDJ_MC--����

FROM dbo.EDU_ZZFC_02_01_JZWJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_WWJZDJ AS v ON a.WWJZDJM = v.DM /*���ｨ���ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_JZWJBSJ_SCHOOLID--ѧУ��
      ,c.JZWH as c_JZWJBSJ_JZWH--�������
      ,c.JZWMC as c_JZWJBSJ_JZWMC--����������
      ,c.SYZKM as c_JZWJBSJ_SYZKM--ʹ��״����
      ,cb.MC as c_JZWJBSJ_SYZKM_MC--����
      ,c.FWCQ as c_JZWJBSJ_FWCQ--���ݲ�Ȩ
      ,cc.MC as c_JZWJBSJ_FWCQ_MC--����
      ,c.XQH as c_JZWJBSJ_XQH--У����
      ,c.JZWFLM as c_JZWJBSJ_JZWFLM--�����������
      ,cd.MC as c_JZWJBSJ_JZWFLM_MC--����
      ,c.JZWJGM as c_JZWJBSJ_JZWJGM--������ṹ��
      ,ce.MC as c_JZWJBSJ_JZWJGM_MC--����
      ,c.JZWCS as c_JZWJBSJ_JZWCS--���������
      ,c.JCNY as c_JZWJBSJ_JCNY--��������
      ,c.JZWTZZE as c_JZWJBSJ_JZWTZZE--������Ͷ���ܶ�
      ,c.JFLYM as c_JZWJBSJ_JFLYM--������Դ��
      ,cf.MC as c_JZWJBSJ_JFLYM_MC--����
      ,c.ZJZMJ as c_JZWJBSJ_ZJZMJ--�ܽ������
      ,c.ZSYMJ as c_JZWJBSJ_ZSYMJ--��ʹ�����
      ,c.KZSFLDM as c_JZWJBSJ_KZSFLDM--��������Ҷ���
      ,cg.JC as c_JZWJBSJ_KZSFLDM_JC--���
      ,cg.MC as c_JZWJBSJ_KZSFLDM_MC--����
      ,c.KZSFBZM as c_JZWJBSJ_KZSFBZM--���������׼��
      ,ch.JC as c_JZWJBSJ_KZSFBZM_JC--���
      ,ch.MC as c_JZWJBSJ_KZSFBZM_MC--����
      ,ch.SM as c_JZWJBSJ_KZSFBZM_SM--˵��
      ,c.JZWDZ as c_JZWJBSJ_JZWDZ--�������ַ
      ,c.JZWZKM as c_JZWJBSJ_JZWZKM--������״����
      ,ci.MC as c_JZWJBSJ_JZWZKM_MC--����
      ,ci.SM as c_JZWJBSJ_JZWZKM_SM--˵��
      ,c.JZWTP as c_JZWJBSJ_JZWTP--������ͼƬ
      ,c.JZWPMT as c_JZWJBSJ_JZWPMT--������ƽ��ͼ
      ,c.XXDWCCM as c_JZWJBSJ_XXDWCCM--ѧУ��λ�����
      ,cj.MC as c_JZWJBSJ_XXDWCCM_MC--����
      ,c.JZWWZZK as c_JZWJBSJ_JZWWZZK--������λ��״��
      ,c.GHSPWH as c_JZWJBSJ_GHSPWH--�滮�����ĺ�
      ,c.ZHFZNL as c_JZWJBSJ_ZHFZNL--�ۺϷ�������
      ,c.GHSYNX as c_JZWJBSJ_GHSYNX--�滮ʹ������
      ,c.SFYYJBXCS as c_JZWJBSJ_SFYYJBXCS--�Ƿ���Ԥ�����մ�ʩ
      ,ck.MC as c_JZWJBSJ_SFYYJBXCS_MC--����
      ,c.SFKYYYJBNCS as c_JZWJBSJ_SFKYYYJBNCS--�Ƿ������Ӧ�����ѳ���
      ,cl.MC as c_JZWJBSJ_SFKYYYJBNCS_MC--����
      ,c.CQZH as c_JZWJBSJ_CQZH--��Ȩ֤��
      ,c.JZWYTM as c_JZWJBSJ_JZWYTM--��������;��
      ,cm.MC as c_JZWJBSJ_JZWYTM_MC--����
      ,c.JZWZGD as c_JZWJBSJ_JZWZGD--�������ܸ߶�
      ,c.WFJDBM as c_JZWJBSJ_WFJDBM--Σ����������
      ,c.WFJDWH as c_JZWJBSJ_WFJDWH--Σ�������ĺ�
      ,c.WFJDRQ as c_JZWJBSJ_WFJDRQ--Σ����������
      ,c.GNFSM as c_JZWJBSJ_GNFSM--��ů��ʽ��
      ,cn.MC as c_JZWJBSJ_GNFSM_MC--����
      ,c.JZWJCXSM as c_JZWJBSJ_JZWJCXSM--�����������ʽ��
      ,co.MC as c_JZWJBSJ_JZWJCXSM_MC--����
      ,c.JZWPMXSM as c_JZWJBSJ_JZWPMXSM--������ƽ����ʽ��
      ,cp.MC as c_JZWJBSJ_JZWPMXSM_MC--����
      ,c.JZWLBXSM as c_JZWJBSJ_JZWLBXSM--������¥����ʽ��
      ,cq.MC as c_JZWJBSJ_JZWLBXSM_MC--����
      ,c.SFYGZZ as c_JZWJBSJ_SFYGZZ--�Ƿ��й�����
      ,cr.MC as c_JZWJBSJ_SFYGZZ_MC--����
      ,c.QL as c_JZWJBSJ_QL--Ȧ��
      ,cs.MC as c_JZWJBSJ_QL_MC--����
      ,c.ZJAQGZWCRQ as c_JZWJBSJ_ZJAQGZWCRQ--�����ȫ�����������
      ,c.ZJAQGZHYJSYNX as c_JZWJBSJ_ZJAQGZHYJSYNX--�����ȫ�����Ԥ��ʹ������
      ,c.ZXLXM as c_JZWJBSJ_ZXLXM--ר������
      ,c.ZYZXTZBZMCM as c_JZWJBSJ_ZYZXTZBZMCM--����ר��Ͷ�ʲ���������
      ,ct.MC as c_JZWJBSJ_ZYZXTZBZMCM_MC--����
      ,c.WWJZDJM as c_JZWJBSJ_WWJZDJM--���ｨ���ȼ���
      ,cu.MC as c_JZWJBSJ_WWJZDJM_MC--����
      ,c.JXJFZYF as c_JZWJBSJ_JXJFZYF--��ѧ�������÷�
      ,c.QZJS as c_JZWJBSJ_QZJS--���н���
      ,c.QZSYS as c_JZWJBSJ_QZSYS--����ʵ����
      ,c.QZTSS as c_JZWJBSJ_QZTSS--����ͼ����
      ,c.QZWJS as c_JZWJBSJ_QZWJS--����΢����
      ,c.QZYYS as c_JZWJBSJ_QZYYS--����������
      ,c.QZTYHDS as c_JZWJBSJ_QZTYHDS--�����������
      ,c.QZQTJFYF as c_JZWJBSJ_QZQTJFYF--���������̸��÷�
      ,c.SHYF as c_JZWJBSJ_SHYF--�����÷�
      ,c.QZXSSS as c_JZWJBSJ_QZXSSS--����ѧ������
      ,c.QZST as c_JZWJBSJ_QZST--����ʳ��
      ,c.QZCS as c_JZWJBSJ_QZCS--���в���
      ,c.QZGLF as c_JZWJBSJ_QZGLF--���й�¯��(��ˮ��)
      ,c.QZYS as c_JZWJBSJ_QZYS--����ԡ��
      ,c.QZJGSS as c_JZWJBSJ_QZJGSS--���н̹�����
      ,c.QZQTSHYF as c_JZWJBSJ_QZQTSHYF--�������������÷�
      ,c.XZBGYF as c_JZWJBSJ_XZBGYF--�����칫�÷�
      ,c.QZJSBGS as c_JZWJBSJ_QZJSBGS--���н�ְ���칫��
      ,c.QZWSBJS as c_JZWJBSJ_QZWSBJS--��������������
      ,c.QZQTXZBGYF as c_JZWJBSJ_QZQTXZBGYF--�������������칫�÷�
      ,c.QTYF as c_JZWJBSJ_QTYF--�����÷�
      ,d.MC as d_RDXB_MC--����
      ,e.MC as e_SFBZ_MC--����
      ,f.MC as f_SFBZ_MC--����

FROM dbo.EDU_ZZFC_08_01_XSSS AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_02_01_JZWJBSJ AS c ON a.SSLID = c.ID /*����¥ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS d ON a.RZXB = d.DM /*��ס�Ա�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFKY = e.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.AZDSJ = f.DM /*��װ���ӻ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_JZWJBSJ_SCHOOLID--ѧУ��
      ,c.JZWH as c_JZWJBSJ_JZWH--�������
      ,c.JZWMC as c_JZWJBSJ_JZWMC--����������
      ,c.SYZKM as c_JZWJBSJ_SYZKM--ʹ��״����
      ,cb.MC as c_JZWJBSJ_SYZKM_MC--����
      ,c.FWCQ as c_JZWJBSJ_FWCQ--���ݲ�Ȩ
      ,cc.MC as c_JZWJBSJ_FWCQ_MC--����
      ,c.XQH as c_JZWJBSJ_XQH--У����
      ,c.JZWFLM as c_JZWJBSJ_JZWFLM--�����������
      ,cd.MC as c_JZWJBSJ_JZWFLM_MC--����
      ,c.JZWJGM as c_JZWJBSJ_JZWJGM--������ṹ��
      ,ce.MC as c_JZWJBSJ_JZWJGM_MC--����
      ,c.JZWCS as c_JZWJBSJ_JZWCS--���������
      ,c.JCNY as c_JZWJBSJ_JCNY--��������
      ,c.JZWTZZE as c_JZWJBSJ_JZWTZZE--������Ͷ���ܶ�
      ,c.JFLYM as c_JZWJBSJ_JFLYM--������Դ��
      ,cf.MC as c_JZWJBSJ_JFLYM_MC--����
      ,c.ZJZMJ as c_JZWJBSJ_ZJZMJ--�ܽ������
      ,c.ZSYMJ as c_JZWJBSJ_ZSYMJ--��ʹ�����
      ,c.KZSFLDM as c_JZWJBSJ_KZSFLDM--��������Ҷ���
      ,cg.JC as c_JZWJBSJ_KZSFLDM_JC--���
      ,cg.MC as c_JZWJBSJ_KZSFLDM_MC--����
      ,c.KZSFBZM as c_JZWJBSJ_KZSFBZM--���������׼��
      ,ch.JC as c_JZWJBSJ_KZSFBZM_JC--���
      ,ch.MC as c_JZWJBSJ_KZSFBZM_MC--����
      ,ch.SM as c_JZWJBSJ_KZSFBZM_SM--˵��
      ,c.JZWDZ as c_JZWJBSJ_JZWDZ--�������ַ
      ,c.JZWZKM as c_JZWJBSJ_JZWZKM--������״����
      ,ci.MC as c_JZWJBSJ_JZWZKM_MC--����
      ,ci.SM as c_JZWJBSJ_JZWZKM_SM--˵��
      ,c.JZWTP as c_JZWJBSJ_JZWTP--������ͼƬ
      ,c.JZWPMT as c_JZWJBSJ_JZWPMT--������ƽ��ͼ
      ,c.XXDWCCM as c_JZWJBSJ_XXDWCCM--ѧУ��λ�����
      ,cj.MC as c_JZWJBSJ_XXDWCCM_MC--����
      ,c.JZWWZZK as c_JZWJBSJ_JZWWZZK--������λ��״��
      ,c.GHSPWH as c_JZWJBSJ_GHSPWH--�滮�����ĺ�
      ,c.ZHFZNL as c_JZWJBSJ_ZHFZNL--�ۺϷ�������
      ,c.GHSYNX as c_JZWJBSJ_GHSYNX--�滮ʹ������
      ,c.SFYYJBXCS as c_JZWJBSJ_SFYYJBXCS--�Ƿ���Ԥ�����մ�ʩ
      ,ck.MC as c_JZWJBSJ_SFYYJBXCS_MC--����
      ,c.SFKYYYJBNCS as c_JZWJBSJ_SFKYYYJBNCS--�Ƿ������Ӧ�����ѳ���
      ,cl.MC as c_JZWJBSJ_SFKYYYJBNCS_MC--����
      ,c.CQZH as c_JZWJBSJ_CQZH--��Ȩ֤��
      ,c.JZWYTM as c_JZWJBSJ_JZWYTM--��������;��
      ,cm.MC as c_JZWJBSJ_JZWYTM_MC--����
      ,c.JZWZGD as c_JZWJBSJ_JZWZGD--�������ܸ߶�
      ,c.WFJDBM as c_JZWJBSJ_WFJDBM--Σ����������
      ,c.WFJDWH as c_JZWJBSJ_WFJDWH--Σ�������ĺ�
      ,c.WFJDRQ as c_JZWJBSJ_WFJDRQ--Σ����������
      ,c.GNFSM as c_JZWJBSJ_GNFSM--��ů��ʽ��
      ,cn.MC as c_JZWJBSJ_GNFSM_MC--����
      ,c.JZWJCXSM as c_JZWJBSJ_JZWJCXSM--�����������ʽ��
      ,co.MC as c_JZWJBSJ_JZWJCXSM_MC--����
      ,c.JZWPMXSM as c_JZWJBSJ_JZWPMXSM--������ƽ����ʽ��
      ,cp.MC as c_JZWJBSJ_JZWPMXSM_MC--����
      ,c.JZWLBXSM as c_JZWJBSJ_JZWLBXSM--������¥����ʽ��
      ,cq.MC as c_JZWJBSJ_JZWLBXSM_MC--����
      ,c.SFYGZZ as c_JZWJBSJ_SFYGZZ--�Ƿ��й�����
      ,cr.MC as c_JZWJBSJ_SFYGZZ_MC--����
      ,c.QL as c_JZWJBSJ_QL--Ȧ��
      ,cs.MC as c_JZWJBSJ_QL_MC--����
      ,c.ZJAQGZWCRQ as c_JZWJBSJ_ZJAQGZWCRQ--�����ȫ�����������
      ,c.ZJAQGZHYJSYNX as c_JZWJBSJ_ZJAQGZHYJSYNX--�����ȫ�����Ԥ��ʹ������
      ,c.ZXLXM as c_JZWJBSJ_ZXLXM--ר������
      ,c.ZYZXTZBZMCM as c_JZWJBSJ_ZYZXTZBZMCM--����ר��Ͷ�ʲ���������
      ,ct.MC as c_JZWJBSJ_ZYZXTZBZMCM_MC--����
      ,c.WWJZDJM as c_JZWJBSJ_WWJZDJM--���ｨ���ȼ���
      ,cu.MC as c_JZWJBSJ_WWJZDJM_MC--����
      ,c.JXJFZYF as c_JZWJBSJ_JXJFZYF--��ѧ�������÷�
      ,c.QZJS as c_JZWJBSJ_QZJS--���н���
      ,c.QZSYS as c_JZWJBSJ_QZSYS--����ʵ����
      ,c.QZTSS as c_JZWJBSJ_QZTSS--����ͼ����
      ,c.QZWJS as c_JZWJBSJ_QZWJS--����΢����
      ,c.QZYYS as c_JZWJBSJ_QZYYS--����������
      ,c.QZTYHDS as c_JZWJBSJ_QZTYHDS--�����������
      ,c.QZQTJFYF as c_JZWJBSJ_QZQTJFYF--���������̸��÷�
      ,c.SHYF as c_JZWJBSJ_SHYF--�����÷�
      ,c.QZXSSS as c_JZWJBSJ_QZXSSS--����ѧ������
      ,c.QZST as c_JZWJBSJ_QZST--����ʳ��
      ,c.QZCS as c_JZWJBSJ_QZCS--���в���
      ,c.QZGLF as c_JZWJBSJ_QZGLF--���й�¯��(��ˮ��)
      ,c.QZYS as c_JZWJBSJ_QZYS--����ԡ��
      ,c.QZJGSS as c_JZWJBSJ_QZJGSS--���н̹�����
      ,c.QZQTSHYF as c_JZWJBSJ_QZQTSHYF--�������������÷�
      ,c.XZBGYF as c_JZWJBSJ_XZBGYF--�����칫�÷�
      ,c.QZJSBGS as c_JZWJBSJ_QZJSBGS--���н�ְ���칫��
      ,c.QZWSBJS as c_JZWJBSJ_QZWSBJS--��������������
      ,c.QZQTXZBGYF as c_JZWJBSJ_QZQTXZBGYF--�������������칫�÷�
      ,c.QTYF as c_JZWJBSJ_QTYF--�����÷�
      ,d.SCHOOLID as d_XSSS_SCHOOLID--ѧУ��
      ,d.SSLID as d_XSSS_SSLID--����¥ID
      ,d.SSLBM as d_XSSS_SSLBM--����¥���
      ,d.FJBM as d_XSSS_FJBM--������
      ,d.RZXB as d_XSSS_RZXB--��ס�Ա�
      ,db.MC as d_XSSS_RZXB_MC--����
      ,d.SFKY as d_XSSS_SFKY--�Ƿ����
      ,dc.MC as d_XSSS_SFKY_MC--����
      ,d.KZRS as d_XSSS_KZRS--��ס����
      ,d.WLDK as d_XSSS_WLDK--����˿�
      ,d.AZDSJ as d_XSSS_AZDSJ--��װ���ӻ�
      ,dd.MC as d_XSSS_AZDSJ_MC--����
      ,d.DHDK as d_XSSS_DHDK--�绰�˿�
      ,d.DHHM as d_XSSS_DHHM--�绰����
      ,d.SBDS as d_XSSS_SBDS--ˮ�����
      ,d.DBDS as d_XSSS_DBDS--������
      ,d.SSBZ as d_XSSS_SSBZ--���ᱸע
      ,d.SZLZ as d_XSSS_SZLZ--����¥��
      ,d.SSM as d_XSSS_SSM--������
      ,e.MC as e_SFBZ_MC--����

FROM dbo.EDU_ZZFC_08_A01_SSCW AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_02_01_JZWJBSJ AS c ON a.SSLID = c.ID /*����¥ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_08_01_XSSS AS d ON a.SSID = d.ID /*����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFRZ = e.DM /*�Ƿ���ס*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������

FROM dbo.EDU_ZZFC_08_A03_ZWHCY AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_JZWJBSJ_SCHOOLID--ѧУ��
      ,c.JZWH as c_JZWJBSJ_JZWH--�������
      ,c.JZWMC as c_JZWJBSJ_JZWMC--����������
      ,c.SYZKM as c_JZWJBSJ_SYZKM--ʹ��״����
      ,cb.MC as c_JZWJBSJ_SYZKM_MC--����
      ,c.FWCQ as c_JZWJBSJ_FWCQ--���ݲ�Ȩ
      ,cc.MC as c_JZWJBSJ_FWCQ_MC--����
      ,c.XQH as c_JZWJBSJ_XQH--У����
      ,c.JZWFLM as c_JZWJBSJ_JZWFLM--�����������
      ,cd.MC as c_JZWJBSJ_JZWFLM_MC--����
      ,c.JZWJGM as c_JZWJBSJ_JZWJGM--������ṹ��
      ,ce.MC as c_JZWJBSJ_JZWJGM_MC--����
      ,c.JZWCS as c_JZWJBSJ_JZWCS--���������
      ,c.JCNY as c_JZWJBSJ_JCNY--��������
      ,c.JZWTZZE as c_JZWJBSJ_JZWTZZE--������Ͷ���ܶ�
      ,c.JFLYM as c_JZWJBSJ_JFLYM--������Դ��
      ,cf.MC as c_JZWJBSJ_JFLYM_MC--����
      ,c.ZJZMJ as c_JZWJBSJ_ZJZMJ--�ܽ������
      ,c.ZSYMJ as c_JZWJBSJ_ZSYMJ--��ʹ�����
      ,c.KZSFLDM as c_JZWJBSJ_KZSFLDM--��������Ҷ���
      ,cg.JC as c_JZWJBSJ_KZSFLDM_JC--���
      ,cg.MC as c_JZWJBSJ_KZSFLDM_MC--����
      ,c.KZSFBZM as c_JZWJBSJ_KZSFBZM--���������׼��
      ,ch.JC as c_JZWJBSJ_KZSFBZM_JC--���
      ,ch.MC as c_JZWJBSJ_KZSFBZM_MC--����
      ,ch.SM as c_JZWJBSJ_KZSFBZM_SM--˵��
      ,c.JZWDZ as c_JZWJBSJ_JZWDZ--�������ַ
      ,c.JZWZKM as c_JZWJBSJ_JZWZKM--������״����
      ,ci.MC as c_JZWJBSJ_JZWZKM_MC--����
      ,ci.SM as c_JZWJBSJ_JZWZKM_SM--˵��
      ,c.JZWTP as c_JZWJBSJ_JZWTP--������ͼƬ
      ,c.JZWPMT as c_JZWJBSJ_JZWPMT--������ƽ��ͼ
      ,c.XXDWCCM as c_JZWJBSJ_XXDWCCM--ѧУ��λ�����
      ,cj.MC as c_JZWJBSJ_XXDWCCM_MC--����
      ,c.JZWWZZK as c_JZWJBSJ_JZWWZZK--������λ��״��
      ,c.GHSPWH as c_JZWJBSJ_GHSPWH--�滮�����ĺ�
      ,c.ZHFZNL as c_JZWJBSJ_ZHFZNL--�ۺϷ�������
      ,c.GHSYNX as c_JZWJBSJ_GHSYNX--�滮ʹ������
      ,c.SFYYJBXCS as c_JZWJBSJ_SFYYJBXCS--�Ƿ���Ԥ�����մ�ʩ
      ,ck.MC as c_JZWJBSJ_SFYYJBXCS_MC--����
      ,c.SFKYYYJBNCS as c_JZWJBSJ_SFKYYYJBNCS--�Ƿ������Ӧ�����ѳ���
      ,cl.MC as c_JZWJBSJ_SFKYYYJBNCS_MC--����
      ,c.CQZH as c_JZWJBSJ_CQZH--��Ȩ֤��
      ,c.JZWYTM as c_JZWJBSJ_JZWYTM--��������;��
      ,cm.MC as c_JZWJBSJ_JZWYTM_MC--����
      ,c.JZWZGD as c_JZWJBSJ_JZWZGD--�������ܸ߶�
      ,c.WFJDBM as c_JZWJBSJ_WFJDBM--Σ����������
      ,c.WFJDWH as c_JZWJBSJ_WFJDWH--Σ�������ĺ�
      ,c.WFJDRQ as c_JZWJBSJ_WFJDRQ--Σ����������
      ,c.GNFSM as c_JZWJBSJ_GNFSM--��ů��ʽ��
      ,cn.MC as c_JZWJBSJ_GNFSM_MC--����
      ,c.JZWJCXSM as c_JZWJBSJ_JZWJCXSM--�����������ʽ��
      ,co.MC as c_JZWJBSJ_JZWJCXSM_MC--����
      ,c.JZWPMXSM as c_JZWJBSJ_JZWPMXSM--������ƽ����ʽ��
      ,cp.MC as c_JZWJBSJ_JZWPMXSM_MC--����
      ,c.JZWLBXSM as c_JZWJBSJ_JZWLBXSM--������¥����ʽ��
      ,cq.MC as c_JZWJBSJ_JZWLBXSM_MC--����
      ,c.SFYGZZ as c_JZWJBSJ_SFYGZZ--�Ƿ��й�����
      ,cr.MC as c_JZWJBSJ_SFYGZZ_MC--����
      ,c.QL as c_JZWJBSJ_QL--Ȧ��
      ,cs.MC as c_JZWJBSJ_QL_MC--����
      ,c.ZJAQGZWCRQ as c_JZWJBSJ_ZJAQGZWCRQ--�����ȫ�����������
      ,c.ZJAQGZHYJSYNX as c_JZWJBSJ_ZJAQGZHYJSYNX--�����ȫ�����Ԥ��ʹ������
      ,c.ZXLXM as c_JZWJBSJ_ZXLXM--ר������
      ,c.ZYZXTZBZMCM as c_JZWJBSJ_ZYZXTZBZMCM--����ר��Ͷ�ʲ���������
      ,ct.MC as c_JZWJBSJ_ZYZXTZBZMCM_MC--����
      ,c.WWJZDJM as c_JZWJBSJ_WWJZDJM--���ｨ���ȼ���
      ,cu.MC as c_JZWJBSJ_WWJZDJM_MC--����
      ,c.JXJFZYF as c_JZWJBSJ_JXJFZYF--��ѧ�������÷�
      ,c.QZJS as c_JZWJBSJ_QZJS--���н���
      ,c.QZSYS as c_JZWJBSJ_QZSYS--����ʵ����
      ,c.QZTSS as c_JZWJBSJ_QZTSS--����ͼ����
      ,c.QZWJS as c_JZWJBSJ_QZWJS--����΢����
      ,c.QZYYS as c_JZWJBSJ_QZYYS--����������
      ,c.QZTYHDS as c_JZWJBSJ_QZTYHDS--�����������
      ,c.QZQTJFYF as c_JZWJBSJ_QZQTJFYF--���������̸��÷�
      ,c.SHYF as c_JZWJBSJ_SHYF--�����÷�
      ,c.QZXSSS as c_JZWJBSJ_QZXSSS--����ѧ������
      ,c.QZST as c_JZWJBSJ_QZST--����ʳ��
      ,c.QZCS as c_JZWJBSJ_QZCS--���в���
      ,c.QZGLF as c_JZWJBSJ_QZGLF--���й�¯��(��ˮ��)
      ,c.QZYS as c_JZWJBSJ_QZYS--����ԡ��
      ,c.QZJGSS as c_JZWJBSJ_QZJGSS--���н̹�����
      ,c.QZQTSHYF as c_JZWJBSJ_QZQTSHYF--�������������÷�
      ,c.XZBGYF as c_JZWJBSJ_XZBGYF--�����칫�÷�
      ,c.QZJSBGS as c_JZWJBSJ_QZJSBGS--���н�ְ���칫��
      ,c.QZWSBJS as c_JZWJBSJ_QZWSBJS--��������������
      ,c.QZQTXZBGYF as c_JZWJBSJ_QZQTXZBGYF--�������������칫�÷�
      ,c.QTYF as c_JZWJBSJ_QTYF--�����÷�
      ,d.SCHOOLID as d_XSSS_SCHOOLID--ѧУ��
      ,d.SSLID as d_XSSS_SSLID--����¥ID
      ,d.SSLBM as d_XSSS_SSLBM--����¥���
      ,d.FJBM as d_XSSS_FJBM--������
      ,d.RZXB as d_XSSS_RZXB--��ס�Ա�
      ,db.MC as d_XSSS_RZXB_MC--����
      ,d.SFKY as d_XSSS_SFKY--�Ƿ����
      ,dc.MC as d_XSSS_SFKY_MC--����
      ,d.KZRS as d_XSSS_KZRS--��ס����
      ,d.WLDK as d_XSSS_WLDK--����˿�
      ,d.AZDSJ as d_XSSS_AZDSJ--��װ���ӻ�
      ,dd.MC as d_XSSS_AZDSJ_MC--����
      ,d.DHDK as d_XSSS_DHDK--�绰�˿�
      ,d.DHHM as d_XSSS_DHHM--�绰����
      ,d.SBDS as d_XSSS_SBDS--ˮ�����
      ,d.DBDS as d_XSSS_DBDS--������
      ,d.SSBZ as d_XSSS_SSBZ--���ᱸע
      ,d.SZLZ as d_XSSS_SZLZ--����¥��
      ,d.SSM as d_XSSS_SSM--������
      ,e.SCHOOLID as e_SSCW_SCHOOLID--ѧУID
      ,e.SSLID as e_SSCW_SSLID--����¥ID
      ,e.SSID as e_SSCW_SSID--����ID
      ,e.CWM as e_SSCW_CWM--��λ��
      ,e.BZ as e_SSCW_BZ--��ע
      ,e.SFRZ as e_SSCW_SFRZ--�Ƿ���ס
      ,eb.MC as e_SSCW_SFRZ_MC--����

FROM dbo.EDU_ZZFC_08_A02_YHZSJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_02_01_JZWJBSJ AS c ON a.SSLID = c.ID /*����¥ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_08_01_XSSS AS d ON a.SSID = d.ID /*����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_08_A01_SSCW AS e ON a.CWID = e.ID /*��λID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.MC as c_SFZJLX_MC--����
      ,d.MC as d_RDXB_MC--����
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--��������
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--��ĸ����
      ,f.MC as f_XX_MC--����
      ,f.JC as f_XX_JC--���
      ,g.MC as g_JKZKYWSZ_MC--����
      ,g.SM as g_JKZKYWSZ_SM--˵��
      ,h.MC as h_HYZZ_MC--����
      ,i.MC as i_ZZMM_MC--����
      ,i.JC as i_ZZMM_JC--���
      ,j.MC as j_GATQW_MC--����
      ,j.SM as j_GATQW_SM--˵��
      ,k.GJDQMCJC as k_SJGGHDQMC_GJDQMCJC--����/�������Ƽ��
      ,k.EZMDM as k_SJGGHDQMC_EZMDM--����ĸ����
      ,k.SZMDM as k_SJGGHDQMC_SZMDM--����ĸ����
      ,l.MC as l_ZHRMGHGXZQH_MC--����
      ,m.MC as m_ZJXY_MC--����
      ,n.MC as n_ZHRMGHGXZQH_MC--����
      ,o.MC as o_HKLB_MC--����
      ,p.MC as p_BZLB_MC--����
      ,q.MC as q_JZGLB_MC--����
      ,q.SM as q_JZGLB_SM--˵��
      ,r.MC as r_GWLB_MC--����
      ,s.MC as s_SFBZ_MC--����
      ,t.MC as t_SFBZ_MC--����
      ,u.MC as u_JZGDQZT_MC--����

FROM dbo.EDU_ZZJG_01_01_JZGJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_JZGDQZT AS u ON a.DQZTM = u.DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/
GO

--��ְ����ϵ��ʽ���������
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_02_01_JZGLXFS_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[JZGJBSJID]--��ְ��ID
      ,a.[GH]--����
      ,a.[XM]--����
      ,a.[YDDH]--�ƶ��绰
      ,a.[GDDH]--�̶��绰
      ,a.[YZBM]--��������
      ,a.[TXDZ]--ͨ�ŵ�ַ
      ,a.[DZXX]--��������
      ,a.[WLDZ]--�����ַ
      ,a.[JSTXH]--��ʱͨѶ��
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--ѧУ��
      ,c.GH as c_JZGJBSJ_GH--����
      ,c.XM as c_JZGJBSJ_XM--����
      ,c.YWXM as c_JZGJBSJ_YWXM--Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--������
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--���֤��������
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--���֤����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��������
      ,c.XBM as c_JZGJBSJ_XBM--�Ա���
      ,cc.MC as c_JZGJBSJ_XBM_MC--����
      ,c.MZM as c_JZGJBSJ_MZM--������
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--��������
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,c.XXM as c_JZGJBSJ_XXM--Ѫ����
      ,ce.MC as c_JZGJBSJ_XXM_MC--����
      ,ce.JC as c_JZGJBSJ_XXM_JC--���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--����״����
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--����
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--˵��
      ,c.HYZTM as c_JZGJBSJ_HYZTM--����״̬��
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--����
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--������ò��
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--����
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--���
      ,c.GATQWM as c_JZGJBSJ_GATQWM--�۰�̨������
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--����
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--˵��
      ,c.JG as c_JZGJBSJ_JG--����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--����/������
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--����������������
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--����
      ,c.XYZJM as c_JZGJBSJ_XYZJM--�����ڽ���
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--����
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,c.HKLBM as c_JZGJBSJ_HKLBM--���������
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--����
      ,c.DQZZ as c_JZGJBSJ_DQZZ--��ǰסַ
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--�μӹ�������
      ,c.CJNY as c_JZGJBSJ_CJNY--�ӽ�����
      ,c.LXNY as c_JZGJBSJ_LXNY--��У����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--���������
      ,co.MC as c_JZGJBSJ_BZLBM_MC--����
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--��ְ�������
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--����
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--˵��
      ,c.GWLBM as c_JZGJBSJ_GWLBM--��λ�����
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--����
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--����
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--����
      ,c.ZP as c_JZGJBSJ_ZP--��Ƭ(·��)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--��ǰ״̬��
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--����

FROM dbo.EDU_ZZJG_02_01_JZGLXFS AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*��ְ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_JGGW_SCHOOLID--ѧУID
      ,c.JGH as c_JGGW_JGH--������
      ,c.GWBH as c_JGGW_GWBH--��λ���
      ,c.GWMC as c_JGGW_GWMC--��λ����
      ,c.GWSM as c_JGGW_GWSM--��λ˵��
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--ѧУ��
      ,d.GH as d_JZGJBSJ_GH--����
      ,d.XM as d_JZGJBSJ_XM--����
      ,d.YWXM as d_JZGJBSJ_YWXM--Ӣ������
      ,d.XMPY as d_JZGJBSJ_XMPY--����ƴ��
      ,d.CYM as d_JZGJBSJ_CYM--������
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--���֤��������
      ,db.MC as d_JZGJBSJ_SFZJLXM_MC--����
      ,d.SFZJH as d_JZGJBSJ_SFZJH--���֤����
      ,d.CSRQ as d_JZGJBSJ_CSRQ--��������
      ,d.XBM as d_JZGJBSJ_XBM--�Ա���
      ,dc.MC as d_JZGJBSJ_XBM_MC--����
      ,d.MZM as d_JZGJBSJ_MZM--������
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--��������
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,d.XXM as d_JZGJBSJ_XXM--Ѫ����
      ,de.MC as d_JZGJBSJ_XXM_MC--����
      ,de.JC as d_JZGJBSJ_XXM_JC--���
      ,d.JKZKM as d_JZGJBSJ_JKZKM--����״����
      ,df.MC as d_JZGJBSJ_JKZKM_MC--����
      ,df.SM as d_JZGJBSJ_JKZKM_SM--˵��
      ,d.HYZTM as d_JZGJBSJ_HYZTM--����״̬��
      ,dg.MC as d_JZGJBSJ_HYZTM_MC--����
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--������ò��
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--����
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--���
      ,d.GATQWM as d_JZGJBSJ_GATQWM--�۰�̨������
      ,di.MC as d_JZGJBSJ_GATQWM_MC--����
      ,di.SM as d_JZGJBSJ_GATQWM_SM--˵��
      ,d.JG as d_JZGJBSJ_JG--����
      ,d.GJDQM as d_JZGJBSJ_GJDQM--����/������
      ,dj.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,dj.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,dj.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,d.CSDXZQHM as d_JZGJBSJ_CSDXZQHM--����������������
      ,dk.MC as d_JZGJBSJ_CSDXZQHM_MC--����
      ,d.XYZJM as d_JZGJBSJ_XYZJM--�����ڽ���
      ,dl.MC as d_JZGJBSJ_XYZJM_MC--����
      ,d.JZGHKSZDXZQHM as d_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,dm.MC as d_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,d.HKLBM as d_JZGJBSJ_HKLBM--���������
      ,dn.MC as d_JZGJBSJ_HKLBM_MC--����
      ,d.DQZZ as d_JZGJBSJ_DQZZ--��ǰסַ
      ,d.DQZZYZBM as d_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,d.CJGZNY as d_JZGJBSJ_CJGZNY--�μӹ�������
      ,d.CJNY as d_JZGJBSJ_CJNY--�ӽ�����
      ,d.LXNY as d_JZGJBSJ_LXNY--��У����
      ,d.BZLBM as d_JZGJBSJ_BZLBM--���������
      ,do.MC as d_JZGJBSJ_BZLBM_MC--����
      ,d.JZGLBM as d_JZGJBSJ_JZGLBM--��ְ�������
      ,dp.MC as d_JZGJBSJ_JZGLBM_MC--����
      ,dp.SM as d_JZGJBSJ_JZGLBM_SM--˵��
      ,d.GWLBM as d_JZGJBSJ_GWLBM--��λ�����
      ,dq.MC as d_JZGJBSJ_GWLBM_MC--����
      ,d.SFJZJS as d_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,dr.MC as d_JZGJBSJ_SFJZJS_MC--����
      ,d.SFSSXJS as d_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,ds.MC as d_JZGJBSJ_SFSSXJS_MC--����
      ,d.ZP as d_JZGJBSJ_ZP--��Ƭ(·��)
      ,d.DQZTM as d_JZGJBSJ_DQZTM--��ǰ״̬��
      ,dt.MC as d_JZGJBSJ_DQZTM_MC--����
      ,e.MC as e_SFBZ_MC--����
      ,f.SCHOOLID as f_XNJG_SCHOOLID--ѧУ��
      ,f.JGMC as f_XNJG_JGMC--��������
      ,f.JGYWMC as f_XNJG_JGYWMC--����Ӣ������
      ,f.JGJC as f_XNJG_JGJC--�������
      ,f.JGJP as f_XNJG_JGJP--������ƴ
      ,f.JGDZ as f_XNJG_JGDZ--������ַ
      ,f.LSSJJGH as f_XNJG_LSSJJGH--�����ϼ�������
      ,f.LSXQH as f_XNJG_LSXQH--����У����
      ,f.JGYXBS as f_XNJG_JGYXBS--������Ч��ʶ
      ,fb.MC as f_XNJG_JGYXBS_MC--����
      ,f.SFST as f_XNJG_SFST--�Ƿ�ʵ��
      ,fc.MC as f_XNJG_SFST_MC--����
      ,f.JLNY as f_XNJG_JLNY--��������
      ,f.JGYZBM as f_XNJG_JGYZBM--������������
      ,f.FZRH as f_XNJG_FZRH--�����˺�

FROM dbo.EDU_ZZJG_02_02_XNGWSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_A01_JGGW AS c ON a.GWID = c.ID /*��λ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS d ON a.JZGJBSJID = d.ID /*��ְ���������������*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFZG = e.DM /*�Ƿ��ڸ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS f ON a.JGH = f.JGH /*������*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--ѧУ��
      ,c.GH as c_JZGJBSJ_GH--����
      ,c.XM as c_JZGJBSJ_XM--����
      ,c.YWXM as c_JZGJBSJ_YWXM--Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--������
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--���֤��������
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--���֤����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��������
      ,c.XBM as c_JZGJBSJ_XBM--�Ա���
      ,cc.MC as c_JZGJBSJ_XBM_MC--����
      ,c.MZM as c_JZGJBSJ_MZM--������
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--��������
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,c.XXM as c_JZGJBSJ_XXM--Ѫ����
      ,ce.MC as c_JZGJBSJ_XXM_MC--����
      ,ce.JC as c_JZGJBSJ_XXM_JC--���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--����״����
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--����
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--˵��
      ,c.HYZTM as c_JZGJBSJ_HYZTM--����״̬��
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--����
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--������ò��
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--����
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--���
      ,c.GATQWM as c_JZGJBSJ_GATQWM--�۰�̨������
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--����
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--˵��
      ,c.JG as c_JZGJBSJ_JG--����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--����/������
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--����������������
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--����
      ,c.XYZJM as c_JZGJBSJ_XYZJM--�����ڽ���
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--����
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,c.HKLBM as c_JZGJBSJ_HKLBM--���������
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--����
      ,c.DQZZ as c_JZGJBSJ_DQZZ--��ǰסַ
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--�μӹ�������
      ,c.CJNY as c_JZGJBSJ_CJNY--�ӽ�����
      ,c.LXNY as c_JZGJBSJ_LXNY--��У����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--���������
      ,co.MC as c_JZGJBSJ_BZLBM_MC--����
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--��ְ�������
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--����
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--˵��
      ,c.GWLBM as c_JZGJBSJ_GWLBM--��λ�����
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--����
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--����
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--����
      ,c.ZP as c_JZGJBSJ_ZP--��Ƭ(·��)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--��ǰ״̬��
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--����
      ,d.MC as d_SFBZ_MC--����

FROM dbo.EDU_ZZJG_07_01_JZGZYNL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*��ְ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.SFSZYZGZS = d.DM /*�Ƿ���ְҵ�ʸ�֤��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--ѧУ��
      ,c.GH as c_JZGJBSJ_GH--����
      ,c.XM as c_JZGJBSJ_XM--����
      ,c.YWXM as c_JZGJBSJ_YWXM--Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--������
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--���֤��������
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--���֤����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��������
      ,c.XBM as c_JZGJBSJ_XBM--�Ա���
      ,cc.MC as c_JZGJBSJ_XBM_MC--����
      ,c.MZM as c_JZGJBSJ_MZM--������
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--��������
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,c.XXM as c_JZGJBSJ_XXM--Ѫ����
      ,ce.MC as c_JZGJBSJ_XXM_MC--����
      ,ce.JC as c_JZGJBSJ_XXM_JC--���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--����״����
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--����
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--˵��
      ,c.HYZTM as c_JZGJBSJ_HYZTM--����״̬��
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--����
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--������ò��
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--����
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--���
      ,c.GATQWM as c_JZGJBSJ_GATQWM--�۰�̨������
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--����
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--˵��
      ,c.JG as c_JZGJBSJ_JG--����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--����/������
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--����������������
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--����
      ,c.XYZJM as c_JZGJBSJ_XYZJM--�����ڽ���
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--����
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,c.HKLBM as c_JZGJBSJ_HKLBM--���������
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--����
      ,c.DQZZ as c_JZGJBSJ_DQZZ--��ǰסַ
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--�μӹ�������
      ,c.CJNY as c_JZGJBSJ_CJNY--�ӽ�����
      ,c.LXNY as c_JZGJBSJ_LXNY--��У����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--���������
      ,co.MC as c_JZGJBSJ_BZLBM_MC--����
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--��ְ�������
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--����
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--˵��
      ,c.GWLBM as c_JZGJBSJ_GWLBM--��λ�����
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--����
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--����
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--����
      ,c.ZP as c_JZGJBSJ_ZP--��Ƭ(·��)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--��ǰ״̬��
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--����
      ,d.MC as d_JBLX_MC--����

FROM dbo.EDU_ZZJG_04_A01_JBDJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*��ְ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_JBLX AS d ON a.JBLX = d.DM /*�Ӱ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.SCHOOLID as b_JZGJBSJ_SCHOOLID--ѧУ��
      ,b.GH as b_JZGJBSJ_GH--����
      ,b.XM as b_JZGJBSJ_XM--����
      ,b.YWXM as b_JZGJBSJ_YWXM--Ӣ������
      ,b.XMPY as b_JZGJBSJ_XMPY--����ƴ��
      ,b.CYM as b_JZGJBSJ_CYM--������
      ,b.SFZJLXM as b_JZGJBSJ_SFZJLXM--���֤��������
      ,bb.MC as b_JZGJBSJ_SFZJLXM_MC--����
      ,b.SFZJH as b_JZGJBSJ_SFZJH--���֤����
      ,b.CSRQ as b_JZGJBSJ_CSRQ--��������
      ,b.XBM as b_JZGJBSJ_XBM--�Ա���
      ,bc.MC as b_JZGJBSJ_XBM_MC--����
      ,b.MZM as b_JZGJBSJ_MZM--������
      ,bd.MZMC as b_JZGJBSJ_MZM_MZMC--��������
      ,bd.ZMDM as b_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,b.XXM as b_JZGJBSJ_XXM--Ѫ����
      ,be.MC as b_JZGJBSJ_XXM_MC--����
      ,be.JC as b_JZGJBSJ_XXM_JC--���
      ,b.JKZKM as b_JZGJBSJ_JKZKM--����״����
      ,bf.MC as b_JZGJBSJ_JKZKM_MC--����
      ,bf.SM as b_JZGJBSJ_JKZKM_SM--˵��
      ,b.HYZTM as b_JZGJBSJ_HYZTM--����״̬��
      ,bg.MC as b_JZGJBSJ_HYZTM_MC--����
      ,b.ZZMMM as b_JZGJBSJ_ZZMMM--������ò��
      ,bh.MC as b_JZGJBSJ_ZZMMM_MC--����
      ,bh.JC as b_JZGJBSJ_ZZMMM_JC--���
      ,b.GATQWM as b_JZGJBSJ_GATQWM--�۰�̨������
      ,bi.MC as b_JZGJBSJ_GATQWM_MC--����
      ,bi.SM as b_JZGJBSJ_GATQWM_SM--˵��
      ,b.JG as b_JZGJBSJ_JG--����
      ,b.GJDQM as b_JZGJBSJ_GJDQM--����/������
      ,bj.GJDQMCJC as b_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,bj.EZMDM as b_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,bj.SZMDM as b_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,b.CSDXZQHM as b_JZGJBSJ_CSDXZQHM--����������������
      ,bk.MC as b_JZGJBSJ_CSDXZQHM_MC--����
      ,b.XYZJM as b_JZGJBSJ_XYZJM--�����ڽ���
      ,bl.MC as b_JZGJBSJ_XYZJM_MC--����
      ,b.JZGHKSZDXZQHM as b_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,bm.MC as b_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,b.HKLBM as b_JZGJBSJ_HKLBM--���������
      ,bn.MC as b_JZGJBSJ_HKLBM_MC--����
      ,b.DQZZ as b_JZGJBSJ_DQZZ--��ǰסַ
      ,b.DQZZYZBM as b_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,b.CJGZNY as b_JZGJBSJ_CJGZNY--�μӹ�������
      ,b.CJNY as b_JZGJBSJ_CJNY--�ӽ�����
      ,b.LXNY as b_JZGJBSJ_LXNY--��У����
      ,b.BZLBM as b_JZGJBSJ_BZLBM--���������
      ,bo.MC as b_JZGJBSJ_BZLBM_MC--����
      ,b.JZGLBM as b_JZGJBSJ_JZGLBM--��ְ�������
      ,bp.MC as b_JZGJBSJ_JZGLBM_MC--����
      ,bp.SM as b_JZGJBSJ_JZGLBM_SM--˵��
      ,b.GWLBM as b_JZGJBSJ_GWLBM--��λ�����
      ,bq.MC as b_JZGJBSJ_GWLBM_MC--����
      ,b.SFJZJS as b_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,br.MC as b_JZGJBSJ_SFJZJS_MC--����
      ,b.SFSSXJS as b_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,bs.MC as b_JZGJBSJ_SFSSXJS_MC--����
      ,b.ZP as b_JZGJBSJ_ZP--��Ƭ(·��)
      ,b.DQZTM as b_JZGJBSJ_DQZTM--��ǰ״̬��
      ,bt.MC as b_JZGJBSJ_DQZTM_MC--����
      ,c.XXDM as c_ZZXX_XXDM--ѧУ����
      ,c.XXMC as c_ZZXX_XXMC--ѧУ����
      ,c.XXYWMC as c_ZZXX_XXYWMC--ѧУӢ������
      ,c.XXJBZM as c_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,cb.MC as c_ZZXX_XXJBZM_MC--����
      ,cb.SM as c_ZZXX_XXJBZM_SM--˵��
      ,c.XXZGBMM as c_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,cc.MC as c_ZZXX_XXZGBMM_MC--����
      ,cc.SM as c_ZZXX_XXZGBMM_SM--˵��
      ,c.XXDZ as c_ZZXX_XXDZ--ѧУ��ַ
      ,c.XXYZBM as c_ZZXX_XXYZBM--ѧУ��������
      ,c.XZQHM as c_ZZXX_XZQHM--����������
      ,cd.MC as c_ZZXX_XZQHM_MC--����
      ,c.JXNY as c_ZZXX_JXNY--��У����
      ,c.XQR as c_ZZXX_XQR--У����
      ,c.CLBJ as c_ZZXX_CLBJ--��������
      ,c.LSYG as c_ZZXX_LSYG--��ʷ�ظ�
      ,c.XXXQS as c_ZZXX_XXXQS--ѧУУ����
      ,c.XXPGLX as c_ZZXX_XXPGLX--ѧУ��������
      ,ce.MC as c_ZZXX_XXPGLX_MC--����
      ,c.XXPGQKSM as c_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,c.ZYDZ as c_ZZXX_ZYDZ--��ҳ��ַ
      ,c.FDDBRH as c_ZZXX_FDDBRH--���������˺�
      ,c.FRZSH as c_ZZXX_FRZSH--����֤���
      ,c.LXDH as c_ZZXX_LXDH--��ϵ�绰
      ,c.CZDH as c_ZZXX_CZDH--����绰
      ,c.DZXX as c_ZZXX_DZXX--��������

FROM dbo.EDU_ZZJG_01_A01_JZGKZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS b ON a.JZGJBSJID = b.ID /*�̹�������ϢID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*ѧУID*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_JZGDQZT AS bt ON b.DQZTM = bt.DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*ѧУ��������*/
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_ZYXX_SCHOOLID--ѧУ��
      ,c.ZYDM as c_ZYXX_ZYDM--רҵ����
      ,cb.ZYMLLB as c_ZYXX_ZYDM_ZYMLLB--רҵĿ¼���
      ,cb.MC as c_ZYXX_ZYDM_MC--����
      ,c.ZYMC as c_ZYXX_ZYMC--רҵ����
      ,c.ZYYWMC as c_ZYXX_ZYYWMC--רҵӢ������
      ,c.XZ as c_ZYXX_XZ--ѧ��
      ,c.ZYFXMC as c_ZYXX_ZYFXMC--רҵ��������
      ,c.ZYJC as c_ZYXX_ZYJC--רҵ���
      ,c.JLNY as c_ZYXX_JLNY--��������
      ,c.ZYJSS as c_ZYXX_ZYJSS--רҵ��ʦ��
      ,c.KSJGH as c_ZYXX_KSJGH--���������
      ,c.ZXF as c_ZYXX_ZXF--��ѧ��
      ,c.SSZYML as c_ZYXX_SSZYML--����רҵĿ¼
      ,cc.MC as c_ZYXX_SSZYML_MC--����
      ,c.ZYLB as c_ZYXX_ZYLB--רҵ�������
      ,d.SCHOOLID as d_ZZNJ_SCHOOLID--ѧУ��
      ,d.NJMC as d_ZZNJ_NJMC--�꼶����
      ,d.SSNF as d_ZZNJ_SSNF--�������
      ,d.NJZT as d_ZZNJ_NJZT--�꼶״̬
      ,db.MC as d_ZZNJ_NJZT_MC--����
      ,e.SCHOOLID as e_XNJG_SCHOOLID--ѧУ��
      ,e.JGMC as e_XNJG_JGMC--��������
      ,e.JGYWMC as e_XNJG_JGYWMC--����Ӣ������
      ,e.JGJC as e_XNJG_JGJC--�������
      ,e.JGJP as e_XNJG_JGJP--������ƴ
      ,e.JGDZ as e_XNJG_JGDZ--������ַ
      ,e.LSSJJGH as e_XNJG_LSSJJGH--�����ϼ�������
      ,e.LSXQH as e_XNJG_LSXQH--����У����
      ,e.JGYXBS as e_XNJG_JGYXBS--������Ч��ʶ
      ,eb.MC as e_XNJG_JGYXBS_MC--����
      ,e.SFST as e_XNJG_SFST--�Ƿ�ʵ��
      ,ec.MC as e_XNJG_SFST_MC--����
      ,e.JLNY as e_XNJG_JLNY--��������
      ,e.JGYZBM as e_XNJG_JGYZBM--������������
      ,e.FZRH as e_XNJG_FZRH--�����˺�

FROM dbo.EDU_ZZJX_02_02_ZZBJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS c ON a.ZYXXID = c.ZYBH /*רҵ������Ϣ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS d ON a.ZZNJID = d.NJDM /*ѧУ�꼶���ݱ�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS e ON a.JGH = e.JGH /*������*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.MC as c_SFBZ_MC--����

FROM dbo.EDU_ZZJX_02_01_ZZNJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.NJZT = c.DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/
GO

--ѧ�����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_03_ZZXQ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XNID]--ѧ��
      ,a.[XQM]--ѧ����
      ,a.[XQMC]--ѧ������
      ,a.[XQKSRQ]--ѧ�ڿ�ʼ����
      ,a.[XQJSRQ]--ѧ�ڽ�������
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XN_SCHOOLID--ѧУ��
      ,c.XN as c_XN_XN--ѧ��
      ,d.MC as d_XQ_MC--����

FROM dbo.EDU_ZZJX_01_03_ZZXQ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*ѧ��*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS d ON a.XQM = d.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.ZYMLLB as c_ZJZY_ZYMLLB--רҵĿ¼���
      ,cb.MC as c_ZJZY_ZYMLLB_MC--����
      ,c.MC as c_ZJZY_MC--����
      ,d.SCHOOLID as d_XNJG_SCHOOLID--ѧУ��
      ,d.JGMC as d_XNJG_JGMC--��������
      ,d.JGYWMC as d_XNJG_JGYWMC--����Ӣ������
      ,d.JGJC as d_XNJG_JGJC--�������
      ,d.JGJP as d_XNJG_JGJP--������ƴ
      ,d.JGDZ as d_XNJG_JGDZ--������ַ
      ,d.LSSJJGH as d_XNJG_LSSJJGH--�����ϼ�������
      ,d.LSXQH as d_XNJG_LSXQH--����У����
      ,d.JGYXBS as d_XNJG_JGYXBS--������Ч��ʶ
      ,db.MC as d_XNJG_JGYXBS_MC--����
      ,d.SFST as d_XNJG_SFST--�Ƿ�ʵ��
      ,dc.MC as d_XNJG_SFST_MC--����
      ,d.JLNY as d_XNJG_JLNY--��������
      ,d.JGYZBM as d_XNJG_JGYZBM--������������
      ,d.FZRH as d_XNJG_FZRH--�����˺�
      ,e.MC as e_ZYML_MC--����

FROM dbo.EDU_ZZJX_01_01_ZYXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS c ON a.ZYDM = c.DM /*רҵ����*/ AND a.SSZYML = c.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS d ON a.KSJGH = d.JGH /*���������*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS e ON a.SSZYML = e.DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��
      ,c.XM as c_XSXX_XM--����
      ,c.YWXM as c_XSXX_YWXM--Ӣ������
      ,c.XMPY as c_XSXX_XMPY--����ƴ��
      ,c.CYM as c_XSXX_CYM--������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--����
      ,c.SFZJH as c_XSXX_SFZJH--���֤����
      ,c.XBM as c_XSXX_XBM--�Ա���
      ,cc.MC as c_XSXX_XBM_MC--����
      ,c.XXM as c_XSXX_XXM--Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--����
      ,cd.JC as c_XSXX_XXM_JC--���
      ,c.CSRQ as c_XSXX_CSRQ--��������
      ,c.CSDM as c_XSXX_CSDM--��������
      ,ce.MC as c_XSXX_CSDM_MC--����
      ,c.JG as c_XSXX_JG--����
      ,c.MZM as c_XSXX_MZM--������
      ,cf.MZMC as c_XSXX_MZM_MZMC--��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����
      ,c.XYZJM as c_XSXX_XYZJM--�����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--����
      ,c.GATQWM as c_XSXX_GATQWM--�۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--����
      ,ci.SM as c_XSXX_GATQWM_SM--˵��
      ,c.JKZKM as c_XSXX_JKZKM--����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����
      ,cj.SM as c_XSXX_JKZKM_SM--˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--����
      ,ck.JC as c_XSXX_ZZMMM_JC--���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--����
      ,c.HKLBM as c_XSXX_HKLBM--���������
      ,cm.MC as c_XSXX_HKLBM_MC--����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--�Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--����
      ,c.GJDQM as c_XSXX_GJDQM--����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--����ĸ����
      ,c.TC as c_XSXX_TC--�س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--�����ַ
      ,c.JSTXH as c_XSXX_JSTXH--��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--��������
      ,c.ZP as c_XSXX_ZP--��Ƭ(·��)
      ,d.SCHOOLID as d_XN_SCHOOLID--ѧУ��
      ,d.XN as d_XN_XN--ѧ��
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--ѧУ��
      ,e.GH as e_JZGJBSJ_GH--����
      ,e.XM as e_JZGJBSJ_XM--����
      ,e.YWXM as e_JZGJBSJ_YWXM--Ӣ������
      ,e.XMPY as e_JZGJBSJ_XMPY--����ƴ��
      ,e.CYM as e_JZGJBSJ_CYM--������
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--���֤��������
      ,eb.MC as e_JZGJBSJ_SFZJLXM_MC--����
      ,e.SFZJH as e_JZGJBSJ_SFZJH--���֤����
      ,e.CSRQ as e_JZGJBSJ_CSRQ--��������
      ,e.XBM as e_JZGJBSJ_XBM--�Ա���
      ,ec.MC as e_JZGJBSJ_XBM_MC--����
      ,e.MZM as e_JZGJBSJ_MZM--������
      ,ed.MZMC as e_JZGJBSJ_MZM_MZMC--��������
      ,ed.ZMDM as e_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,e.XXM as e_JZGJBSJ_XXM--Ѫ����
      ,ee.MC as e_JZGJBSJ_XXM_MC--����
      ,ee.JC as e_JZGJBSJ_XXM_JC--���
      ,e.JKZKM as e_JZGJBSJ_JKZKM--����״����
      ,ef.MC as e_JZGJBSJ_JKZKM_MC--����
      ,ef.SM as e_JZGJBSJ_JKZKM_SM--˵��
      ,e.HYZTM as e_JZGJBSJ_HYZTM--����״̬��
      ,eg.MC as e_JZGJBSJ_HYZTM_MC--����
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--������ò��
      ,eh.MC as e_JZGJBSJ_ZZMMM_MC--����
      ,eh.JC as e_JZGJBSJ_ZZMMM_JC--���
      ,e.GATQWM as e_JZGJBSJ_GATQWM--�۰�̨������
      ,ei.MC as e_JZGJBSJ_GATQWM_MC--����
      ,ei.SM as e_JZGJBSJ_GATQWM_SM--˵��
      ,e.JG as e_JZGJBSJ_JG--����
      ,e.GJDQM as e_JZGJBSJ_GJDQM--����/������
      ,ej.GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,ej.EZMDM as e_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,ej.SZMDM as e_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,e.CSDXZQHM as e_JZGJBSJ_CSDXZQHM--����������������
      ,ek.MC as e_JZGJBSJ_CSDXZQHM_MC--����
      ,e.XYZJM as e_JZGJBSJ_XYZJM--�����ڽ���
      ,el.MC as e_JZGJBSJ_XYZJM_MC--����
      ,e.JZGHKSZDXZQHM as e_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,em.MC as e_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,e.HKLBM as e_JZGJBSJ_HKLBM--���������
      ,en.MC as e_JZGJBSJ_HKLBM_MC--����
      ,e.DQZZ as e_JZGJBSJ_DQZZ--��ǰסַ
      ,e.DQZZYZBM as e_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,e.CJGZNY as e_JZGJBSJ_CJGZNY--�μӹ�������
      ,e.CJNY as e_JZGJBSJ_CJNY--�ӽ�����
      ,e.LXNY as e_JZGJBSJ_LXNY--��У����
      ,e.BZLBM as e_JZGJBSJ_BZLBM--���������
      ,eo.MC as e_JZGJBSJ_BZLBM_MC--����
      ,e.JZGLBM as e_JZGJBSJ_JZGLBM--��ְ�������
      ,ep.MC as e_JZGJBSJ_JZGLBM_MC--����
      ,ep.SM as e_JZGJBSJ_JZGLBM_SM--˵��
      ,e.GWLBM as e_JZGJBSJ_GWLBM--��λ�����
      ,eq.MC as e_JZGJBSJ_GWLBM_MC--����
      ,e.SFJZJS as e_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,er.MC as e_JZGJBSJ_SFJZJS_MC--����
      ,e.SFSSXJS as e_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,es.MC as e_JZGJBSJ_SFSSXJS_MC--����
      ,e.ZP as e_JZGJBSJ_ZP--��Ƭ(·��)
      ,e.DQZTM as e_JZGJBSJ_DQZTM--��ǰ״̬��
      ,et.MC as e_JZGJBSJ_DQZTM_MC--����

FROM dbo.EDU_ZZJX_08_A01_DGFSQ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS d ON a.XNID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.SHRID = e.ID /*�����ԱID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--ѧУ��
      ,c.GH as c_JZGJBSJ_GH--����
      ,c.XM as c_JZGJBSJ_XM--����
      ,c.YWXM as c_JZGJBSJ_YWXM--Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--������
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--���֤��������
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--���֤����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��������
      ,c.XBM as c_JZGJBSJ_XBM--�Ա���
      ,cc.MC as c_JZGJBSJ_XBM_MC--����
      ,c.MZM as c_JZGJBSJ_MZM--������
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--��������
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,c.XXM as c_JZGJBSJ_XXM--Ѫ����
      ,ce.MC as c_JZGJBSJ_XXM_MC--����
      ,ce.JC as c_JZGJBSJ_XXM_JC--���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--����״����
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--����
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--˵��
      ,c.HYZTM as c_JZGJBSJ_HYZTM--����״̬��
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--����
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--������ò��
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--����
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--���
      ,c.GATQWM as c_JZGJBSJ_GATQWM--�۰�̨������
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--����
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--˵��
      ,c.JG as c_JZGJBSJ_JG--����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--����/������
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--����������������
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--����
      ,c.XYZJM as c_JZGJBSJ_XYZJM--�����ڽ���
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--����
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,c.HKLBM as c_JZGJBSJ_HKLBM--���������
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--����
      ,c.DQZZ as c_JZGJBSJ_DQZZ--��ǰסַ
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--�μӹ�������
      ,c.CJNY as c_JZGJBSJ_CJNY--�ӽ�����
      ,c.LXNY as c_JZGJBSJ_LXNY--��У����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--���������
      ,co.MC as c_JZGJBSJ_BZLBM_MC--����
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--��ְ�������
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--����
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--˵��
      ,c.GWLBM as c_JZGJBSJ_GWLBM--��λ�����
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--����
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--����
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--����
      ,c.ZP as c_JZGJBSJ_ZP--��Ƭ(·��)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--��ǰ״̬��
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--����
      ,d.SCHOOLID as d_ZZXQ_SCHOOLID--ѧУ��
      ,d.XNID as d_ZZXQ_XNID--ѧ��
      ,d.XQM as d_ZZXQ_XQM--ѧ����
      ,db.MC as d_ZZXQ_XQM_MC--����
      ,d.XQMC as d_ZZXQ_XQMC--ѧ������
      ,d.XQKSRQ as d_ZZXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,d.XQJSRQ as d_ZZXQ_XQJSRQ--ѧ�ڽ�������

FROM dbo.EDU_ZZJX_05_02_JSJXGZLTJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*��ʦID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_03_ZZXQ AS d ON a.XQID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_ZZXQ_SCHOOLID--ѧУ��
      ,c.XNID as c_ZZXQ_XNID--ѧ��
      ,c.XQM as c_ZZXQ_XQM--ѧ����
      ,cb.MC as c_ZZXQ_XQM_MC--����
      ,c.XQMC as c_ZZXQ_XQMC--ѧ������
      ,c.XQKSRQ as c_ZZXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_ZZXQ_XQJSRQ--ѧ�ڽ�������
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--ѧУID
      ,d.JHNJ as d_ZTJXJH_JHNJ--�ƻ��꼶
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--רҵ���
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--�ƻ�רҵ����
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--��ѧ��Ҫ��
      ,d.JLNY as d_ZTJXJH_JLNY--��������
      ,d.SYXZ as d_ZTJXJH_SYXZ--����ѧ��
      ,d.PYMB as d_ZTJXJH_PYMB--����Ŀ��
      ,d.SFKY as d_ZTJXJH_SFKY--�Ƿ����
      ,db.MC as d_ZTJXJH_SFKY_MC--����
      ,d.FJ as d_ZTJXJH_FJ--����

FROM dbo.EDU_ZZJX_03_A01_XQXFGL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_03_ZZXQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JHBH = d.JHBH /*�ƻ����*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_KC_SCHOOLID--ѧУID
      ,c.KCMC as c_KC_KCMC--�γ�����
      ,c.KCYWM as c_KC_KCYWM--�γ�Ӣ����
      ,c.KCBM as c_KC_KCBM--�γ̱���
      ,c.KCJS as c_KC_KCJS--�γ̽���
      ,c.XF as c_KC_XF--ѧ��
      ,c.ZXS as c_KC_ZXS--��ѧʱ
      ,c.LLXS as c_KC_LLXS--����ѧʱ
      ,c.SJXS as c_KC_SJXS--ʵ��ѧʱ
      ,c.QTXS as c_KC_QTXS--����ѧʱ
      ,c.CKSM as c_KC_CKSM--�ο���Ŀ
      ,c.KKDW as c_KC_KKDW--���ε�λ
      ,c.KSXS as c_KC_KSXS--������ʽ
      ,cb.MC as c_KC_KSXS_MC--����
      ,c.SKFSM as c_KC_SKFSM--�ڿη�ʽ��
      ,cc.MC as c_KC_SKFSM_MC--����
      ,c.KCFY as c_KC_KCFY--�γ̷���
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--ѧУID
      ,d.JHNJ as d_ZTJXJH_JHNJ--�ƻ��꼶
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--רҵ���
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--�ƻ�רҵ����
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--��ѧ��Ҫ��
      ,d.JLNY as d_ZTJXJH_JLNY--��������
      ,d.SYXZ as d_ZTJXJH_SYXZ--����ѧ��
      ,d.PYMB as d_ZTJXJH_PYMB--����Ŀ��
      ,d.SFKY as d_ZTJXJH_SFKY--�Ƿ����
      ,db.MC as d_ZTJXJH_SFKY_MC--����
      ,d.FJ as d_ZTJXJH_FJ--����
      ,e.SCHOOLID as e_ZZXQ_SCHOOLID--ѧУ��
      ,e.XNID as e_ZZXQ_XNID--ѧ��
      ,e.XQM as e_ZZXQ_XQM--ѧ����
      ,eb.MC as e_ZZXQ_XQM_MC--����
      ,e.XQMC as e_ZZXQ_XQMC--ѧ������
      ,e.XQKSRQ as e_ZZXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,e.XQJSRQ as e_ZZXQ_XQJSRQ--ѧ�ڽ�������
      ,f.MC as f_SKFS_MC--����
      ,g.MC as g_KCFL_MC--����
      ,h.MC as h_KCSX_MC--����
      ,h.SM as h_KCSX_SM--˵��

FROM dbo.EDU_ZZJX_03_03_JXJHKCQD AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS c ON a.KCH = c.KCH /*�γ̺�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JHBH = d.JHBH /*�ƻ����*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_03_ZZXQ AS e ON a.XQID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS f ON a.SFHXKC = f.DM /*�Ƿ���ģ��Ǹɣ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS g ON a.KCFLM = g.DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS h ON a.KCSXM = h.DM /*�γ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.MC as c_KCFL_MC--����
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--ѧУID
      ,d.JHNJ as d_ZTJXJH_JHNJ--�ƻ��꼶
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--רҵ���
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--�ƻ�רҵ����
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--��ѧ��Ҫ��
      ,d.JLNY as d_ZTJXJH_JLNY--��������
      ,d.SYXZ as d_ZTJXJH_SYXZ--����ѧ��
      ,d.PYMB as d_ZTJXJH_PYMB--����Ŀ��
      ,d.SFKY as d_ZTJXJH_SFKY--�Ƿ����
      ,db.MC as d_ZTJXJH_SFKY_MC--����
      ,d.FJ as d_ZTJXJH_FJ--����

FROM dbo.EDU_ZZJX_03_02_JXJHFLXFYQ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS c ON a.KCFLM = c.DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JHBH = d.JHBH /*�ƻ����*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_ZZNJ_SCHOOLID--ѧУ��
      ,c.NJMC as c_ZZNJ_NJMC--�꼶����
      ,c.SSNF as c_ZZNJ_SSNF--�������
      ,c.NJZT as c_ZZNJ_NJZT--�꼶״̬
      ,cb.MC as c_ZZNJ_NJZT_MC--����
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--ѧУ��
      ,d.ZYDM as d_ZYXX_ZYDM--רҵ����
      ,db.ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--רҵĿ¼���
      ,db.MC as d_ZYXX_ZYDM_MC--����
      ,d.ZYMC as d_ZYXX_ZYMC--רҵ����
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--רҵӢ������
      ,d.XZ as d_ZYXX_XZ--ѧ��
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--רҵ��������
      ,d.ZYJC as d_ZYXX_ZYJC--רҵ���
      ,d.JLNY as d_ZYXX_JLNY--��������
      ,d.ZYJSS as d_ZYXX_ZYJSS--רҵ��ʦ��
      ,d.KSJGH as d_ZYXX_KSJGH--���������
      ,d.ZXF as d_ZYXX_ZXF--��ѧ��
      ,d.SSZYML as d_ZYXX_SSZYML--����רҵĿ¼
      ,dc.MC as d_ZYXX_SSZYML_MC--����
      ,d.ZYLB as d_ZYXX_ZYLB--רҵ�������
      ,e.MC as e_SKFS_MC--����

FROM dbo.EDU_ZZJX_03_01_ZTJXJH AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS c ON a.JHNJ = c.NJDM /*�ƻ��꼶*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*רҵ���*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS e ON a.SFKY = e.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--ѧУ��
      ,c.GH as c_JZGJBSJ_GH--����
      ,c.XM as c_JZGJBSJ_XM--����
      ,c.YWXM as c_JZGJBSJ_YWXM--Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--������
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--���֤��������
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--���֤����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��������
      ,c.XBM as c_JZGJBSJ_XBM--�Ա���
      ,cc.MC as c_JZGJBSJ_XBM_MC--����
      ,c.MZM as c_JZGJBSJ_MZM--������
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--��������
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,c.XXM as c_JZGJBSJ_XXM--Ѫ����
      ,ce.MC as c_JZGJBSJ_XXM_MC--����
      ,ce.JC as c_JZGJBSJ_XXM_JC--���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--����״����
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--����
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--˵��
      ,c.HYZTM as c_JZGJBSJ_HYZTM--����״̬��
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--����
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--������ò��
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--����
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--���
      ,c.GATQWM as c_JZGJBSJ_GATQWM--�۰�̨������
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--����
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--˵��
      ,c.JG as c_JZGJBSJ_JG--����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--����/������
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--����������������
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--����
      ,c.XYZJM as c_JZGJBSJ_XYZJM--�����ڽ���
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--����
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,c.HKLBM as c_JZGJBSJ_HKLBM--���������
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--����
      ,c.DQZZ as c_JZGJBSJ_DQZZ--��ǰסַ
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--�μӹ�������
      ,c.CJNY as c_JZGJBSJ_CJNY--�ӽ�����
      ,c.LXNY as c_JZGJBSJ_LXNY--��У����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--���������
      ,co.MC as c_JZGJBSJ_BZLBM_MC--����
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--��ְ�������
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--����
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--˵��
      ,c.GWLBM as c_JZGJBSJ_GWLBM--��λ�����
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--����
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--����
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--����
      ,c.ZP as c_JZGJBSJ_ZP--��Ƭ(·��)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--��ǰ״̬��
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--����
      ,d.SCHOOLID as d_KC_SCHOOLID--ѧУID
      ,d.KCMC as d_KC_KCMC--�γ�����
      ,d.KCYWM as d_KC_KCYWM--�γ�Ӣ����
      ,d.KCBM as d_KC_KCBM--�γ̱���
      ,d.KCJS as d_KC_KCJS--�γ̽���
      ,d.XF as d_KC_XF--ѧ��
      ,d.ZXS as d_KC_ZXS--��ѧʱ
      ,d.LLXS as d_KC_LLXS--����ѧʱ
      ,d.SJXS as d_KC_SJXS--ʵ��ѧʱ
      ,d.QTXS as d_KC_QTXS--����ѧʱ
      ,d.CKSM as d_KC_CKSM--�ο���Ŀ
      ,d.KKDW as d_KC_KKDW--���ε�λ
      ,d.KSXS as d_KC_KSXS--������ʽ
      ,db.MC as d_KC_KSXS_MC--����
      ,d.SKFSM as d_KC_SKFSM--�ڿη�ʽ��
      ,dc.MC as d_KC_SKFSM_MC--����
      ,d.KCFY as d_KC_KCFY--�γ̷���
      ,e.SCHOOLID as e_ZTJXJH_SCHOOLID--ѧУID
      ,e.JHNJ as e_ZTJXJH_JHNJ--�ƻ��꼶
      ,e.ZYXXID as e_ZTJXJH_ZYXXID--רҵ���
      ,e.JHZYMC as e_ZTJXJH_JHZYMC--�ƻ�רҵ����
      ,e.ZXFYQ as e_ZTJXJH_ZXFYQ--��ѧ��Ҫ��
      ,e.JLNY as e_ZTJXJH_JLNY--��������
      ,e.SYXZ as e_ZTJXJH_SYXZ--����ѧ��
      ,e.PYMB as e_ZTJXJH_PYMB--����Ŀ��
      ,e.SFKY as e_ZTJXJH_SFKY--�Ƿ����
      ,eb.MC as e_ZTJXJH_SFKY_MC--����
      ,e.FJ as e_ZTJXJH_FJ--����
      ,f.SCHOOLID as f_ZZXQ_SCHOOLID--ѧУ��
      ,f.XNID as f_ZZXQ_XNID--ѧ��
      ,f.XQM as f_ZZXQ_XQM--ѧ����
      ,fb.MC as f_ZZXQ_XQM_MC--����
      ,f.XQMC as f_ZZXQ_XQMC--ѧ������
      ,f.XQKSRQ as f_ZZXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,f.XQJSRQ as f_ZZXQ_XQJSRQ--ѧ�ڽ�������

FROM dbo.EDU_ZZJX_01_A02_JSRK AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*��ʦ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCH = d.KCH /*�γ̺�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS e ON a.JHBH = e.JHBH /*�ƻ����*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_03_ZZXQ AS f ON a.XQID = f.ID /*ѧ��ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_JSRK_SCHOOLID--ѧУID
      ,c.JSID as c_JSRK_JSID--��ʦ��ID
      ,c.KCH as c_JSRK_KCH--�γ̺�
      ,c.JHBH as c_JSRK_JHBH--�ƻ����
      ,c.XQID as c_JSRK_XQID--ѧ��ID
      ,c.JXDG as c_JSRK_JXDG--��ѧ���
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_ZZJX_01_A01_KCPJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_A02_JSRK AS c ON a.KXH = c.KXH /*�����*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.PJR = d.LOGINNAME /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XNJG_SCHOOLID--ѧУ��
      ,c.JGMC as c_XNJG_JGMC--��������
      ,c.JGYWMC as c_XNJG_JGYWMC--����Ӣ������
      ,c.JGJC as c_XNJG_JGJC--�������
      ,c.JGJP as c_XNJG_JGJP--������ƴ
      ,c.JGDZ as c_XNJG_JGDZ--������ַ
      ,c.LSSJJGH as c_XNJG_LSSJJGH--�����ϼ�������
      ,c.LSXQH as c_XNJG_LSXQH--����У����
      ,c.JGYXBS as c_XNJG_JGYXBS--������Ч��ʶ
      ,cb.MC as c_XNJG_JGYXBS_MC--����
      ,c.SFST as c_XNJG_SFST--�Ƿ�ʵ��
      ,cc.MC as c_XNJG_SFST_MC--����
      ,c.JLNY as c_XNJG_JLNY--��������
      ,c.JGYZBM as c_XNJG_JGYZBM--������������
      ,c.FZRH as c_XNJG_FZRH--�����˺�
      ,d.MC as d_KSXS_MC--����
      ,e.MC as e_SKFS_MC--����

FROM dbo.EDU_ZZJX_01_02_KC AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.KKDW = c.JGH /*���ε�λ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS d ON a.KSXS = d.DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS e ON a.SKFSM = e.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.MC as c_SXJDLB_MC--����
      ,d.MC as d_ZHRMGHGXZQH_MC--����
      ,e.MC as e_JJLXFL_MC--����

FROM dbo.EDU_ZZJX_07_01_XWSXJDXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_SXJDLB AS c ON a.JDLBM = c.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.QYXZQ = d.DM /*��ҵ������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JJLXFL AS e ON a.QYXZ = e.DM /*��ҵ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��
      ,c.XM as c_XSXX_XM--����
      ,c.YWXM as c_XSXX_YWXM--Ӣ������
      ,c.XMPY as c_XSXX_XMPY--����ƴ��
      ,c.CYM as c_XSXX_CYM--������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--����
      ,c.SFZJH as c_XSXX_SFZJH--���֤����
      ,c.XBM as c_XSXX_XBM--�Ա���
      ,cc.MC as c_XSXX_XBM_MC--����
      ,c.XXM as c_XSXX_XXM--Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--����
      ,cd.JC as c_XSXX_XXM_JC--���
      ,c.CSRQ as c_XSXX_CSRQ--��������
      ,c.CSDM as c_XSXX_CSDM--��������
      ,ce.MC as c_XSXX_CSDM_MC--����
      ,c.JG as c_XSXX_JG--����
      ,c.MZM as c_XSXX_MZM--������
      ,cf.MZMC as c_XSXX_MZM_MZMC--��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����
      ,c.XYZJM as c_XSXX_XYZJM--�����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--����
      ,c.GATQWM as c_XSXX_GATQWM--�۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--����
      ,ci.SM as c_XSXX_GATQWM_SM--˵��
      ,c.JKZKM as c_XSXX_JKZKM--����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����
      ,cj.SM as c_XSXX_JKZKM_SM--˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--����
      ,ck.JC as c_XSXX_ZZMMM_JC--���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--����
      ,c.HKLBM as c_XSXX_HKLBM--���������
      ,cm.MC as c_XSXX_HKLBM_MC--����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--�Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--����
      ,c.GJDQM as c_XSXX_GJDQM--����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--����ĸ����
      ,c.TC as c_XSXX_TC--�س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--�����ַ
      ,c.JSTXH as c_XSXX_JSTXH--��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--��������
      ,c.ZP as c_XSXX_ZP--��Ƭ(·��)
      ,d.SCHOOLID as d_XWSXJDXX_SCHOOLID--ѧУ��
      ,d.QYBH as d_XWSXJDXX_QYBH--��ҵ���
      ,d.JDHZHTBH as d_XWSXJDXX_JDHZHTBH--���غ�����ͬ���
      ,d.JDHZHTMC as d_XWSXJDXX_JDHZHTMC--���غ�����ͬ����
      ,d.JDLBM as d_XWSXJDXX_JDLBM--���������
      ,db.MC as d_XWSXJDXX_JDLBM_MC--����
      ,d.DWMC as d_XWSXJDXX_DWMC--��λ����
      ,d.QYXZQ as d_XWSXJDXX_QYXZQ--��ҵ������
      ,dc.MC as d_XWSXJDXX_QYXZQ_MC--����
      ,d.QYDZ as d_XWSXJDXX_QYDZ--��ҵ��ַ
      ,d.QYXZ as d_XWSXJDXX_QYXZ--��ҵ����
      ,dd.MC as d_XWSXJDXX_QYXZ_MC--����
      ,d.FRDB as d_XWSXJDXX_FRDB--���˴���
      ,d.QYLXR as d_XWSXJDXX_QYLXR--��ҵ��ϵ��
      ,d.QYYZBM as d_XWSXJDXX_QYYZBM--��ҵ��������
      ,d.QYLXDH as d_XWSXJDXX_QYLXDH--��ҵ��ϵ�绰
      ,d.QYYYZZ as d_XWSXJDXX_QYYYZZ--��ҵӪҵִ��
      ,d.QYLX as d_XWSXJDXX_QYLX--��ҵ����
      ,d.QYRS as d_XWSXJDXX_QYRS--��ҵ����
      ,d.QYZCZJ as d_XWSXJDXX_QYZCZJ--��ҵע���ʽ�
      ,d.QYCZ as d_XWSXJDXX_QYCZ--��ҵ����
      ,d.QYFZR as d_XWSXJDXX_QYFZR--��ҵ������
      ,d.FZRZW as d_XWSXJDXX_FZRZW--������ְλ
      ,d.FZRLXDH as d_XWSXJDXX_FZRLXDH--��������ϵ�绰
      ,d.QYYXDZ as d_XWSXJDXX_QYYXDZ--��ҵ�����ַ
      ,d.QYQQ as d_XWSXJDXX_QYQQ--��ҵQQ
      ,d.QYMSN as d_XWSXJDXX_QYMSN--��ҵMSN
      ,d.QYWZ as d_XWSXJDXX_QYWZ--��ҵ��ַ
      ,d.QYJJ as d_XWSXJDXX_QYJJ--��ҵ���
      ,d.SHZT as d_XWSXJDXX_SHZT--���״̬
      ,e.SCHOOLID as e_SXGW_SCHOOLID--ѧУID
      ,e.QYID as e_SXGW_QYID--��ҵID
      ,e.GWMC as e_SXGW_GWMC--��λ����
      ,e.QYMC as e_SXGW_QYMC--��ҵ����
      ,e.ZPKSSJ as e_SXGW_ZPKSSJ--��Ƹ��ʼʱ��
      ,e.ZPJSSJ as e_SXGW_ZPJSSJ--��Ƹ����ʱ��
      ,e.GZXS as e_SXGW_GZXS--������ʽ
      ,e.XBYQ as e_SXGW_XBYQ--�Ա�Ҫ��
      ,e.GWXC as e_SXGW_GWXC--��λн��
      ,e.WYYQ as e_SXGW_WYYQ--����Ҫ��
      ,e.GZDD as e_SXGW_GZDD--�����ص�
      ,e.JSJSP as e_SXGW_JSJSP--�����ˮƽ
      ,e.ZPRS as e_SXGW_ZPRS--��Ƹ����
      ,e.XLYQ as e_SXGW_XLYQ--ѧ��Ҫ��
      ,e.ZYYQ as e_SXGW_ZYYQ--רҵҪ��
      ,e.NLYQ as e_SXGW_NLYQ--����Ҫ��
      ,e.GWJJ as e_SXGW_GWJJ--��λ���
      ,e.JBQK as e_SXGW_JBQK--�������
      ,e.GZJY as e_SXGW_GZJY--��������
      ,e.SHZT as e_SXGW_SHZT--���״̬
      ,e.GWZT as e_SXGW_GWZT--��λ״̬
      ,f.MC as f_SFBZ_MC--����
      ,g.MC as g_SFBZ_MC--����
      ,h.MC as h_HJXZ_MC--����

FROM dbo.EDU_ZZJX_07_03_XSXWSXQK AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����ϢID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS d ON a.QYID = d.ID /*��ҵ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS e ON a.GWID = e.ID /*��λ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFGMSXZRBX = f.DM /*�Ƿ���ʵϰ���α���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS g ON a.SFSDGSX = g.DM /*�Ƿ��Ƕ���ʵϰ*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_HJXZ AS h ON a.XSHJXZM = h.DM /*ѧ������������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--ѧУID
      ,c.JHBT as c_XXSXJH_JHBT--�ƻ�����
      ,c.NJ as c_XXSXJH_NJ--�꼶
      ,c.BGXS as c_XXSXJH_BGXS--������ʽ
      ,c.SFSX as c_XXSXJH_SFSX--�ƻ��Ƿ���Ч
      ,cb.MC as c_XXSXJH_SFSX_MC--����
      ,d.SCHOOLID as d_XSXX_SCHOOLID--ѧУ��
      ,d.XH as d_XSXX_XH--ѧ��
      ,d.XM as d_XSXX_XM--����
      ,d.YWXM as d_XSXX_YWXM--Ӣ������
      ,d.XMPY as d_XSXX_XMPY--����ƴ��
      ,d.CYM as d_XSXX_CYM--������
      ,d.SFZJLXM as d_XSXX_SFZJLXM--���֤��������
      ,db.MC as d_XSXX_SFZJLXM_MC--����
      ,d.SFZJH as d_XSXX_SFZJH--���֤����
      ,d.XBM as d_XSXX_XBM--�Ա���
      ,dc.MC as d_XSXX_XBM_MC--����
      ,d.XXM as d_XSXX_XXM--Ѫ����
      ,dd.MC as d_XSXX_XXM_MC--����
      ,dd.JC as d_XSXX_XXM_JC--���
      ,d.CSRQ as d_XSXX_CSRQ--��������
      ,d.CSDM as d_XSXX_CSDM--��������
      ,de.MC as d_XSXX_CSDM_MC--����
      ,d.JG as d_XSXX_JG--����
      ,d.MZM as d_XSXX_MZM--������
      ,df.MZMC as d_XSXX_MZM_MZMC--��������
      ,df.ZMDM as d_XSXX_MZM_ZMDM--��ĸ����
      ,d.HYZKM as d_XSXX_HYZKM--����״����
      ,dg.MC as d_XSXX_HYZKM_MC--����
      ,d.XYZJM as d_XSXX_XYZJM--�����ڽ���
      ,dh.MC as d_XSXX_XYZJM_MC--����
      ,d.GATQWM as d_XSXX_GATQWM--�۰�̨������
      ,di.MC as d_XSXX_GATQWM_MC--����
      ,di.SM as d_XSXX_GATQWM_SM--˵��
      ,d.JKZKM as d_XSXX_JKZKM--����״����
      ,dj.MC as d_XSXX_JKZKM_MC--����
      ,dj.SM as d_XSXX_JKZKM_SM--˵��
      ,d.ZZMMM as d_XSXX_ZZMMM--������ò��
      ,dk.MC as d_XSXX_ZZMMM_MC--����
      ,dk.JC as d_XSXX_ZZMMM_JC--���
      ,d.HKSZDXZQHM as d_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,dl.MC as d_XSXX_HKSZDXZQHM_MC--����
      ,d.HKLBM as d_XSXX_HKLBM--���������
      ,dm.MC as d_XSXX_HKLBM_MC--����
      ,d.SFSLDRK as d_XSXX_SFSLDRK--�Ƿ��������˿�
      ,dn.MC as d_XSXX_SFSLDRK_MC--����
      ,d.GJDQM as d_XSXX_GJDQM--����/����
      ,do.GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,do.EZMDM as d_XSXX_GJDQM_EZMDM--����ĸ����
      ,do.SZMDM as d_XSXX_GJDQM_SZMDM--����ĸ����
      ,d.TC as d_XSXX_TC--�س�
      ,d.XSLXDH as d_XSXX_XSLXDH--ѧ����ϵ�绰
      ,d.WLDZ as d_XSXX_WLDZ--�����ַ
      ,d.JSTXH as d_XSXX_JSTXH--��ʱͨѶ��
      ,d.DZXX as d_XSXX_DZXX--��������
      ,d.ZP as d_XSXX_ZP--��Ƭ(·��)

FROM dbo.EDU_ZZJX_07_A11_SXJC AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS d ON a.XSXXID = d.ID /*ѧ����ϢID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--ѧУID
      ,c.JHBT as c_XXSXJH_JHBT--�ƻ�����
      ,c.NJ as c_XXSXJH_NJ--�꼶
      ,c.BGXS as c_XXSXJH_BGXS--������ʽ
      ,c.SFSX as c_XXSXJH_SFSX--�ƻ��Ƿ���Ч
      ,cb.MC as c_XXSXJH_SFSX_MC--����
      ,d.SCHOOLID as d_XSXX_SCHOOLID--ѧУ��
      ,d.XH as d_XSXX_XH--ѧ��
      ,d.XM as d_XSXX_XM--����
      ,d.YWXM as d_XSXX_YWXM--Ӣ������
      ,d.XMPY as d_XSXX_XMPY--����ƴ��
      ,d.CYM as d_XSXX_CYM--������
      ,d.SFZJLXM as d_XSXX_SFZJLXM--���֤��������
      ,db.MC as d_XSXX_SFZJLXM_MC--����
      ,d.SFZJH as d_XSXX_SFZJH--���֤����
      ,d.XBM as d_XSXX_XBM--�Ա���
      ,dc.MC as d_XSXX_XBM_MC--����
      ,d.XXM as d_XSXX_XXM--Ѫ����
      ,dd.MC as d_XSXX_XXM_MC--����
      ,dd.JC as d_XSXX_XXM_JC--���
      ,d.CSRQ as d_XSXX_CSRQ--��������
      ,d.CSDM as d_XSXX_CSDM--��������
      ,de.MC as d_XSXX_CSDM_MC--����
      ,d.JG as d_XSXX_JG--����
      ,d.MZM as d_XSXX_MZM--������
      ,df.MZMC as d_XSXX_MZM_MZMC--��������
      ,df.ZMDM as d_XSXX_MZM_ZMDM--��ĸ����
      ,d.HYZKM as d_XSXX_HYZKM--����״����
      ,dg.MC as d_XSXX_HYZKM_MC--����
      ,d.XYZJM as d_XSXX_XYZJM--�����ڽ���
      ,dh.MC as d_XSXX_XYZJM_MC--����
      ,d.GATQWM as d_XSXX_GATQWM--�۰�̨������
      ,di.MC as d_XSXX_GATQWM_MC--����
      ,di.SM as d_XSXX_GATQWM_SM--˵��
      ,d.JKZKM as d_XSXX_JKZKM--����״����
      ,dj.MC as d_XSXX_JKZKM_MC--����
      ,dj.SM as d_XSXX_JKZKM_SM--˵��
      ,d.ZZMMM as d_XSXX_ZZMMM--������ò��
      ,dk.MC as d_XSXX_ZZMMM_MC--����
      ,dk.JC as d_XSXX_ZZMMM_JC--���
      ,d.HKSZDXZQHM as d_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,dl.MC as d_XSXX_HKSZDXZQHM_MC--����
      ,d.HKLBM as d_XSXX_HKLBM--���������
      ,dm.MC as d_XSXX_HKLBM_MC--����
      ,d.SFSLDRK as d_XSXX_SFSLDRK--�Ƿ��������˿�
      ,dn.MC as d_XSXX_SFSLDRK_MC--����
      ,d.GJDQM as d_XSXX_GJDQM--����/����
      ,do.GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,do.EZMDM as d_XSXX_GJDQM_EZMDM--����ĸ����
      ,do.SZMDM as d_XSXX_GJDQM_SZMDM--����ĸ����
      ,d.TC as d_XSXX_TC--�س�
      ,d.XSLXDH as d_XSXX_XSLXDH--ѧ����ϵ�绰
      ,d.WLDZ as d_XSXX_WLDZ--�����ַ
      ,d.JSTXH as d_XSXX_JSTXH--��ʱͨѶ��
      ,d.DZXX as d_XSXX_DZXX--��������
      ,d.ZP as d_XSXX_ZP--��Ƭ(·��)

FROM dbo.EDU_ZZJX_07_A10_SXJD AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS d ON a.XSXXID = d.ID /*ѧ����ϢID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��
      ,c.XM as c_XSXX_XM--����
      ,c.YWXM as c_XSXX_YWXM--Ӣ������
      ,c.XMPY as c_XSXX_XMPY--����ƴ��
      ,c.CYM as c_XSXX_CYM--������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--����
      ,c.SFZJH as c_XSXX_SFZJH--���֤����
      ,c.XBM as c_XSXX_XBM--�Ա���
      ,cc.MC as c_XSXX_XBM_MC--����
      ,c.XXM as c_XSXX_XXM--Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--����
      ,cd.JC as c_XSXX_XXM_JC--���
      ,c.CSRQ as c_XSXX_CSRQ--��������
      ,c.CSDM as c_XSXX_CSDM--��������
      ,ce.MC as c_XSXX_CSDM_MC--����
      ,c.JG as c_XSXX_JG--����
      ,c.MZM as c_XSXX_MZM--������
      ,cf.MZMC as c_XSXX_MZM_MZMC--��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����
      ,c.XYZJM as c_XSXX_XYZJM--�����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--����
      ,c.GATQWM as c_XSXX_GATQWM--�۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--����
      ,ci.SM as c_XSXX_GATQWM_SM--˵��
      ,c.JKZKM as c_XSXX_JKZKM--����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����
      ,cj.SM as c_XSXX_JKZKM_SM--˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--����
      ,ck.JC as c_XSXX_ZZMMM_JC--���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--����
      ,c.HKLBM as c_XSXX_HKLBM--���������
      ,cm.MC as c_XSXX_HKLBM_MC--����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--�Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--����
      ,c.GJDQM as c_XSXX_GJDQM--����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--����ĸ����
      ,c.TC as c_XSXX_TC--�س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--�����ַ
      ,c.JSTXH as c_XSXX_JSTXH--��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--��������
      ,c.ZP as c_XSXX_ZP--��Ƭ(·��)
      ,d.SCHOOLID as d_XXSXJH_SCHOOLID--ѧУID
      ,d.JHBT as d_XXSXJH_JHBT--�ƻ�����
      ,d.NJ as d_XXSXJH_NJ--�꼶
      ,d.BGXS as d_XXSXJH_BGXS--������ʽ
      ,d.SFSX as d_XXSXJH_SFSX--�ƻ��Ƿ���Ч
      ,db.MC as d_XXSXJH_SFSX_MC--����
      ,e.SCHOOLID as e_XXSXJD_SCHOOLID--ѧУID
      ,e.SXJHID as e_XXSXJD_SXJHID--ʵϰ�ƻ�ID
      ,e.JDM as e_XXSXJD_JDM--�׶���
      ,e.JDKSSJ as e_XXSXJD_JDKSSJ--�׶ο�ʼʱ��
      ,e.JDJSSJ as e_XXSXJD_JDJSSJ--�׶ν���ʱ��
      ,f.SCHOOLID as f_XXSXZY_SCHOOLID--ѧУID
      ,f.SXJHID as f_XXSXZY_SXJHID--ʵϰ�ƻ�ID
      ,f.SXJDID as f_XXSXZY_SXJDID--ʵϰ�׶�ID
      ,f.MC as f_XXSXZY_MC--����
      ,f.KSSJ as f_XXSXZY_KSSJ--��ʼʱ��
      ,f.JSSJ as f_XXSXZY_JSSJ--����ʱ��
      ,f.LX as f_XXSXZY_LX--����

FROM dbo.EDU_ZZJX_07_A09_SXRZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����ϢID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS d ON a.SXJHID = d.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A02_XXSXJD AS e ON a.SXJDID = e.ID /*ʵϰ�׶�ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A03_XXSXZY AS f ON a.SXZYID = f.ID /*ʵϰ��/�±�ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XWSXJDXX_SCHOOLID--ѧУ��
      ,c.QYBH as c_XWSXJDXX_QYBH--��ҵ���
      ,c.JDHZHTBH as c_XWSXJDXX_JDHZHTBH--���غ�����ͬ���
      ,c.JDHZHTMC as c_XWSXJDXX_JDHZHTMC--���غ�����ͬ����
      ,c.JDLBM as c_XWSXJDXX_JDLBM--���������
      ,cb.MC as c_XWSXJDXX_JDLBM_MC--����
      ,c.DWMC as c_XWSXJDXX_DWMC--��λ����
      ,c.QYXZQ as c_XWSXJDXX_QYXZQ--��ҵ������
      ,cc.MC as c_XWSXJDXX_QYXZQ_MC--����
      ,c.QYDZ as c_XWSXJDXX_QYDZ--��ҵ��ַ
      ,c.QYXZ as c_XWSXJDXX_QYXZ--��ҵ����
      ,cd.MC as c_XWSXJDXX_QYXZ_MC--����
      ,c.FRDB as c_XWSXJDXX_FRDB--���˴���
      ,c.QYLXR as c_XWSXJDXX_QYLXR--��ҵ��ϵ��
      ,c.QYYZBM as c_XWSXJDXX_QYYZBM--��ҵ��������
      ,c.QYLXDH as c_XWSXJDXX_QYLXDH--��ҵ��ϵ�绰
      ,c.QYYYZZ as c_XWSXJDXX_QYYYZZ--��ҵӪҵִ��
      ,c.QYLX as c_XWSXJDXX_QYLX--��ҵ����
      ,c.QYRS as c_XWSXJDXX_QYRS--��ҵ����
      ,c.QYZCZJ as c_XWSXJDXX_QYZCZJ--��ҵע���ʽ�
      ,c.QYCZ as c_XWSXJDXX_QYCZ--��ҵ����
      ,c.QYFZR as c_XWSXJDXX_QYFZR--��ҵ������
      ,c.FZRZW as c_XWSXJDXX_FZRZW--������ְλ
      ,c.FZRLXDH as c_XWSXJDXX_FZRLXDH--��������ϵ�绰
      ,c.QYYXDZ as c_XWSXJDXX_QYYXDZ--��ҵ�����ַ
      ,c.QYQQ as c_XWSXJDXX_QYQQ--��ҵQQ
      ,c.QYMSN as c_XWSXJDXX_QYMSN--��ҵMSN
      ,c.QYWZ as c_XWSXJDXX_QYWZ--��ҵ��ַ
      ,c.QYJJ as c_XWSXJDXX_QYJJ--��ҵ���
      ,c.SHZT as c_XWSXJDXX_SHZT--���״̬
      ,d.SCHOOLID as d_XXSXJH_SCHOOLID--ѧУID
      ,d.JHBT as d_XXSXJH_JHBT--�ƻ�����
      ,d.NJ as d_XXSXJH_NJ--�꼶
      ,d.BGXS as d_XXSXJH_BGXS--������ʽ
      ,d.SFSX as d_XXSXJH_SFSX--�ƻ��Ƿ���Ч
      ,db.MC as d_XXSXJH_SFSX_MC--����
      ,e.SCHOOLID as e_XSXX_SCHOOLID--ѧУ��
      ,e.XH as e_XSXX_XH--ѧ��
      ,e.XM as e_XSXX_XM--����
      ,e.YWXM as e_XSXX_YWXM--Ӣ������
      ,e.XMPY as e_XSXX_XMPY--����ƴ��
      ,e.CYM as e_XSXX_CYM--������
      ,e.SFZJLXM as e_XSXX_SFZJLXM--���֤��������
      ,eb.MC as e_XSXX_SFZJLXM_MC--����
      ,e.SFZJH as e_XSXX_SFZJH--���֤����
      ,e.XBM as e_XSXX_XBM--�Ա���
      ,ec.MC as e_XSXX_XBM_MC--����
      ,e.XXM as e_XSXX_XXM--Ѫ����
      ,ed.MC as e_XSXX_XXM_MC--����
      ,ed.JC as e_XSXX_XXM_JC--���
      ,e.CSRQ as e_XSXX_CSRQ--��������
      ,e.CSDM as e_XSXX_CSDM--��������
      ,ee.MC as e_XSXX_CSDM_MC--����
      ,e.JG as e_XSXX_JG--����
      ,e.MZM as e_XSXX_MZM--������
      ,ef.MZMC as e_XSXX_MZM_MZMC--��������
      ,ef.ZMDM as e_XSXX_MZM_ZMDM--��ĸ����
      ,e.HYZKM as e_XSXX_HYZKM--����״����
      ,eg.MC as e_XSXX_HYZKM_MC--����
      ,e.XYZJM as e_XSXX_XYZJM--�����ڽ���
      ,eh.MC as e_XSXX_XYZJM_MC--����
      ,e.GATQWM as e_XSXX_GATQWM--�۰�̨������
      ,ei.MC as e_XSXX_GATQWM_MC--����
      ,ei.SM as e_XSXX_GATQWM_SM--˵��
      ,e.JKZKM as e_XSXX_JKZKM--����״����
      ,ej.MC as e_XSXX_JKZKM_MC--����
      ,ej.SM as e_XSXX_JKZKM_SM--˵��
      ,e.ZZMMM as e_XSXX_ZZMMM--������ò��
      ,ek.MC as e_XSXX_ZZMMM_MC--����
      ,ek.JC as e_XSXX_ZZMMM_JC--���
      ,e.HKSZDXZQHM as e_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,el.MC as e_XSXX_HKSZDXZQHM_MC--����
      ,e.HKLBM as e_XSXX_HKLBM--���������
      ,em.MC as e_XSXX_HKLBM_MC--����
      ,e.SFSLDRK as e_XSXX_SFSLDRK--�Ƿ��������˿�
      ,en.MC as e_XSXX_SFSLDRK_MC--����
      ,e.GJDQM as e_XSXX_GJDQM--����/����
      ,eo.GJDQMCJC as e_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,eo.EZMDM as e_XSXX_GJDQM_EZMDM--����ĸ����
      ,eo.SZMDM as e_XSXX_GJDQM_SZMDM--����ĸ����
      ,e.TC as e_XSXX_TC--�س�
      ,e.XSLXDH as e_XSXX_XSLXDH--ѧ����ϵ�绰
      ,e.WLDZ as e_XSXX_WLDZ--�����ַ
      ,e.JSTXH as e_XSXX_JSTXH--��ʱͨѶ��
      ,e.DZXX as e_XSXX_DZXX--��������
      ,e.ZP as e_XSXX_ZP--��Ƭ(·��)

FROM dbo.EDU_ZZJX_07_A08_SXTS AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS c ON a.QYID = c.ID /*��ҵID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS d ON a.SXJHID = d.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS e ON a.XSXXID = e.ID /*Ͷ��ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��
      ,c.XM as c_XSXX_XM--����
      ,c.YWXM as c_XSXX_YWXM--Ӣ������
      ,c.XMPY as c_XSXX_XMPY--����ƴ��
      ,c.CYM as c_XSXX_CYM--������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--����
      ,c.SFZJH as c_XSXX_SFZJH--���֤����
      ,c.XBM as c_XSXX_XBM--�Ա���
      ,cc.MC as c_XSXX_XBM_MC--����
      ,c.XXM as c_XSXX_XXM--Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--����
      ,cd.JC as c_XSXX_XXM_JC--���
      ,c.CSRQ as c_XSXX_CSRQ--��������
      ,c.CSDM as c_XSXX_CSDM--��������
      ,ce.MC as c_XSXX_CSDM_MC--����
      ,c.JG as c_XSXX_JG--����
      ,c.MZM as c_XSXX_MZM--������
      ,cf.MZMC as c_XSXX_MZM_MZMC--��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����
      ,c.XYZJM as c_XSXX_XYZJM--�����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--����
      ,c.GATQWM as c_XSXX_GATQWM--�۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--����
      ,ci.SM as c_XSXX_GATQWM_SM--˵��
      ,c.JKZKM as c_XSXX_JKZKM--����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����
      ,cj.SM as c_XSXX_JKZKM_SM--˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--����
      ,ck.JC as c_XSXX_ZZMMM_JC--���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--����
      ,c.HKLBM as c_XSXX_HKLBM--���������
      ,cm.MC as c_XSXX_HKLBM_MC--����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--�Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--����
      ,c.GJDQM as c_XSXX_GJDQM--����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--����ĸ����
      ,c.TC as c_XSXX_TC--�س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--�����ַ
      ,c.JSTXH as c_XSXX_JSTXH--��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--��������
      ,c.ZP as c_XSXX_ZP--��Ƭ(·��)
      ,d.SCHOOLID as d_SXGW_SCHOOLID--ѧУID
      ,d.QYID as d_SXGW_QYID--��ҵID
      ,d.GWMC as d_SXGW_GWMC--��λ����
      ,d.QYMC as d_SXGW_QYMC--��ҵ����
      ,d.ZPKSSJ as d_SXGW_ZPKSSJ--��Ƹ��ʼʱ��
      ,d.ZPJSSJ as d_SXGW_ZPJSSJ--��Ƹ����ʱ��
      ,d.GZXS as d_SXGW_GZXS--������ʽ
      ,d.XBYQ as d_SXGW_XBYQ--�Ա�Ҫ��
      ,d.GWXC as d_SXGW_GWXC--��λн��
      ,d.WYYQ as d_SXGW_WYYQ--����Ҫ��
      ,d.GZDD as d_SXGW_GZDD--�����ص�
      ,d.JSJSP as d_SXGW_JSJSP--�����ˮƽ
      ,d.ZPRS as d_SXGW_ZPRS--��Ƹ����
      ,d.XLYQ as d_SXGW_XLYQ--ѧ��Ҫ��
      ,d.ZYYQ as d_SXGW_ZYYQ--רҵҪ��
      ,d.NLYQ as d_SXGW_NLYQ--����Ҫ��
      ,d.GWJJ as d_SXGW_GWJJ--��λ���
      ,d.JBQK as d_SXGW_JBQK--�������
      ,d.GZJY as d_SXGW_GZJY--��������
      ,d.SHZT as d_SXGW_SHZT--���״̬
      ,d.GWZT as d_SXGW_GWZT--��λ״̬
      ,e.SCHOOLID as e_XWSXJDXX_SCHOOLID--ѧУ��
      ,e.QYBH as e_XWSXJDXX_QYBH--��ҵ���
      ,e.JDHZHTBH as e_XWSXJDXX_JDHZHTBH--���غ�����ͬ���
      ,e.JDHZHTMC as e_XWSXJDXX_JDHZHTMC--���غ�����ͬ����
      ,e.JDLBM as e_XWSXJDXX_JDLBM--���������
      ,eb.MC as e_XWSXJDXX_JDLBM_MC--����
      ,e.DWMC as e_XWSXJDXX_DWMC--��λ����
      ,e.QYXZQ as e_XWSXJDXX_QYXZQ--��ҵ������
      ,ec.MC as e_XWSXJDXX_QYXZQ_MC--����
      ,e.QYDZ as e_XWSXJDXX_QYDZ--��ҵ��ַ
      ,e.QYXZ as e_XWSXJDXX_QYXZ--��ҵ����
      ,ed.MC as e_XWSXJDXX_QYXZ_MC--����
      ,e.FRDB as e_XWSXJDXX_FRDB--���˴���
      ,e.QYLXR as e_XWSXJDXX_QYLXR--��ҵ��ϵ��
      ,e.QYYZBM as e_XWSXJDXX_QYYZBM--��ҵ��������
      ,e.QYLXDH as e_XWSXJDXX_QYLXDH--��ҵ��ϵ�绰
      ,e.QYYYZZ as e_XWSXJDXX_QYYYZZ--��ҵӪҵִ��
      ,e.QYLX as e_XWSXJDXX_QYLX--��ҵ����
      ,e.QYRS as e_XWSXJDXX_QYRS--��ҵ����
      ,e.QYZCZJ as e_XWSXJDXX_QYZCZJ--��ҵע���ʽ�
      ,e.QYCZ as e_XWSXJDXX_QYCZ--��ҵ����
      ,e.QYFZR as e_XWSXJDXX_QYFZR--��ҵ������
      ,e.FZRZW as e_XWSXJDXX_FZRZW--������ְλ
      ,e.FZRLXDH as e_XWSXJDXX_FZRLXDH--��������ϵ�绰
      ,e.QYYXDZ as e_XWSXJDXX_QYYXDZ--��ҵ�����ַ
      ,e.QYQQ as e_XWSXJDXX_QYQQ--��ҵQQ
      ,e.QYMSN as e_XWSXJDXX_QYMSN--��ҵMSN
      ,e.QYWZ as e_XWSXJDXX_QYWZ--��ҵ��ַ
      ,e.QYJJ as e_XWSXJDXX_QYJJ--��ҵ���
      ,e.SHZT as e_XWSXJDXX_SHZT--���״̬
      ,f.SCHOOLID as f_SXGW_SCHOOLID--ѧУID
      ,f.QYID as f_SXGW_QYID--��ҵID
      ,f.GWMC as f_SXGW_GWMC--��λ����
      ,f.QYMC as f_SXGW_QYMC--��ҵ����
      ,f.ZPKSSJ as f_SXGW_ZPKSSJ--��Ƹ��ʼʱ��
      ,f.ZPJSSJ as f_SXGW_ZPJSSJ--��Ƹ����ʱ��
      ,f.GZXS as f_SXGW_GZXS--������ʽ
      ,f.XBYQ as f_SXGW_XBYQ--�Ա�Ҫ��
      ,f.GWXC as f_SXGW_GWXC--��λн��
      ,f.WYYQ as f_SXGW_WYYQ--����Ҫ��
      ,f.GZDD as f_SXGW_GZDD--�����ص�
      ,f.JSJSP as f_SXGW_JSJSP--�����ˮƽ
      ,f.ZPRS as f_SXGW_ZPRS--��Ƹ����
      ,f.XLYQ as f_SXGW_XLYQ--ѧ��Ҫ��
      ,f.ZYYQ as f_SXGW_ZYYQ--רҵҪ��
      ,f.NLYQ as f_SXGW_NLYQ--����Ҫ��
      ,f.GWJJ as f_SXGW_GWJJ--��λ���
      ,f.JBQK as f_SXGW_JBQK--�������
      ,f.GZJY as f_SXGW_GZJY--��������
      ,f.SHZT as f_SXGW_SHZT--���״̬
      ,f.GWZT as f_SXGW_GWZT--��λ״̬
      ,g.SCHOOLID as g_XWSXJDXX_SCHOOLID--ѧУ��
      ,g.QYBH as g_XWSXJDXX_QYBH--��ҵ���
      ,g.JDHZHTBH as g_XWSXJDXX_JDHZHTBH--���غ�����ͬ���
      ,g.JDHZHTMC as g_XWSXJDXX_JDHZHTMC--���غ�����ͬ����
      ,g.JDLBM as g_XWSXJDXX_JDLBM--���������
      ,gb.MC as g_XWSXJDXX_JDLBM_MC--����
      ,g.DWMC as g_XWSXJDXX_DWMC--��λ����
      ,g.QYXZQ as g_XWSXJDXX_QYXZQ--��ҵ������
      ,gc.MC as g_XWSXJDXX_QYXZQ_MC--����
      ,g.QYDZ as g_XWSXJDXX_QYDZ--��ҵ��ַ
      ,g.QYXZ as g_XWSXJDXX_QYXZ--��ҵ����
      ,gd.MC as g_XWSXJDXX_QYXZ_MC--����
      ,g.FRDB as g_XWSXJDXX_FRDB--���˴���
      ,g.QYLXR as g_XWSXJDXX_QYLXR--��ҵ��ϵ��
      ,g.QYYZBM as g_XWSXJDXX_QYYZBM--��ҵ��������
      ,g.QYLXDH as g_XWSXJDXX_QYLXDH--��ҵ��ϵ�绰
      ,g.QYYYZZ as g_XWSXJDXX_QYYYZZ--��ҵӪҵִ��
      ,g.QYLX as g_XWSXJDXX_QYLX--��ҵ����
      ,g.QYRS as g_XWSXJDXX_QYRS--��ҵ����
      ,g.QYZCZJ as g_XWSXJDXX_QYZCZJ--��ҵע���ʽ�
      ,g.QYCZ as g_XWSXJDXX_QYCZ--��ҵ����
      ,g.QYFZR as g_XWSXJDXX_QYFZR--��ҵ������
      ,g.FZRZW as g_XWSXJDXX_FZRZW--������ְλ
      ,g.FZRLXDH as g_XWSXJDXX_FZRLXDH--��������ϵ�绰
      ,g.QYYXDZ as g_XWSXJDXX_QYYXDZ--��ҵ�����ַ
      ,g.QYQQ as g_XWSXJDXX_QYQQ--��ҵQQ
      ,g.QYMSN as g_XWSXJDXX_QYMSN--��ҵMSN
      ,g.QYWZ as g_XWSXJDXX_QYWZ--��ҵ��ַ
      ,g.QYJJ as g_XWSXJDXX_QYJJ--��ҵ���
      ,g.SHZT as g_XWSXJDXX_SHZT--���״̬

FROM dbo.EDU_ZZJX_07_A07_SXZG AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*����ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS d ON a.ZCGW = d.ID /*ת����λID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS e ON a.ZCGWQY = e.ID /*ת����λ��ҵID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS f ON a.ZRGW = f.ID /*ת���λID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS g ON a.ZRGWQY = g.ID /*ת���λ��ҵID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XWSXJDXX_SCHOOLID--ѧУ��
      ,c.QYBH as c_XWSXJDXX_QYBH--��ҵ���
      ,c.JDHZHTBH as c_XWSXJDXX_JDHZHTBH--���غ�����ͬ���
      ,c.JDHZHTMC as c_XWSXJDXX_JDHZHTMC--���غ�����ͬ����
      ,c.JDLBM as c_XWSXJDXX_JDLBM--���������
      ,cb.MC as c_XWSXJDXX_JDLBM_MC--����
      ,c.DWMC as c_XWSXJDXX_DWMC--��λ����
      ,c.QYXZQ as c_XWSXJDXX_QYXZQ--��ҵ������
      ,cc.MC as c_XWSXJDXX_QYXZQ_MC--����
      ,c.QYDZ as c_XWSXJDXX_QYDZ--��ҵ��ַ
      ,c.QYXZ as c_XWSXJDXX_QYXZ--��ҵ����
      ,cd.MC as c_XWSXJDXX_QYXZ_MC--����
      ,c.FRDB as c_XWSXJDXX_FRDB--���˴���
      ,c.QYLXR as c_XWSXJDXX_QYLXR--��ҵ��ϵ��
      ,c.QYYZBM as c_XWSXJDXX_QYYZBM--��ҵ��������
      ,c.QYLXDH as c_XWSXJDXX_QYLXDH--��ҵ��ϵ�绰
      ,c.QYYYZZ as c_XWSXJDXX_QYYYZZ--��ҵӪҵִ��
      ,c.QYLX as c_XWSXJDXX_QYLX--��ҵ����
      ,c.QYRS as c_XWSXJDXX_QYRS--��ҵ����
      ,c.QYZCZJ as c_XWSXJDXX_QYZCZJ--��ҵע���ʽ�
      ,c.QYCZ as c_XWSXJDXX_QYCZ--��ҵ����
      ,c.QYFZR as c_XWSXJDXX_QYFZR--��ҵ������
      ,c.FZRZW as c_XWSXJDXX_FZRZW--������ְλ
      ,c.FZRLXDH as c_XWSXJDXX_FZRLXDH--��������ϵ�绰
      ,c.QYYXDZ as c_XWSXJDXX_QYYXDZ--��ҵ�����ַ
      ,c.QYQQ as c_XWSXJDXX_QYQQ--��ҵQQ
      ,c.QYMSN as c_XWSXJDXX_QYMSN--��ҵMSN
      ,c.QYWZ as c_XWSXJDXX_QYWZ--��ҵ��ַ
      ,c.QYJJ as c_XWSXJDXX_QYJJ--��ҵ���
      ,c.SHZT as c_XWSXJDXX_SHZT--���״̬

FROM dbo.EDU_ZZJX_07_A06_XQHD AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS c ON a.QYID = c.ID /*��ҵID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��
      ,c.XM as c_XSXX_XM--����
      ,c.YWXM as c_XSXX_YWXM--Ӣ������
      ,c.XMPY as c_XSXX_XMPY--����ƴ��
      ,c.CYM as c_XSXX_CYM--������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--����
      ,c.SFZJH as c_XSXX_SFZJH--���֤����
      ,c.XBM as c_XSXX_XBM--�Ա���
      ,cc.MC as c_XSXX_XBM_MC--����
      ,c.XXM as c_XSXX_XXM--Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--����
      ,cd.JC as c_XSXX_XXM_JC--���
      ,c.CSRQ as c_XSXX_CSRQ--��������
      ,c.CSDM as c_XSXX_CSDM--��������
      ,ce.MC as c_XSXX_CSDM_MC--����
      ,c.JG as c_XSXX_JG--����
      ,c.MZM as c_XSXX_MZM--������
      ,cf.MZMC as c_XSXX_MZM_MZMC--��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����
      ,c.XYZJM as c_XSXX_XYZJM--�����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--����
      ,c.GATQWM as c_XSXX_GATQWM--�۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--����
      ,ci.SM as c_XSXX_GATQWM_SM--˵��
      ,c.JKZKM as c_XSXX_JKZKM--����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����
      ,cj.SM as c_XSXX_JKZKM_SM--˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--����
      ,ck.JC as c_XSXX_ZZMMM_JC--���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--����
      ,c.HKLBM as c_XSXX_HKLBM--���������
      ,cm.MC as c_XSXX_HKLBM_MC--����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--�Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--����
      ,c.GJDQM as c_XSXX_GJDQM--����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--����ĸ����
      ,c.TC as c_XSXX_TC--�س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--�����ַ
      ,c.JSTXH as c_XSXX_JSTXH--��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--��������
      ,c.ZP as c_XSXX_ZP--��Ƭ(·��)
      ,d.SCHOOLID as d_XWSXJDXX_SCHOOLID--ѧУ��
      ,d.QYBH as d_XWSXJDXX_QYBH--��ҵ���
      ,d.JDHZHTBH as d_XWSXJDXX_JDHZHTBH--���غ�����ͬ���
      ,d.JDHZHTMC as d_XWSXJDXX_JDHZHTMC--���غ�����ͬ����
      ,d.JDLBM as d_XWSXJDXX_JDLBM--���������
      ,db.MC as d_XWSXJDXX_JDLBM_MC--����
      ,d.DWMC as d_XWSXJDXX_DWMC--��λ����
      ,d.QYXZQ as d_XWSXJDXX_QYXZQ--��ҵ������
      ,dc.MC as d_XWSXJDXX_QYXZQ_MC--����
      ,d.QYDZ as d_XWSXJDXX_QYDZ--��ҵ��ַ
      ,d.QYXZ as d_XWSXJDXX_QYXZ--��ҵ����
      ,dd.MC as d_XWSXJDXX_QYXZ_MC--����
      ,d.FRDB as d_XWSXJDXX_FRDB--���˴���
      ,d.QYLXR as d_XWSXJDXX_QYLXR--��ҵ��ϵ��
      ,d.QYYZBM as d_XWSXJDXX_QYYZBM--��ҵ��������
      ,d.QYLXDH as d_XWSXJDXX_QYLXDH--��ҵ��ϵ�绰
      ,d.QYYYZZ as d_XWSXJDXX_QYYYZZ--��ҵӪҵִ��
      ,d.QYLX as d_XWSXJDXX_QYLX--��ҵ����
      ,d.QYRS as d_XWSXJDXX_QYRS--��ҵ����
      ,d.QYZCZJ as d_XWSXJDXX_QYZCZJ--��ҵע���ʽ�
      ,d.QYCZ as d_XWSXJDXX_QYCZ--��ҵ����
      ,d.QYFZR as d_XWSXJDXX_QYFZR--��ҵ������
      ,d.FZRZW as d_XWSXJDXX_FZRZW--������ְλ
      ,d.FZRLXDH as d_XWSXJDXX_FZRLXDH--��������ϵ�绰
      ,d.QYYXDZ as d_XWSXJDXX_QYYXDZ--��ҵ�����ַ
      ,d.QYQQ as d_XWSXJDXX_QYQQ--��ҵQQ
      ,d.QYMSN as d_XWSXJDXX_QYMSN--��ҵMSN
      ,d.QYWZ as d_XWSXJDXX_QYWZ--��ҵ��ַ
      ,d.QYJJ as d_XWSXJDXX_QYJJ--��ҵ���
      ,d.SHZT as d_XWSXJDXX_SHZT--���״̬
      ,e.SCHOOLID as e_SXGW_SCHOOLID--ѧУID
      ,e.QYID as e_SXGW_QYID--��ҵID
      ,e.GWMC as e_SXGW_GWMC--��λ����
      ,e.QYMC as e_SXGW_QYMC--��ҵ����
      ,e.ZPKSSJ as e_SXGW_ZPKSSJ--��Ƹ��ʼʱ��
      ,e.ZPJSSJ as e_SXGW_ZPJSSJ--��Ƹ����ʱ��
      ,e.GZXS as e_SXGW_GZXS--������ʽ
      ,e.XBYQ as e_SXGW_XBYQ--�Ա�Ҫ��
      ,e.GWXC as e_SXGW_GWXC--��λн��
      ,e.WYYQ as e_SXGW_WYYQ--����Ҫ��
      ,e.GZDD as e_SXGW_GZDD--�����ص�
      ,e.JSJSP as e_SXGW_JSJSP--�����ˮƽ
      ,e.ZPRS as e_SXGW_ZPRS--��Ƹ����
      ,e.XLYQ as e_SXGW_XLYQ--ѧ��Ҫ��
      ,e.ZYYQ as e_SXGW_ZYYQ--רҵҪ��
      ,e.NLYQ as e_SXGW_NLYQ--����Ҫ��
      ,e.GWJJ as e_SXGW_GWJJ--��λ���
      ,e.JBQK as e_SXGW_JBQK--�������
      ,e.GZJY as e_SXGW_GZJY--��������
      ,e.SHZT as e_SXGW_SHZT--���״̬
      ,e.GWZT as e_SXGW_GWZT--��λ״̬

FROM dbo.EDU_ZZJX_07_A05_XSYP AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����ϢID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS d ON a.QYID = d.ID /*��ҵID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A04_SXGW AS e ON a.GWID = e.ID /*ʵϰ��λID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XWSXJDXX_SCHOOLID--ѧУ��
      ,c.QYBH as c_XWSXJDXX_QYBH--��ҵ���
      ,c.JDHZHTBH as c_XWSXJDXX_JDHZHTBH--���غ�����ͬ���
      ,c.JDHZHTMC as c_XWSXJDXX_JDHZHTMC--���غ�����ͬ����
      ,c.JDLBM as c_XWSXJDXX_JDLBM--���������
      ,cb.MC as c_XWSXJDXX_JDLBM_MC--����
      ,c.DWMC as c_XWSXJDXX_DWMC--��λ����
      ,c.QYXZQ as c_XWSXJDXX_QYXZQ--��ҵ������
      ,cc.MC as c_XWSXJDXX_QYXZQ_MC--����
      ,c.QYDZ as c_XWSXJDXX_QYDZ--��ҵ��ַ
      ,c.QYXZ as c_XWSXJDXX_QYXZ--��ҵ����
      ,cd.MC as c_XWSXJDXX_QYXZ_MC--����
      ,c.FRDB as c_XWSXJDXX_FRDB--���˴���
      ,c.QYLXR as c_XWSXJDXX_QYLXR--��ҵ��ϵ��
      ,c.QYYZBM as c_XWSXJDXX_QYYZBM--��ҵ��������
      ,c.QYLXDH as c_XWSXJDXX_QYLXDH--��ҵ��ϵ�绰
      ,c.QYYYZZ as c_XWSXJDXX_QYYYZZ--��ҵӪҵִ��
      ,c.QYLX as c_XWSXJDXX_QYLX--��ҵ����
      ,c.QYRS as c_XWSXJDXX_QYRS--��ҵ����
      ,c.QYZCZJ as c_XWSXJDXX_QYZCZJ--��ҵע���ʽ�
      ,c.QYCZ as c_XWSXJDXX_QYCZ--��ҵ����
      ,c.QYFZR as c_XWSXJDXX_QYFZR--��ҵ������
      ,c.FZRZW as c_XWSXJDXX_FZRZW--������ְλ
      ,c.FZRLXDH as c_XWSXJDXX_FZRLXDH--��������ϵ�绰
      ,c.QYYXDZ as c_XWSXJDXX_QYYXDZ--��ҵ�����ַ
      ,c.QYQQ as c_XWSXJDXX_QYQQ--��ҵQQ
      ,c.QYMSN as c_XWSXJDXX_QYMSN--��ҵMSN
      ,c.QYWZ as c_XWSXJDXX_QYWZ--��ҵ��ַ
      ,c.QYJJ as c_XWSXJDXX_QYJJ--��ҵ���
      ,c.SHZT as c_XWSXJDXX_SHZT--���״̬

FROM dbo.EDU_ZZJX_07_A04_SXGW AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_01_XWSXJDXX AS c ON a.QYID = c.ID /*��ҵID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--ѧУID
      ,c.JHBT as c_XXSXJH_JHBT--�ƻ�����
      ,c.NJ as c_XXSXJH_NJ--�꼶
      ,c.BGXS as c_XXSXJH_BGXS--������ʽ
      ,c.SFSX as c_XXSXJH_SFSX--�ƻ��Ƿ���Ч
      ,cb.MC as c_XXSXJH_SFSX_MC--����
      ,d.SCHOOLID as d_XXSXJD_SCHOOLID--ѧУID
      ,d.SXJHID as d_XXSXJD_SXJHID--ʵϰ�ƻ�ID
      ,d.JDM as d_XXSXJD_JDM--�׶���
      ,d.JDKSSJ as d_XXSXJD_JDKSSJ--�׶ο�ʼʱ��
      ,d.JDJSSJ as d_XXSXJD_JDJSSJ--�׶ν���ʱ��

FROM dbo.EDU_ZZJX_07_A03_XXSXZY AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A02_XXSXJD AS d ON a.SXJDID = d.ID /*ʵϰ�׶�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--ѧУID
      ,c.JHBT as c_XXSXJH_JHBT--�ƻ�����
      ,c.NJ as c_XXSXJH_NJ--�꼶
      ,c.BGXS as c_XXSXJH_BGXS--������ʽ
      ,c.SFSX as c_XXSXJH_SFSX--�ƻ��Ƿ���Ч
      ,cb.MC as c_XXSXJH_SFSX_MC--����

FROM dbo.EDU_ZZJX_07_A02_XXSXJD AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.MC as c_SKFS_MC--����

FROM dbo.EDU_ZZJX_07_A01_XXSXJH AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS c ON a.SFSX = c.DM /*�ƻ��Ƿ���Ч*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/
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
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bc.MC as b_XSXX_XBM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--����
      ,bd.JC as b_XSXX_XXM_JC--���
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,be.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bf.MZMC as b_XSXX_MZM_MZMC--��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--����
      ,bi.SM as b_XSXX_GATQWM_SM--˵��
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--����
      ,bk.JC as b_XSXX_ZZMMM_JC--���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--����
      ,b.HKLBM as b_XSXX_HKLBM--���������
      ,bm.MC as b_XSXX_HKLBM_MC--����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--�Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--����
      ,b.GJDQM as b_XSXX_GJDQM--����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.TC as b_XSXX_TC--�س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--�����ַ
      ,b.JSTXH as b_XSXX_JSTXH--��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZP as b_XSXX_ZP--��Ƭ(·��)
      ,c.XXDM as c_ZZXX_XXDM--ѧУ����
      ,c.XXMC as c_ZZXX_XXMC--ѧУ����
      ,c.XXYWMC as c_ZZXX_XXYWMC--ѧУӢ������
      ,c.XXJBZM as c_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,cb.MC as c_ZZXX_XXJBZM_MC--����
      ,cb.SM as c_ZZXX_XXJBZM_SM--˵��
      ,c.XXZGBMM as c_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,cc.MC as c_ZZXX_XXZGBMM_MC--����
      ,cc.SM as c_ZZXX_XXZGBMM_SM--˵��
      ,c.XXDZ as c_ZZXX_XXDZ--ѧУ��ַ
      ,c.XXYZBM as c_ZZXX_XXYZBM--ѧУ��������
      ,c.XZQHM as c_ZZXX_XZQHM--����������
      ,cd.MC as c_ZZXX_XZQHM_MC--����
      ,c.JXNY as c_ZZXX_JXNY--��У����
      ,c.XQR as c_ZZXX_XQR--У����
      ,c.CLBJ as c_ZZXX_CLBJ--��������
      ,c.LSYG as c_ZZXX_LSYG--��ʷ�ظ�
      ,c.XXXQS as c_ZZXX_XXXQS--ѧУУ����
      ,c.XXPGLX as c_ZZXX_XXPGLX--ѧУ��������
      ,ce.MC as c_ZZXX_XXPGLX_MC--����
      ,c.XXPGQKSM as c_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,c.ZYDZ as c_ZZXX_ZYDZ--��ҳ��ַ
      ,c.FDDBRH as c_ZZXX_FDDBRH--���������˺�
      ,c.FRZSH as c_ZZXX_FRZSH--����֤���
      ,c.LXDH as c_ZZXX_LXDH--��ϵ�绰
      ,c.CZDH as c_ZZXX_CZDH--����绰
      ,c.DZXX as c_ZZXX_DZXX--��������
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--ѧУ��
      ,d.ZYDM as d_ZYXX_ZYDM--רҵ����
      ,db.ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--רҵĿ¼���
      ,db.MC as d_ZYXX_ZYDM_MC--����
      ,d.ZYMC as d_ZYXX_ZYMC--רҵ����
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--רҵӢ������
      ,d.XZ as d_ZYXX_XZ--ѧ��
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--רҵ��������
      ,d.ZYJC as d_ZYXX_ZYJC--רҵ���
      ,d.JLNY as d_ZYXX_JLNY--��������
      ,d.ZYJSS as d_ZYXX_ZYJSS--רҵ��ʦ��
      ,d.KSJGH as d_ZYXX_KSJGH--���������
      ,d.ZXF as d_ZYXX_ZXF--��ѧ��
      ,d.SSZYML as d_ZYXX_SSZYML--����רҵĿ¼
      ,dc.MC as d_ZYXX_SSZYML_MC--����
      ,d.ZYLB as d_ZYXX_ZYLB--רҵ�������
      ,e.SCHOOLID as e_ZZBJ_SCHOOLID--ѧУ��
      ,e.ZYXXID as e_ZZBJ_ZYXXID--רҵ������Ϣ
      ,e.ZZNJID as e_ZZBJ_ZZNJID--ѧУ�꼶���ݱ�
      ,e.XZBMC as e_ZZBJ_XZBMC--����������
      ,e.JBNY as e_ZZBJ_JBNY--��������
      ,e.BZRGH as e_ZZBJ_BZRGH--�����ι���
      ,e.JSBH as e_ZZBJ_JSBH--���ұ��
      ,e.NANSRS as e_ZZBJ_NANSRS--��������
      ,e.NVSRS as e_ZZBJ_NVSRS--Ů������
      ,e.ZRS as e_ZZBJ_ZRS--������
      ,e.BZXH as e_ZZBJ_BZXH--�೤ѧ��
      ,e.JXJH as e_ZZBJ_JXJH--��ѧ�ƻ�
      ,e.JGH as e_ZZBJ_JGH--������
      ,e.XQDM as e_ZZBJ_XQDM--У������
      ,f.SCHOOLID as f_ZZNJ_SCHOOLID--ѧУ��
      ,f.NJMC as f_ZZNJ_NJMC--�꼶����
      ,f.SSNF as f_ZZNJ_SSNF--�������
      ,f.NJZT as f_ZZNJ_NJZT--�꼶״̬
      ,fb.MC as f_ZZNJ_NJZT_MC--����
      ,g.MC as g_XSLB_MC--����
      ,g.SM as g_XSLB_SM--˵��
      ,h.MC as h_XSDQZT_MC--����
      ,h.SM as h_XSDQZT_SM--˵��

FROM dbo.EDU_ZZXS_07_01_XJSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*ѧУ��*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bc.MC as b_XSXX_XBM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--����
      ,bd.JC as b_XSXX_XXM_JC--���
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,be.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bf.MZMC as b_XSXX_MZM_MZMC--��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--����
      ,bi.SM as b_XSXX_GATQWM_SM--˵��
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--����
      ,bk.JC as b_XSXX_ZZMMM_JC--���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--����
      ,b.HKLBM as b_XSXX_HKLBM--���������
      ,bm.MC as b_XSXX_HKLBM_MC--����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--�Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--����
      ,b.GJDQM as b_XSXX_GJDQM--����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.TC as b_XSXX_TC--�س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--�����ַ
      ,b.JSTXH as b_XSXX_JSTXH--��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZP as b_XSXX_ZP--��Ƭ(·��)
      ,c.XXDM as c_ZZXX_XXDM--ѧУ����
      ,c.XXMC as c_ZZXX_XXMC--ѧУ����
      ,c.XXYWMC as c_ZZXX_XXYWMC--ѧУӢ������
      ,c.XXJBZM as c_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,cb.MC as c_ZZXX_XXJBZM_MC--����
      ,cb.SM as c_ZZXX_XXJBZM_SM--˵��
      ,c.XXZGBMM as c_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,cc.MC as c_ZZXX_XXZGBMM_MC--����
      ,cc.SM as c_ZZXX_XXZGBMM_SM--˵��
      ,c.XXDZ as c_ZZXX_XXDZ--ѧУ��ַ
      ,c.XXYZBM as c_ZZXX_XXYZBM--ѧУ��������
      ,c.XZQHM as c_ZZXX_XZQHM--����������
      ,cd.MC as c_ZZXX_XZQHM_MC--����
      ,c.JXNY as c_ZZXX_JXNY--��У����
      ,c.XQR as c_ZZXX_XQR--У����
      ,c.CLBJ as c_ZZXX_CLBJ--��������
      ,c.LSYG as c_ZZXX_LSYG--��ʷ�ظ�
      ,c.XXXQS as c_ZZXX_XXXQS--ѧУУ����
      ,c.XXPGLX as c_ZZXX_XXPGLX--ѧУ��������
      ,ce.MC as c_ZZXX_XXPGLX_MC--����
      ,c.XXPGQKSM as c_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,c.ZYDZ as c_ZZXX_ZYDZ--��ҳ��ַ
      ,c.FDDBRH as c_ZZXX_FDDBRH--���������˺�
      ,c.FRZSH as c_ZZXX_FRZSH--����֤���
      ,c.LXDH as c_ZZXX_LXDH--��ϵ�绰
      ,c.CZDH as c_ZZXX_CZDH--����绰
      ,c.DZXX as c_ZZXX_DZXX--��������
      ,d.MC as d_JTLB_MC--����
      ,e.MC as e_KNYY_MC--����
      ,f.MC as f_KNCD_MC--����
      ,f.SM as f_KNCD_SM--˵��
      ,g.MC as g_SFBZ_MC--����
      ,h.MC as h_HKLB_MC--����

FROM dbo.EDU_ZZXS_02_A02_XSJTJJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*ѧУ��*/ LEFT OUTER JOIN
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
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*ѧУ��������*/
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��
      ,c.XM as c_XSXX_XM--����
      ,c.YWXM as c_XSXX_YWXM--Ӣ������
      ,c.XMPY as c_XSXX_XMPY--����ƴ��
      ,c.CYM as c_XSXX_CYM--������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--����
      ,c.SFZJH as c_XSXX_SFZJH--���֤����
      ,c.XBM as c_XSXX_XBM--�Ա���
      ,cc.MC as c_XSXX_XBM_MC--����
      ,c.XXM as c_XSXX_XXM--Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--����
      ,cd.JC as c_XSXX_XXM_JC--���
      ,c.CSRQ as c_XSXX_CSRQ--��������
      ,c.CSDM as c_XSXX_CSDM--��������
      ,ce.MC as c_XSXX_CSDM_MC--����
      ,c.JG as c_XSXX_JG--����
      ,c.MZM as c_XSXX_MZM--������
      ,cf.MZMC as c_XSXX_MZM_MZMC--��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����
      ,c.XYZJM as c_XSXX_XYZJM--�����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--����
      ,c.GATQWM as c_XSXX_GATQWM--�۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--����
      ,ci.SM as c_XSXX_GATQWM_SM--˵��
      ,c.JKZKM as c_XSXX_JKZKM--����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����
      ,cj.SM as c_XSXX_JKZKM_SM--˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--����
      ,ck.JC as c_XSXX_ZZMMM_JC--���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--����
      ,c.HKLBM as c_XSXX_HKLBM--���������
      ,cm.MC as c_XSXX_HKLBM_MC--����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--�Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--����
      ,c.GJDQM as c_XSXX_GJDQM--����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--����ĸ����
      ,c.TC as c_XSXX_TC--�س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--�����ַ
      ,c.JSTXH as c_XSXX_JSTXH--��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--��������
      ,c.ZP as c_XSXX_ZP--��Ƭ(·��)
      ,d.MC as d_JTGX_MC--����

FROM dbo.EDU_ZZXS_02_A01_XSLXR AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JTGX AS d ON a.GXM = d.DM /*��ϵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��
      ,c.XM as c_XSXX_XM--����
      ,c.YWXM as c_XSXX_YWXM--Ӣ������
      ,c.XMPY as c_XSXX_XMPY--����ƴ��
      ,c.CYM as c_XSXX_CYM--������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--����
      ,c.SFZJH as c_XSXX_SFZJH--���֤����
      ,c.XBM as c_XSXX_XBM--�Ա���
      ,cc.MC as c_XSXX_XBM_MC--����
      ,c.XXM as c_XSXX_XXM--Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--����
      ,cd.JC as c_XSXX_XXM_JC--���
      ,c.CSRQ as c_XSXX_CSRQ--��������
      ,c.CSDM as c_XSXX_CSDM--��������
      ,ce.MC as c_XSXX_CSDM_MC--����
      ,c.JG as c_XSXX_JG--����
      ,c.MZM as c_XSXX_MZM--������
      ,cf.MZMC as c_XSXX_MZM_MZMC--��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����
      ,c.XYZJM as c_XSXX_XYZJM--�����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--����
      ,c.GATQWM as c_XSXX_GATQWM--�۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--����
      ,ci.SM as c_XSXX_GATQWM_SM--˵��
      ,c.JKZKM as c_XSXX_JKZKM--����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����
      ,cj.SM as c_XSXX_JKZKM_SM--˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--����
      ,ck.JC as c_XSXX_ZZMMM_JC--���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--����
      ,c.HKLBM as c_XSXX_HKLBM--���������
      ,cm.MC as c_XSXX_HKLBM_MC--����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--�Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--����
      ,c.GJDQM as c_XSXX_GJDQM--����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--����ĸ����
      ,c.TC as c_XSXX_TC--�س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--�����ַ
      ,c.JSTXH as c_XSXX_JSTXH--��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--��������
      ,c.ZP as c_XSXX_ZP--��Ƭ(·��)
      ,d.MC as d_JTGX_MC--����
      ,e.MC as e_ZYFL_MC--����
      ,f.MC as f_ZZMM_MC--����
      ,f.JC as f_ZZMM_JC--���

FROM dbo.EDU_ZZXS_02_02_XSJTCY AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JTGX AS d ON a.GXM = d.DM /*��ϵ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZYFL AS e ON a.JTCYZYM = e.DM /*��ͥ��Աְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS f ON a.ZZMMM = f.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bc.MC as b_XSXX_XBM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--����
      ,bd.JC as b_XSXX_XXM_JC--���
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,be.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bf.MZMC as b_XSXX_MZM_MZMC--��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--����
      ,bi.SM as b_XSXX_GATQWM_SM--˵��
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--����
      ,bk.JC as b_XSXX_ZZMMM_JC--���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--����
      ,b.HKLBM as b_XSXX_HKLBM--���������
      ,bm.MC as b_XSXX_HKLBM_MC--����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--�Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--����
      ,b.GJDQM as b_XSXX_GJDQM--����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.TC as b_XSXX_TC--�س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--�����ַ
      ,b.JSTXH as b_XSXX_JSTXH--��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZP as b_XSXX_ZP--��Ƭ(·��)
      ,c.XXDM as c_ZZXX_XXDM--ѧУ����
      ,c.XXMC as c_ZZXX_XXMC--ѧУ����
      ,c.XXYWMC as c_ZZXX_XXYWMC--ѧУӢ������
      ,c.XXJBZM as c_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,cb.MC as c_ZZXX_XXJBZM_MC--����
      ,cb.SM as c_ZZXX_XXJBZM_SM--˵��
      ,c.XXZGBMM as c_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,cc.MC as c_ZZXX_XXZGBMM_MC--����
      ,cc.SM as c_ZZXX_XXZGBMM_SM--˵��
      ,c.XXDZ as c_ZZXX_XXDZ--ѧУ��ַ
      ,c.XXYZBM as c_ZZXX_XXYZBM--ѧУ��������
      ,c.XZQHM as c_ZZXX_XZQHM--����������
      ,cd.MC as c_ZZXX_XZQHM_MC--����
      ,c.JXNY as c_ZZXX_JXNY--��У����
      ,c.XQR as c_ZZXX_XQR--У����
      ,c.CLBJ as c_ZZXX_CLBJ--��������
      ,c.LSYG as c_ZZXX_LSYG--��ʷ�ظ�
      ,c.XXXQS as c_ZZXX_XXXQS--ѧУУ����
      ,c.XXPGLX as c_ZZXX_XXPGLX--ѧУ��������
      ,ce.MC as c_ZZXX_XXPGLX_MC--����
      ,c.XXPGQKSM as c_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,c.ZYDZ as c_ZZXX_ZYDZ--��ҳ��ַ
      ,c.FDDBRH as c_ZZXX_FDDBRH--���������˺�
      ,c.FRZSH as c_ZZXX_FRZSH--����֤���
      ,c.LXDH as c_ZZXX_LXDH--��ϵ�绰
      ,c.CZDH as c_ZZXX_CZDH--����绰
      ,c.DZXX as c_ZZXX_DZXX--��������

FROM dbo.EDU_ZZXS_02_01_XSJTXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*ѧУ��*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*ѧУ��������*/
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
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bc.MC as b_XSXX_XBM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--����
      ,bd.JC as b_XSXX_XXM_JC--���
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,be.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bf.MZMC as b_XSXX_MZM_MZMC--��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--����
      ,bi.SM as b_XSXX_GATQWM_SM--˵��
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--����
      ,bk.JC as b_XSXX_ZZMMM_JC--���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--����
      ,b.HKLBM as b_XSXX_HKLBM--���������
      ,bm.MC as b_XSXX_HKLBM_MC--����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--�Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--����
      ,b.GJDQM as b_XSXX_GJDQM--����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.TC as b_XSXX_TC--�س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--�����ַ
      ,b.JSTXH as b_XSXX_JSTXH--��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZP as b_XSXX_ZP--��Ƭ(·��)
      ,c.XXDM as c_ZZXX_XXDM--ѧУ����
      ,c.XXMC as c_ZZXX_XXMC--ѧУ����
      ,c.XXYWMC as c_ZZXX_XXYWMC--ѧУӢ������
      ,c.XXJBZM as c_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,cb.MC as c_ZZXX_XXJBZM_MC--����
      ,cb.SM as c_ZZXX_XXJBZM_SM--˵��
      ,c.XXZGBMM as c_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,cc.MC as c_ZZXX_XXZGBMM_MC--����
      ,cc.SM as c_ZZXX_XXZGBMM_SM--˵��
      ,c.XXDZ as c_ZZXX_XXDZ--ѧУ��ַ
      ,c.XXYZBM as c_ZZXX_XXYZBM--ѧУ��������
      ,c.XZQHM as c_ZZXX_XZQHM--����������
      ,cd.MC as c_ZZXX_XZQHM_MC--����
      ,c.JXNY as c_ZZXX_JXNY--��У����
      ,c.XQR as c_ZZXX_XQR--У����
      ,c.CLBJ as c_ZZXX_CLBJ--��������
      ,c.LSYG as c_ZZXX_LSYG--��ʷ�ظ�
      ,c.XXXQS as c_ZZXX_XXXQS--ѧУУ����
      ,c.XXPGLX as c_ZZXX_XXPGLX--ѧУ��������
      ,ce.MC as c_ZZXX_XXPGLX_MC--����
      ,c.XXPGQKSM as c_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,c.ZYDZ as c_ZZXX_ZYDZ--��ҳ��ַ
      ,c.FDDBRH as c_ZZXX_FDDBRH--���������˺�
      ,c.FRZSH as c_ZZXX_FRZSH--����֤���
      ,c.LXDH as c_ZZXX_LXDH--��ϵ�绰
      ,c.CZDH as c_ZZXX_CZDH--����绰
      ,c.DZXX as c_ZZXX_DZXX--��������
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--ѧУ��
      ,d.ZYDM as d_ZYXX_ZYDM--רҵ����
      ,db.ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--רҵĿ¼���
      ,db.MC as d_ZYXX_ZYDM_MC--����
      ,d.ZYMC as d_ZYXX_ZYMC--רҵ����
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--רҵӢ������
      ,d.XZ as d_ZYXX_XZ--ѧ��
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--רҵ��������
      ,d.ZYJC as d_ZYXX_ZYJC--רҵ���
      ,d.JLNY as d_ZYXX_JLNY--��������
      ,d.ZYJSS as d_ZYXX_ZYJSS--רҵ��ʦ��
      ,d.KSJGH as d_ZYXX_KSJGH--���������
      ,d.ZXF as d_ZYXX_ZXF--��ѧ��
      ,d.SSZYML as d_ZYXX_SSZYML--����רҵĿ¼
      ,dc.MC as d_ZYXX_SSZYML_MC--����
      ,d.ZYLB as d_ZYXX_ZYLB--רҵ�������
      ,e.SCHOOLID as e_XN_SCHOOLID--ѧУ��
      ,e.XN as e_XN_XN--ѧ��
      ,f.SCHOOLID as f_ZZXQ_SCHOOLID--ѧУ��
      ,f.XNID as f_ZZXQ_XNID--ѧ��
      ,f.XQM as f_ZZXQ_XQM--ѧ����
      ,fb.MC as f_ZZXQ_XQM_MC--����
      ,f.XQMC as f_ZZXQ_XQMC--ѧ������
      ,f.XQKSRQ as f_ZZXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,f.XQJSRQ as f_ZZXQ_XQJSRQ--ѧ�ڽ�������
      ,g.MC as g_ZHRMGHGXZQH_MC--����
      ,h.MC as h_HJXZ_MC--����
      ,i.MC as i_SFBZ_MC--����
      ,j.MC as j_BYSLX_MC--����
      ,k.MC as k_XSLB_MC--����
      ,k.SM as k_XSLB_SM--˵��
      ,l.MC as l_SFBZ_MC--����

FROM dbo.EDU_ZZXS_01_A01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*רҵ������Ϣ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS e ON a.XNID = e.ID /*ѧ��*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_03_ZZXQ AS f ON a.ZZXQID = f.ID /*ѧ�ڱ�*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.MC as c_SFZJLX_MC--����
      ,d.MC as d_RDXB_MC--����
      ,e.MC as e_XX_MC--����
      ,e.JC as e_XX_JC--���
      ,f.MC as f_ZHRMGHGXZQH_MC--����
      ,g.MZMC as g_ZGGMZMCDLMZMPXF_MZMC--��������
      ,g.ZMDM as g_ZGGMZMCDLMZMPXF_ZMDM--��ĸ����
      ,h.MC as h_HYZZ_MC--����
      ,i.MC as i_ZJXY_MC--����
      ,j.MC as j_GATQW_MC--����
      ,j.SM as j_GATQW_SM--˵��
      ,k.MC as k_JKZKYWSZ_MC--����
      ,k.SM as k_JKZKYWSZ_SM--˵��
      ,l.MC as l_ZZMM_MC--����
      ,l.JC as l_ZZMM_JC--���
      ,m.MC as m_ZHRMGHGXZQH_MC--����
      ,n.MC as n_HKLB_MC--����
      ,o.MC as o_SFBZ_MC--����
      ,p.GJDQMCJC as p_SJGGHDQMC_GJDQMCJC--����/�������Ƽ��
      ,p.EZMDM as p_SJGGHDQMC_EZMDM--����ĸ����
      ,p.SZMDM as p_SJGGHDQMC_SZMDM--����ĸ����

FROM dbo.EDU_ZZXS_01_01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
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
      dbo.EDU_GB_SJGGHDQMC AS p ON a.GJDQM = p.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/
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
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bc.MC as b_XSXX_XBM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--����
      ,bd.JC as b_XSXX_XXM_JC--���
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,be.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bf.MZMC as b_XSXX_MZM_MZMC--��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--����
      ,bi.SM as b_XSXX_GATQWM_SM--˵��
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--����
      ,bk.JC as b_XSXX_ZZMMM_JC--���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--����
      ,b.HKLBM as b_XSXX_HKLBM--���������
      ,bm.MC as b_XSXX_HKLBM_MC--����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--�Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--����
      ,b.GJDQM as b_XSXX_GJDQM--����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.TC as b_XSXX_TC--�س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--�����ַ
      ,b.JSTXH as b_XSXX_JSTXH--��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZP as b_XSXX_ZP--��Ƭ(·��)
      ,c.XXDM as c_ZZXX_XXDM--ѧУ����
      ,c.XXMC as c_ZZXX_XXMC--ѧУ����
      ,c.XXYWMC as c_ZZXX_XXYWMC--ѧУӢ������
      ,c.XXJBZM as c_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,cb.MC as c_ZZXX_XXJBZM_MC--����
      ,cb.SM as c_ZZXX_XXJBZM_SM--˵��
      ,c.XXZGBMM as c_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,cc.MC as c_ZZXX_XXZGBMM_MC--����
      ,cc.SM as c_ZZXX_XXZGBMM_SM--˵��
      ,c.XXDZ as c_ZZXX_XXDZ--ѧУ��ַ
      ,c.XXYZBM as c_ZZXX_XXYZBM--ѧУ��������
      ,c.XZQHM as c_ZZXX_XZQHM--����������
      ,cd.MC as c_ZZXX_XZQHM_MC--����
      ,c.JXNY as c_ZZXX_JXNY--��У����
      ,c.XQR as c_ZZXX_XQR--У����
      ,c.CLBJ as c_ZZXX_CLBJ--��������
      ,c.LSYG as c_ZZXX_LSYG--��ʷ�ظ�
      ,c.XXXQS as c_ZZXX_XXXQS--ѧУУ����
      ,c.XXPGLX as c_ZZXX_XXPGLX--ѧУ��������
      ,ce.MC as c_ZZXX_XXPGLX_MC--����
      ,c.XXPGQKSM as c_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,c.ZYDZ as c_ZZXX_ZYDZ--��ҳ��ַ
      ,c.FDDBRH as c_ZZXX_FDDBRH--���������˺�
      ,c.FRZSH as c_ZZXX_FRZSH--����֤���
      ,c.LXDH as c_ZZXX_LXDH--��ϵ�绰
      ,c.CZDH as c_ZZXX_CZDH--����绰
      ,c.DZXX as c_ZZXX_DZXX--��������
      ,d.SCHOOLID as d_ZZXQ_SCHOOLID--ѧУ��
      ,d.XNID as d_ZZXQ_XNID--ѧ��
      ,d.XQM as d_ZZXQ_XQM--ѧ����
      ,db.MC as d_ZZXQ_XQM_MC--����
      ,d.XQMC as d_ZZXQ_XQMC--ѧ������
      ,d.XQKSRQ as d_ZZXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,d.XQJSRQ as d_ZZXQ_XQJSRQ--ѧ�ڽ�������
      ,e.MC as e_ZCZK_MC--����
      ,f.MC as f_SFBZ_MC--����
      ,g.MC as g_XQ_MC--����

FROM dbo.EDU_ZZXS_07_03_XSZCXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ��ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_03_ZZXQ AS d ON a.XQID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bc.MC as b_XSXX_XBM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--����
      ,bd.JC as b_XSXX_XXM_JC--���
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,be.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bf.MZMC as b_XSXX_MZM_MZMC--��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--����
      ,bi.SM as b_XSXX_GATQWM_SM--˵��
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--����
      ,bk.JC as b_XSXX_ZZMMM_JC--���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--����
      ,b.HKLBM as b_XSXX_HKLBM--���������
      ,bm.MC as b_XSXX_HKLBM_MC--����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--�Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--����
      ,b.GJDQM as b_XSXX_GJDQM--����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.TC as b_XSXX_TC--�س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--�����ַ
      ,b.JSTXH as b_XSXX_JSTXH--��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZP as b_XSXX_ZP--��Ƭ(·��)
      ,c.XXDM as c_ZZXX_XXDM--ѧУ����
      ,c.XXMC as c_ZZXX_XXMC--ѧУ����
      ,c.XXYWMC as c_ZZXX_XXYWMC--ѧУӢ������
      ,c.XXJBZM as c_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,cb.MC as c_ZZXX_XXJBZM_MC--����
      ,cb.SM as c_ZZXX_XXJBZM_SM--˵��
      ,c.XXZGBMM as c_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,cc.MC as c_ZZXX_XXZGBMM_MC--����
      ,cc.SM as c_ZZXX_XXZGBMM_SM--˵��
      ,c.XXDZ as c_ZZXX_XXDZ--ѧУ��ַ
      ,c.XXYZBM as c_ZZXX_XXYZBM--ѧУ��������
      ,c.XZQHM as c_ZZXX_XZQHM--����������
      ,cd.MC as c_ZZXX_XZQHM_MC--����
      ,c.JXNY as c_ZZXX_JXNY--��У����
      ,c.XQR as c_ZZXX_XQR--У����
      ,c.CLBJ as c_ZZXX_CLBJ--��������
      ,c.LSYG as c_ZZXX_LSYG--��ʷ�ظ�
      ,c.XXXQS as c_ZZXX_XXXQS--ѧУУ����
      ,c.XXPGLX as c_ZZXX_XXPGLX--ѧУ��������
      ,ce.MC as c_ZZXX_XXPGLX_MC--����
      ,c.XXPGQKSM as c_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,c.ZYDZ as c_ZZXX_ZYDZ--��ҳ��ַ
      ,c.FDDBRH as c_ZZXX_FDDBRH--���������˺�
      ,c.FRZSH as c_ZZXX_FRZSH--����֤���
      ,c.LXDH as c_ZZXX_LXDH--��ϵ�绰
      ,c.CZDH as c_ZZXX_CZDH--����绰
      ,c.DZXX as c_ZZXX_DZXX--��������
      ,d.MC as d_XJYDLB_MC--����
      ,e.MC as e_XJYDYY_MC--����
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--ѧУ��
      ,f.GH as f_JZGJBSJ_GH--����
      ,f.XM as f_JZGJBSJ_XM--����
      ,f.YWXM as f_JZGJBSJ_YWXM--Ӣ������
      ,f.XMPY as f_JZGJBSJ_XMPY--����ƴ��
      ,f.CYM as f_JZGJBSJ_CYM--������
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--���֤��������
      ,fb.MC as f_JZGJBSJ_SFZJLXM_MC--����
      ,f.SFZJH as f_JZGJBSJ_SFZJH--���֤����
      ,f.CSRQ as f_JZGJBSJ_CSRQ--��������
      ,f.XBM as f_JZGJBSJ_XBM--�Ա���
      ,fc.MC as f_JZGJBSJ_XBM_MC--����
      ,f.MZM as f_JZGJBSJ_MZM--������
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--��������
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,f.XXM as f_JZGJBSJ_XXM--Ѫ����
      ,fe.MC as f_JZGJBSJ_XXM_MC--����
      ,fe.JC as f_JZGJBSJ_XXM_JC--���
      ,f.JKZKM as f_JZGJBSJ_JKZKM--����״����
      ,ff.MC as f_JZGJBSJ_JKZKM_MC--����
      ,ff.SM as f_JZGJBSJ_JKZKM_SM--˵��
      ,f.HYZTM as f_JZGJBSJ_HYZTM--����״̬��
      ,fg.MC as f_JZGJBSJ_HYZTM_MC--����
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--������ò��
      ,fh.MC as f_JZGJBSJ_ZZMMM_MC--����
      ,fh.JC as f_JZGJBSJ_ZZMMM_JC--���
      ,f.GATQWM as f_JZGJBSJ_GATQWM--�۰�̨������
      ,fi.MC as f_JZGJBSJ_GATQWM_MC--����
      ,fi.SM as f_JZGJBSJ_GATQWM_SM--˵��
      ,f.JG as f_JZGJBSJ_JG--����
      ,f.GJDQM as f_JZGJBSJ_GJDQM--����/������
      ,fj.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,fj.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,fj.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,f.CSDXZQHM as f_JZGJBSJ_CSDXZQHM--����������������
      ,fk.MC as f_JZGJBSJ_CSDXZQHM_MC--����
      ,f.XYZJM as f_JZGJBSJ_XYZJM--�����ڽ���
      ,fl.MC as f_JZGJBSJ_XYZJM_MC--����
      ,f.JZGHKSZDXZQHM as f_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,fm.MC as f_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,f.HKLBM as f_JZGJBSJ_HKLBM--���������
      ,fn.MC as f_JZGJBSJ_HKLBM_MC--����
      ,f.DQZZ as f_JZGJBSJ_DQZZ--��ǰסַ
      ,f.DQZZYZBM as f_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,f.CJGZNY as f_JZGJBSJ_CJGZNY--�μӹ�������
      ,f.CJNY as f_JZGJBSJ_CJNY--�ӽ�����
      ,f.LXNY as f_JZGJBSJ_LXNY--��У����
      ,f.BZLBM as f_JZGJBSJ_BZLBM--���������
      ,fo.MC as f_JZGJBSJ_BZLBM_MC--����
      ,f.JZGLBM as f_JZGJBSJ_JZGLBM--��ְ�������
      ,fp.MC as f_JZGJBSJ_JZGLBM_MC--����
      ,fp.SM as f_JZGJBSJ_JZGLBM_SM--˵��
      ,f.GWLBM as f_JZGJBSJ_GWLBM--��λ�����
      ,fq.MC as f_JZGJBSJ_GWLBM_MC--����
      ,f.SFJZJS as f_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,fr.MC as f_JZGJBSJ_SFJZJS_MC--����
      ,f.SFSSXJS as f_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,fs.MC as f_JZGJBSJ_SFSSXJS_MC--����
      ,f.ZP as f_JZGJBSJ_ZP--��Ƭ(·��)
      ,f.DQZTM as f_JZGJBSJ_DQZTM--��ǰ״̬��
      ,ft.MC as f_JZGJBSJ_DQZTM_MC--����
      ,g.SCHOOLID as g_ZYXX_SCHOOLID--ѧУ��
      ,g.ZYDM as g_ZYXX_ZYDM--רҵ����
      ,gb.ZYMLLB as g_ZYXX_ZYDM_ZYMLLB--רҵĿ¼���
      ,gb.MC as g_ZYXX_ZYDM_MC--����
      ,g.ZYMC as g_ZYXX_ZYMC--רҵ����
      ,g.ZYYWMC as g_ZYXX_ZYYWMC--רҵӢ������
      ,g.XZ as g_ZYXX_XZ--ѧ��
      ,g.ZYFXMC as g_ZYXX_ZYFXMC--רҵ��������
      ,g.ZYJC as g_ZYXX_ZYJC--רҵ���
      ,g.JLNY as g_ZYXX_JLNY--��������
      ,g.ZYJSS as g_ZYXX_ZYJSS--רҵ��ʦ��
      ,g.KSJGH as g_ZYXX_KSJGH--���������
      ,g.ZXF as g_ZYXX_ZXF--��ѧ��
      ,g.SSZYML as g_ZYXX_SSZYML--����רҵĿ¼
      ,gc.MC as g_ZYXX_SSZYML_MC--����
      ,g.ZYLB as g_ZYXX_ZYLB--רҵ�������
      ,h.SCHOOLID as h_ZZBJ_SCHOOLID--ѧУ��
      ,h.ZYXXID as h_ZZBJ_ZYXXID--רҵ������Ϣ
      ,h.ZZNJID as h_ZZBJ_ZZNJID--ѧУ�꼶���ݱ�
      ,h.XZBMC as h_ZZBJ_XZBMC--����������
      ,h.JBNY as h_ZZBJ_JBNY--��������
      ,h.BZRGH as h_ZZBJ_BZRGH--�����ι���
      ,h.JSBH as h_ZZBJ_JSBH--���ұ��
      ,h.NANSRS as h_ZZBJ_NANSRS--��������
      ,h.NVSRS as h_ZZBJ_NVSRS--Ů������
      ,h.ZRS as h_ZZBJ_ZRS--������
      ,h.BZXH as h_ZZBJ_BZXH--�೤ѧ��
      ,h.JXJH as h_ZZBJ_JXJH--��ѧ�ƻ�
      ,h.JGH as h_ZZBJ_JGH--������
      ,h.XQDM as h_ZZBJ_XQDM--У������
      ,i.SCHOOLID as i_ZZNJ_SCHOOLID--ѧУ��
      ,i.NJMC as i_ZZNJ_NJMC--�꼶����
      ,i.SSNF as i_ZZNJ_SSNF--�������
      ,i.NJZT as i_ZZNJ_NJZT--�꼶״̬
      ,ib.MC as i_ZZNJ_NJZT_MC--����
      ,j.SCHOOLID as j_ZYXX_SCHOOLID--ѧУ��
      ,j.ZYDM as j_ZYXX_ZYDM--רҵ����
      ,jb.ZYMLLB as j_ZYXX_ZYDM_ZYMLLB--רҵĿ¼���
      ,jb.MC as j_ZYXX_ZYDM_MC--����
      ,j.ZYMC as j_ZYXX_ZYMC--רҵ����
      ,j.ZYYWMC as j_ZYXX_ZYYWMC--רҵӢ������
      ,j.XZ as j_ZYXX_XZ--ѧ��
      ,j.ZYFXMC as j_ZYXX_ZYFXMC--רҵ��������
      ,j.ZYJC as j_ZYXX_ZYJC--רҵ���
      ,j.JLNY as j_ZYXX_JLNY--��������
      ,j.ZYJSS as j_ZYXX_ZYJSS--רҵ��ʦ��
      ,j.KSJGH as j_ZYXX_KSJGH--���������
      ,j.ZXF as j_ZYXX_ZXF--��ѧ��
      ,j.SSZYML as j_ZYXX_SSZYML--����רҵĿ¼
      ,jc.MC as j_ZYXX_SSZYML_MC--����
      ,j.ZYLB as j_ZYXX_ZYLB--רҵ�������
      ,k.SCHOOLID as k_ZZBJ_SCHOOLID--ѧУ��
      ,k.ZYXXID as k_ZZBJ_ZYXXID--רҵ������Ϣ
      ,k.ZZNJID as k_ZZBJ_ZZNJID--ѧУ�꼶���ݱ�
      ,k.XZBMC as k_ZZBJ_XZBMC--����������
      ,k.JBNY as k_ZZBJ_JBNY--��������
      ,k.BZRGH as k_ZZBJ_BZRGH--�����ι���
      ,k.JSBH as k_ZZBJ_JSBH--���ұ��
      ,k.NANSRS as k_ZZBJ_NANSRS--��������
      ,k.NVSRS as k_ZZBJ_NVSRS--Ů������
      ,k.ZRS as k_ZZBJ_ZRS--������
      ,k.BZXH as k_ZZBJ_BZXH--�೤ѧ��
      ,k.JXJH as k_ZZBJ_JXJH--��ѧ�ƻ�
      ,k.JGH as k_ZZBJ_JGH--������
      ,k.XQDM as k_ZZBJ_XQDM--У������
      ,l.SCHOOLID as l_ZZNJ_SCHOOLID--ѧУ��
      ,l.NJMC as l_ZZNJ_NJMC--�꼶����
      ,l.SSNF as l_ZZNJ_SSNF--�������
      ,l.NJZT as l_ZZNJ_NJZT--�꼶״̬
      ,lb.MC as l_ZZNJ_NJZT_MC--����

FROM dbo.EDU_ZZXS_07_02_XJYD AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ��ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*ѧУID*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bc.MC as b_XSXX_XBM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--����
      ,bd.JC as b_XSXX_XXM_JC--���
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,be.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bf.MZMC as b_XSXX_MZM_MZMC--��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--����
      ,bi.SM as b_XSXX_GATQWM_SM--˵��
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--����
      ,bk.JC as b_XSXX_ZZMMM_JC--���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--����
      ,b.HKLBM as b_XSXX_HKLBM--���������
      ,bm.MC as b_XSXX_HKLBM_MC--����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--�Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--����
      ,b.GJDQM as b_XSXX_GJDQM--����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.TC as b_XSXX_TC--�س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--�����ַ
      ,b.JSTXH as b_XSXX_JSTXH--��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZP as b_XSXX_ZP--��Ƭ(·��)
      ,c.XXDM as c_ZZXX_XXDM--ѧУ����
      ,c.XXMC as c_ZZXX_XXMC--ѧУ����
      ,c.XXYWMC as c_ZZXX_XXYWMC--ѧУӢ������
      ,c.XXJBZM as c_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,cb.MC as c_ZZXX_XXJBZM_MC--����
      ,cb.SM as c_ZZXX_XXJBZM_SM--˵��
      ,c.XXZGBMM as c_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,cc.MC as c_ZZXX_XXZGBMM_MC--����
      ,cc.SM as c_ZZXX_XXZGBMM_SM--˵��
      ,c.XXDZ as c_ZZXX_XXDZ--ѧУ��ַ
      ,c.XXYZBM as c_ZZXX_XXYZBM--ѧУ��������
      ,c.XZQHM as c_ZZXX_XZQHM--����������
      ,cd.MC as c_ZZXX_XZQHM_MC--����
      ,c.JXNY as c_ZZXX_JXNY--��У����
      ,c.XQR as c_ZZXX_XQR--У����
      ,c.CLBJ as c_ZZXX_CLBJ--��������
      ,c.LSYG as c_ZZXX_LSYG--��ʷ�ظ�
      ,c.XXXQS as c_ZZXX_XXXQS--ѧУУ����
      ,c.XXPGLX as c_ZZXX_XXPGLX--ѧУ��������
      ,ce.MC as c_ZZXX_XXPGLX_MC--����
      ,c.XXPGQKSM as c_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,c.ZYDZ as c_ZZXX_ZYDZ--��ҳ��ַ
      ,c.FDDBRH as c_ZZXX_FDDBRH--���������˺�
      ,c.FRZSH as c_ZZXX_FRZSH--����֤���
      ,c.LXDH as c_ZZXX_LXDH--��ϵ�绰
      ,c.CZDH as c_ZZXX_CZDH--����绰
      ,c.DZXX as c_ZZXX_DZXX--��������
      ,d.SCHOOLID as d_KC_SCHOOLID--ѧУID
      ,d.KCMC as d_KC_KCMC--�γ�����
      ,d.KCYWM as d_KC_KCYWM--�γ�Ӣ����
      ,d.KCBM as d_KC_KCBM--�γ̱���
      ,d.KCJS as d_KC_KCJS--�γ̽���
      ,d.XF as d_KC_XF--ѧ��
      ,d.ZXS as d_KC_ZXS--��ѧʱ
      ,d.LLXS as d_KC_LLXS--����ѧʱ
      ,d.SJXS as d_KC_SJXS--ʵ��ѧʱ
      ,d.QTXS as d_KC_QTXS--����ѧʱ
      ,d.CKSM as d_KC_CKSM--�ο���Ŀ
      ,d.KKDW as d_KC_KKDW--���ε�λ
      ,d.KSXS as d_KC_KSXS--������ʽ
      ,db.MC as d_KC_KSXS_MC--����
      ,d.SKFSM as d_KC_SKFSM--�ڿη�ʽ��
      ,dc.MC as d_KC_SKFSM_MC--����
      ,d.KCFY as d_KC_KCFY--�γ̷���
      ,e.SCHOOLID as e_ZZXQ_SCHOOLID--ѧУ��
      ,e.XNID as e_ZZXQ_XNID--ѧ��
      ,e.XQM as e_ZZXQ_XQM--ѧ����
      ,eb.MC as e_ZZXQ_XQM_MC--����
      ,e.XQMC as e_ZZXQ_XQMC--ѧ������
      ,e.XQKSRQ as e_ZZXQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,e.XQJSRQ as e_ZZXQ_XQJSRQ--ѧ�ڽ�������
      ,f.MC as f_KSXZ_MC--����
      ,f.SM as f_KSXZ_SM--˵��
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--ѧУ��
      ,g.GH as g_JZGJBSJ_GH--����
      ,g.XM as g_JZGJBSJ_XM--����
      ,g.YWXM as g_JZGJBSJ_YWXM--Ӣ������
      ,g.XMPY as g_JZGJBSJ_XMPY--����ƴ��
      ,g.CYM as g_JZGJBSJ_CYM--������
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--���֤��������
      ,gb.MC as g_JZGJBSJ_SFZJLXM_MC--����
      ,g.SFZJH as g_JZGJBSJ_SFZJH--���֤����
      ,g.CSRQ as g_JZGJBSJ_CSRQ--��������
      ,g.XBM as g_JZGJBSJ_XBM--�Ա���
      ,gc.MC as g_JZGJBSJ_XBM_MC--����
      ,g.MZM as g_JZGJBSJ_MZM--������
      ,gd.MZMC as g_JZGJBSJ_MZM_MZMC--��������
      ,gd.ZMDM as g_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,g.XXM as g_JZGJBSJ_XXM--Ѫ����
      ,ge.MC as g_JZGJBSJ_XXM_MC--����
      ,ge.JC as g_JZGJBSJ_XXM_JC--���
      ,g.JKZKM as g_JZGJBSJ_JKZKM--����״����
      ,gf.MC as g_JZGJBSJ_JKZKM_MC--����
      ,gf.SM as g_JZGJBSJ_JKZKM_SM--˵��
      ,g.HYZTM as g_JZGJBSJ_HYZTM--����״̬��
      ,gg.MC as g_JZGJBSJ_HYZTM_MC--����
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--������ò��
      ,gh.MC as g_JZGJBSJ_ZZMMM_MC--����
      ,gh.JC as g_JZGJBSJ_ZZMMM_JC--���
      ,g.GATQWM as g_JZGJBSJ_GATQWM--�۰�̨������
      ,gi.MC as g_JZGJBSJ_GATQWM_MC--����
      ,gi.SM as g_JZGJBSJ_GATQWM_SM--˵��
      ,g.JG as g_JZGJBSJ_JG--����
      ,g.GJDQM as g_JZGJBSJ_GJDQM--����/������
      ,gj.GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,gj.EZMDM as g_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,gj.SZMDM as g_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,g.CSDXZQHM as g_JZGJBSJ_CSDXZQHM--����������������
      ,gk.MC as g_JZGJBSJ_CSDXZQHM_MC--����
      ,g.XYZJM as g_JZGJBSJ_XYZJM--�����ڽ���
      ,gl.MC as g_JZGJBSJ_XYZJM_MC--����
      ,g.JZGHKSZDXZQHM as g_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,gm.MC as g_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,g.HKLBM as g_JZGJBSJ_HKLBM--���������
      ,gn.MC as g_JZGJBSJ_HKLBM_MC--����
      ,g.DQZZ as g_JZGJBSJ_DQZZ--��ǰסַ
      ,g.DQZZYZBM as g_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,g.CJGZNY as g_JZGJBSJ_CJGZNY--�μӹ�������
      ,g.CJNY as g_JZGJBSJ_CJNY--�ӽ�����
      ,g.LXNY as g_JZGJBSJ_LXNY--��У����
      ,g.BZLBM as g_JZGJBSJ_BZLBM--���������
      ,go.MC as g_JZGJBSJ_BZLBM_MC--����
      ,g.JZGLBM as g_JZGJBSJ_JZGLBM--��ְ�������
      ,gp.MC as g_JZGJBSJ_JZGLBM_MC--����
      ,gp.SM as g_JZGJBSJ_JZGLBM_SM--˵��
      ,g.GWLBM as g_JZGJBSJ_GWLBM--��λ�����
      ,gq.MC as g_JZGJBSJ_GWLBM_MC--����
      ,g.SFJZJS as g_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,gr.MC as g_JZGJBSJ_SFJZJS_MC--����
      ,g.SFSSXJS as g_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,gs.MC as g_JZGJBSJ_SFSSXJS_MC--����
      ,g.ZP as g_JZGJBSJ_ZP--��Ƭ(·��)
      ,g.DQZTM as g_JZGJBSJ_DQZTM--��ǰ״̬��
      ,gt.MC as g_JZGJBSJ_DQZTM_MC--����
      ,h.SCHOOLID as h_JZGJBSJ_SCHOOLID--ѧУ��
      ,h.GH as h_JZGJBSJ_GH--����
      ,h.XM as h_JZGJBSJ_XM--����
      ,h.YWXM as h_JZGJBSJ_YWXM--Ӣ������
      ,h.XMPY as h_JZGJBSJ_XMPY--����ƴ��
      ,h.CYM as h_JZGJBSJ_CYM--������
      ,h.SFZJLXM as h_JZGJBSJ_SFZJLXM--���֤��������
      ,hb.MC as h_JZGJBSJ_SFZJLXM_MC--����
      ,h.SFZJH as h_JZGJBSJ_SFZJH--���֤����
      ,h.CSRQ as h_JZGJBSJ_CSRQ--��������
      ,h.XBM as h_JZGJBSJ_XBM--�Ա���
      ,hc.MC as h_JZGJBSJ_XBM_MC--����
      ,h.MZM as h_JZGJBSJ_MZM--������
      ,hd.MZMC as h_JZGJBSJ_MZM_MZMC--��������
      ,hd.ZMDM as h_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,h.XXM as h_JZGJBSJ_XXM--Ѫ����
      ,he.MC as h_JZGJBSJ_XXM_MC--����
      ,he.JC as h_JZGJBSJ_XXM_JC--���
      ,h.JKZKM as h_JZGJBSJ_JKZKM--����״����
      ,hf.MC as h_JZGJBSJ_JKZKM_MC--����
      ,hf.SM as h_JZGJBSJ_JKZKM_SM--˵��
      ,h.HYZTM as h_JZGJBSJ_HYZTM--����״̬��
      ,hg.MC as h_JZGJBSJ_HYZTM_MC--����
      ,h.ZZMMM as h_JZGJBSJ_ZZMMM--������ò��
      ,hh.MC as h_JZGJBSJ_ZZMMM_MC--����
      ,hh.JC as h_JZGJBSJ_ZZMMM_JC--���
      ,h.GATQWM as h_JZGJBSJ_GATQWM--�۰�̨������
      ,hi.MC as h_JZGJBSJ_GATQWM_MC--����
      ,hi.SM as h_JZGJBSJ_GATQWM_SM--˵��
      ,h.JG as h_JZGJBSJ_JG--����
      ,h.GJDQM as h_JZGJBSJ_GJDQM--����/������
      ,hj.GJDQMCJC as h_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,hj.EZMDM as h_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,hj.SZMDM as h_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,h.CSDXZQHM as h_JZGJBSJ_CSDXZQHM--����������������
      ,hk.MC as h_JZGJBSJ_CSDXZQHM_MC--����
      ,h.XYZJM as h_JZGJBSJ_XYZJM--�����ڽ���
      ,hl.MC as h_JZGJBSJ_XYZJM_MC--����
      ,h.JZGHKSZDXZQHM as h_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,hm.MC as h_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,h.HKLBM as h_JZGJBSJ_HKLBM--���������
      ,hn.MC as h_JZGJBSJ_HKLBM_MC--����
      ,h.DQZZ as h_JZGJBSJ_DQZZ--��ǰסַ
      ,h.DQZZYZBM as h_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,h.CJGZNY as h_JZGJBSJ_CJGZNY--�μӹ�������
      ,h.CJNY as h_JZGJBSJ_CJNY--�ӽ�����
      ,h.LXNY as h_JZGJBSJ_LXNY--��У����
      ,h.BZLBM as h_JZGJBSJ_BZLBM--���������
      ,ho.MC as h_JZGJBSJ_BZLBM_MC--����
      ,h.JZGLBM as h_JZGJBSJ_JZGLBM--��ְ�������
      ,hp.MC as h_JZGJBSJ_JZGLBM_MC--����
      ,hp.SM as h_JZGJBSJ_JZGLBM_SM--˵��
      ,h.GWLBM as h_JZGJBSJ_GWLBM--��λ�����
      ,hq.MC as h_JZGJBSJ_GWLBM_MC--����
      ,h.SFJZJS as h_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,hr.MC as h_JZGJBSJ_SFJZJS_MC--����
      ,h.SFSSXJS as h_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,hs.MC as h_JZGJBSJ_SFSSXJS_MC--����
      ,h.ZP as h_JZGJBSJ_ZP--��Ƭ(·��)
      ,h.DQZTM as h_JZGJBSJ_DQZTM--��ǰ״̬��
      ,ht.MC as h_JZGJBSJ_DQZTM_MC--����

FROM dbo.EDU_ZZXS_06_01_XSCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ��ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCH = d.KCH /*�γ̺�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_03_ZZXQ AS e ON a.XQID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��
      ,c.XM as c_XSXX_XM--����
      ,c.YWXM as c_XSXX_YWXM--Ӣ������
      ,c.XMPY as c_XSXX_XMPY--����ƴ��
      ,c.CYM as c_XSXX_CYM--������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--����
      ,c.SFZJH as c_XSXX_SFZJH--���֤����
      ,c.XBM as c_XSXX_XBM--�Ա���
      ,cc.MC as c_XSXX_XBM_MC--����
      ,c.XXM as c_XSXX_XXM--Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--����
      ,cd.JC as c_XSXX_XXM_JC--���
      ,c.CSRQ as c_XSXX_CSRQ--��������
      ,c.CSDM as c_XSXX_CSDM--��������
      ,ce.MC as c_XSXX_CSDM_MC--����
      ,c.JG as c_XSXX_JG--����
      ,c.MZM as c_XSXX_MZM--������
      ,cf.MZMC as c_XSXX_MZM_MZMC--��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����
      ,c.XYZJM as c_XSXX_XYZJM--�����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--����
      ,c.GATQWM as c_XSXX_GATQWM--�۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--����
      ,ci.SM as c_XSXX_GATQWM_SM--˵��
      ,c.JKZKM as c_XSXX_JKZKM--����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����
      ,cj.SM as c_XSXX_JKZKM_SM--˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--����
      ,ck.JC as c_XSXX_ZZMMM_JC--���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--����
      ,c.HKLBM as c_XSXX_HKLBM--���������
      ,cm.MC as c_XSXX_HKLBM_MC--����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--�Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--����
      ,c.GJDQM as c_XSXX_GJDQM--����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--����ĸ����
      ,c.TC as c_XSXX_TC--�س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--�����ַ
      ,c.JSTXH as c_XSXX_JSTXH--��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--��������
      ,c.ZP as c_XSXX_ZP--��Ƭ(·��)

FROM dbo.EDU_ZZXS_13_A01_XSJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����ϢID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XNJG_SCHOOLID--ѧУ��
      ,c.JGMC as c_XNJG_JGMC--��������
      ,c.JGYWMC as c_XNJG_JGYWMC--����Ӣ������
      ,c.JGJC as c_XNJG_JGJC--�������
      ,c.JGJP as c_XNJG_JGJP--������ƴ
      ,c.JGDZ as c_XNJG_JGDZ--������ַ
      ,c.LSSJJGH as c_XNJG_LSSJJGH--�����ϼ�������
      ,c.LSXQH as c_XNJG_LSXQH--����У����
      ,c.JGYXBS as c_XNJG_JGYXBS--������Ч��ʶ
      ,cb.MC as c_XNJG_JGYXBS_MC--����
      ,c.SFST as c_XNJG_SFST--�Ƿ�ʵ��
      ,cc.MC as c_XNJG_SFST_MC--����
      ,c.JLNY as c_XNJG_JLNY--��������
      ,c.JGYZBM as c_XNJG_JGYZBM--������������
      ,c.FZRH as c_XNJG_FZRH--�����˺�
      ,d.MC as d_SFBZ_MC--����
      ,e.MC as e_SFBZ_MC--����

FROM dbo.EDU_ZZXX_03_01_XNJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.LSSJJGH = c.JGH /*�����ϼ�������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.JGYXBS = d.DM /*������Ч��ʶ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFST = e.DM /*�Ƿ�ʵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.MC as b_XXJYJGJBZ_MC--����
      ,b.SM as b_XXJYJGJBZ_SM--˵��
      ,c.MC as c_XXJYJGJBZ_MC--����
      ,c.SM as c_XXJYJGJBZ_SM--˵��
      ,d.MC as d_ZHRMGHGXZQH_MC--����
      ,e.MC as e_PGQK_MC--����

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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_XNJG_SCHOOLID--ѧУ��
      ,c.JGMC as c_XNJG_JGMC--��������
      ,c.JGYWMC as c_XNJG_JGYWMC--����Ӣ������
      ,c.JGJC as c_XNJG_JGJC--�������
      ,c.JGJP as c_XNJG_JGJP--������ƴ
      ,c.JGDZ as c_XNJG_JGDZ--������ַ
      ,c.LSSJJGH as c_XNJG_LSSJJGH--�����ϼ�������
      ,c.LSXQH as c_XNJG_LSXQH--����У����
      ,c.JGYXBS as c_XNJG_JGYXBS--������Ч��ʶ
      ,cb.MC as c_XNJG_JGYXBS_MC--����
      ,c.SFST as c_XNJG_SFST--�Ƿ�ʵ��
      ,cc.MC as c_XNJG_SFST_MC--����
      ,c.JLNY as c_XNJG_JLNY--��������
      ,c.JGYZBM as c_XNJG_JGYZBM--������������
      ,c.FZRH as c_XNJG_FZRH--�����˺�

FROM dbo.EDU_ZZXX_03_A01_JGGW AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.JGH = c.JGH /*������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bc.MC as b_XSXX_XBM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--����
      ,bd.JC as b_XSXX_XXM_JC--���
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,be.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bf.MZMC as b_XSXX_MZM_MZMC--��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--����
      ,bi.SM as b_XSXX_GATQWM_SM--˵��
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--����
      ,bk.JC as b_XSXX_ZZMMM_JC--���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--����
      ,b.HKLBM as b_XSXX_HKLBM--���������
      ,bm.MC as b_XSXX_HKLBM_MC--����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--�Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--����
      ,b.GJDQM as b_XSXX_GJDQM--����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.TC as b_XSXX_TC--�س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--�����ַ
      ,b.JSTXH as b_XSXX_JSTXH--��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZP as b_XSXX_ZP--��Ƭ(·��)
      ,c.XXDM as c_ZZXX_XXDM--ѧУ����
      ,c.XXMC as c_ZZXX_XXMC--ѧУ����
      ,c.XXYWMC as c_ZZXX_XXYWMC--ѧУӢ������
      ,c.XXJBZM as c_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,cb.MC as c_ZZXX_XXJBZM_MC--����
      ,cb.SM as c_ZZXX_XXJBZM_SM--˵��
      ,c.XXZGBMM as c_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,cc.MC as c_ZZXX_XXZGBMM_MC--����
      ,cc.SM as c_ZZXX_XXZGBMM_SM--˵��
      ,c.XXDZ as c_ZZXX_XXDZ--ѧУ��ַ
      ,c.XXYZBM as c_ZZXX_XXYZBM--ѧУ��������
      ,c.XZQHM as c_ZZXX_XZQHM--����������
      ,cd.MC as c_ZZXX_XZQHM_MC--����
      ,c.JXNY as c_ZZXX_JXNY--��У����
      ,c.XQR as c_ZZXX_XQR--У����
      ,c.CLBJ as c_ZZXX_CLBJ--��������
      ,c.LSYG as c_ZZXX_LSYG--��ʷ�ظ�
      ,c.XXXQS as c_ZZXX_XXXQS--ѧУУ����
      ,c.XXPGLX as c_ZZXX_XXPGLX--ѧУ��������
      ,ce.MC as c_ZZXX_XXPGLX_MC--����
      ,c.XXPGQKSM as c_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,c.ZYDZ as c_ZZXX_ZYDZ--��ҳ��ַ
      ,c.FDDBRH as c_ZZXX_FDDBRH--���������˺�
      ,c.FRZSH as c_ZZXX_FRZSH--����֤���
      ,c.LXDH as c_ZZXX_LXDH--��ϵ�绰
      ,c.CZDH as c_ZZXX_CZDH--����绰
      ,c.DZXX as c_ZZXX_DZXX--��������
      ,d.MC as d_FJFLB_MC--����

FROM dbo.EDU_ZZZS_02_01_RXCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*ѧУ��*/ LEFT OUTER JOIN
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
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*ѧУ��������*/
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
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_ZYXX_SCHOOLID--ѧУ��
      ,c.ZYDM as c_ZYXX_ZYDM--רҵ����
      ,cb.ZYMLLB as c_ZYXX_ZYDM_ZYMLLB--רҵĿ¼���
      ,cb.MC as c_ZYXX_ZYDM_MC--����
      ,c.ZYMC as c_ZYXX_ZYMC--רҵ����
      ,c.ZYYWMC as c_ZYXX_ZYYWMC--רҵӢ������
      ,c.XZ as c_ZYXX_XZ--ѧ��
      ,c.ZYFXMC as c_ZYXX_ZYFXMC--רҵ��������
      ,c.ZYJC as c_ZYXX_ZYJC--רҵ���
      ,c.JLNY as c_ZYXX_JLNY--��������
      ,c.ZYJSS as c_ZYXX_ZYJSS--רҵ��ʦ��
      ,c.KSJGH as c_ZYXX_KSJGH--���������
      ,c.ZXF as c_ZYXX_ZXF--��ѧ��
      ,c.SSZYML as c_ZYXX_SSZYML--����רҵĿ¼
      ,cc.MC as c_ZYXX_SSZYML_MC--����
      ,c.ZYLB as c_ZYXX_ZYLB--רҵ�������
      ,d.SCHOOLID as d_XN_SCHOOLID--ѧУ��
      ,d.XN as d_XN_XN--ѧ��

FROM dbo.EDU_ZZZS_01_A01_ZSJH AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS c ON a.ZYXXID = c.ZYBH /*רҵ������Ϣ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS d ON a.XNID = d.ID /*ѧ��*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
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
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bc.MC as b_XSXX_XBM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--����
      ,bd.JC as b_XSXX_XXM_JC--���
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,be.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bf.MZMC as b_XSXX_MZM_MZMC--��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--����
      ,bi.SM as b_XSXX_GATQWM_SM--˵��
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--����
      ,bk.JC as b_XSXX_ZZMMM_JC--���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--����
      ,b.HKLBM as b_XSXX_HKLBM--���������
      ,bm.MC as b_XSXX_HKLBM_MC--����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--�Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--����
      ,b.GJDQM as b_XSXX_GJDQM--����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.TC as b_XSXX_TC--�س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--�����ַ
      ,b.JSTXH as b_XSXX_JSTXH--��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZP as b_XSXX_ZP--��Ƭ(·��)
      ,c.XXDM as c_ZZXX_XXDM--ѧУ����
      ,c.XXMC as c_ZZXX_XXMC--ѧУ����
      ,c.XXYWMC as c_ZZXX_XXYWMC--ѧУӢ������
      ,c.XXJBZM as c_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,cb.MC as c_ZZXX_XXJBZM_MC--����
      ,cb.SM as c_ZZXX_XXJBZM_SM--˵��
      ,c.XXZGBMM as c_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,cc.MC as c_ZZXX_XXZGBMM_MC--����
      ,cc.SM as c_ZZXX_XXZGBMM_SM--˵��
      ,c.XXDZ as c_ZZXX_XXDZ--ѧУ��ַ
      ,c.XXYZBM as c_ZZXX_XXYZBM--ѧУ��������
      ,c.XZQHM as c_ZZXX_XZQHM--����������
      ,cd.MC as c_ZZXX_XZQHM_MC--����
      ,c.JXNY as c_ZZXX_JXNY--��У����
      ,c.XQR as c_ZZXX_XQR--У����
      ,c.CLBJ as c_ZZXX_CLBJ--��������
      ,c.LSYG as c_ZZXX_LSYG--��ʷ�ظ�
      ,c.XXXQS as c_ZZXX_XXXQS--ѧУУ����
      ,c.XXPGLX as c_ZZXX_XXPGLX--ѧУ��������
      ,ce.MC as c_ZZXX_XXPGLX_MC--����
      ,c.XXPGQKSM as c_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,c.ZYDZ as c_ZZXX_ZYDZ--��ҳ��ַ
      ,c.FDDBRH as c_ZZXX_FDDBRH--���������˺�
      ,c.FRZSH as c_ZZXX_FRZSH--����֤���
      ,c.LXDH as c_ZZXX_LXDH--��ϵ�绰
      ,c.CZDH as c_ZZXX_CZDH--����绰
      ,c.DZXX as c_ZZXX_DZXX--��������
      ,d.MC as d_ZHRMGHGXZQH_MC--����
      ,e.MC as e_YZMCEZM_MC--����
      ,f.MC as f_KSFS_MC--����
      ,f.SM as f_KSFS_SM--˵��

FROM dbo.EDU_ZZZS_01_01_ZSXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*ѧУ��*/ LEFT OUTER JOIN
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
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*ѧУ��������*/
GO

--������Ŀ�ɼ��������
CREATE VIEW [dbo].[VIEW_EDU_ZZZS_03_01_KSKMCJ_DISP]
AS
SELECT a.[XSXXID]--����ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[KMM]--��Ŀ��
      ,a.[ZKFS]--�п�����
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bc.MC as b_XSXX_XBM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--����
      ,bd.JC as b_XSXX_XXM_JC--���
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,be.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bf.MZMC as b_XSXX_MZM_MZMC--��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--����
      ,bi.SM as b_XSXX_GATQWM_SM--˵��
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--����
      ,bk.JC as b_XSXX_ZZMMM_JC--���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--����
      ,b.HKLBM as b_XSXX_HKLBM--���������
      ,bm.MC as b_XSXX_HKLBM_MC--����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--�Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--����
      ,b.GJDQM as b_XSXX_GJDQM--����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.TC as b_XSXX_TC--�س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--�����ַ
      ,b.JSTXH as b_XSXX_JSTXH--��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZP as b_XSXX_ZP--��Ƭ(·��)
      ,c.XXDM as c_ZZXX_XXDM--ѧУ����
      ,c.XXMC as c_ZZXX_XXMC--ѧУ����
      ,c.XXYWMC as c_ZZXX_XXYWMC--ѧУӢ������
      ,c.XXJBZM as c_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,cb.MC as c_ZZXX_XXJBZM_MC--����
      ,cb.SM as c_ZZXX_XXJBZM_SM--˵��
      ,c.XXZGBMM as c_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,cc.MC as c_ZZXX_XXZGBMM_MC--����
      ,cc.SM as c_ZZXX_XXZGBMM_SM--˵��
      ,c.XXDZ as c_ZZXX_XXDZ--ѧУ��ַ
      ,c.XXYZBM as c_ZZXX_XXYZBM--ѧУ��������
      ,c.XZQHM as c_ZZXX_XZQHM--����������
      ,cd.MC as c_ZZXX_XZQHM_MC--����
      ,c.JXNY as c_ZZXX_JXNY--��У����
      ,c.XQR as c_ZZXX_XQR--У����
      ,c.CLBJ as c_ZZXX_CLBJ--��������
      ,c.LSYG as c_ZZXX_LSYG--��ʷ�ظ�
      ,c.XXXQS as c_ZZXX_XXXQS--ѧУУ����
      ,c.XXPGLX as c_ZZXX_XXPGLX--ѧУ��������
      ,ce.MC as c_ZZXX_XXPGLX_MC--����
      ,c.XXPGQKSM as c_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,c.ZYDZ as c_ZZXX_ZYDZ--��ҳ��ַ
      ,c.FDDBRH as c_ZZXX_FDDBRH--���������˺�
      ,c.FRZSH as c_ZZXX_FRZSH--����֤���
      ,c.LXDH as c_ZZXX_LXDH--��ϵ�绰
      ,c.CZDH as c_ZZXX_CZDH--����绰
      ,c.DZXX as c_ZZXX_DZXX--��������
      ,d.MC as d_ZKKM_MC--����

FROM dbo.EDU_ZZZS_03_01_KSKMCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*����ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*ѧУID*/ LEFT OUTER JOIN
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
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*ѧУ��������*/
GO
