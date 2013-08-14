namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A01_XXSXJH_metadata))]
    public partial class EDU_ZZJX_07_A01_XXSXJH
    {
        public EDU_ZZJX_07_A01_XXSXJH()
        {
            JHBT = "";
            NJ = "";
            SFSX = "";
        }
        public class EDU_ZZJX_07_A01_XXSXJH_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习计划")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "计划标题")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHBT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报告形式")]
            public Int32 BGXS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "计划是否生效")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFSX { get; set; }


        }
    }
}
