namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_39_A04_GWBHSZ_metadata))]
    public partial class EDU_OAXT_39_A04_GWBHSZ
    {
        public EDU_OAXT_39_A04_GWBHSZ()
        {
            BHQZ = "";
            BHHZ = "";
        }
        public class EDU_OAXT_39_A04_GWBHSZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "编号前缀")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BHQZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "编号后缀")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BHHZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前流水号")]
            public Int32 DQLSH { get; set; }


        }
    }
}
