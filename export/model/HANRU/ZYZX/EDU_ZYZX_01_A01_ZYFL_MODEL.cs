namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A01_ZYFL_metadata))]
    public partial class EDU_ZYZX_01_A01_ZYFL
    {
        public EDU_ZYZX_01_A01_ZYFL()
        {
            FLMC = "";
        }
        public class EDU_ZYZX_01_A01_ZYFL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "分类名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FLMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "父分类")]
            public Int32 FFLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否首页展示")]
            public Int32 SFSYZS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否启用")]
            public Int32 SFQY { get; set; }


        }
    }
}
