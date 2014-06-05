namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A13_YDPDZDPZ_metadata))]
    public partial class EDU_ZZJX_22_A13_YDPDZDPZ
    {
        public EDU_ZZJX_22_A13_YDPDZDPZ()
        {
            ZDMC = "";
        }
        public class EDU_ZZJX_22_A13_YDPDZDPZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "项目名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否使用")]
            public Int32 SFSY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "班主任能否填写")]
            public Int32 BZRNFTX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实训处能否填写")]
            public Int32 SXCNFTX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


        }
    }
}
