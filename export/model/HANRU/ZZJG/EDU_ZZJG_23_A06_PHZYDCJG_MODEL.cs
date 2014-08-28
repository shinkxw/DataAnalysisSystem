namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_23_A06_PHZYDCJG_metadata))]
    public partial class EDU_ZZJG_23_A06_PHZYDCJG
    {
        public EDU_ZZJG_23_A06_PHZYDCJG()
        {
        }
        public class EDU_ZZJG_23_A06_PHZYDCJG_metadata
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
            [Display(Name = "调查名称")]
            public Int32 DCMCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评价教师")]
            public Int32 PJJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "被评教师")]
            public Int32 BPJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "题目")]
            public Int32 TMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值")]
            public Int32 FZ { get; set; }


        }
    }
}
