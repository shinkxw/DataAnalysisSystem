namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_03_02_JXJHFLXFYQ_metadata))]
    public partial class EDU_ZZJX_03_02_JXJHFLXFYQ
    {
        public EDU_ZZJX_03_02_JXJHFLXFYQ()
        {
            KCFLM = "";
            JHBH = "";
        }
        public class EDU_ZZJX_03_02_JXJHFLXFYQ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程分类码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCFLM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学分要求")]
            [Range(typeof(decimal), "0", "99")]
            public decimal XFYQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "计划编号")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHBH { get; set; }


        }
    }
}
