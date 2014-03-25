namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_50_A01_QQYY_metadata))]
    public partial class EDU_ZXXS_50_A01_QQYY
    {
        public EDU_ZXXS_50_A01_QQYY()
        {
            MC = "";
        }
        public class EDU_ZXXS_50_A01_QQYY_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


        }
    }
}
