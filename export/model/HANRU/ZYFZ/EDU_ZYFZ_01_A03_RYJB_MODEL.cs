namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYFZ_01_A03_RYJB_metadata))]
    public partial class EDU_ZYFZ_01_A03_RYJB
    {
        public EDU_ZYFZ_01_A03_RYJB()
        {
            RYJBMC = "";
        }
        public class EDU_ZYFZ_01_A03_RYJB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "荣誉级别名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RYJBMC { get; set; }


        }
    }
}
