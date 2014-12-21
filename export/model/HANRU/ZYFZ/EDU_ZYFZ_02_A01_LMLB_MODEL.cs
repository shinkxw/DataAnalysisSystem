namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYFZ_02_A01_LMLB_metadata))]
    public partial class EDU_ZYFZ_02_A01_LMLB
    {
        public EDU_ZYFZ_02_A01_LMLB()
        {
            LMLBMC = "";
        }
        public class EDU_ZYFZ_02_A01_LMLB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "栏目类别名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMLBMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "父类别")]
            public Int32 FLBID { get; set; }


        }
    }
}
