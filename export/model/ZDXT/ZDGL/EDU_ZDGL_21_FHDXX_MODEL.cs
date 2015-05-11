namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_21_FHDXX_metadata))]
    public partial class EDU_ZDGL_21_FHDXX
    {
        public EDU_ZDGL_21_FHDXX()
        {
        }
        public class EDU_ZDGL_21_FHDXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ص�")]
            public Int32 FHDID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���յ���ϸ")]
            public Int32 JSDXXID { get; set; }


        }
    }
}
