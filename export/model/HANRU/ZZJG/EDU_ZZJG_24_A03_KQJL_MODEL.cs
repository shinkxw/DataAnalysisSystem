namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_24_A03_KQJL_metadata))]
    public partial class EDU_ZZJG_24_A03_KQJL
    {
        public EDU_ZZJG_24_A03_KQJL()
        {
            KQSJ = DateTime.Now;
        }
        public class EDU_ZZJG_24_A03_KQJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教工")]
            public Int32 JGID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考勤时间")]
            public DateTime KQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "进出号")]
            public Int32 JCH { get; set; }


        }
    }
}
