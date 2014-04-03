namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_50_A05_XSXXKCJ_metadata))]
    public partial class EDU_ZXJX_50_A05_XSXXKCJ
    {
        public EDU_ZXJX_50_A05_XSXXKCJ()
        {
        }
        public class EDU_ZXJX_50_A05_XSXXKCJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教学班")]
            public Int32 JXBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成绩")]
            [Range(typeof(decimal), "0", "999")]
            public decimal CJ { get; set; }


        }
    }
}
