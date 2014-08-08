namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_50_A15_PJJG_metadata))]
    public partial class EDU_ZZJX_50_A15_PJJG
    {
        public EDU_ZZJX_50_A15_PJJG()
        {
        }
        public class EDU_ZZJX_50_A15_PJJG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评教")]
            public Int32 PJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教学班")]
            public Int32 JXBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "题目")]
            public Int32 TMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值")]
            public Int32 FZ { get; set; }


        }
    }
}
