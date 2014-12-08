namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_XYDT_01_A01_SPML_metadata))]
    public partial class EDU_XYDT_01_A01_SPML
    {
        public EDU_XYDT_01_A01_SPML()
        {
            MLMC = "";
            URL = "";
            FMLIDLB = "";
        }
        public class EDU_XYDT_01_A01_SPML_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "目录名称")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MLMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "父目录")]
            public Int32 FMLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否首页展示")]
            public Int32 SFSYZS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否启用")]
            public Int32 SFQY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "网址")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String URL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "父目录ID列表")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FMLIDLB { get; set; }


        }
    }
}
