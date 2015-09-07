namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_56_A05_CourseRule_metadata))]
    public partial class EDU_ZZJX_56_A05_CourseRule
    {
        public EDU_ZZJX_56_A05_CourseRule()
        {
            CourseRuleName = "";
            CourseCategory = "";
            TimeIntervalCategory = "";
            MajorCourse = "";
            TimeAllocation = "";
            MorningAndEveningAllocation = "";
            TimeLimitCount = "";
        }
        public class EDU_ZZJX_56_A05_CourseRule_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CourseRuleName { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程类别")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CourseCategory { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "排课时段")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TimeIntervalCategory { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "主课")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MajorCourse { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课时分配")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TimeAllocation { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "早晚安排")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MorningAndEveningAllocation { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "时间限制次数")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TimeLimitCount { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "优先级")]
            public Int32 Priority { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "相关课程")]
            public Int32 Related { get; set; }


        }
    }
}
