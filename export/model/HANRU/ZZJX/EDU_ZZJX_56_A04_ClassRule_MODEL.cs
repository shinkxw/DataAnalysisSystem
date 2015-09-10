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
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ClassRuleName { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶���")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ClassCategory { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HeadMaster { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ����Ŀ")]
            public Int32 StudentAcount { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʱ�����ƴ���")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TimeLimitCount { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ȼ�")]
            public Int32 Priority { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����༶")]
            public Int32 Related { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��BaseProjectInfo���")]
            public Int32 BaseProjectInfoID { get; set; }


        }
    }
}
