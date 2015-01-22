namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A46_BXKXXTKCJ_metadata))]
    public partial class EDU_ZXJX_53_A46_BXKXXTKCJ
    {
        public EDU_ZXJX_53_A46_BXKXXTKCJ()
        {
        }
        public class EDU_ZXJX_53_A46_BXKXXTKCJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "必修课教学班")]
            public Int32 BXKJXBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "统考类型")]
            public Int32 TKLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成绩")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal CJ { get; set; }


        }
    }
}
