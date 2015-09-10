namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_56_A07_PlaceRule_metadata))]
    public partial class EDU_ZZJX_56_A07_PlaceRule
    {
        public EDU_ZZJX_56_A07_PlaceRule()
        {
            PlaceName = "";
            PlaceCategory = "";
            TimeLimitCount = "";
        }
        public class EDU_ZZJX_56_A07_PlaceRule_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PlaceName { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PlaceCategory { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�༶����")]
            public Int32 TheCapacityOfClass { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ������")]
            public Int32 TheCapacityOfStudent { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʱ�����ƴ���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TimeLimitCount { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ȼ�")]
            public Int32 Priority { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��س���")]
            public Int32 Related { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��BaseProjectInfo���")]
            public Int32 BaseProjectInfoID { get; set; }


        }
    }
}
