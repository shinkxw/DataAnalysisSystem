namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A42_XFZDYCSCJ_metadata))]
    public partial class EDU_ZXJX_53_A42_XFZDYCSCJ
    {
        public EDU_ZXJX_53_A42_XFZDYCSCJ()
        {
        }
        public class EDU_ZXJX_53_A42_XFZDYCSCJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "单元测试")]
            public Int32 DYCSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成绩")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal CJ { get; set; }


        }
    }
}
