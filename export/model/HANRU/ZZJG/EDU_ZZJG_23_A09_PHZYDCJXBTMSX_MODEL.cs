namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_23_A09_PHZYDCJXBTMSX_metadata))]
    public partial class EDU_ZZJG_23_A09_PHZYDCJXBTMSX
    {
        public EDU_ZZJG_23_A09_PHZYDCJXBTMSX()
        {
        }
        public class EDU_ZZJG_23_A09_PHZYDCJXBTMSX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调查名称")]
            public Int32 DCMCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教学部")]
            public Int32 JXBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "题目")]
            public Int32 TMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "名额上限")]
            public Int32 MESX { get; set; }


        }
    }
}
