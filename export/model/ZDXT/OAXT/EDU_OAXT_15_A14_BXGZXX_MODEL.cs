namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A14_BXGZXX_metadata))]
    public partial class EDU_OAXT_15_A14_BXGZXX
    {
        public EDU_OAXT_15_A14_BXGZXX()
        {
            GZXX = "";
        }
        public class EDU_OAXT_15_A14_BXGZXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报修类型")]
            public Int32 BXLXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "故障信息")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZXX { get; set; }


        }
    }
}
