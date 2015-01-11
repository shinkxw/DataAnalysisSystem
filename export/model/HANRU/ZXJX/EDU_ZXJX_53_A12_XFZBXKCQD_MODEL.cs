namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A12_XFZBXKCQD_metadata))]
    public partial class EDU_ZXJX_53_A12_XFZBXKCQD
    {
        public EDU_ZXJX_53_A12_XFZBXKCQD()
        {
        }
        public class EDU_ZXJX_53_A12_XFZBXKCQD_metadata
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
            [Display(Name = "课程")]
            public Int32 KCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学分")]
            [Range(typeof(decimal), "0", "99")]
            public decimal XF { get; set; }


        }
    }
}
