namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZBG_03_03_HQ_metadata))]
    public partial class EDU_ZZBG_03_03_HQ
    {
        public EDU_ZZBG_03_03_HQ()
        {
            HQR = "";
            HQDW = "";
            HQYJ = "";
            HQRQ = "";
        }
        public class EDU_ZZBG_03_03_HQ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "文件")]
            public Int32 WJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "会签人")]
            public Int32 HQRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "会签人")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HQR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "会签单位")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HQDW { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "会签意见")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HQYJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "会签日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HQRQ { get; set; }


        }
    }
}
