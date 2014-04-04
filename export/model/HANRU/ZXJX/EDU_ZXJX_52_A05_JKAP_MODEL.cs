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
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 KSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 CCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�̹�")]
            public Int32 JGID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 KCID { get; set; }


        }
    }
}
