namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_51_A12_BJHZXSCS_metadata))]
    public partial class EDU_ZXXS_51_A12_BJHZXSCS
    {
        public EDU_ZXXS_51_A12_BJHZXSCS()
        {
        }
        public class EDU_ZXXS_51_A12_BJHZXSCS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核汇总")]
            public Int32 KHHZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "年级")]
            public Int32 NJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "班级")]
            public Int32 BJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "班主任")]
            public Int32 BZR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值")]
            public Int32 FZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "等第")]
            public Int32 DD { get; set; }


        }
    }
}
