namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_01_A07_JZGLX_metadata))]
    public partial class EDU_ZXJZ_01_A07_JZGLX
    {
        public EDU_ZXJZ_01_A07_JZGLX()
        {
        }
        public class EDU_ZXJZ_01_A07_JZGLX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Display(Name = "��������")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXMC { get; set; }


        }
    }
}
