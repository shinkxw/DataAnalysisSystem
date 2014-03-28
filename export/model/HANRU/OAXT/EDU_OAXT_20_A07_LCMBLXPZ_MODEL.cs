namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_20_A07_LCMBLXPZ_metadata))]
    public partial class EDU_OAXT_20_A07_LCMBLXPZ
    {
        public EDU_OAXT_20_A07_LCMBLXPZ()
        {
        }
        public class EDU_OAXT_20_A07_LCMBLXPZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "流程模板类型")]
            public Int32 LCMBLXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "不使用流程")]
            public Int32 BSYLC { get; set; }


        }
    }
}
