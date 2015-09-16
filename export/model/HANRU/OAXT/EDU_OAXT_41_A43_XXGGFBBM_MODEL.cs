namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_41_A43_XXGGFBBM_metadata))]
    public partial class EDU_OAXT_41_A43_XXGGFBBM
    {
        public EDU_OAXT_41_A43_XXGGFBBM()
        {
            FBBM = "";
        }
        public class EDU_OAXT_41_A43_XXGGFBBM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发布部门")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FBBM { get; set; }


        }
    }
}
