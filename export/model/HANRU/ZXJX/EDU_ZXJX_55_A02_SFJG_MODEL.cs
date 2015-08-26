namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_55_A02_SFJG_metadata))]
    public partial class EDU_ZXJX_55_A02_SFJG
    {
        public EDU_ZXJX_55_A02_SFJG()
        {
        }
        public class EDU_ZXJX_55_A02_SFJG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "收费项目")]
            public Int32 SFXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实缴金额")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal SJJE { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "缴费状态")]
            public Int32 JFZT { get; set; }


        }
    }
}
