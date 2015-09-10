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
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "场地名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PlaceName { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "场地类别")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PlaceCategory { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "班级容量")]
            public Int32 TheCapacityOfClass { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生容量")]
            public Int32 TheCapacityOfStudent { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "时间限制次数")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TimeLimitCount { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "优先级")]
            public Int32 Priority { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "相关场地")]
            public Int32 Related { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "表BaseProjectInfo外键")]
            public Int32 BaseProjectInfoID { get; set; }


        }
    }
}
