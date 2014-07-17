namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_11_FXSB_metadata))]
    public partial class EDU_ZDGL_11_FXSB
    {
        public EDU_ZDGL_11_FXSB()
        {
        }
        public class EDU_ZDGL_11_FXSB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���޵�")]
            public Int32 FXDID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����豸")]
            public Int32 BXSBID { get; set; }


        }
    }
}
