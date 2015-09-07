namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_56_A06_TeacherRule_metadata))]
    public partial class EDU_ZZJX_56_A06_TeacherRule
    {
        public EDU_ZZJX_56_A06_TeacherRule()
        {
            TeacherName = "";
            TeacherCategory = "";
            MutexTeacher = "";
            PhoneNumber = "";
            TimeLimitCount = "";
        }
        public class EDU_ZZJX_56_A06_TeacherRule_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʦ����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TeacherName { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʦ���")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TeacherCategory { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����ʦ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MutexTeacher { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�绰����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PhoneNumber { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʱ�����ƴ���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TimeLimitCount { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ȼ�")]
            public Int32 Priority { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ؽ�ʦ")]
            public Int32 Related { get; set; }


        }
    }
}
