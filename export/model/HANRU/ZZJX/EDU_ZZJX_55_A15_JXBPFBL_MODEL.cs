namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A15_JXBPFBL_metadata))]
    public partial class EDU_ZZJX_55_A15_JXBPFBL
    {
        public EDU_ZZJX_55_A15_JXBPFBL()
        {
        }
        public class EDU_ZZJX_55_A15_JXBPFBL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教学计划表")]
            public Int32 JXJHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程评分项目表")]
            public Int32 KCPFXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "比例")]
            [Range(typeof(decimal), "0", "999")]
            public decimal BL { get; set; }


        }
    }
}
