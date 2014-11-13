namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_07_A11_XSZZGLJG_metadata))]
    public partial class EDU_ZXDY_07_A11_XSZZGLJG
    {
        public EDU_ZXDY_07_A11_XSZZGLJG()
        {
            JGMC = "";
        }
        public class EDU_ZXDY_07_A11_XSZZGLJG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JGMC { get; set; }


        }
    }
}
