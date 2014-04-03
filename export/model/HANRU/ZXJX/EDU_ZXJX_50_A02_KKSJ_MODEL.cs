namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_50_A02_KKSJ_metadata))]
    public partial class EDU_ZXJX_50_A02_KKSJ
    {
        public EDU_ZXJX_50_A02_KKSJ()
        {
            SKSJ = "";
            SDIDLB = "";
            SDMCLB = "";
        }
        public class EDU_ZXJX_50_A02_KKSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "上课时间")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKSJ { get; set; }


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
