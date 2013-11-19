namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_38_A03_XKJG_metadata))]
    public partial class EDU_ZZJX_38_A03_XKJG
    {
        public EDU_ZZJX_38_A03_XKJG()
        {
        }
        public class EDU_ZZJX_38_A03_XKJG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教学班级")]
            public Int32 JXBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程清单")]
            public Int32 KCQDID { get; set; }


        }
    }
}
