namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_33_A01_YJAP_metadata))]
    public partial class EDU_ZZJX_33_A01_YJAP
    {
        public EDU_ZZJX_33_A01_YJAP()
        {
            NJID = "";
            BJID = "";
        }
        public class EDU_ZZJX_33_A01_YJAP_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业课程排考结果")]
            public Int32 ZYKCPKJGID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "阅卷教师")]
            public Int32 TeacherID { get; set; }


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
            [Display(Name = "专业")]
            public Int32 ZYXXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试科目")]
            public Int32 KCQDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "阅卷方式")]
            public Int32 YJFS { get; set; }


        }
    }
}
