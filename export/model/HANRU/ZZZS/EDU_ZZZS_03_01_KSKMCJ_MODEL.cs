namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZZS_03_01_KSKMCJ_metadata))]
    public partial class EDU_ZZZS_03_01_KSKMCJ
    {
        public EDU_ZZZS_03_01_KSKMCJ()
        {
            KMM = "";
        }
        public class EDU_ZZZS_03_01_KSKMCJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "考生")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "科目码")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KMM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "中考分数")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal ZKFS { get; set; }


        }
    }
}
