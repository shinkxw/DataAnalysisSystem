namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_52_A05_JKAP_metadata))]
    public partial class EDU_ZXJX_52_A05_JKAP
    {
        public EDU_ZXJX_52_A05_JKAP()
        {
        }
        public class EDU_ZXJX_52_A05_JKAP_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试")]
            public Int32 KSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "场次")]
            public Int32 CCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教工")]
            public Int32 JGID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考场")]
            public Int32 KCID { get; set; }


        }
    }
}
