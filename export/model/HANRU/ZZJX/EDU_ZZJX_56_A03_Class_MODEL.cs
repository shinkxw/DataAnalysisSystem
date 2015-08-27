namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_56_A03_Class_metadata))]
    public partial class EDU_ZZJX_56_A03_Class
    {
        public EDU_ZZJX_56_A03_Class()
        {
        }
        public class EDU_ZZJX_56_A03_Class_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "单(双)周")]
            public Int32 WeekCategory { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "星期几")]
            public Int32 DayOfWeek { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "时段")]
            public Int32 TimeInterval { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "节次")]
            public Int32 Period { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否被排课")]
            public Int32 Tabling { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "记录")]
            public Int32 RecordID { get; set; }


        }
    }
}
