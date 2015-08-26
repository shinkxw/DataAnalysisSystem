namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_54_A01_SCNRMB_metadata))]
    public partial class EDU_ZXJX_54_A01_SCNRMB
    {
        public EDU_ZXJX_54_A01_SCNRMB()
        {
            MC = "";
            NR = "";
        }
        public class EDU_ZXJX_54_A01_SCNRMB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


        }
    }
}
