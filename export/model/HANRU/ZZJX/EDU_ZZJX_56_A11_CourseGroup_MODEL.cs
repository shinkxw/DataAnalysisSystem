namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_56_A11_CourseGroup_metadata))]
    public partial class EDU_ZZJX_56_A11_CourseGroup
    {
        public EDU_ZZJX_56_A11_CourseGroup()
        {
            CourseGroupName = "";
            FullCourseGroupName = "";
            ShortTitle1 = "";
            ShortTitle2 = "";
            Comment = "";
        }
        public class EDU_ZZJX_56_A11_CourseGroup_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CourseGroupName { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����γ�������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FullCourseGroupName { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���к�")]
            public Int32 SerialNumber { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�̱���һ")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ShortTitle1 { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�̱����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ShortTitle2 { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Comment { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "")]
            public Int32 Code { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��BaseProjectInfo���")]
            public Int32 BaseProjectInfoID { get; set; }


        }
    }
}
