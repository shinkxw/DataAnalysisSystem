namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZFC_10_A05_PBXXB_metadata))]
    public partial class EDU_ZZFC_10_A05_PBXXB
    {
        public EDU_ZZFC_10_A05_PBXXB()
        {
            XXMC = "";
        }
        public class EDU_ZZFC_10_A05_PBXXB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "选项名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选项类型")]
            public Int32 XXLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal FZ { get; set; }


        }
    }
}
