namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_03_02_XYKSQK_metadata))]
    public partial class EDU_JPXT_03_02_XYKSQK
    {
        public EDU_JPXT_03_02_XYKSQK()
        {
        }
        public class EDU_JPXT_03_02_XYKSQK_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学员")]
            public Int32 XYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "科目一考试时间")]
            public DateTime KMYIKSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "科目一考试结果")]
            public Int32 KMYIKSJG { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "科目二考试时间")]
            public DateTime KMERKSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "科目二考试结果")]
            public Int32 KMERYKSJG { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "科目三考试时间")]
            public DateTime KMSANKSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "科目三考试结果")]
            public Int32 KMSANKSJG { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "科目四考试时间")]
            public DateTime KMSIKSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "科目四考试结果")]
            public Int32 KMSIKSJG { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "科目五考试时间")]
            public DateTime KMWUKSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "科目五考试结果")]
            public Int32 KMWUKSJG { get; set; }


        }
    }
}
