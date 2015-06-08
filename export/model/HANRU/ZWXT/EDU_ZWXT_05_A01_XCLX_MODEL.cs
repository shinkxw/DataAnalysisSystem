namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZWXT_05_A01_XCLX_metadata))]
    public partial class EDU_ZWXT_05_A01_XCLX
    {
        public EDU_ZWXT_05_A01_XCLX()
        {
            LXMC = "";
        }
        public class EDU_ZWXT_05_A01_XCLX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXMC { get; set; }


        }
    }
}
