namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_30_A02_EXAMROOM_metadata))]
    public partial class EDU_ZZJX_30_A02_EXAMROOM
    {
        public EDU_ZZJX_30_A02_EXAMROOM()
        {
            Name = "";
        }
        public class EDU_ZZJX_30_A02_EXAMROOM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考场名称")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Name { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教室")]
            public Int32 RoomID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试")]
            public Int32 ExamID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考生容纳人数")]
            public Int32 StuCount { get; set; }


        }
    }
}
