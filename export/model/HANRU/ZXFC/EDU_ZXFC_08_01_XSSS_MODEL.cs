namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXFC_08_01_XSSS_metadata))]
    public partial class EDU_ZXFC_08_01_XSSS
    {
        public EDU_ZXFC_08_01_XSSS()
        {
            SSLBM = "";
            FJBM = "";
            RZXB = "";
            SFKY = "";
            SSM = "";
        }
        public class EDU_ZXFC_08_01_XSSS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "宿舍楼")]
            public Int32 SSLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "宿舍楼编号")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SSLBM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "房间编号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJBM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "入住性别")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RZXB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否可用")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFKY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "可住人数")]
            [Range(typeof(decimal), "0", "99")]
            public decimal KZRS { get; set; }


            [Display(Name = "网络端口")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WLDK { get; set; }


            [Display(Name = "安装电视机")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AZDSJ { get; set; }


            [Display(Name = "电话端口")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DHDK { get; set; }


            [Display(Name = "电话号码")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DHHM { get; set; }


            [Display(Name = "水表底数")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal SBDS { get; set; }


            [Display(Name = "电表底数")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal DBDS { get; set; }


            [Display(Name = "宿舍备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SSBZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所在楼层")]
            public Int32 SZLZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "宿舍名")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SSM { get; set; }


        }
    }
}
