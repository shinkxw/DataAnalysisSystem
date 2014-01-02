namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_10_A01_JSGCXPJJL_metadata))]
    public partial class EDU_ZXJX_10_A01_JSGCXPJJL
    {
        public EDU_ZXJX_10_A01_JSGCXPJJL()
        {
            LRSJ = DateTime.Now;
        }
        public class EDU_ZXJX_10_A01_JSGCXPJJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评周")]
            public Int32 XLZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评项目")]
            public Int32 PJXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核分")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal KHF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成绩")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal FLM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "录入时间")]
            public DateTime LRSJ { get; set; }


        }
    }
}
