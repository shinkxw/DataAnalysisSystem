namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_22_A05_HYBZLX_metadata))]
    public partial class EDU_OAXT_22_A05_HYBZLX
    {
        public EDU_OAXT_22_A05_HYBZLX()
        {
            MC = "";
        }
        public class EDU_OAXT_22_A05_HYBZLX_metadata
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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "类型")]
            public Int32 LX { get; set; }


        }
    }
}
