namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_22_A01_ZSGLCZXX_metadata))]
    public partial class EDU_ZZXS_22_A01_ZSGLCZXX
    {
        public EDU_ZZXS_22_A01_ZSGLCZXX()
        {
            XXMC = "";
        }
        public class EDU_ZZXS_22_A01_ZSGLCZXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学校名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXMC { get; set; }


        }
    }
}
