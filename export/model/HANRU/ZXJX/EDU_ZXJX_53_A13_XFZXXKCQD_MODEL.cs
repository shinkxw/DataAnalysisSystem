namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A13_XFZXXKCQD_metadata))]
    public partial class EDU_ZXJX_53_A13_XFZXXKCQD
    {
        public EDU_ZXJX_53_A13_XFZXXKCQD()
        {
        }
        public class EDU_ZXJX_53_A13_XFZXXKCQD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教学计划")]
            public Int32 JXJHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程ID列表")]
            public Int32 KCIDLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程名称列表")]
            public Int32 KCMCLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "限选数量")]
            public Int32 XXMS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学分")]
            [Range(typeof(decimal), "0", "99")]
            public decimal XF { get; set; }


        }
    }
}
