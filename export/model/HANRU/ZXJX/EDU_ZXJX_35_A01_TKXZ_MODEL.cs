namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_35_A01_TKXZ_metadata))]
    public partial class EDU_ZXJX_35_A01_TKXZ
    {
        public EDU_ZXJX_35_A01_TKXZ()
        {
            XZMC = "";
            XZCY = "";
            XZCYMC = "";
        }
        public class EDU_ZXJX_35_A01_TKXZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "С������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "С���Ա")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZCY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "С���Ա����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZCYMC { get; set; }


        }
    }
}
