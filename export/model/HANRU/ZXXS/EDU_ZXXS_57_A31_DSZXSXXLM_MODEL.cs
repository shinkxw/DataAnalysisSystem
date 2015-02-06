namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_57_A31_DSZXSXXLM_metadata))]
    public partial class EDU_ZXXS_57_A31_DSZXSXXLM
    {
        public EDU_ZXXS_57_A31_DSZXSXXLM()
        {
            LMMC = "";
            MBNR = "";
        }
        public class EDU_ZXXS_57_A31_DSZXSXXLM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "父栏目")]
            public Int32 FLMID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "栏目名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "栏目类型")]
            public Int32 LMLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否需要编辑")]
            public Int32 SFXYBJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "模板内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MBNR { get; set; }


        }
    }
}
