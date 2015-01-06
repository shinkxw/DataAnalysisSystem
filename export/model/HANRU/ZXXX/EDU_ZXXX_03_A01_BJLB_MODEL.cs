namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXX_03_A01_BJLB_metadata))]
    public partial class EDU_ZXXX_03_A01_BJLB
    {
        public EDU_ZXXX_03_A01_BJLB()
        {
            LBMC = "";
        }
        public class EDU_ZXXX_03_A01_BJLB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LBMC { get; set; }


        }
    }
}
