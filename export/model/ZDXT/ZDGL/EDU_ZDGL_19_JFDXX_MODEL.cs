namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_19_JFDXX_metadata))]
    public partial class EDU_ZDGL_19_JFDXX
    {
        public EDU_ZDGL_19_JFDXX()
        {
        }
        public class EDU_ZDGL_19_JFDXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "交付单")]
            public Int32 JFDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "接收单详细")]
            public Int32 JSDXXID { get; set; }


        }
    }
}
