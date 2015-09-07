namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_56_A09_TeacherGroup_metadata))]
    public partial class EDU_ZZJX_56_A09_TeacherGroup
    {
        public EDU_ZZJX_56_A09_TeacherGroup()
        {
            TeacherGroupName = "";
            FullTeacherGroupName = "";
        }
        public class EDU_ZZJX_56_A09_TeacherGroup_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʦ������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TeacherGroupName { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ʦ������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FullTeacherGroupName { get; set; }


        }
    }
}
