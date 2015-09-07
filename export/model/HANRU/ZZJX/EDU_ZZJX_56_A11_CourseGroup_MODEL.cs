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


        }
    }
}
