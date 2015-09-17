namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_50_A31_SBXFHSGZ_metadata))]
    public partial class EDU_ZZJX_50_A31_SBXFHSGZ
    {
        public EDU_ZZJX_50_A31_SBXFHSGZ()
        {
        }
        public class EDU_ZZJX_50_A31_SBXFHSGZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选修课程类别")]
            public Int32 XXKCLBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成绩上限")]
            [Range(typeof(decimal), "0", "999")]
            public decimal CJSX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成绩下限")]
            [Range(typeof(decimal), "0", "999")]
            public decimal CJXX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学分换算比例")]
            [Range(typeof(decimal), "0", "999")]
            public decimal XFHSBL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "优先级")]
            public Int32 YXJ { get; set; }


        }
    }
}
