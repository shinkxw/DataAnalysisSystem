namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_31_A02_GRTXLZDPZ_metadata))]
    public partial class EDU_OAXT_31_A02_GRTXLZDPZ
    {
        public EDU_OAXT_31_A02_GRTXLZDPZ()
        {
            ZDMC = "";
        }
        public class EDU_OAXT_31_A02_GRTXLZDPZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "字段名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDMC { get; set; }


        }
    }
}
