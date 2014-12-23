namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYFZ_02_A02_GZNRLM_metadata))]
    public partial class EDU_ZYFZ_02_A02_GZNRLM
    {
        public EDU_ZYFZ_02_A02_GZNRLM()
        {
            LMMC = "";
        }
        public class EDU_ZYFZ_02_A02_GZNRLM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "栏目名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "栏目类别")]
            public Int32 LMLBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "使用模板")]
            public Int32 SYMBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列方式")]
            public Int32 PLFS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "匿名浏览栏目")]
            public Int32 NMLLLM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "栏目类型")]
            public Int32 LMLX { get; set; }


        }
    }
}
