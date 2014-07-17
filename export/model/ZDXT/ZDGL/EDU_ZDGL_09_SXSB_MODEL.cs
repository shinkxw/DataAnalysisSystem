namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_09_SXSB_metadata))]
    public partial class EDU_ZDGL_09_SXSB
    {
        public EDU_ZDGL_09_SXSB()
        {
        }
        public class EDU_ZDGL_09_SXSB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���޵�")]
            public Int32 SXDID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����豸")]
            public Int32 BXSBID { get; set; }


        }
    }
}
