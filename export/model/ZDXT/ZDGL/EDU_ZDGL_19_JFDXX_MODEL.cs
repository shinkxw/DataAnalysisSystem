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
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 JFDID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���յ���ϸ")]
            public Int32 JSDXXID { get; set; }


        }
    }
}
