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
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CourseRuleName { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CourseCategory { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ſ�ʱ��")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TimeIntervalCategory { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MajorCourse { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʱ����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TimeAllocation { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MorningAndEveningAllocation { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʱ�����ƴ���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TimeLimitCount { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ȼ�")]
            public Int32 Priority { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ؿγ�")]
            public Int32 Related { get; set; }


        }
    }
}
