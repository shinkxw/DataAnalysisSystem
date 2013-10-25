namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_32_A02_ZYKCPKJG_metadata))]
    public partial class EDU_ZZJX_32_A02_ZYKCPKJG
    {
        public EDU_ZZJX_32_A02_ZYKCPKJG()
        {
        }
        public class EDU_ZZJX_32_A02_ZYKCPKJG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试")]
            public Int32 ExamID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考场")]
            public Int32 EXAMROOMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "场次")]
            public Int32 CCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试科目")]
            public Int32 KCQDID { get; set; }


        }
    }
}
