namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A02_XFZKKSJ_metadata))]
    public partial class EDU_ZXJX_53_A02_XFZKKSJ
    {
        public EDU_ZXJX_53_A02_XFZKKSJ()
        {
            SJMC = "";
            SDIDLB = "";
            SDMCLB = "";
        }
        public class EDU_ZXJX_53_A02_XFZKKSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "时间名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "时段ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SDIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "时段名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SDMCLB { get; set; }


        }
    }
}
