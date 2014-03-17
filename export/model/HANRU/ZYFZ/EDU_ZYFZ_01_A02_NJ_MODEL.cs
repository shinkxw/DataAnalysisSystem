namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYFZ_01_A02_NJ_metadata))]
    public partial class EDU_ZYFZ_01_A02_NJ
    {
        public EDU_ZYFZ_01_A02_NJ()
        {
            NJMC = "";
        }
        public class EDU_ZYFZ_01_A02_NJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJMC { get; set; }


        }
    }
}
