namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_11_A02_YJFSXZRS_metadata))]
    public partial class EDU_OAXT_11_A02_YJFSXZRS
    {
        public EDU_OAXT_11_A02_YJFSXZRS()
        {
            YHID = "";
        }
        public class EDU_OAXT_11_A02_YJFSXZRS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������������")]
            public Int32 FSRSSX { get; set; }


        }
    }
}
