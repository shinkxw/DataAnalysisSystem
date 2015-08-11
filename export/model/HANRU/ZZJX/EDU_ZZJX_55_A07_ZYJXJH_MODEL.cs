namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A07_ZYJXJH_metadata))]
    public partial class EDU_ZZJX_55_A07_ZYJXJH
    {
        public EDU_ZZJX_55_A07_ZYJXJH()
        {
        }
        public class EDU_ZZJX_55_A07_ZYJXJH_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业")]
            public Int32 ZYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业课程库")]
            public Int32 ZYKCKID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期代号")]
            public Int32 XQDH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学分")]
            [Range(typeof(decimal), "0", "999")]
            public decimal XF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课时")]
            public Int32 KS { get; set; }


        }
    }
}
