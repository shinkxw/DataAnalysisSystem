namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXBG_02_02_WJYB_metadata))]
    public partial class EDU_ZXBG_02_02_WJYB
    {
        public EDU_ZXBG_02_02_WJYB()
        {
            YBYJ = "";
        }
        public class EDU_ZXBG_02_02_WJYB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "文件")]
            public Int32 WJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "阅办人")]
            public Int32 YBRID { get; set; }


            [Display(Name = "阅办类别码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBLBM { get; set; }


            [Display(Name = "阅办级别")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBJB { get; set; }


            [Display(Name = "阅办单位")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBDW { get; set; }


            [Display(Name = "阅办单位编号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBDWBH { get; set; }


            [Display(Name = "阅办人工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBRGH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "阅办意见")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBYJ { get; set; }


            [Display(Name = "阅办日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBRQ { get; set; }


        }
    }
}
