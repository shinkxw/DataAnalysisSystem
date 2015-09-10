namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_56_A04_ClassRule_metadata))]
    public partial class EDU_ZZJX_56_A04_ClassRule
    {
        public EDU_ZZJX_56_A04_ClassRule()
        {
            ClassRuleName = "";
            ClassCategory = "";
            HeadMaster = "";
            TimeLimitCount = "";
        }
        public class EDU_ZZJX_56_A04_ClassRule_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ClassRuleName { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级类别")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ClassCategory { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班主任")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HeadMaster { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生数目")]
            public Int32 StudentAcount { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "时间限制次数")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TimeLimitCount { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "优先级")]
            public Int32 Priority { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "关联班级")]
            public Int32 Related { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "表BaseProjectInfo外键")]
            public Int32 BaseProjectInfoID { get; set; }


        }
    }
}
